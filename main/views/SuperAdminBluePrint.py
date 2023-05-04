"""
 只有超级管理员可以访问
"""

from flask import Blueprint, session, jsonify, request

from service import userService

SuperAdminBluePrint = Blueprint('SuperAdminBluePrint', __name__)


@SuperAdminBluePrint.before_request
def before():
    if 'userType' in session:
        if session["userType"] == 0:
            pass
        else:
            return jsonify(code=400, msg="您没有权限访问此页面")
    else:
        return jsonify(code=400, msg="您还没有登录")


"""-------------------------------管理员身份管理模块--------------------------------"""


# 超管查看
@SuperAdminBluePrint.route('/adminList/<int:times>', methods=['GET'])
def getAdminList(times):
    userType = session["userType"]
    if userType == 0:  # 只有超管能访问
        users = userService.selectAllUser(times)  # 能查看所有的用户
        return jsonify(code=200, msg=users)
    else:
        return jsonify(code=400, msg="您没有权限访问此页面")


# 超管修改
@SuperAdminBluePrint.route('/adminList', methods=['PUT'])
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
