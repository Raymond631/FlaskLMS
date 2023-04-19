# FlaskLM项目文档
FlaskLiblalyManane项目采用前后端分离开发方式，接口为restful风格接口
# 模块功能分析
在智能图书借阅系统中我们按照使用人员主要分成了三大模块：

借书者模块、管理员模块、后端模块。各模块功能分析如下。

①	借书者模块：二维码借书，还书提醒，违规处罚，查看借书上限、图书推荐、C2C互借 、系统公告、个人用户中心等。

②	管理员模块：对图书、借书者信息的增删改查功能、二维码归档，借阅信息报表，读者来信/咨询等。

 ③	后端模块：对管理员信息的增删改查功能。

# 其中对前后端接口分析如下:
根据restfulApi，前端对于数据的‘增’、’删‘、’改‘、’查‘要求分别对应请求方式的 'POST', 'DELETE', 'PUT', 'GET'
## 从url请求分析(后端开发人员须知)
自己去view/service里面去看，要干什么都注释在那了
## 从所需功能分析(前端开发人员须知)
本系统主要分为5大页面(即导航栏有五个选项):主页、图书馆、C2C、信息、个人中心

额外需要:图书详情展示页面,信息编辑页面，用户管理页面

其中，每个列表页面每一次请求后端只返回至多10个对象，并通过简单字符串(times)(初始值为10)控制。
### 主页：
轮播图播报管理员公告:ajax请求(/message/notice--GET)，无传入;获取返回后解json包获得message对象列表

扫码按钮:点击后可进入二维码扫描阶段，识别到二维码后将其转为ISBN码，自动跳转入图书馆搜索界面并将调用其搜索功能，ajax请求(/library/book--GET)，将ISBN作为简单字符串(searchKey)与计数器(times)打包为json传入后端
### 图书馆
图书总览，一次显示10个:ajax请求(/library/books--GET)，将一个字符串(times)作为计数器(初始值为0)传入后端，获取后端返回book对象列表后显示出相关信息；在网页最下方设置“更多”按钮，点击后计数器自加1，并重复ajax操作

搜索:网页上方设置搜索栏，ajax请求(/library/book--GET)，将关键字作为字符串(searchKey)与计数器(times)打包为json一起传入，获取book对象列表后同上

推荐书籍:搜索栏下设置按钮，ajax请求(/library/recommendBooks--GET)，传入计数器(times)，获取book对象列表后同上;若未登录则提示登录

新建书籍:搜索栏下设置按钮，点击后进入图书详情展示页面，键入图书信息(除id)后，进行ajax请求(/library/books--POST)，将book对象打包为json，获取后端传出操作信息并展示
### C2C
图书总览:ajax请求(/C2C/books--GET)，将一个字符串(times)作为计数器(初始值为0)传入后端，获取后端返回book对象列表后同上

搜索:网页上方设置搜索栏，ajax请求(/C2C/book--GET)，将关键字作为字符串(searchKey)与计数器(times)打包为json一起传入，获取book对象列表后同上

推荐书籍:搜索栏下设置按钮，ajax请求(/C2C/recommendBooks--GET)，传入计数器(times)，获取book对象列表后同上;若未登录则提示登录

新建书籍:搜索栏下设置按钮，点击后进入图书详情展示页面，键入图书信息后，进行ajax请求(/C2C/books--POST)，将book对象打包为json，获取后端传出操作信息并展示

### 图书详情展示页面
详情展示:在总览页面中点击图书进入，直接展示图书相关信息；同时进行ajax请求(/$/list--GET)，将书籍的id(searchKey)和计数器(times)打包作为json传入后端，获得后端传出json对象若解包有list对象则显示相关信息(此处根据书籍的拥有者判断是进入c2c还是library)

(仅限用户可用，查询session中用户的权限可知)借出书籍:ajax请求(/$/list--POST)，将书籍的id作为简单字符串对象传入后端，获取后端获得的操作响应并显示

(仅限C2C情景下的书籍拥有者和图书馆情景下管理员可用)修改借书单:ajax请求(/$/list--PUT),将list对象打包为json对象传入后端，获取后端获得的操作响应并显示(可设置续借按钮，自动获取当前时间并将其设置为借书时间)

(仅限C2C情景下的书籍拥有者和图书馆情景下管理员可用)归还书籍:ajax请求(/$/list--DELETE),将list的id作为简单字符串传入后端，获取后端获得的操作响应并显示

(仅限C2C情景下的书籍拥有者和图书馆情景下管理员可用)修改书籍信息:将修改后信息打包为json传入后端，后端返回修改结果，ajax请求(/$/book--PUT)

(仅限C2C情景下的书籍拥有者和图书馆情景下管理员可用)图书删除:ajax请求(/$/book--DELETE),将book的id作为简单字符串传入后端，获取后端获得的操作响应并显示
### 信息
该模块需要登录，若未登录先提示登录。

信息总览:ajax请求(/message/chat--GET)，将一个字符串(times)作为计数器传入后端，获取后端返回message对象列表后同上()(收信未读则可高亮或标注红点等)

搜索:网页上方设置搜索栏，ajax请求(/user/account--GET)，将关键字作为字符串(searchKey)与计数器(times)打包为json一起传入，获取user对象列表后同上

搜索栏旁有“新建发送”按钮可直接跳往信息编辑页面

点击信息总览后可跳往信息编辑页面并进行只读查看
### 信息编辑
发送:编辑需发送的信息内容后点击发送，ajax请求(/message/chat--POST)，将信息内容打包为message对象并以json传出，后端返回操作结果后进行显示
### 个人中心
登录页面:ajax请求(/user/session--GET),将用户信息打包为json(id,password)传入后端，后端返回验证结果(即session中是否拥有用户对象)

注册页面:ajax请求(/user/account--POST),将用户信息打包为json(id,password)传入后端，后端返回注册结果

个人信息显示:直接在登录成功后从session中获取user对象的数据并显示;ajax请求(/C2C/Book--GET)，将用户id(searchKey)与计数器(times)打包为json传入后端，获取后端传出的json解包为list对象后展示;

个人信息修改:ajax请求(/user/account--PUT),将用户信息打包为json传入后端，后端返回修改结果
#
#
若用户为管理员/超管，则会额外增设置管理按钮，点击后跳转至管理界面
### 用户管理

管理界面可设置顶部导航栏，分别为用户、图书、图书馆书单、C2C书单，分别对应四套ajax操作

此套页面与图书展示类似，所需调用ajax有:总览，搜索，修改，删除。其对应ajax分别为:

总览:将一个字符串(times)作为计数器(初始值为0)传入后端，获取后端返回book对象列表后同上,ajax请求(/user/accountList--GET)、(/Books--GET)、(/library/lists--GET)、(/C2C/lists--GET)

搜索:网页上方设置搜索栏，将关键字作为字符串(searchKey)与计数器(times)打包为json一起传入，获取user对象列表后同上，ajax请求(/user/account--GET)、(/Book--GET)、(/library/list--GET)、(/C2C/list--GET)

在点击后出现的详情展示页面里实现修改与删除用户的功能:

修改:将修改后信息打包为json传入后端，后端返回修改结果，ajax请求(/user/account--PUT)、(/$/Book--PUT)、(/library/list--PUT)、(/C2C/list--PUT)

删除:将待操作对象的id作为字符串传入后端对数据进行删除，得到操作结果后显示，(/user/account--DELETE)、(/$/Book--DELETE)、(/library/list--DELETE)、(/C2C/list--DELETE)