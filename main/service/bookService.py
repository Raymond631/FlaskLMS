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


def getMyBooks(userid):
    booklist = Book.query.filter(Book.ownerid == userid).all()
    books = []
    for book in booklist:
        books.append(book.to_dict())
    return books


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
    Book.query.filter(Book.id == bookId, Book.ownerid == ownerid).delete()
    db.session.commit()


def updateBook(ownerid, id, name, isbncode, type, introduce, image):
    Book.query.filter(Book.id == id, Book.ownerid == ownerid).update({"name": name, "isbncode": isbncode, "type": type, "introduce": introduce, "image": image})
    db.session.commit()


def recommendBooks(userid):
    # 查询最近借的一本书的type
    lendBook = BorrowList.query.filter(BorrowList.lenderid == userid).order_by(BorrowList.date.desc()).first()
    if lendBook:
        booklist = Book.query.filter(Book.type == lendBook.type).order_by(Book.id.desc()).limit(6)
    else:
        booklist = Book.query.order_by(Book.id.desc()).limit(6)
    books = []
    for book in booklist:
        books.append(book.to_dict())
    return books


def getRequireMe(ownerid):
    requirelist = BorrowRequire.query.filter(BorrowRequire.ownerid == ownerid).order_by(BorrowRequire.id.desc()).all()
    requires = []
    for require in requirelist:
        requires.append(require.to_dict())
    return requires


def getMyRequire(lenderid):
    requirelist = BorrowRequire.query.filter(BorrowRequire.lenderid == lenderid).order_by(BorrowRequire.id.desc()).all()
    requires = []
    for require in requirelist:
        temp = require.to_dict()
        bookid = require.bookid
        book = Book.query.filter(Book.id == bookid).first()
        temp["bookDetail"] = book.to_dict()
        requires.append(temp)
    return requires


def sendRequire(lenderid, ownerid, bookid, bookname, status):
    newRequire = BorrowRequire(lenderid=lenderid, ownerid=ownerid, bookid=bookid, bookname=bookname, status=status)
    db.session.add(newRequire)
    db.session.commit()


def checkRequire(userid, id, bookid, requireStatus):
    if requireStatus == 1:  # 同意
        book = Book.query.filter(Book.id == bookid).first()
        if book.status == 1:  # 未被借走
            print('---------------------------------------------------------------')
            '''print(userid)'''
            print('id:'+id)
            '''print(bookid)
            print(requireStatus)'''
            print(book.lenderid)
            require = BorrowRequire.query.filter(BorrowRequire.lenderid == id, BorrowRequire.ownerid == userid).first()
            print(require.__class__)
            book.lenderid = require.lenderid
            book.status = 0  # 改为已借出，不在馆
            require.status = 1  # 改为借书申请通过
            db.session.commit()
            return 1
        else:  # 已经被借走
            BorrowRequire.query.filter(BorrowRequire.id == id, BorrowRequire.ownerid == userid).update({"status": -1})
            db.session.commit()
            return 0
    else:
        BorrowRequire.query.filter(BorrowRequire.id == id, BorrowRequire.ownerid == userid).update({"status": -1})
        db.session.commit()
        return -1


def returnBookToMe(userid, bookid):
    Book.query.filter(Book.id == bookid, Book.ownerid == userid).update({"status": 1, "lenderid": ""})
    db.session.commit()


def searchBookByISBN(isbn, times):
    bookPaginate = Book.query.filter(Book.isbncode == isbn).paginate(page=times, per_page=9, error_out=False)
    num = bookPaginate.pages * 9  # 总数
    books = []
    for book in bookPaginate.items:
        books.append(book.to_dict())
    return {"num": num, "books": books}
