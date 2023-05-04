"""
所有登录过的用户都可以访问
"""
import os
import random
import string
from datetime import datetime, timedelta

from flask import session, jsonify, request, Blueprint

from service import userService, bookService, listService, messageService

LoginUserBluePrint = Blueprint('LoginUserBluePrint', __name__)


@LoginUserBluePrint.before_request
def before():
    if 'userType' in session:
        pass
    else:
        return jsonify(code=400, msg="您还没有登录")


""" -----------------------------用户模块---------------------------- """


# 登出
@LoginUserBluePrint.route('/session', methods=['DELETE'])
def logout():  # 方法名不能用session
    # 退出登录
    session.clear()
    return jsonify(code=200, msg="登出成功")


# 销户
@LoginUserBluePrint.route('/account', methods=['DELETE'])
def deleteAccount():
    # 删除用户信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(user的id),后端返回简单字符串
    # 根据所传入user的id查找到该用户,并完成对数据库中该用户数据的删除
    # 结果返回简单字符串,提示删除是否成功
    userid = session['userid']  # 登陆后才能注销
    userType = session["userType"]
    if userType == 0:
        return jsonify(code=400, msg="超管账号不能注销")
    else:
        userService.deleteUser(userid)
        session.clear()
        return jsonify(code=200, msg="账号注销成功")


# 获取个人中心数据
@LoginUserBluePrint.route('/account', methods=['GET'])
def getUserInfo():
    # 查询用户信息操作,返回json数据
    # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
    # 从数据库中搜索searchKey相关数据,将搜索到的user对象根据times作为List并打包为json传出
    userid = session['userid']
    userInfo = userService.selectUserInfo(userid)
    return jsonify(code=200, msg=userInfo)


# 修改个人简介
@LoginUserBluePrint.route('/account', methods=['PUT'])
def updataAccount():
    userid = session['userid']
    data = request.get_json()
    introduce = data['introduce']
    userService.updateUser(userid, introduce)
    return jsonify(code=200, msg="修改成功")


# 修改密码
@LoginUserBluePrint.route('/account', methods=['PUT'])
def changePassword():
    userid = session['userid']
    data = request.get_json()
    password = data['password']
    userService.changePassword(userid, password)
    return jsonify(code=200, msg="修改成功")


# 根据最近借的一本书的类型进行推荐
# TODO 如果没有借过书怎么办？
@LoginUserBluePrint.route('/recommendBooks/<int:times>', methods=['GET'])
def recommendBooks(times):
    # 返回当前用户推荐书籍
    # 前端通过ajax传入简单字符串(times),后端返回json
    # 获取session中user对象,根据user对象查询借书单,推荐算法得到关键词,搜索关键词相关书籍
    # 并根据times选择部分作为List并打包为json传出
    userid = session['userid']
    books = bookService.recommendBooks(userid, times)
    return jsonify(code=200, msg=books)


"""-----------------------书籍管理接口，图书馆和C2C通用------------------------------"""


@LoginUserBluePrint.route('/book', methods=['POST'])
def addBook():
    # 新增书籍信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(book),后端返回简单字符串
    # 通过搜索数据库分配id，将json解包后与id结合形成book对象，插入数据库，返回操作结果提示
    userid = session['userid']
    userType = session["userType"]
    book = request.get_json()
    if userType == 1:  # 管理员
        userid = "sadmin"
    bookService.addBook(book['name'], book['isbncode'], book['type'], book['introduce'], userid, book['imagePath'], 1)  # 1表示在馆
    return jsonify(code=200, msg="添加成功")


@LoginUserBluePrint.route('/book/<int:bookId>', methods=['DELETE'])
def deleteBook(bookId):
    # 删除书籍信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(book的id),后端返回简单字符串
    # 根据所传入book的id查找到该书,并完成对数据库中该书数据的删除
    # 结果返回简单字符串,提示删除是否成功
    userid = session['userid']
    userType = session["userType"]
    if userType == 1:  # 管理员
        userid = "sadmin"
    bookService.deleteBook(bookId, userid)
    return jsonify(code=200, msg="删除成功")


@LoginUserBluePrint.route('/book', methods=['PUT'])
def updateBook():
    # 修改书籍信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(book对象),后端返回简单字符串
    # 将json解包后为book后,根据所解包book的id查到到该书,并完成对数据库的修改
    # 结果返回简单字符串,提示修改是否成功
    userid = session['userid']
    userType = session["userType"]
    if userType == 1:  # 管理员
        userid = "sadmin"
    book = request.get_json()
    bookService.updateBook(userid, book['bookId'], book['name'], book['isbncode'], book['type'], book['introduce'], book['imagePath'])
    return jsonify(code=200, msg="修改成功")


# 上传图片
# TODO 之后再与上传书籍、修改书籍的接口合并
@LoginUserBluePrint.route('/uploadImage', methods=['POST'])
def upload():
    basedir = os.path.abspath(os.path.dirname("./"))  # 当前文件所在路径
    ran_str = ''.join(random.sample(string.ascii_letters + string.digits, 16))  # 随机字符串，防止重名
    image = request.files.get('image')
    imagePath = "/static/images/" + ran_str + image.filename
    image.save(basedir + imagePath)
    return jsonify(code=200, imagePath=imagePath)


"""----------------------------------图书馆借书-------------------------------"""


