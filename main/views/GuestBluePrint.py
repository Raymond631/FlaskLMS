"""
不需要登录就可以访问
"""
from flask import Blueprint, request, jsonify, session

from service import userService, bookService

GuestBluePrint = Blueprint('GuestBluePrint', __name__)

"""-------------------------登录注册模块----------------------------------"""


# 登录
@GuestBluePrint.route('/session', methods=['POST'])
def login():  # 方法名不能用session
    # 众所周知的登录验证操作
    # 前端通过ajax传入json(user对象的id与password),后端返回简单字符串
    # 将json解包后获得id与password，将其进行众所周知的登录验证后放入session中，返回简单字符串提示是否成功登录
    data = request.get_json()
    userid = data['userid']
    password = data['password']
    code = userService.checkUser(userid, password)
    if code == -1:
        return jsonify(code=400, msg="该账号不存在")  # 需要返回状态码，方便前端判断，进行跳转
    elif code == -2:
        return jsonify(code=400, msg="密码错误")
    else:
        session["userid"] = userid
        session["userType"] = code  # 存放账号类型，用于区分权限
        return jsonify(code=200, msg="登录成功")


# 注册
@GuestBluePrint.route('/account', methods=['POST'])
def register():
    # 新增用户信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(id,password)
    # 解包json获得两个简单字符串，进行耳熟能详的注册用户的操作(含重复id检验)
    # 结果返回简单字符串,提示新建是否成功
    data = request.get_json()
    userid = data['userid']
    password = data['password']
    # 默认是普通用户；管理员需要超管修改权限；超管账号唯一，不允许注册
    # 用户简介默认为空字符串，可在注册后修改
    if userService.addUser(userid, password):
        session["userid"] = userid
        session["userType"] = 0
        return jsonify(code=200, msg="注册成功")
    else:
        return jsonify(code=400, msg="用户名已存在")


"""-------------------------查看书籍----------------------------------"""


@GuestBluePrint.route('/books/<string:bookType>/<int:times>', methods=['GET'])
def getBooks(bookType, times):
    # 查询所有书籍信息操作,返回json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个以library为拥有者的book对象,作为List并打包为json传出
    books = bookService.getAllBooks(bookType, times)
    return jsonify(code=200, msg=books)


@GuestBluePrint.route('/book/<string:searchKey>/<int:times>', methods=['GET'])
def searchBook(searchKey, times):
    # 查询书籍信息操作,返回json数据
    # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
    # 从数据库中搜索searchKey相关数据,将搜索到的book对象根据times作为List并打包为json传出
    books = bookService.searchBook(searchKey, times)
    return jsonify(code=200, msg=books)


"""-------------------------查看公告----------------------------------"""


# TODO 查看最近5条公告
@GuestBluePrint.route('/notice', methods=['GET'])
def getNotice():
    pass
