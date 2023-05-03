"""
本蓝图接入url操作为:
    接收某人发送的信息
    对某一个人发出的信息进行查询
"""
from datetime import datetime

from flask import Blueprint, render_template, request, redirect, json, session, jsonify

from service import messageService

messageBluePrint = Blueprint('chatBluePrint', __name__)


# 接收某人发送的信息或对某一个人发出的信息进行查询
@messageBluePrint.route('/chat', methods=['POST'])
def sendMsg():
    # 接收某人发送的信息
    # 前端通过ajax传入json对象,后端返回简单字符串
    # 将json对象解包为message对象，进行数据库操作，并以简单字符串返回操作结果
    speakerid = session['userid']
    date = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    data = request.get_json()
    messageService.addmsg(speakerid, data['receiverid'], data['msg'], date)
    return jsonify(code=200, msg="发送成功")


@messageBluePrint.route('/chat/<int:times>', methods=['GET'])
def getMsg(times):
    # 对某一个人收发的信息进行查询
    # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
    # 从数据库中搜索searchKey相关数据(包括其作为寄信人和收信人),将搜索到的message对象根据times作为List并打包为json传出
    userid = session['userid']
    messageService.getmsg(userid, times)


# 查询所有管理员发布的信息，用于放入首页管理员信息轮播图
@messageBluePrint.route('/notice', methods=['GET'])
def notice():
    # 查询出所有管理员发布的所有message对象，并取前五个作为list打包为json传出
    # 前端通无传入，,后端返回json(message对象List)
    # 查找message对象中发出者为管理员的信息，取时间最靠前的五个作为list打包为jsom传到前端
    pass
