from ex import db
from modules.BorrowRequire import BorrowRequire
from modules.book import Book
from modules.BorrowList import BorrowList


def getAllBooks(bookType, times):
    bookPaginate = Book.query.filter(Book.type == bookType).paginate(page=times, per_page=9, error_out=False)
    num = bookPaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    books = []
    for book in bookPaginate.items:
        books.append(book.to_dict())
    return {"num": num, "books": books}


def getMyBooks(userid, times):
    bookPaginate = Book.query.filter(Book.ownerid == userid).paginate(page=times, per_page=9, error_out=False)
    num = bookPaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    books = []
    for book in bookPaginate.items:
        books.append(book.to_dict())
    return {"num": num, "books": books}


def searchBook(searchKey, times):
    bookPaginate = Book.query.filter(Book.name.like("%" + searchKey + "%")).paginate(page=times, per_page=9, error_out=False)
    num = bookPaginate.pages * 9  # 总数
    books = []
    for book in bookPaginate.items:
        books.append(book.to_dict())
    return {"num": num, "books": books}


def addBook(name, isbncode, type, introduce, ownerid, image, status):
    newBook = Book(name=name, isbncode=isbncode, btype=type, introduce=introduce, ownerid=ownerid, image=image,
                   status=status, lenderid="")
    db.session.add(newBook)
    db.session.commit()


def deleteBook(bookId, ownerid):
    Book.query.filter(Book.id == bookId and Book.ownerid == ownerid).delete()
    db.session.commit()


def updateBook(ownerid, id, name, isbncode, type, introduce, image):
    Book.query.filter(Book.id == id and Book.ownerid == ownerid).update({"name": name, "isbncode": isbncode, "type": type, "introduce": introduce, "image": image})
    db.session.commit()


# 根据最近借的一本书的类型进行推荐
def recommendBooks(userid, times):
    # 查询最近借的一本书的type
    # TODO 如果用户没借过书怎么办？
    lendBookType = BorrowList.query.filter(BorrowList.lenderid == userid).order_by(BorrowList.date.desc()).first().type
    bookPaginate = Book.query.filter(Book.type == lendBookType).paginate(page=times, per_page=9, error_out=False)
    num = bookPaginate.pages * 9  # 总数
    books = []
    for book in bookPaginate.items:
        books.append(book.to_dict())
    return {"num": num, "books": books}


def getRequireMe(ownerid, times):
    requirePaginate = BorrowRequire.query.filter(BorrowRequire.ownerid == ownerid).order_by(BorrowRequire.id.desc()).paginate(page=times, per_page=9, error_out=False)
    num = requirePaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    requires = []
    for require in requirePaginate.items:
        requires.append(require.to_dict())
    return {"num": num, "books": requires}


def getMyRequire(lenderid, times):
    requirePaginate = BorrowRequire.query.filter(BorrowRequire.lenderid == lenderid).order_by(BorrowRequire.id.desc()).paginate(page=times, per_page=9, error_out=False)
    num = requirePaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    requires = []
    for require in requirePaginate.items:
        requires.append(require.to_dict())
    return {"num": num, "books": requires}


def sendRequire(lenderid, ownerid, bookid, bookname, status):
    newRequire = BorrowRequire(lenderid=lenderid, ownerid=ownerid, bookid=bookid, bookname=bookname, status=status)
    db.session.add(newRequire)
    db.session.commit()


def checkRequire(id, bookid, requireStatus):
    if requireStatus == 1:  # 同意
        book = Book.query.filter(Book.id == bookid).first()
        if book.status == 1:  # 未被借走
            require = BorrowRequire.query.filter(BorrowRequire.id == id).first()
            book.lenderid = require.lenderid
            book.status = 0  # 改为已借出，不在馆
            require.status = 1  # 改为借书申请通过
            db.session.commit()
            return 1
        else:  # 已经被借走
            BorrowRequire.query.filter(BorrowRequire.id == id).update({"status": -1})
            db.session.commit()
            return 0
    else:
        BorrowRequire.query.filter(BorrowRequire.id == id).update({"status": -1})
        db.session.commit()
        return -1


def returnBookToMe(bookid):
    Book.query.filter(Book.id == bookid).update({"status": 1, "lenderid": ""})
    db.session.commit()


def searchBookByISBN(isbn):
    booklist = Book.query.filter(Book.isbncode == isbn).all()
    books = []
    for book in booklist:
        books.append(book.to_dict())
    return books
