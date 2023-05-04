"""
只有管理员、超级管理员可以访问
"""

from flask import Blueprint, session, jsonify, request

from service import userService, bookService, listService

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


@AdminBluePrint.route('/accountList/<int:times>', methods=['GET'])
def getAccountList(times):
    # 请求用户信息列表,返回含有所有用户列表的json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个user对象,作为List并打包为json传出
    users = userService.selectAllCommonUser(times)  # 查看除了超管外的所有用户
    return jsonify(code=200, msg=users)


# 管理员修改
@AdminBluePrint.route('/accountList/<string:userid>', methods=['PUT'])
def resetPassword(userid):
    userService.resetPassword(userid, "123456")
    return jsonify(code=200, msg="密码重置成功,默认密码为123456")


"""----------------------------还书管理模块----------------------------------------"""


# 查看全馆的借书记录，不包括C2C的记录
@AdminBluePrint.route('/lists/<int:times>', methods=['GET'])
def getAllBorrowList(times):
    # 管理员操作,查询所有借书单信息操作,返回json数据
    # 前端通过ajax传入简单字符串(times),后端返回json
    # times为计数器,将其转为int查看是第几次请求,(下将其int值计为n)
    # 从数据库中搜寻第n*10-n*10+9共十个list对象,作为List并打包为json传出
    borrows = listService.getAllBorrowList(times)
    return jsonify(code=200, msg=borrows)


@AdminBluePrint.route('/list/<int:borrowListId>', methods=['DELETE'])
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


"""---------------------------------公告发布模块---------------------------------"""


# TODO 管理员发布公告，用sadmin的身份发送
@AdminBluePrint.route('/notice', methods=['POST'])
def addNotice():
    pass
