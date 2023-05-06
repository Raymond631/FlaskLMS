"""
不需要登录就可以访问
"""
from flask import Blueprint, request, jsonify, session

from service import userService, bookService, messageService

GuestBluePrint = Blueprint('GuestBluePrint', __name__)

"""-------------------------登录注册模块----------------------------------"""


# 登录
@GuestBluePrint.route('/session', methods=['POST'])
def login():  # 方法名不能用session
    data = request.get_json()
    userid = data['userid']
    password = data['password']
    code = userService.checkUser(userid, password)
    if code == -1:
        return jsonify(code=400, msg="该账号不存在")
    elif code == -2:
        return jsonify(code=400, msg="密码错误")
    else:
        session["userid"] = userid
        session["userType"] = code  # 存放账号类型，用于区分权限
        return jsonify(code=200, msg="登录成功", userType=code)


# 注册
@GuestBluePrint.route('/account', methods=['POST'])
def register():
    data = request.get_json()
    userid = data['userid']
    password = data['password']
    userType = data['userType']
    if userService.addUser(userid, password, userType):
        session["userid"] = userid
        session["userType"] = userType
        return jsonify(code=200, msg="注册成功", userType=userType)
    else:
        return jsonify(code=400, msg="用户名已存在")


"""-------------------------查看书籍----------------------------------"""


# 根据最近借的一本书的类型进行推荐,如果没借过，就推荐一些新书
@GuestBluePrint.route('/recommendBooks', methods=['GET'])
def recommendBooks():
    if 'userid' in session:
        userid = session['userid']
    else:
        userid = ''
    books = bookService.recommendBooks(userid)
    return jsonify(code=200, msg=books)


# 查看某类书籍
@GuestBluePrint.route('/books/<string:bookType>/<int:times>', methods=['GET'])
def getBooks(bookType, times):
    books = bookService.getAllBooks(bookType, times)
    return jsonify(code=200, msg=books)


# 根据书名搜书
@GuestBluePrint.route('/book/<string:searchKey>/<int:times>', methods=['GET'])
def searchBook(searchKey, times):
    books = bookService.searchBook(searchKey, times)
    return jsonify(code=200, msg=books)


"""-------------------------查看公告----------------------------------"""


# 查看近5条公告
@GuestBluePrint.route('/notice', methods=['GET'])
def getNotice():
    notices = messageService.getNotice()
    return jsonify(code=200, msg=notices)
