"""
只有管理员、超级管理员可以访问
"""
from datetime import datetime

from flask import Blueprint, session, jsonify, request

from service import userService, bookService, listService, messageService

AdminBluePrint = Blueprint('AdminBluePrint', __name__)


@AdminBluePrint.before_request
def before():
    if 'userType' in session:
        userType = session["userType"]
        if userType == 0 or userType == 1:
            pass
        else:
            return jsonify(code=400, msg="您没有权限访问此页面")
    else:
        return jsonify(code=400, msg="您还没有登录")


"""----------------------------用户管理模块----------------------------------------"""


# 查看除了超管外的所有用户
@AdminBluePrint.route('/accountList', methods=['GET'])
def getAccountList():
    users = userService.selectAllCommonUser()
    return jsonify(code=200, msg=users)


# 管理员修改
@AdminBluePrint.route('/accountList/<string:userid>', methods=['PUT'])
def resetPassword(userid):
    userService.resetPassword(userid, "123456")
    return jsonify(code=200, msg="密码重置成功,默认密码为123456")


"""----------------------------还书管理模块----------------------------------------"""


# 查看全馆的借书记录，不包括C2C的记录
@AdminBluePrint.route('/lists', methods=['GET'])
def getAllBorrowList():
    borrows = listService.getAllBorrowList()
    return jsonify(code=200, msg=borrows)


# 帮用户还书
@AdminBluePrint.route('/list/<int:borrowListId>', methods=['DELETE'])
def returnBook(borrowListId):
    res = listService.returnBook(borrowListId)
    if res['code'] == -1:
        return jsonify(code=400, msg=f"还书成功，但借阅超时，需缴纳{res.get('fine')}元罚款")  # 由管理员人工收款
    elif res['code'] == 1:
        return jsonify(code=200, msg="还书成功")


"""---------------------------------公告发布模块---------------------------------"""


@AdminBluePrint.route('/notice', methods=['POST'])
def addNotice():
    userid = session['userid']
    data = request.get_json()
    content = data['content']
    lastModified = datetime.now()
    messageService.addNotice(userid, content, lastModified)
    return jsonify(code=200, msg="发布成功")


@AdminBluePrint.route('/notice/<int:id>', methods=['DELETE'])
def deleteNotice(id):
    messageService.deleteNotice(id)
    return jsonify(code=200, msg="删除成功")


@AdminBluePrint.route('/notice', methods=['PUT'])
def updateNotice():
    userid = session['userid']
    lastModified = datetime.now()
    data = request.get_json()
    messageService.updateNotice(data['id'], userid, data['content'], lastModified)
    return jsonify(code=200, msg="修改成功")
