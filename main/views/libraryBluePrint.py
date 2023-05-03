"""
本蓝图接入url操作为:
    对图书馆内某一本(些)书的增删改查
    对图书馆所有书的查询
    对图书馆一类书的查询
    对某一个图书馆借书单的增删改查
    对所有图书馆借书单的查询

"""
from datetime import datetime, timedelta

from flask import Blueprint, render_template, request, redirect, jsonify, session

from service import bookService, listService

libraryBluePrint = Blueprint('libraryBluePrint', __name__)


# TODO 扫码，登录拦截器

# 对图书馆内某一本书的增删改查
@libraryBluePrint.route('/book', methods=['POST'])
def addBook():
    # 新增书籍信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(book),后端返回简单字符串
    # 通过搜索数据库分配id，将json解包后与id结合形成book对象，插入数据库，返回操作结果提示
    userid = session['userid']
    userType = session["userType"]
    book = request.get_json()
    if userType == 1:  # 管理员
        bookService.addBook(book['name'], book['isbncode'], book['type'], book['introduce'], "sadmin", book['imagePath'], 1)  # 1表示在馆
    else:  # C2C
        bookService.addBook(book['name'], book['isbncode'], book['type'], book['introduce'], userid, book['imagePath'], 1)  # 1表示在馆
    return jsonify(code=200, msg="添加成功")


@libraryBluePrint.route('/book/<int:bookId>', methods=['DELETE'])
def deleteBook(bookId):
    # 删除书籍信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(book的id),后端返回简单字符串
    # 根据所传入book的id查找到该书,并完成对数据库中该书数据的删除
    # 结果返回简单字符串,提示删除是否成功
    bookService.deleteBook(bookId)
    return jsonify(code=200, msg="删除成功")


@libraryBluePrint.route('/book', methods=['PUT'])
def updateBook():
    # 修改书籍信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(book对象),后端返回简单字符串
    # 将json解包后为book后,根据所解包book的id查到到该书,并完成对数据库的修改
    # 结果返回简单字符串,提示修改是否成功
    book = request.get_json()
    bookService.updateBook(book['bookId'], book['name'], book['isbncode'], book['type'], book['introduce'], book['imagePath'], book['status'])
    return jsonify(code=200, msg="修改成功")


@libraryBluePrint.route('/books/<int:times>', methods=['GET'])
def getBooks(times):
    # 查询所有书籍信息操作,返回json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个以library为拥有者的book对象,作为List并打包为json传出
    books = bookService.getAllBooks(times)
    return jsonify(code=200, msg=books)


@libraryBluePrint.route('/book/<string:searchKey>/<int:times>', methods=['GET'])
def searchBook(searchKey, times):
    # 查询书籍信息操作,返回json数据
    # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
    # 从数据库中搜索searchKey相关数据,将搜索到的book对象根据times作为List并打包为json传出
    books = bookService.searchBook(searchKey, times)
    return jsonify(code=200, msg=books)


# 根据最近借的一本书的类型进行推荐
@libraryBluePrint.route('/recommendBooks/<int:times>', methods=['GET'])
def recommendBooks(times):
    # 返回当前用户推荐书籍
    # 前端通过ajax传入简单字符串(times),后端返回json
    # 获取session中user对象,根据user对象查询借书单,推荐算法得到关键词,搜索关键词相关书籍
    # 并根据times选择部分作为List并打包为json传出
    userid = session['userid']
    books = bookService.recommendBooks(userid, times)
    return jsonify(code=200, msg=books)


# TODO b2c和c2c通用
@libraryBluePrint.route('/list/<int:bookid>', methods=['POST'])
def borrowBook(bookid):
    # 用户操作,新增借书单信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(Book的id),后端返回简单字符串
    # 先从response中获取用户对象,判断是否可以借阅(借阅到达上限/欠费),若不可借书,提醒不可借书原因
    # 若可借书,则完成相关业务后返回成功信息
    userType = session["userType"]
    userid = session['userid']
    borrowTime = datetime.now()
    code = listService.addBorrowRecord(userType, userid, bookid, borrowTime)
    if code == -1:
        return jsonify(code=400, msg="您有图书超时未归还，请先归还图书并缴纳罚款")
    elif code == -2:
        return jsonify(code=400, msg="您借阅的书籍数量已达上限")
    elif code == -3:
        return jsonify(code=400, msg="该书已被借走")
    elif code == 1:
        return jsonify(code=200, msg=f"借阅成功,最晚归还时间：{(borrowTime + timedelta(days=30)).strftime('%Y-%m-%d %H:%M:%S')}")


@libraryBluePrint.route('/list/<int:borrowListId>', methods=['DELETE'])
def returnBook(borrowListId):
    # 管理员操作,删除借书单信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(list的id),后端返回简单字符串
    # 根据所传入user的id查找到list对象，并判断此书单是否已欠费，若欠费则提醒缴费，若此单无欠费则进行数据库的删除操作
    # 将操作结果或错误提醒作为简单字符串返回
    res = listService.returnBook(borrowListId)
    if res.code == -1:
        return jsonify(code=400, msg=f"还书成功，但借阅超时，需缴纳{res.get('fine')}元罚款")  # 由管理员人工收款
    elif res.code == 1:
        return jsonify(code=200, msg="还书成功")


# 延期
@libraryBluePrint.route('/list/<int:borrowListId>', methods=['PUT'])
def postpone(borrowListId):
    # 管理员操作,修改借书单信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(list),后端返回简单字符串
    # 解包json获得list对象，进行数据库的修改操作
    # 将操作结果作为简单字符串返回
    code = listService.postpone(borrowListId)
    if code == -1:
        return jsonify(code=400, msg="已延期过一次，不能再延期")
    elif code == 0:
        return jsonify(code=400, msg="已归还的图书不能延期")
    elif code == 1:
        return jsonify(code=400, msg="成功延期一个月")


# 普通用户查看自己的借书记录
# TODO b2c和c2c通用
@libraryBluePrint.route('/list/<int:times>', methods=['GET'])
def getBorrowList(times):
    userid = session['userid']
    borrows = listService.getBorrowList(userid, times)
    return jsonify(code=200, msg=borrows)


# 查看所有人的library借书记录
@libraryBluePrint.route('/lists/<int:times>', methods=['GET'])
def getAllBorrowList(times):
    # 管理员操作,查询所有借书单信息操作,返回json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个list对象,作为List并打包为json传出
    borrows = listService.getAllBorrowList(times)
    return jsonify(code=200, msg=borrows)
