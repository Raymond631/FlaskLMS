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
@SuperAdminBluePrint.route('/adminList', methods=['GET'])
def getAdminList():
    users = userService.selectAllUser()  # 能查看所有的用户
    return jsonify(code=200, msg=users)


# 超管修改
@SuperAdminBluePrint.route('/adminList', methods=['PUT'])
def updataUserTpye():
    data = request.get_json()
    userid = data['userid']
    newUserType = data['newUserType']
    userService.updataUserTpye(userid, newUserType)
    return jsonify(code=200, msg="用户权限修改成功")
