"""
本蓝图接入url操作为:
    验证用户登录
    对某一个用户信息的增删改查
    对所有用户信息的查询
"""
from flask import Blueprint, render_template, request, redirect, json, jsonify, session

from service import userService

userBluePrint = Blueprint('userBluePrint', __name__)


# 验证用户登录(请求session，身份验证操作，用于用户登录)
@userBluePrint.route('/session', methods=['POST', 'DELETE'])
def login():  # 方法名不能用session
    if request.method == 'POST':
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

    if request.method == 'DELETE':
        # 退出登录
        session.clear()
        return jsonify(code=200, msg="登出成功")


# 对某一个用户信息的增删改查
@userBluePrint.route('/account', methods=['POST', 'DELETE', 'PUT', 'GET'])
def account():
    if request.method == 'POST':
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

    if request.method == 'DELETE':
        # 删除用户信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入简单字符串(user的id),后端返回简单字符串
        # 根据所传入user的id查找到该用户,并完成对数据库中该用户数据的删除
        # 结果返回简单字符串,提示删除是否成功
        userid = session['userid']  # 登陆后才能注销
        userType = session["userType"]
        if userType == 2:
            return jsonify(code=400, msg="超管账号不能注销")
        else:
            userService.deleteUser(userid)
            session.clear()
            return jsonify(code=200, msg="账号已注销")

    if request.method == 'PUT':
        # 修改用户信息操作,根据传入json信息修改数据库
        # 前端传入json对象(user类),后端返回简单字符串
        # 将传入json解包后获得user对象，根据其id进行数据库的修改操作，返回操作是否成功的信息
        userid = session['userid']
        data = request.get_json()
        password = data['password']
        introduce = data['introduce']
        userService.updateUser(userid, password, introduce)
        return jsonify(code=200, msg="修改成功")

    if request.method == 'GET':
        # 查询用户信息操作,返回json数据
        # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
        # 从数据库中搜索searchKey相关数据,将搜索到的user对象根据times作为List并打包为json传出
        userid = session['userid']
        return jsonify(code=200, msg=userService.selectUserInfo(userid).to_json)


# 对所有用户信息的查询
@userBluePrint.route('/accountList', methods=['GET', 'PUT'])
def accountList():
    userType = session["userType"]
    if userType == 0:  # 普通用户无法访问
        return jsonify(code=400, msg="您没有权限访问此页面")
    else:
        if request.method == 'GET':
            # 请求用户信息列表,返回含有所有用户列表的json数据
            # 前端通过ajax传入简单字符串(times),后端返回json
            # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
            # 从数据库中搜寻第n*10-n*10+9共十个user对象,作为List并打包为json传出
            times = request.args.get("times", 1, type=int)
            users = userService.selectAllCommonUser(times)  # 查看除了超管外的所有用户
            array_list = []
            for user in users:
                array_list.append(user.to_json())
            return jsonify(code=200, msg=array_list)

        if request.method == 'PUT':
            # 用户忘记密码时，联系管理员重置密码
            data = request.get_json()
            userid = data['userid']
            userService.resetPassword(userid, "123456")
            return jsonify(code=200, msg="密码重置成功,默认密码为123456")


@userBluePrint.route('/adminList', methods=['GET', 'PUT'])
def adminList():
    userType = session["userType"]
    if userType == 2:  # 只有超管能访问
        if request.method == 'GET':
            times = request.args.get("times", 1, type=int)
            users = userService.selectAllUser(times)  # 能查看所有的用户
            array_list = []
            for user in users:
                array_list.append(user.to_json())
            return jsonify(code=200, msg=array_list)

        if request.method == 'PUT':
            data = request.get_json()
            userid = data['userid']
            newUserType = data['newUserType']
            userService.updataUserTpye(userid, newUserType)
            return jsonify(code=200, msg="用户权限修改成功")
    else:
        return jsonify(code=400, msg="您没有权限访问此页面")
