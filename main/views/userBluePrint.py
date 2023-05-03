"""
本蓝图接入url操作为:
    验证用户登录
    对某一个用户信息的增删改查
    对所有用户信息的查询
"""
from flask import Blueprint, render_template, request, redirect, json, jsonify, session

from service import userService

userBluePrint = Blueprint('userBluePrint', __name__)


# 登录
@userBluePrint.route('/session', methods=['POST'])
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


# 登出
@userBluePrint.route('/session', methods=['DELETE'])
def logout():  # 方法名不能用session
    # 退出登录
    session.clear()
    return jsonify(code=200, msg="登出成功")


# 注册
@userBluePrint.route('/account', methods=['POST'])
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


# 销户
@userBluePrint.route('/account', methods=['DELETE'])
def deleteAccount():
    # 删除用户信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(user的id),后端返回简单字符串
    # 根据所传入user的id查找到该用户,并完成对数据库中该用户数据的删除
    # 结果返回简单字符串,提示删除是否成功
    userid = session['userid']  # 登陆后才能注销
    userType = session["userType"]
    if userType == 0:
        return jsonify(code=400, msg="超管账号不能注销")
    else:
        userService.deleteUser(userid)
        session.clear()
        return jsonify(code=200, msg="账号注销成功")


# 修改个人信息
@userBluePrint.route('/account', methods=['PUT'])
def updataAccount():
    # 修改用户信息操作,根据传入json信息修改数据库
    # 前端传入json对象(user类),后端返回简单字符串
    # 将传入json解包后获得user对象，根据其id进行数据库的修改操作，返回操作是否成功的信息
    userid = session['userid']
    data = request.get_json()
    password = data['password']
    introduce = data['introduce']
    userService.updateUser(userid, password, introduce)
    return jsonify(code=200, msg="修改成功")


# 获取个人中心数据
@userBluePrint.route('/account', methods=['GET'])
def getUserInfo():
    # 查询用户信息操作,返回json数据
    # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
    # 从数据库中搜索searchKey相关数据,将搜索到的user对象根据times作为List并打包为json传出
    userid = session['userid']
    userInfo = userService.selectUserInfo(userid)
    return jsonify(code=200, msg=userInfo)


# 管理员查看
@userBluePrint.route('/accountList/<int:times>', methods=['GET'])
def getAccountList(times):
    userType = session["userType"]
    if userType == 1:  # 只能管理员访问
        # 请求用户信息列表,返回含有所有用户列表的json数据
        # 前端通过ajax传入简单字符串(times),后端返回json
        # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
        # 从数据库中搜寻第n*10-n*10+9共十个user对象,作为List并打包为json传出
        users = userService.selectAllCommonUser(times)  # 查看除了超管外的所有用户
        return jsonify(code=200, msg=users)
    else:
        return jsonify(code=400, msg="您没有权限访问此页面")


# 管理员修改
@userBluePrint.route('/accountList/<string:userid>', methods=['PUT'])
def resetPassword(userid):
    userType = session["userType"]
    if userType == 1:  # 普通用户无法访问
        # 用户忘记密码时，联系管理员重置密码
        userService.resetPassword(userid, "123456")
        return jsonify(code=200, msg="密码重置成功,默认密码为123456")
    else:
        return jsonify(code=400, msg="您没有权限访问此页面")


# 超管查看
@userBluePrint.route('/adminList/<int:times>', methods=['GET'])
def getAdminList(times):
    userType = session["userType"]
    if userType == 0:  # 只有超管能访问
        users = userService.selectAllUser(times)  # 能查看所有的用户
        return jsonify(code=200, msg=users)
    else:
        return jsonify(code=400, msg="您没有权限访问此页面")


# 超管修改
@userBluePrint.route('/adminList', methods=['PUT'])
def updataUserTpye():
    userType = session["userType"]
    if userType == 0:  # 只有超管能访问
        data = request.get_json()
        userid = data['userid']
        newUserType = data['newUserType']
        userService.updataUserTpye(userid, newUserType)
        return jsonify(code=200, msg="用户权限修改成功")
    else:
        return jsonify(code=400, msg="您没有权限访问此页面")
