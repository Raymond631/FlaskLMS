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


def updateUser(userid, password, introduce):
    User.query.filter(User.id == userid).update({'password': password, 'introduce': introduce})
    db.session.commit()


def selectUserInfo(userid):
    return User.query.filter(User.id == userid).first()


def selectAllCommonUser(times):
    # 查看除了超管外的所有用户
    return User.query.filter(User.type != 2).paginate(page=times, per_page=10, error_out=False)


def selectAllUser(times):
    return User.query.paginate(page=times, per_page=10, error_out=False)


def resetPassword(userid, password):
    User.query.filter(User.id == userid).update({'password': password})


def updataUserTpye(userid, newUserType):
    User.query.filter(User.id == userid).update({'newUserType': newUserType})
    db.session.commit()
