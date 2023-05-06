from flask import Flask
from flask_cors import *

from ex import db
from views.AdminBluePrint import AdminBluePrint
from views.GuestBluePrint import GuestBluePrint
from views.LoginUserBluePrint import LoginUserBluePrint
from views.SuperAdminBluePrint import SuperAdminBluePrint


def createApp():
    app = Flask(__name__)
    app.secret_key = 'whatu149isilike'
    CORS(app, supports_credentials=True)

    # 配置数据库设置
    DBconfig(app)

    # 配置路径及蓝图
    addRoute(app)
    return app


def addRoute(app):
    # 跳转到第一个参数对应的py文件查看蓝图(即路由)的详细信息;
    # url_prefix表示该蓝图内对应url的公共前缀
    app.register_blueprint(GuestBluePrint, url_prefix='/guest')
    app.register_blueprint(LoginUserBluePrint, url_prefix='/loginUser')
    app.register_blueprint(AdminBluePrint, url_prefix='/admin')
    app.register_blueprint(SuperAdminBluePrint, url_prefix='/superAdmin')


def DBconfig(app):
    # 设置数据库连接地址
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://Raymond:123456@127.0.0.1:3306/librarymanage'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    app.config['SQLALCHEMY_ECHO'] = True
    db.init_app(app)
