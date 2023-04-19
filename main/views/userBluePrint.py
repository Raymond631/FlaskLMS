"""
本蓝图接入url操作为:
    验证用户登录
    对某一个用户信息的增删改查
    对所有用户信息的查询
"""
from flask import Blueprint, render_template, request, redirect, json

userBluePrint = Blueprint('userBluePrint', __name__)


# 验证用户登录(请求session，身份验证操作，用于用户登录)
@userBluePrint.route('/session', methods=['GET'])
def session():
    # 众所周知的登录验证操作
    # 前端通过ajax传入json(user对象的id与password),后端返回简单字符串
    # 将json解包后获得id与password，将其进行众所周知的登录验证后放入session中，返回简单字符串提示是否成功登录
    pass


# 对某一个用户信息的增删改查
@userBluePrint.route('/account', methods=['POST', 'DELETE', 'PUT', 'GET'])
def account():

    if request.method == 'POST':
        # 新增用户信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入json(id,password)
        # 解包json获得两个简单字符串，进行耳熟能详的注册用户的操作(含重复id检验)
        # 结果返回简单字符串,提示新建是否成功
        pass


    if request.method == 'DELETE':
        # 删除用户信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入简单字符串(user的id),后端返回简单字符串
        # 根据所传入user的id查找到该用户,并完成对数据库中该用户数据的删除
        # 结果返回简单字符串,提示删除是否成功
        pass


    if request.method == 'PUT':
        # 修改用户信息操作,根据传入json信息修改数据库
        # 前端传入json对象(user类),后端返回简单字符串
        # 将传入json解包后获得user对象，根据其id进行数据库的修改操作，返回操作是否成功的信息
        pass


    if request.method == 'GET':
        # 查询用户信息操作,返回json数据
        # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
        # 从数据库中搜索searchKey相关数据,将搜索到的user对象根据times作为List并打包为json传出
        pass


# 对所有用户信息的查询
@userBluePrint.route('/accountList', methods=['GET'])
def accountList():
    # 请求用户信息列表,返回含有所有用户列表的json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个user对象,作为List并打包为json传出
    pass