# 扫码借书（扫码后跳转到书籍详情界面）,返回数据不分页
@LoginUserBluePrint.route('/scan/<string:isbn>', methods=['GET'])
def scanCode(isbn):
    books = bookService.searchBookByISBN(isbn)
    return jsonify(code=200, msg=books)


# 借书
@LoginUserBluePrint.route('/list/<int:bookid>', methods=['POST'])
def borrowBook(bookid):
    # 用户操作,新增借书单信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入简单字符串(Book的id),后端返回简单字符串
    # 先从response中获取用户对象,判断是否可以借阅(借阅到达上限/欠费),若不可借书,提醒不可借书原因
    # 若可借书,则完成相关业务后返回成功信息
    userType = session["userType"]
    userid = session['userid']
    borrowTime = datetime.now()
    code = listService.addBorrowRecord(userType, userid, bookid, borrowTime)
    if code == -1:
        return jsonify(code=400, msg="您有图书超时未归还，请先归还图书并缴纳罚款")
    elif code == -2:
        return jsonify(code=400, msg="您借阅的书籍数量已达上限")
    elif code == -3:
        return jsonify(code=400, msg="该书已被借走")
    elif code == 1:
        return jsonify(code=200, msg=f"借阅成功,最晚归还时间：{(borrowTime + timedelta(days=30)).strftime('%Y-%m-%d %H:%M:%S')}")


# 借书记录
@LoginUserBluePrint.route('/list/<int:times>', methods=['GET'])
def getBorrowList(times):
    userid = session['userid']
    borrows = listService.getBorrowList(userid, times)
    return jsonify(code=200, msg=borrows)


# 延期
@LoginUserBluePrint.route('/list/<int:borrowListId>', methods=['PUT'])
def postpone(borrowListId):
    # 管理员操作,修改借书单信息操作,根据传入json信息修改数据库
    # 前端通过ajax传入json(list),后端返回简单字符串
    # 解包json获得list对象，进行数据库的修改操作
    # 将操作结果作为简单字符串返回
    code = listService.postpone(borrowListId)
    if code == -1:
        return jsonify(code=400, msg="已延期过一次，不能再延期")
    elif code == 0:
        return jsonify(code=400, msg="已归还的图书不能延期")
    elif code == 1:
        return jsonify(code=400, msg="成功延期一个月")


"""-----------------------------C2C借书------------------------------------------"""


# 借书人发送C2C请求
@LoginUserBluePrint.route('/books/sendRequire', methods=['POST'])
def sendRequire():
    userid = session['userid']
    require = request.get_json()
    bookService.sendRequire(userid, require['ownerid'], require['bookid'], require['bookname'], 0)
    return jsonify(code=200, msg="已发送申请")


# 拥有者查看收到的申请
@LoginUserBluePrint.route('/books/requireMe/<int:times>', methods=['GET'])
def c2cGetRequireMe(times):
    userid = session['userid']
    requires = bookService.getRequireMe(userid, times)
    return jsonify(code=200, msg=requires)


# 拥有者审核借书申请（同意、拒绝）
@LoginUserBluePrint.route('/books/checkRequire/<int:requireId>/<int:bookId>/<int:status>', methods=['UPDATE'])
def checkRequire(requireId, bookId, status):
    code = bookService.checkRequire(requireId, bookId, status)
    if code == 1:
        return jsonify(code=200, msg="借出成功")
    elif code == -1:
        return jsonify(code=400, msg="拒绝成功")
    elif code == 0:
        return jsonify(code=200, msg="借出失败，该书已被借走")


# 查看我发送的借书申请（如果拥有者同意了，借书人点击拥有者的userid跳转到聊天界面，协商取书时间地点）
@LoginUserBluePrint.route('/books/myRequire/<int:times>', methods=['GET'])
def c2cGetMyRequire(times):
    userid = session['userid']
    requires = bookService.getMyRequire(userid, times)
    return jsonify(code=200, msg=requires)


"""-----------------------------C2C还书------------------------------------------"""


# 拥有者查看自己上传的书
@LoginUserBluePrint.route('/books/mine/<int:times>', methods=['GET'])
def c2cGetMyBooks(times):
    userid = session['userid']
    books = bookService.getMyBooks(userid, times)
    return jsonify(code=200, msg=books)


# 拥有者标记还书
@LoginUserBluePrint.route('/books/returnBookToMe/<int:bookId>', methods=['UPDATE'])
def returnBookToMe(bookId):
    bookService.returnBookToMe(bookId)
    return jsonify(code=200, msg="已归还")


"""-------------------------------交流模块----------------------------------------"""


@LoginUserBluePrint.route('/chat', methods=['POST'])
def sendMsg():
    # 接收某人发送的信息
    # 前端通过ajax传入json对象,后端返回简单字符串
    # 将json对象解包为message对象，进行数据库操作，并以简单字符串返回操作结果
    speakerid = session['userid']
    date = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    data = request.get_json()
    messageService.addmsg(speakerid, data['receiverid'], data['msg'], date)
    return jsonify(code=200, msg="发送成功")


@LoginUserBluePrint.route('/chat/<int:times>', methods=['GET'])
def getMsg(times):
    # 对某一个人收发的信息进行查询
    # 前端通过ajax传入json(含(searchKey)和(times)),后端返回json
    # 从数据库中搜索searchKey相关数据(包括其作为寄信人和收信人),将搜索到的message对象根据times作为List并打包为json传出
    userid = session['userid']
    messageService.getmsg(userid, times)
