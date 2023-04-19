from modules.user import User
from init import db


# 用户登录验证
def checkUser(userid, password):
    # 喜闻乐见的登录验证操作
    pass


# 添加用户
def addUser():
    #
    pass


def test():
    print(User.query.all())
    print(db.session.query(User).first())


