from modules.user import User
from init import db


# 用户登录验证
def checkUser(userid, password):
    # 喜闻乐见的登录验证操作
    user = User.query.filter(User.id == userid).first()
    if user is None:
        # 未注册
        return -1
    else:
        if user.password != password:
            # 密码错误
            return -2
        else:
            # 登录成功，返回账号类型存入session
            return user.type


# 添加用户
def addUser(userid, password):
    user = User.query.filter(User.id == userid).first()
    if user is None:
        newUser = User(uid=userid, password=password, introduce='', type=0)
        db.session.add(newUser)
        db.session.commit()
        return True
    else:
        return False


def deleteUser(userid):
    User.query.filter(User.id == userid).delete()
    db.session.commit()


def updateUser(userid, introduce):
    User.query.filter(User.id == userid).update({'introduce': introduce})
    db.session.commit()


def changePassword(userid, password):
    User.query.filter(User.id == userid).update({'password': password})
    db.session.commit()


def selectUserInfo(userid):
    userinfo = User.query.filter(User.id == userid).first()
    userinfo.password = ""
    return userinfo


def selectAllCommonUser(times):
    # 查看除了超管外的所有用户
    userPaginate = User.query.filter(User.type != 2).paginate(page=times, per_page=9, error_out=False)
    num = userPaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    users = []
    for user in userPaginate.items:
        users.append(user.to_dict())
    return {"num": num, "users": users}


def selectAllUser(times):
    userPaginate = User.query.paginate(page=times, per_page=9, error_out=False)
    num = userPaginate.pages * 9  # 总数(假设每页都满，对前端没影响)
    users = []
    for user in userPaginate.items:
        users.append(user.to_dict())
    return {"num": num, "users": users}


def resetPassword(userid, password):
    User.query.filter(User.id == userid).update({'password': password})


def updataUserTpye(userid, newUserType):
    User.query.filter(User.id == userid).update({'newUserType': newUserType})
    db.session.commit()
