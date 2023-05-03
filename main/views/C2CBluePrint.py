"""
本蓝图接入url操作为:
    对某一个人的某一本书的增删改查
    对所有人的一类书的查询
    对某一个C2C借书单的增删改查
    对所有C2C借书单的查询
"""
from datetime import datetime, timedelta

from flask import Blueprint, render_template, request, redirect, json, jsonify, session

from service import bookService, listService

C2CBluePrint = Blueprint('C2CBluePrint', __name__)


# 查看我上传的书
@C2CBluePrint.route('/books/mine/<int:times>', methods=['GET'])
def c2cGetMyBooks(times):
    userid = session['userid']
    books = bookService.getMyBooks(userid, times)
    return jsonify(code=200, msg=books)


# 查看我收到的申请
@C2CBluePrint.route('/books/requireMe/<int:times>', methods=['GET'])
def c2cGetRequireMe(times):
    userid = session['userid']
    requires = bookService.getRequireMe(userid, times)
    return jsonify(code=200, msg=requires)


# 查看我申请的
@C2CBluePrint.route('/books/myRequire/<int:times>', methods=['GET'])
def c2cGetMyRequire(times):
    userid = session['userid']
    requires = bookService.getMyRequire(userid, times)
    return jsonify(code=200, msg=requires)


# 借书人发送请求
@C2CBluePrint.route('/books/sendRequire', methods=['POST'])
def sendRequire():
    userid = session['userid']
    require = request.get_json()
    bookService.sendRequire(userid, require['ownerid'], require['bookid'], require['bookname'], 0)
    return jsonify(code=200, msg="已发送申请")


# 拥有者审核
@C2CBluePrint.route('/books/checkRequire/<int:requireId>/<int:bookId>/<int:status>', methods=['UPDATE'])
def checkRequire(requireId, bookId, status):
    code = bookService.checkRequire(requireId, bookId, status)
    if code == 1:
        return jsonify(code=200, msg="借出成功")
    elif code == -1:
        return jsonify(code=400, msg="借出失败，该书已被借走")
    elif code == 0:
        return jsonify(code=200, msg="拒绝成功")


# 拥有者标记还书
@C2CBluePrint.route('/books/returnBookToMe/<int:bookId>', methods=['UPDATE'])
def returnBookToMe(bookId):
    bookService.returnBookToMe(bookId)
    return jsonify(code=200, msg="已归还")
