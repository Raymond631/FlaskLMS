from datetime import datetime, timedelta

from ex import db
from modules.BorrowList import BorrowList
from modules.book import Book


def addBorrowRecord(userType, lenderid, bookid, bookname, dateNow):
    # 检查用户状态（是否已达借阅上限，是否有欠费）
    lendedBooks = BorrowList.query.filter(BorrowList.lenderid == lenderid).all()
    for lendedbook in lendedBooks:
        if dateNow > lendedbook.return_deadline:
            return -1  # 超时欠费
    lendedBookNum = len(lendedBooks)
    if (userType == 2 and lendedBookNum >= 6) or (userType == 3 and lendedBookNum >= 10):  # 学生最多借6本,老师最多借10本
        return -2  # 已达借阅上限

    book = Book.query.filter(Book.id == bookid).first()
    if book.status != 1:
        return -3  # 已被借阅
    else:
        # 修改书籍状态为“已借出”
        book.status = 0
        book.lenderid = lenderid
        db.session.commit()
        # 插入借书表
        dataNowStr = dateNow.strftime('%Y-%m-%d %H:%M:%S')
        return_deadline = (dateNow + timedelta(days=30)).strftime('%Y-%m-%d %H:%M:%S')
        newBorrowRecord = BorrowList(ownerid=book.ownerid, lenderid=lenderid, type=book.type, bookid=bookid, bookname=bookname, date=dataNowStr, return_deadline=return_deadline, status=0)
        db.session.add(newBorrowRecord)
        db.session.commit()
        return 1  # 借阅成功


def returnBook(borrowListId):
    # 还书
    borrowedBook = BorrowList.query.filter(BorrowList.id == borrowListId).first()
    borrowedBook.status = 1
    borrowedBook.lenderid = ""  # 重置借阅者为空字符串
    db.session.commit()
    # 是否超时
    overtime = (datetime.now() - borrowedBook.return_deadline).total_seconds() / 3600 / 24  # 超过截止时间多少天
    if overtime > 0:
        fine = overtime * 1  # 一天一块钱
        return {"code": -1, "fine": fine}  # 超时欠费
    else:
        return {"code": 1, "fine": 0}


def postpone(borrowListId):
    # 判断是否已延期过了（只能延期一次）
    borrowedBook = BorrowList.query.filter(BorrowList.id == borrowListId).first()
    if borrowedBook.status == 2:
        return -1  # 已延期过了，不能再延期
    elif borrowedBook.status == 1:
        return 0  # 已归还的图书不能延期
    elif borrowedBook.status == 0:
        borrowedBook.status = 2
        borrowedBook.return_deadline = (borrowedBook.return_deadline + timedelta(days=30)).strftime('%Y-%m-%d %H:%M:%S')
        db.session.commit()
        return 1  # 延期成功


def getBorrowList(lenderid):
    borrowlist = BorrowList.query.filter(BorrowList.lenderid == lenderid).order_by(BorrowList.date.desc()).all()
    borrows = []
    for borrow in borrowlist:
        borrow.date = borrow.date.strftime('%Y-%m-%d %H:%M:%S')
        borrows.append(borrow.to_dict())
    return borrows


def getAllBorrowList():
    borrowlist = BorrowList.query.filter(BorrowList.ownerid == "sadmin").order_by(BorrowList.date.desc()).all()
    borrows = []
    for borrow in borrowlist:
        borrow.date = borrow.date.strftime('%Y-%m-%d %H:%M:%S')
        borrows.append(borrow.to_dict())
    return borrows
