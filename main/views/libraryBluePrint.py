"""
本蓝图接入url操作为:
    对图书馆内某一本(些)书的增删改查
    对图书馆所有书的查询
    对图书馆一类书的查询
    对某一个图书馆借书单的增删改查
    对所有图书馆借书单的查询
"""
from flask import Blueprint, render_template, request, redirect, json

libraryBluePrint = Blueprint('libraryBluePrint', __name__)


# 对图书馆内某一本书的增删改查
@libraryBluePrint.route('/book', methods=['POST', 'DELETE', 'PUT', 'GET'])
def book():

    if request.method == 'POST':
        # 新增书籍信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入json(book),后端返回简单字符串
        # 通过搜索数据库分配id，将json解包后与id结合形成book对象，插入数据库，返回操作结果提示
        pass

    if request.method == 'DELETE':
        # 删除书籍信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入简单字符串(book的id),后端返回简单字符串
        # 根据所传入book的id查找到该书,并完成对数据库中该书数据的删除
        # 结果返回简单字符串,提示删除是否成功
        pass

    if request.method == 'PUT':
        # 修改书籍信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入json(book对象),后端返回简单字符串
        # 将json解包后为book后,根据所解包book的id查到到该书,并完成对数据库的修改
        # 结果返回简单字符串,提示修改是否成功
        pass

    if request.method == 'GET':
        # 查询书籍信息操作,返回json数据
        # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
        # 从数据库中搜索searchKey相关数据,将搜索到的book对象根据times作为List并打包为json传出
        pass


# 对图书馆所有书的查询
@libraryBluePrint.route('/books', methods=['GET'])
def books():
    # 查询所有书籍信息操作,返回json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个以library为拥有者的book对象,作为List并打包为json传出
    pass


# 推荐图书
@libraryBluePrint.route('/recommendBooks', methods=['GET'])
def recommendBooks():
    # 返回当前用户推荐书籍
    # 前端通过ajax传入简单字符串(times),后端返回json
    # 获取session中user对象,根据user对象查询借书单,推荐算法得到关键词,搜索关键词相关书籍
    # 并根据times选择部分作为List并打包为json传出
    pass


@libraryBluePrint.route('/list', methods=['POST', 'DELETE', 'PUT', 'GET'])
def l1st():
    # 注意此处为了不与关键词list冲突将函数名改为了l1st

    if request.method == 'POST':
        # 用户操作,新增借书单信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入简单字符串(Book的id),后端返回简单字符串
        # 先从response中获取用户对象,判断是否可以借阅(借阅到达上限/欠费),若不可借书,提醒不可借书原因
        # 若可借书,则完成相关业务后返回成功信息
        pass

    if request.method == 'DELETE':
        # 管理员操作,删除借书单信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入简单字符串(list的id),后端返回简单字符串
        # 根据所传入user的id查找到list对象，并判断此书单是否已欠费，若欠费则提醒缴费，若此单无欠费则进行数据库的删除操作
        # 将操作结果或错误提醒作为简单字符串返回
        pass

    if request.method == 'PUT':
        # 管理员操作,修改借书单信息操作,根据传入json信息修改数据库
        # 前端通过ajax传入json(list),后端返回简单字符串
        # 解包json获得list对象，进行数据库的修改操作
        # 将操作结果作为简单字符串返回
        pass

    if request.method == 'GET':
        # 管理员操作,查询借书单信息操作
        # 前端通过ajax传入json(searchKey,times),后端返回json(list)
        # 根据查searchKey找list，结合他times检索出部分作为list，打包为json后传出
        pass


@libraryBluePrint.route('/lists', methods=['GET'])
def lists():
    # 查询所有借书单信息操作,返回json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个list对象,作为List并打包为json传出
    pass
