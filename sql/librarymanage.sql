/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : librarymanage

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 06/05/2023 20:56:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书籍的唯一id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的名称',
  `isbncode` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的isbn码',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的类型',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的简介',
  `ownerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍拥有者的id',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍图片的url',
  `status` int NOT NULL COMMENT '0：已借出；1：在馆',
  `lenderid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '在馆时，借阅者为空字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'u3t2nP0PnK', '9791849732122', '生物科学', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (2, 'zqioYvtlA7', '9781389742729', '医药、卫生', 'Anyone who has ever made anything of importance was disciplined. In the Objects tab,                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (3, 'FEluVMunjE', '9784791683550', '语言、文字', 'If the plan doesn’t work, change the plan, but never the goal. Anyone who has never               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (4, '8S7Ko2ougv', '9794415210505', '艺术', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (5, 'H5xHVFBNpH', '9780692442340', '社会科学总论', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (6, 'MjeI8RaJ08', '9794555704360', '环境科学、安全科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (7, 'fjmskfDV3e', '9792902878092', '政治、法律', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (8, 'i1QG8uEJbh', '9786704581182', '哲学、宗教', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (9, '1qvfAG6TIh', '9782016873076', '数理科学和化学', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (10, '9fwK2GuZ8C', '9784861491405', '交通运输', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (11, 'ArooFMocTJ', '9796750933989', '数理科学和化学', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (12, 'HHwi1y5MFr', '9782173867079', '艺术', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (13, 'iFguDI1AqD', '9780194032803', '天文学、地球科学', 'A man’s best friends are his ten fingers.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (14, 'DUXbUu7PVo', '9785753177964', '工业技术', 'You must be the change you wish to see in the world. The On Startup feature allows                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (15, 'JIjqiNH6S3', '9781570322051', '军事', 'If it scares you, it might be a good thing to try. The Main Window consists of several              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (16, 'dID7VBaVv7', '9789176535493', '政治、法律', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (17, 'ieAKJOjrZi', '9786402696706', '哲学、宗教', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (18, 'AhUVhIKCiQ', '9780504925641', '社会科学总论', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (19, 'CKAy4QsdvP', '9795264573971', '生物科学', 'Typically, it is employed as an encrypted version of Telnet. Remember that failure                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (20, '8vR49RkMMp', '9785938319097', '工业技术', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (21, 'ffliIgEe31', '9789293845475', '语言、文字', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (22, 'rN3ANGTYTa', '9780865899049', '艺术', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (23, 'VVVv17jkKC', '9786772614980', '语言、文字', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (24, 'nE3Wwmxpwo', '9781583346570', '医药、卫生', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (25, 'cn5XdQDMCR', '9780265459508', '军事', 'The reason why a great man is great is that he resolves to be a great man.                          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (26, 'zJvZZz4nVZ', '9783208302442', '文化、科学、教育、体育', 'Success consists of going from failure to failure without loss of enthusiasm.                       ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (27, 'u4MnJ0ivJf', '9786980634176', '文学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (28, 'jIaT06tSRP', '9780992509910', '天文学、地球科学', 'I destroy my enemies when I make them my friends. Navicat Cloud provides a cloud                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (29, 'ElCtMU4hUJ', '9783410895183', '文学', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (30, '25UxFHpPgz', '9792623697712', '工业技术', 'Navicat 15 has added support for the system-wide dark mode. Flexible settings enable                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (31, '7LbzBCHEvJ', '9791918761749', '自然科学总论', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (32, 'eyVdVGMdFD', '9788490212073', '语言、文字', 'Anyone who has never made a mistake has never tried anything new. The On Startup                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (33, 'kR43fLwHhm', '9792474631491', '经济', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (34, 'ujiJjOeT2q', '9798044095878', '农业科学', 'Champions keep playing until they get it right.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (35, '7gm2Rjri1C', '9789148363406', '艺术', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (36, 'RqVqOxznn3', '9799594303376', '自然科学总论', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (37, 'bg0ynjL3iJ', '9797236349409', '自然科学总论', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (38, 'D7j8IYc4rM', '9798927541829', '文化、科学、教育、体育', 'Remember that failure is an event, not a person.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (39, 'GbQp4x2Mt0', '9780946573875', '军事', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (40, 'PPrINskfJq', '9797756350022', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Champions keep playing until they get it right. Anyone who has ever made anything                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (41, 'of9WJhpnYM', '9795995869848', '语言、文字', 'I will greet this day with love in my heart. You cannot save people, you can just love them.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (42, 'JfC4UsrWbg', '9781617755422', '生物科学', 'If opportunity doesn’t knock, build a door. If your Internet Service Provider (ISP)               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (43, 'g2S7siGFqn', '9781840334494', '自然科学总论', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (44, 'M33uVOXgxU', '9795455160003', '自然科学总论', 'You cannot save people, you can just love them. Navicat Data Modeler enables you                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (45, 'SS3BVy5oNX', '9785145286922', '历史、地理', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (46, 'PmKmyuFNBM', '9790964589055', '自然科学总论', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (47, 'qZYChlo66O', '9794441430625', '文化、科学、教育、体育', 'If you wait, all that happens is you get older. To successfully establish a new connection          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (48, 're6Cii0gD5', '9799696624454', '艺术', 'If opportunity doesn’t knock, build a door.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (49, 'd7rGMZI5TV', '9798041335304', '文学', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (50, 'lQhSDAiYwZ', '9781311502926', '政治、法律', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (51, 'E7ZIQp63jj', '9787941419559', '语言、文字', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (52, 'npjnacMLdq', '9792518552089', '环境科学、安全科学', 'It wasn’t raining when Noah built the ark. To get a secure connection, the first                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (53, 'jgLxnbSBtN', '9793262078399', '历史、地理', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (54, 'pAekDdslmo', '9797800387547', '自然科学总论', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (55, 'SVd5ir1YbE', '9780508705263', '天文学、地球科学', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (56, '8nSGKEjQKm', '9780614079845', '军事', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (57, 'xj7cYnwcK1', '9780233034690', '经济', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (58, '2B3WU3Edvv', '9792661989428', '天文学、地球科学', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (59, '3TEzBtGc9s', '9786577152526', '数理科学和化学', 'I destroy my enemies when I make them my friends. Navicat provides powerful tools                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (60, 'yGGd4Pe0MU', '9787061442512', '政治、法律', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (61, 'L4LGSrFlJ7', '9788913964862', '语言、文字', 'The reason why a great man is great is that he resolves to be a great man.                          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (62, 'aztoR6zkJq', '9782733341506', '军事', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (63, 'U6jzB2ke4l', '9798898191252', '生物科学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (64, 'lReb7ZC2Cg', '9798601195416', '文学', 'I destroy my enemies when I make them my friends.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (65, 'gsymnzvBam', '9788288288488', '军事', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (66, 'Jit08BZTgD', '9796548404158', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (67, 'jm6teYUO1o', '9782750450663', '天文学、地球科学', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (68, 'eVm9RbNMfl', '9790594877188', '医药、卫生', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (69, 'wqqPuYkV2H', '9786047242771', '艺术', 'To connect to a database or schema, simply double-click it in the pane.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (70, '39bcNAmTDs', '9794798969267', '医药、卫生', 'You will succeed because most people are lazy. Champions keep playing until they get it right.      ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (71, 'TrwdpxjNDv', '9797415748702', '哲学、宗教', 'Champions keep playing until they get it right. Navicat Monitor can be installed                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (72, 'POFxFLw2IA', '9780940838581', '语言、文字', 'The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (73, 'Y4qe376J7e', '9797878745799', '文学', 'A comfort zone is a beautiful place, but nothing ever grows there. The Information                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (74, 'PlXmQ0Oweq', '9793499355515', '哲学、宗教', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (75, 'dXVMqP8DN5', '9780991713028', '军事', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (76, 'x6nI3UjpZ3', '9784673341288', '艺术', 'Anyone who has never made a mistake has never tried anything new. Remember that failure             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (77, '0apaDv9GQM', '9781627855334', '自然科学总论', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (78, 'JLEPmWQPZz', '9788115775174', '交通运输', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (79, '3eCKs7ZuYI', '9792470657792', '生物科学', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (80, 'W27zVw3Hh6', '9782413647812', '艺术', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (81, '5R7bj0LWXI', '9792424503113', '生物科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (82, 'Z0bl6bBCxw', '9793429080326', '军事', 'There is no way to happiness. Happiness is the way.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (83, 'XyFT5fEJ3p', '9792646874770', '历史、地理', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (84, 'KSY9qHDjJF', '9789937429283', '经济', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (85, '1S9xh6pd5G', '9794816056702', '农业科学', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (86, 'S3pAkLNm3I', '9797876274628', '生物科学', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (87, 'AokT4msM4C', '9790703246454', '社会科学总论', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (88, 'qudNa08i8W', '9790306697929', '文学', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (89, 'iHlUMFCui4', '9788449023989', '军事', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (90, 'nZ49SexeTt', '9781181804786', '工业技术', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (91, 'pP9N4PJhOh', '9781634133210', '数理科学和化学', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (92, '2DvR6zU1Yd', '9797981040934', '生物科学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (93, 'TvpZFhReJn', '9787174043958', '医药、卫生', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (94, 'QBPs7n3drZ', '9799047752485', '数理科学和化学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (95, 'mqZf6iryPx', '9795732488912', '社会科学总论', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (96, 'h5eyQclJyg', '9796218927987', '文化、科学、教育、体育', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (97, '7MznRwxeHd', '9785372162556', '艺术', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (98, 'FdCwCl6ujw', '9796256030304', '社会科学总论', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (99, 'lpCv5L9q7C', '9790662115204', '农业科学', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (100, 'S3UKpRWmSr', '9781219367368', '文化、科学、教育、体育', 'I will greet this day with love in my heart.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (101, 'Pz3gMHaWnD', '9787771041449', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (102, 'dEdfCVA0XM', '9798637152254', '语言、文字', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (103, 'xZBwEeksNP', '9780895197870', '医药、卫生', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (104, '5COiuUY6zO', '9787582608664', '历史、地理', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (105, 'HuhVuwRrl9', '9794522805014', '语言、文字', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (106, '1zDU7VzoYy', '9798041791056', '天文学、地球科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (107, 'dml6vzILF6', '9795608760395', '社会科学总论', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (108, 'kGY5VpzLqz', '9789740564072', '天文学、地球科学', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (109, 'nVFyXGRZBF', '9781007630773', '社会科学总论', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (110, 'PZehPV895H', '9793660997346', '自然科学总论', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (111, '1tbPnPm8GB', '9792275453889', '文学', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (112, 'bTr18CQsII', '9794958253083', '生物科学', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (113, 'nZUepJI4BI', '9794942283966', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (114, '6mgLnpT2bg', '9793285689862', '工业技术', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (115, '6voRICyBR0', '9783017567650', '历史、地理', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (116, 'l1oLby8uoG', '9794810316529', '历史、地理', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (117, 'ceUJ17cVXb', '9787718302169', '自然科学总论', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (118, '5klTglSteB', '9787691151761', '语言、文字', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (119, 'IBFqIbRG6G', '9788073616717', '历史、地理', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (120, 'xqOjUF0sGv', '9795117210992', '自然科学总论', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (121, 'FMHkGa7S2j', '9786925708955', '自然科学总论', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (122, 'Hv0H4k5TyO', '9796640858194', '文学', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (123, 'zOozTAAnvI', '9795434038866', '政治、法律', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (124, 'mtCECrpFBk', '9796106817284', '工业技术', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (125, 'l0I0kD6z4b', '9786255175953', '语言、文字', 'You will succeed because most people are lazy. Instead of wondering when your next                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (126, 'lyCAlMbBWJ', '9788118276043', '文化、科学、教育、体育', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (127, '55mj3IPaBk', '9796115974114', '数理科学和化学', 'How we spend our days is, of course, how we spend our lives. Navicat Data Modeler                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (128, 'cgqhEzb1Mq', '9790970537170', '农业科学', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (129, 'SCDJtaGWJh', '9789716578966', '医药、卫生', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (130, '0KuDHPHevl', '9799658075539', '数理科学和化学', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (131, '5BHUFLE9Zn', '9787220626692', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (132, '3piYRH9CFk', '9793622345796', '语言、文字', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (133, 'v8UgA0FeR6', '9787296446910', '生物科学', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (134, 'ZPF93vUGtK', '9796304232285', '生物科学', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (135, 'HUG8LTgvzO', '9788352399058', '交通运输', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (136, 'uag0yCEFls', '9781705528242', '交通运输', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (137, 'SPGeNmuJYg', '9780421877870', '交通运输', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (138, 'DZOkkGxIjE', '9794520751139', '经济', 'Champions keep playing until they get it right. It provides strong authentication                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (139, 'UmhpJUOF3I', '9792699216848', '天文学、地球科学', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (140, 'TQYRS3Ec63', '9790030455123', '社会科学总论', 'I destroy my enemies when I make them my friends.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (141, 'ltIAHDUmO0', '9786762309049', '军事', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (142, 'bGWIspDjQ7', '9785330910076', '数理科学和化学', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (143, '3cIRh26DW2', '9787938762361', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (144, '9AH1jDjkeO', '9799225608207', '历史、地理', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (145, '9x6d9AGhFh', '9796490232595', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (146, 'u3jSpSeho5', '9793491954143', '自然科学总论', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (147, 'w2KJ937smc', '9792672753148', '环境科学、安全科学', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (148, 'mTi5fTExEv', '9793225165371', '自然科学总论', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (149, 'SfpH77fd95', '9789660009813', '数理科学和化学', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (150, 'l9buxXQjwv', '9781929143771', '数理科学和化学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (151, 'DvjpE2M1YK', '9782765767121', '环境科学、安全科学', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (152, 'i5Qgdx5TVo', '9791184779851', '哲学、宗教', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (153, 'SyRlQGACjK', '9791059374730', '语言、文字', 'A comfort zone is a beautiful place, but nothing ever grows there. Navicat provides                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (154, 'vZcH2tmMCT', '9789593545167', '环境科学、安全科学', 'You will succeed because most people are lazy. Navicat authorizes you to make connection            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (155, 'WExJk761Vj', '9797803760552', '文学', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (156, 'ef99WZ2VSO', '9798406087978', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (157, 'ViFeemN7JA', '9789846106992', '政治、法律', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (158, 'bAYJCFGEuS', '9799782288706', '自然科学总论', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (159, 'Jf1Kr16GLO', '9790070018654', '工业技术', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (160, 'w1a86b2ZGA', '9788518591807', '军事', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (161, 'IEMrzCXuME', '9786836814165', '社会科学总论', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (162, '0Kowb2iF0q', '9793107824440', '交通运输', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (163, 'ikl6s4DLiZ', '9780272806524', '政治、法律', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (164, 'evZg2wngQT', '9799227427127', '哲学、宗教', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (165, '5F6sFDnX8W', '9786537840821', '自然科学总论', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (166, 'KdFsTGpwcw', '9792902719654', '历史、地理', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (167, '2Qyo0QpBRG', '9797348181690', '文学', 'The reason why a great man is great is that he resolves to be a great man.                          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (168, 'SDrlDJDBbE', '9784579102921', '经济', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (169, 'o3YTLI5YOY', '9788389714077', '历史、地理', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (170, 'D4LT79chyV', '9788222041384', '艺术', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (171, '0axlNWida1', '9789089279736', '哲学、宗教', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (172, 'eLhU4ArJfD', '9782731719215', '艺术', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (173, 'MO8GeUklTJ', '9783592313130', '文化、科学、教育、体育', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (174, '9wO1NL748l', '9781200251881', '生物科学', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (175, 'zOoPvm92Hx', '9797605502367', '政治、法律', 'If it scares you, it might be a good thing to try. HTTP Tunneling is a method for                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (176, 'BeNqY6XiAC', '9793014312627', '艺术', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (177, 'S09bYwzTCB', '9785039686081', '自然科学总论', 'How we spend our days is, of course, how we spend our lives. Sometimes you win, sometimes you learn.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (178, 'WukZ9Cz45V', '9797603748316', '自然科学总论', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (179, 'Mp6RmKCTN1', '9791389802910', '生物科学', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (180, 'Djl38RUKNe', '9789459231586', '语言、文字', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (181, 'Ya00WkosDz', '9793296076200', '文学', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (182, 'r4XEj83cRq', '9785354383979', '自然科学总论', 'If opportunity doesn’t knock, build a door.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (183, 'FgJjpLHz9h', '9781375324595', '历史、地理', 'Sometimes you win, sometimes you learn. It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (184, 'jPp77HgEaI', '9782723780469', '文化、科学、教育、体育', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (185, 'jJ99BRv51H', '9780515593389', '哲学、宗教', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (186, '6W99UGr6hN', '9790021114749', '农业科学', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (187, 'WWqHo6gCjd', '9796850985192', '历史、地理', 'Creativity is intelligence having fun. Anyone who has ever made anything of importance              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (188, 'SnTUhiRJr3', '9791511240542', '语言、文字', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (189, 'EFV1o7akim', '9784360349689', '交通运输', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (190, 'X1JWn7prG1', '9796230398505', '语言、文字', 'There is no way to happiness. Happiness is the way. The reason why a great man is                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (191, '9eJNOs0N4h', '9794541549111', '自然科学总论', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (192, 'TS20AI8sXZ', '9787927511147', '农业科学', 'How we spend our days is, of course, how we spend our lives. The reason why a great                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (193, 'HYtCtkXzY2', '9790939394974', '政治、法律', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (194, 'wYFiZ6gMFG', '9780580185564', '医药、卫生', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (195, 'SowzBk87Rb', '9790385450033', '医药、卫生', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (196, 'DZGzyVnHmn', '9784903779850', '经济', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (197, 'kDR4VmNBb8', '9783752302226', '经济', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (198, 'GZCde1bsGp', '9794626580879', '政治、法律', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (199, '73Y4QBuVO9', '9798462778421', '医药、卫生', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (200, 'h0x6F7afkF', '9797447887981', '军事', 'Sometimes you win, sometimes you learn. The Navigation pane employs tree structure                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (201, 'ELQu5GVs3y', '9783705292055', '生物科学', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (202, '7XKdPj7EQ2', '9784191332584', '文化、科学、教育、体育', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (203, '23HvEorzBC', '9787028120835', '艺术', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (204, '5Wz6RgNSzG', '9785465045674', '哲学、宗教', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (205, 'R5iCrdCeFh', '9784166794317', '政治、法律', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (206, 'E0Fdv8NnHO', '9791982903366', '工业技术', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (207, 'IJBJo0X5SD', '9793318761695', '社会科学总论', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (208, 'FMtLQFDakj', '9792377560454', '艺术', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (209, 'Jq9vd2Uxo8', '9798203805799', '哲学、宗教', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (210, 'vIGJOz2sC3', '9795332782434', '交通运输', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (211, 'ul2jBv8b4p', '9783679354926', '农业科学', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (212, 'vypB3kq0z8', '9792056151706', '天文学、地球科学', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (213, 'I6WoCfTJHn', '9780808178408', '政治、法律', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (214, 'a4ZjLJok3i', '9787709891290', '农业科学', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (215, 'eNMaF4L8Em', '9794286680056', '军事', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (216, 'Y0XUKgRcFF', '9788561429911', '文学', 'Optimism is the one quality more associated with success and happiness than any other.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (217, 'fpS29O51r1', '9792366500959', '艺术', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (218, '0f6Lbdy17G', '9789212869155', '医药、卫生', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (219, '21NH0d7aLs', '9795887828083', '艺术', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (220, 'imfvHSIb93', '9781459213692', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (221, 'KGkN2tYrmq', '9797488752750', '医药、卫生', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (222, 'wWQ3mTWpu8', '9793065081251', '文学', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (223, 'FLwDeuDLH8', '9795770833170', '工业技术', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (224, 'ItVLKtZAfT', '9784200988818', '天文学、地球科学', 'Navicat 15 has added support for the system-wide dark mode. The Navigation pane employs             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (225, 'ojhaexsHoA', '9797395983223', '数理科学和化学', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (226, '1T2aLNi31k', '9796469415356', '历史、地理', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (227, 'SGcGD79qgN', '9793598197702', '语言、文字', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (228, 'qVHZt4IZf2', '9798281517638', '农业科学', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (229, 'bT0qchWTS7', '9793866398619', '社会科学总论', 'How we spend our days is, of course, how we spend our lives. You will succeed because               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (230, 'fqkDB2EOyg', '9785610270951', '数理科学和化学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (231, 'IS86I7aHhb', '9797639397762', '历史、地理', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (232, 'dhtRpHoQpX', '9799643443978', '医药、卫生', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (233, 'DrALKsdDFs', '9786132418258', '军事', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (234, 'jTiYQwzEuY', '9780528209864', '哲学、宗教', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (235, 'X54cDdxizP', '9780003654141', '生物科学', 'If the plan doesn’t work, change the plan, but never the goal. The repository database            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (236, 'WHKKDcn4WE', '9799450755639', '历史、地理', 'A man’s best friends are his ten fingers. In the Objects tab, you can use the List                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (237, 'zOkE5ga3J4', '9790572119859', '政治、法律', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (238, 'uJKTi73QEc', '9785656112246', '文化、科学、教育、体育', 'If the plan doesn’t work, change the plan, but never the goal. Navicat authorizes                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (239, '9LgXYVYFLm', '9797490043334', '政治、法律', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (240, 'a8bgl1C2sk', '9791353589182', '政治、法律', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (241, 'rk1WeujVEL', '9787438768153', '艺术', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (242, 'cGCeRQARZd', '9797869728305', '艺术', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (243, 'QDQVZe2PSw', '9788110227753', '军事', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (244, '07A9beZW79', '9785954400694', '自然科学总论', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (245, 'bZyTwK0iLC', '9787998512975', '军事', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (246, 'iYrxMvtkl5', '9796055187803', '军事', 'It wasn’t raining when Noah built the ark. Instead of wondering when your next                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (247, 'UQS7OJ0Ydk', '9797257281511', '医药、卫生', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (248, '0FpkjcbUYB', '9794102004516', '历史、地理', 'A man is not old until regrets take the place of dreams. The On Startup feature allows              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (249, 'ZVLHgPwfsj', '9790730150618', '经济', 'The reason why a great man is great is that he resolves to be a great man.                          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (250, '6bTpGZQTVj', '9797146122215', '自然科学总论', 'Champions keep playing until they get it right. A comfort zone is a beautiful place,                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (251, 'WfwFrHCjZW', '9782714648914', '数理科学和化学', 'You cannot save people, you can just love them. All the Navicat Cloud objects are                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (252, 'Lc0sPXTK0G', '9797340950270', '文化、科学、教育、体育', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (253, 'XqnwmixMoV', '9791709639691', '数理科学和化学', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (254, 'pF5iz0wUU5', '9786589963561', '社会科学总论', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (255, 'M71XfrNrwH', '9794669471677', '军事', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (256, 'YKcYGyTpht', '9799310358475', '农业科学', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (257, 'CWz6WJaHUc', '9790211450961', '农业科学', 'If opportunity doesn’t knock, build a door. The Synchronize to Database function                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (258, 'SfP8CtTloD', '9797023556874', '历史、地理', 'It wasn’t raining when Noah built the ark. Monitored servers include MySQL, MariaDB               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (259, 'awW5TZYMGk', '9795503467184', '交通运输', 'The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (260, '3h1vY0mojR', '9793933068421', '军事', 'There is no way to happiness. Happiness is the way. All the Navicat Cloud objects                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (261, 'OrR3Pn0KOp', '9782882778505', '文化、科学、教育、体育', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (262, 'e0FPy58QsO', '9796990089606', '政治、法律', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (263, 'QF2S5ZB1Ww', '9786971082726', '经济', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (264, 'PhLtfqePwm', '9780086718624', '自然科学总论', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (265, '8n0CzaSNxn', '9780077408428', '社会科学总论', 'To connect to a database or schema, simply double-click it in the pane.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (266, 'dHyDQdTRiZ', '9788066900502', '哲学、宗教', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (267, 'Ztgma7sZW6', '9791811272113', '艺术', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (268, 'oqer40Zdut', '9799404186908', '数理科学和化学', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (269, 'anDrUvpLkz', '9797081205318', '工业技术', 'You cannot save people, you can just love them. Always keep your eyes open. Keep                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (270, 'lFs6uWypMn', '9791388626333', '医药、卫生', 'Remember that failure is an event, not a person. Always keep your eyes open. Keep                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (271, 'W2bQHubLlF', '9783667684288', '环境科学、安全科学', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (272, 'UsxV8KDnos', '9781618725882', '生物科学', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (273, 'uUEpG4hCna', '9791756623933', '自然科学总论', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (274, 'ijDleSntFc', '9796183939558', '生物科学', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (275, 'WmRXjZ9Dg4', '9797574094733', '医药、卫生', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (276, 'zZCj3ml1Pe', '9789057296659', '文学', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (277, '0eQI83oi2o', '9798373065153', '语言、文字', 'The first step is as good as half over. A man’s best friends are his ten fingers.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (278, 'kFheXPKjdE', '9792326462464', '文化、科学、教育、体育', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (279, 'V3BhhZSMgg', '9795713726200', '社会科学总论', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (280, 'rGIf6EYgG9', '9789352520602', '交通运输', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (281, '9JxqDinaiM', '9780234122785', '哲学、宗教', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (282, '9lZ0QWNQlC', '9786129186382', '文化、科学、教育、体育', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (283, 'QxY1mx448c', '9794371808495', '艺术', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (284, 'XnWe1orCcX', '9794468391541', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (285, 's55PVajqGF', '9797446925622', '政治、法律', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (286, '4nDhVYsr1k', '9792270193964', '工业技术', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (287, '7mokY38JUW', '9782162456963', '文化、科学、教育、体育', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (288, 'YJI6GTrnuH', '9799907829432', '环境科学、安全科学', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (289, 'VtzI8FRPCI', '9787631497591', '经济', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (290, 'CfiUfVa2eD', '9786405959365', '生物科学', 'A man is not old until regrets take the place of dreams. It collects process metrics                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (291, '38SsqBhlit', '9784590730790', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (292, 'xP9oFS79Kr', '9792148935900', '哲学、宗教', 'You cannot save people, you can just love them. You cannot save people, you can just love them.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (293, 'j3KXWRGXvT', '9782506479436', '文学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (294, 'nTeAFY7nhR', '9783671644599', '艺术', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (295, '1gRroyYhsS', '9791987678351', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'You must be the change you wish to see in the world.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (296, 'LFzXvUx73T', '9784018082494', '生物科学', 'Sometimes you win, sometimes you learn. Navicat Cloud provides a cloud service for                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (297, 'jrFHZ2RFPw', '9780991087860', '社会科学总论', 'If you wait, all that happens is you get older. It can also manage cloud databases                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (298, '4uVrESngN8', '9799916994015', '交通运输', 'The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (299, 'BU37d1t7zj', '9799106504253', '数理科学和化学', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (300, 'kQZCNeS0rs', '9797249279502', '政治、法律', 'Genius is an infinite capacity for taking pains. Navicat Cloud provides a cloud service             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (301, 'WismmKyblG', '9793698633988', '语言、文字', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (302, '5EOJJTZYpO', '9783427156635', '数理科学和化学', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (303, '1cU8vN7OOj', '9784246149785', '自然科学总论', 'Success consists of going from failure to failure without loss of enthusiasm.                       ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (304, 'jxUG8UvNxq', '9794194884966', '政治、法律', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (305, 'ZqzJf4VNuv', '9784326899401', '文化、科学、教育、体育', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (306, '2kdcu72VZy', '9782037807036', '农业科学', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (307, 'Txoe9nkXwh', '9798899321726', '工业技术', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (308, 'JE1BqunL8W', '9789195113313', '工业技术', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (309, 'jy0m6UR2Zy', '9795304079562', '语言、文字', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (310, 'FaRMqIWQ2w', '9795257130815', '天文学、地球科学', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (311, 'ZY8a5VW7wV', '9799090892930', '天文学、地球科学', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (312, 'ipY57Un09A', '9791974071370', '医药、卫生', 'A man’s best friends are his ten fingers.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (313, 'MiAGQepFxl', '9782936403117', '工业技术', 'How we spend our days is, of course, how we spend our lives. Sometimes you win, sometimes you learn.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (314, 'mitMVI00Jx', '9799963233075', '经济', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (315, 'M8DmVrew1w', '9789236855318', '自然科学总论', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (316, '4xOjXQT2je', '9781760658137', '政治、法律', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (317, 'SklbQ6CVxY', '9791697369815', '医药、卫生', 'A comfort zone is a beautiful place, but nothing ever grows there. If the Show objects              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (318, 'HpkllBfthq', '9798956764640', '文学', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (319, '2Q4CNAXQwf', '9790082657049', '艺术', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (320, 'IYeBCmKqNB', '9781494465896', '数理科学和化学', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (321, 'iyRxWWi61x', '9799094721816', '军事', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (322, '6MnTsXPZXl', '9786529950378', '交通运输', 'If it scares you, it might be a good thing to try. Navicat Monitor requires a repository            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (323, 'bMdzDdJtWI', '9781046114081', '自然科学总论', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (324, '0XacSRUhvf', '9787245419606', '环境科学、安全科学', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (325, 'OQAkxgR37U', '9787921968282', '文化、科学、教育、体育', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (326, 'XdIQYiFe1w', '9785107667738', '艺术', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (327, 'ykdU7SiFRH', '9785287449940', '哲学、宗教', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (328, 'FjtjehnY2A', '9787591694214', '天文学、地球科学', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (329, 'bPvPRgpmlF', '9794450105576', '自然科学总论', 'A man’s best friends are his ten fingers. Optimism is the one quality more associated             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (330, 'So2c7vcD5j', '9798027688134', '环境科学、安全科学', 'Creativity is intelligence having fun.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (331, 'Ok4Tp9XKRK', '9784011898955', '交通运输', 'If you wait, all that happens is you get older.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (332, 'ivdvSUudkN', '9799251436065', '农业科学', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (333, 'o3VuoHSG9o', '9786007351710', '医药、卫生', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (334, 'qvN4DBeCYU', '9794706041474', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (335, 'wPS9poqh3P', '9796610675370', '文学', 'A man is not old until regrets take the place of dreams. What you get by achieving                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (336, 'fJ3MpWarU7', '9789783323278', '哲学、宗教', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (337, 'dBe4KEJHhF', '9796109253164', '军事', 'Success consists of going from failure to failure without loss of enthusiasm.                       ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (338, '3732sD5KjJ', '9780980582178', '经济', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (339, 'Wuh9SrnR6D', '9789053098240', '天文学、地球科学', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (340, 'ZytMA1Roy4', '9785584213862', '生物科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (341, 'pXWMgPgCPS', '9792867099785', '农业科学', 'Creativity is intelligence having fun. If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (342, 'AZSW1jQEZb', '9780929539058', '经济', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (343, 'yI9KutS1Gm', '9795890055032', '交通运输', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (344, 'nLE4h3We73', '9783094535870', '自然科学总论', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (345, 'gYr1RJ0Ymw', '9795043711068', '哲学、宗教', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (346, 'ITjJ9rHNco', '9798613937936', '自然科学总论', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (347, '1Jv9wfP2SL', '9785144347051', '社会科学总论', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (348, 'GhJl5yD5QR', '9785279825370', '政治、法律', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (349, 'yeLyq1rcNa', '9780553007398', '文化、科学、教育、体育', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (350, 'WhHWsbk8Vb', '9788803947937', '环境科学、安全科学', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (351, 'zXYE3XZgD8', '9790853369409', '交通运输', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (352, 'TpZvS1vtC4', '9781853754272', '哲学、宗教', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (353, 'zjtFs79J6K', '9780148824423', '文学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (354, '3KcTiYrmVy', '9781758315691', '军事', 'A man’s best friends are his ten fingers. Navicat Cloud provides a cloud service                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (355, 'Bgohl0sAiW', '9795534004020', '文化、科学、教育、体育', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (356, 'YOasRlb2EK', '9790636525008', '自然科学总论', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (357, 'wOQsUmn95q', '9783295858211', '艺术', 'You cannot save people, you can just love them. Navicat 15 has added support for                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (358, '7V35bU5vny', '9793097822495', '数理科学和化学', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (359, '5mmjOsMwiY', '9795924000977', '历史、地理', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (360, '3zSOAph3iT', '9784115480919', '自然科学总论', 'If it scares you, it might be a good thing to try. Import Wizard allows you to import               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (361, 'ZAQQPEq8o4', '9789533087917', '交通运输', 'Champions keep playing until they get it right.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (362, 'mlTaTE7Njd', '9794887202886', '农业科学', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (363, 'eVVFsXTrVV', '9798412578514', '生物科学', 'Champions keep playing until they get it right.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (364, 'Fre7lBPebd', '9783121974801', '军事', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (365, 'AU3evaaNV8', '9794813355433', '文学', 'You will succeed because most people are lazy. SQL Editor allows you to create and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (366, 'vXQzWR6POr', '9797079255219', '艺术', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (367, 'HJHNQdbhgr', '9785228561618', '交通运输', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (368, '3kl7XEukl1', '9791065377831', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (369, 'zmnbMYqHgU', '9793414165564', '数理科学和化学', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (370, 'p7yfjE0bTN', '9782770071084', '哲学、宗教', 'If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (371, 'b7Gj6oDndv', '9787652584560', '军事', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (372, '11pp2IyCYl', '9789440427172', '哲学、宗教', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (373, 'XpYVTTOEFR', '9791916888325', '政治、法律', 'The first step is as good as half over.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (374, 'mLizJsmOSC', '9784502987441', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (375, 'pizPhbWw1H', '9785479043000', '农业科学', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (376, 'svvcSjTgrn', '9786523317573', '农业科学', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (377, '1H8x2LF8LW', '9785016262765', '农业科学', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (378, 'xs5AUw5Z9F', '9789632142982', '经济', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (379, 'Sxdg7vsGvr', '9786204735146', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (380, '49ib4GAdoJ', '9792522990457', '环境科学、安全科学', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (381, 'PNmuMG77pq', '9790785272266', '经济', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (382, 'v1K4E6uHr2', '9793030580031', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (383, 'cjhSXrwDot', '9788931809251', '交通运输', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (384, 'tFPtAiE0I7', '9793372359906', '自然科学总论', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (385, 'MIepHcTOwX', '9781724596901', '文学', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (386, 'IauhL4CbMu', '9784040865485', '天文学、地球科学', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (387, 'gHzmiGYsPV', '9797357217328', '生物科学', 'I will greet this day with love in my heart. Navicat Monitor requires a repository                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (388, 'MZbDfv2VyY', '9788426969903', '文学', 'I will greet this day with love in my heart.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (389, 'fgSIWncM7O', '9785102211370', '艺术', 'Creativity is intelligence having fun.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (390, '0PQhsNcVja', '9793860770251', '环境科学、安全科学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (391, 'JzbnJqwxHs', '9786763479376', '医药、卫生', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (392, 'jWaQ5At2ZJ', '9792400347977', '文学', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (393, 'vlEYEdbXd5', '9794967079100', '交通运输', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (394, 'n4GXmz1rpD', '9794066771493', '环境科学、安全科学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (395, 'RIryoQAqt0', '9792079358908', '自然科学总论', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (396, '0zwUdvdqNr', '9795551063277', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (397, 'KvUaB5JK93', '9797335566974', '艺术', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (398, 'MgYIsQl2Oq', '9796753607214', '医药、卫生', 'Champions keep playing until they get it right.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (399, 'keQ4mBmrZu', '9780527086022', '政治、法律', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (400, 'c43euIZXWg', '9794930881969', '语言、文字', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (401, 'JMjIttlXc3', '9793778625506', '经济', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (402, 'IRLFf9tW2n', '9789413673759', '哲学、宗教', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (403, 'DpKVb9m13u', '9782077605067', '文化、科学、教育、体育', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (404, 'CyjEJ0GKRj', '9786108056040', '文学', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (405, '0vR6HWJ96o', '9789712060519', '艺术', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (406, 'j2pEeHmWH4', '9788066437206', '交通运输', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (407, 'uVx0W61vUj', '9792920341516', '自然科学总论', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (408, 'xda6aQhWFV', '9797020159214', '生物科学', 'You will succeed because most people are lazy. The repository database can be an                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (409, 'SjFUsNGi5L', '9795262041052', '农业科学', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (410, 'sMZpu8xJ4h', '9792383113866', '文化、科学、教育、体育', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (411, 'GyGrjHogzT', '9792514187285', '自然科学总论', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (412, 'QArtu8cWrj', '9785689211008', '农业科学', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.     ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (413, '60MLOHRFa9', '9784606509303', '工业技术', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (414, '1vdyhHzNmn', '9799740024681', '数理科学和化学', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (415, 'AMDeSi11AZ', '9784262781907', '自然科学总论', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (416, 'b3wANm7oys', '9794482266061', '天文学、地球科学', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (417, 'tkYeTcDfzk', '9799948386895', '农业科学', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (418, 'Hn4ObFtboZ', '9793201289244', '政治、法律', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (419, 'vBYhgiPz5e', '9792404900994', '文学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (420, 'VbPQCKnikY', '9785250168229', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (421, '7GeB3EIZe4', '9797979302044', '农业科学', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (422, 'fe9RNTfMd9', '9797947940940', '生物科学', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (423, 'piOIgtrytk', '9795079670650', '天文学、地球科学', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (424, 'kPBrgwIvXV', '9785691305627', '历史、地理', 'Typically, it is employed as an encrypted version of Telnet. Optimism is the one                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (425, '172XSkQj1n', '9791631234278', '数理科学和化学', 'I destroy my enemies when I make them my friends.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (426, 'ikqYszvtT4', '9799666917876', '哲学、宗教', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (427, 'jeXA98R5az', '9795826885160', '数理科学和化学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (428, 'RudKniI2Gd', '9786857269579', '文化、科学、教育、体育', 'Anyone who has ever made anything of importance was disciplined. There is no way                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (429, 'DR7u95HSQZ', '9788838159763', '政治、法律', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (430, 'rM3TRSw1KW', '9798432331755', '语言、文字', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (431, 'GQ8WzH1JWe', '9796106841333', '医药、卫生', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.     ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (432, 'lNvMH7p6HY', '9799424116954', '文学', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (433, 'pprVFFXOct', '9780390080844', '交通运输', 'Creativity is intelligence having fun. In other words, Navicat provides the ability                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (434, 'Rgxma266Lp', '9797724129582', '交通运输', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (435, 'FUaxW5gGoM', '9793553191783', '经济', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (436, 'rUTt6OQJcK', '9780375149689', '天文学、地球科学', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (437, 'rtwHb1RqMB', '9798980535476', '自然科学总论', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (438, 'MrbzfQKnqa', '9798888355183', '生物科学', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (439, 'rkSMnCRcWR', '9799879164005', '生物科学', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (440, 'ZEIAzcXmD9', '9787736338331', '工业技术', 'You must be the change you wish to see in the world. Remember that failure is an                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (441, 'Eefo5nEnGP', '9789892719504', '农业科学', 'If opportunity doesn’t knock, build a door.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (442, 'fCpxloPmNt', '9797188611067', '交通运输', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (443, 'i4FVEQf28k', '9794111039721', '政治、法律', 'The first step is as good as half over. Navicat Cloud provides a cloud service for                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (444, 'VIfb1cYZVN', '9780759711976', '天文学、地球科学', 'Anyone who has ever made anything of importance was disciplined. It wasn’t raining                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (445, 'DD2yazaZnx', '9794719301282', '交通运输', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (446, 'eGHjptJmC7', '9780130949028', '数理科学和化学', 'If you wait, all that happens is you get older.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (447, '5GhKlu6qWR', '9781268185166', '历史、地理', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (448, 'EUkRRhXrgQ', '9794266473456', '政治、法律', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (449, 'EwyxJKjkd9', '9793286805230', '哲学、宗教', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (450, 'Pdl0GmegDK', '9790551931076', '哲学、宗教', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (451, 'eB4KO5SEJW', '9799768863170', '环境科学、安全科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (452, 'mvWzjfl8A5', '9780591927696', '历史、地理', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (453, 'cjnotWv7SJ', '9782897613310', '天文学、地球科学', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (454, '34hGTm4rB5', '9790172393734', '天文学、地球科学', 'Creativity is intelligence having fun. The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (455, 'PorxRKQ7AO', '9798686672307', '农业科学', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (456, 'OMA66GOj6m', '9793583237581', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (457, 'fWV0l4xZZN', '9794104720711', '社会科学总论', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (458, 'kKqhF6uHcX', '9793869555279', '环境科学、安全科学', 'Sometimes you win, sometimes you learn.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (459, 'I79gxjoOdz', '9798038200387', '语言、文字', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (460, 'yghZhU0flm', '9798316057023', '环境科学、安全科学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (461, 'b83yj07KY3', '9794181669835', '医药、卫生', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (462, 'KtbtuBiAmu', '9796539553179', '交通运输', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (463, 'UMLj26IIrB', '9781590916797', '政治、法律', 'There is no way to happiness. Happiness is the way.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (464, '7F4LPNezWP', '9791062476643', '交通运输', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (465, 'eUil7HBXUX', '9785508032364', '医药、卫生', 'Typically, it is employed as an encrypted version of Telnet. In a Telnet session,                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (466, 'ZUqYEnoG61', '9796567777608', '交通运输', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (467, 'fq6wNSx41n', '9797553867587', '艺术', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (468, 'i12gzIq1IQ', '9788859559962', '社会科学总论', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (469, 'FErzvQCdkU', '9782101285968', '自然科学总论', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (470, 'eRMP6CZSQr', '9789405774389', '文化、科学、教育、体育', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (471, 'nplsOFgQjN', '9782884225625', '社会科学总论', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (472, 'uVnpstxVbt', '9792992954072', '社会科学总论', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (473, 'uBjFPBCstb', '9785470928092', '天文学、地球科学', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (474, 'YPoTsU78fR', '9788312597968', '艺术', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (475, 'Ja0e3jAzSO', '9793930522766', '哲学、宗教', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (476, 'iFETEEAgj6', '9788917119480', '经济', 'There is no way to happiness. Happiness is the way. Such sessions are also susceptible              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (477, 'g5TC1UuGvi', '9780271404080', '文学', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (478, 'aPbpar5boc', '9795466270722', '生物科学', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (479, 'Z4WtilKbwl', '9785632718776', '农业科学', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (480, 'wFldtvZeEn', '9787608220269', '工业技术', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (481, 'UN1JoGfxXc', '9788816007512', '天文学、地球科学', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (482, 'nrCxBObw8Z', '9792786612225', '生物科学', 'If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (483, 'YxMJimB7MV', '9790986420824', '社会科学总论', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (484, 'hhfDN2HSgG', '9780066635897', '政治、法律', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (485, 'W7ARY4rvcZ', '9785495230217', '社会科学总论', 'How we spend our days is, of course, how we spend our lives.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (486, '7NKUmCweWf', '9798895967935', '军事', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (487, '1Fw4WhYVpE', '9796072946056', '自然科学总论', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (488, 'U6GvRH54mG', '9785210391582', '环境科学、安全科学', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (489, '4YO7nrp9XG', '9799916373742', '文化、科学、教育、体育', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (490, 'e14A55IMLp', '9781157537175', '社会科学总论', 'There is no way to happiness. Happiness is the way.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (491, 'CwnujJzFZ1', '9795363920577', '数理科学和化学', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (492, 'KKkRxdsZpc', '9793480702229', '环境科学、安全科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (493, 'vAWO9SuyCj', '9793192728814', '农业科学', 'Creativity is intelligence having fun.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (494, 'khEqh92vml', '9792192596768', '环境科学、安全科学', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (495, 'QbMRBZAMDP', '9795087933334', '生物科学', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (496, 'cBIzh1s5ur', '9787511080097', '工业技术', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (497, 'HHdMRll3sk', '9796714535181', '语言、文字', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (498, 'P7GEfSle2l', '9789753177054', '社会科学总论', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (499, 'GCVDlGpY7t', '9796755373575', '工业技术', 'I destroy my enemies when I make them my friends. The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (500, 'VoXflN5S9Z', '9799274854235', '生物科学', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (501, '2SraupbcZJ', '9795151310375', '艺术', 'I destroy my enemies when I make them my friends.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (502, 'EAe78apr5C', '9788898455355', '文化、科学、教育、体育', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (503, '7X85eE31zN', '9786044836416', '医药、卫生', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (504, '2lzHgniOsP', '9785460500963', '历史、地理', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (505, 'j9MXwEU5Es', '9793069882861', '文学', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (506, 'zmSAupGHfR', '9789976478662', '经济', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (507, 'WvA29dfLcO', '9799970765798', '语言、文字', 'Typically, it is employed as an encrypted version of Telnet. Always keep your eyes                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (508, 'grXtzO1Xni', '9794783409709', '历史、地理', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (509, 'Emm8XQSB6N', '9796570862698', '天文学、地球科学', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (510, '9rRk2rsbL2', '9788009488449', '数理科学和化学', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (511, 'qnzQy0eZjX', '9783031330520', '交通运输', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (512, 'WrNT1dVEjP', '9784558654823', '文学', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (513, 'PpIle9ykYv', '9786459154525', '历史、地理', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (514, 'RyisAr18wB', '9784949519434', '自然科学总论', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (515, 'yws6z4PLGZ', '9795169730257', '哲学、宗教', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (516, 'E0emDLecSM', '9788729107705', '天文学、地球科学', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (517, 'XSQ7MAZTpq', '9784749901316', '政治、法律', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (518, '0N9YqvShtl', '9780891707097', '医药、卫生', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (519, 'xcXgZpdXYX', '9786422995391', '生物科学', 'The past has no power over the present moment. Navicat Monitor can be installed on                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (520, '07vfDh2NKL', '9784677278399', '历史、地理', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (521, 'BHcTNTjcYX', '9783343964147', '艺术', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (522, 'Uhi090W8tA', '9787165165911', '工业技术', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (523, 'bRKzymIwYD', '9799560474543', '自然科学总论', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (524, 'rtUAF0cWud', '9794958537602', '政治、法律', 'A man’s best friends are his ten fingers. It collects process metrics such as CPU                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (525, 'E8Oi8kT7g9', '9797516520559', '军事', 'The reason why a great man is great is that he resolves to be a great man.                          ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (526, 'HnbeQmMWcV', '9790649457808', '社会科学总论', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (527, 'BGq8Fy7pLC', '9794253054064', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'It wasn’t raining when Noah built the ark. SSH serves to prevent such vulnerabilities             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (528, '6dp4DLDr0L', '9797822205850', '环境科学、安全科学', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (529, 'TgQ5vYM8xL', '9798831092448', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (530, 'MY0005PVGJ', '9783386994910', '社会科学总论', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (531, 'rnRYfWmmnv', '9797735915860', '艺术', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (532, 'yKbqZLkMGa', '9790521140057', '农业科学', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (533, 'CuD1CabZyn', '9796721857689', '社会科学总论', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (534, 'm0s2iX7PFr', '9798172702129', '农业科学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (535, '3UxeGw2kMo', '9781875148066', '交通运输', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (536, 'aHdchKSRzB', '9781185297119', '生物科学', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (537, 'KQHXoNhikz', '9799385471994', '医药、卫生', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (538, 'eXiB0wlKpD', '9786360718427', '政治、法律', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (539, 'QIxBqUuaJR', '9792770845134', '农业科学', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (540, 'JlGzTXqROd', '9784364921058', '交通运输', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (541, 'M8yTj752lo', '9787410759025', '数理科学和化学', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (542, 'RLvdqtwd69', '9794311459602', '交通运输', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (543, 'KQiT286dim', '9795343492476', '哲学、宗教', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (544, '2vXJnrfKrX', '9786217180186', '军事', 'A comfort zone is a beautiful place, but nothing ever grows there. If you wait, all                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (545, 'nzk8UoliIe', '9798520696957', '天文学、地球科学', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (546, '5HTtTgCuyt', '9781779966483', '环境科学、安全科学', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (547, 'lieAqJTzB2', '9787411987472', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (548, 'lje1xtTkV7', '9797535860698', '自然科学总论', 'If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (549, 'Z1gO6HfvUM', '9797770625168', '哲学、宗教', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (550, 'HhYO4voT7P', '9798613401239', '工业技术', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (551, '65kaqb46a8', '9795208282600', '交通运输', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (552, '27BaIR7N8E', '9791628995816', '历史、地理', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (553, 'vsp9xftwpD', '9799259200163', '经济', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (554, 'LAux3MXLVI', '9795156431099', '社会科学总论', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (555, 'IZq5tH8u2l', '9792956757121', '医药、卫生', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (556, 'r3kQOR1jM8', '9782303852166', '历史、地理', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (557, 'U5wHjgQgYA', '9793146577253', '工业技术', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (558, 'M6zKhJaFJw', '9793456558713', '农业科学', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (559, 'IYluCLFCjC', '9793346808843', '哲学、宗教', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (560, 'CPKt0WzB6q', '9783341920190', '军事', 'If opportunity doesn’t knock, build a door.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (561, '5rW6HbHVzq', '9798157060183', '语言、文字', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (562, 'f4mXFCw1Rq', '9780075921295', '医药、卫生', 'To connect to a database or schema, simply double-click it in the pane.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (563, 'DABkY2uDmt', '9794243387080', '语言、文字', 'Creativity is intelligence having fun. If the Show objects under schema in navigation               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (564, 'QsYu28fomj', '9784020556310', '数理科学和化学', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (565, 'aQ8TCWz4SP', '9787043463153', '交通运输', 'Typically, it is employed as an encrypted version of Telnet. Champions keep playing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (566, 'e0iH5qhfv8', '9797100028652', '社会科学总论', 'The first step is as good as half over. You cannot save people, you can just love them.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (567, 'Qq2ngn0jnl', '9789816231365', '环境科学、安全科学', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (568, 'yHdI0xFzji', '9789435930366', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (569, 'PMmVjByuhp', '9798153725345', '医药、卫生', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (570, 'dclG4sTd8J', '9782641835364', '文学', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (571, 'Myu0qMoIYX', '9794485177616', '经济', 'A man is not old until regrets take the place of dreams. I may not have gone where                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (572, 'QnlQnNkY1M', '9790507805161', '工业技术', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (573, 'f23K5Zz3RP', '9786779060209', '语言、文字', 'You must be the change you wish to see in the world. To connect to a database or                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (574, 'eV6Oxrm3Zy', '9799837827720', '自然科学总论', 'Flexible settings enable you to set up a custom key for comparison and synchronization.             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (575, 'yiEvTEwFhu', '9785793963022', '艺术', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (576, 'j3V6QgSwod', '9786445150968', '军事', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (577, 'P7HJ0NwLDU', '9797641419834', '文学', 'Remember that failure is an event, not a person. Secure SHell (SSH) is a program                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (578, '7aWJH6dNEh', '9784706862308', '经济', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (579, '2Nb5TJOppY', '9787850706580', '自然科学总论', 'Remember that failure is an event, not a person. If opportunity doesn’t knock, build a door.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (580, 'IUwiBxafWT', '9791378037255', '环境科学、安全科学', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (581, 'pJ8xWPvuAb', '9786459802167', '哲学、宗教', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (582, 'HWulWdV30i', '9781691445004', '历史、地理', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (583, 'yON7rWhs71', '9782962042717', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (584, '7fNSFIPxeE', '9781921646225', '工业技术', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (585, 'b3BRH8oXcZ', '9784896953251', '自然科学总论', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (586, 'RiFNmZNx5v', '9799224942159', '自然科学总论', 'Creativity is intelligence having fun. Instead of wondering when your next vacation                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (587, 'cxkPhqf53J', '9783261879561', '语言、文字', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (588, 'eJC2n89DMx', '9788858367490', '政治、法律', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (589, 'w2VYzv33RY', '9798476236184', '天文学、地球科学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (590, 'DObsEYhajN', '9789373032818', '文学', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (591, 'UDd1i9J00m', '9796643210852', '农业科学', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (592, 'ozEHaGNXfT', '9784989883700', '天文学、地球科学', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (593, 'BSwmLidvhw', '9799062636937', '医药、卫生', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (594, 'ykRHGSZZWm', '9792085006909', '艺术', 'The first step is as good as half over. Sometimes you win, sometimes you learn.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (595, 'x6wM1wHIvq', '9785737466602', '文化、科学、教育、体育', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (596, 'pLzQ0zOaqP', '9788600379474', '数理科学和化学', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (597, '19WaXf06Ax', '9781790928675', '政治、法律', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (598, 'kdPQver1F5', '9798220039672', '语言、文字', 'You must be the change you wish to see in the world.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (599, 'XjTzgkW2lf', '9796983271056', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (600, 'PV8j7L7XPF', '9798347609918', '文化、科学、教育、体育', 'If it scares you, it might be a good thing to try. Navicat Monitor can be installed                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (601, 'aGzBY8a3Oe', '9784287433317', '天文学、地球科学', 'I will greet this day with love in my heart.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (602, 'n4l6KJ1pDt', '9796869618258', '历史、地理', 'It wasn’t raining when Noah built the ark. SQL Editor allows you to create and                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (603, 'r1W3Ygkg5s', '9797472546105', '语言、文字', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (604, 'iCe4qAneL5', '9781056141053', '社会科学总论', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (605, '8ePRtiD3oO', '9784067813148', '交通运输', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (606, 'DNJ5kZN48S', '9798227550934', '语言、文字', 'Champions keep playing until they get it right. Instead of wondering when your next                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (607, 'nGAnh0711s', '9787584951928', '文化、科学、教育、体育', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (608, 'AxjlIAgg0P', '9784515188835', '数理科学和化学', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (609, '0I80RNqlNg', '9793128103012', '经济', 'The first step is as good as half over. Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (610, 'A46dFDdvCn', '9799269945627', '语言、文字', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (611, 't5XM1W7peB', '9791449695766', '艺术', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (612, '8OqnQiQG7B', '9794068114472', '数理科学和化学', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (613, 'meWqSAXQMg', '9795012422155', '工业技术', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (614, 'IzVomE3iaY', '9795404485232', '交通运输', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (615, 'LqMEENwjF1', '9782834032167', '艺术', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (616, 'jI9514onGN', '9786334520018', '哲学、宗教', 'It wasn’t raining when Noah built the ark. Such sessions are also susceptible to                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (617, 'SDr1cQ7LC3', '9780771146541', '军事', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (618, '689fkFYwna', '9784458682254', '生物科学', 'All journeys have secret destinations of which the traveler is unaware.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (619, 'kPMiKfJ9iv', '9781008888296', '政治、法律', 'A man’s best friends are his ten fingers. To start working with your server in                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (620, 'eNvR9y5u66', '9793653345383', '医药、卫生', 'You cannot save people, you can just love them. You will succeed because most people are lazy.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (621, 'bkPZAmwKav', '9788384069356', '生物科学', 'There is no way to happiness. Happiness is the way.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (622, 'yYTbrNqDQb', '9797869276455', '文学', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (623, 'e4fgbGwmJ2', '9790746004080', '语言、文字', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (624, 'oWnPacU8g2', '9795294400643', '文学', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (625, 'RAKQt1TA9Y', '9791580792836', '生物科学', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (626, 'ySLerV6SJH', '9783367077519', '生物科学', 'Optimism is the one quality more associated with success and happiness than any other.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (627, 'Fzb0q4DGaa', '9796587405987', '文学', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (628, 'Xla5QKCMSx', '9785541300062', '工业技术', 'Remember that failure is an event, not a person. Flexible settings enable you to                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (629, 'zefD7kI89x', '9786515510289', '语言、文字', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (630, 'BluXmaZKff', '9793659175779', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (631, 'howK4PpFvN', '9791140740826', '艺术', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (632, '0wRuMKwyP7', '9798413053782', '农业科学', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (633, 'rINZqSrNqP', '9796501369999', '交通运输', 'The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (634, 'JI2Euzfo3v', '9798646038839', '生物科学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (635, 'FWHcIIriAl', '9787138967498', '农业科学', 'If it scares you, it might be a good thing to try. To get a secure connection, the                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (636, 'yl550JETDx', '9784829477922', '农业科学', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (637, 'tqEdstiWYq', '9794106352934', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (638, '1rTJNk8KUl', '9787064481563', '哲学、宗教', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (639, 'kADdnGxtj3', '9791343489225', '自然科学总论', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (640, 'VzwQVEg74U', '9781061789899', '艺术', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (641, 'IMsLyaIwHN', '9783772658099', '经济', 'How we spend our days is, of course, how we spend our lives. After logged in the                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (642, 'RUSzpjgagQ', '9785640202113', '数理科学和化学', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (643, 'mHxJEIUz1S', '9786292338298', '环境科学、安全科学', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (644, 'k0hQZX5d4L', '9797064998411', '语言、文字', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (645, 'as5nKGHLbQ', '9790693819867', '政治、法律', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (646, 'OcMIuYtbpG', '9784973424797', '军事', 'Champions keep playing until they get it right. The On Startup feature allows you                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (647, 'nuemRjRmdW', '9790043648154', '政治、法律', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (648, '5rx14nlrVd', '9780576050425', '天文学、地球科学', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (649, 'db5Dr3qzd3', '9798588119566', '语言、文字', 'To start working with your server in Navicat, you should first establish a connection               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (650, 'PTCGYGC7eV', '9787729548495', '军事', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (651, '2hpOLbjLOC', '9791714260965', '医药、卫生', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (652, 'llsA3x0KHw', '9799842817303', '语言、文字', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (653, 'yR6uB8k268', '9788116254074', '医药、卫生', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (654, 'vyrPdyJtAH', '9791582122075', '文学', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (655, 'hBM8k2YYnY', '9789484375057', '军事', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (656, 'H9VIALSC28', '9786419389776', '文学', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (657, 'Z5jb01y1Q2', '9786871250713', '军事', 'If opportunity doesn’t knock, build a door. Navicat Cloud provides a cloud service                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (658, 'u2pYCgUMMu', '9787337933096', '数理科学和化学', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (659, 'dATlQcoXbl', '9795539246999', '医药、卫生', 'Optimism is the one quality more associated with success and happiness than any other.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (660, 'wS1H0fbpaV', '9787647841777', '医药、卫生', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (661, 'Lrqkac5mcW', '9786927429452', '医药、卫生', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (662, 'bJMaz3vNFL', '9792731696676', '社会科学总论', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (663, 'g25g1gmEcr', '9785203777096', '自然科学总论', 'If you wait, all that happens is you get older.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (664, 'PUbPweZEaX', '9788335464087', '历史、地理', 'Creativity is intelligence having fun. A man’s best friends are his ten fingers.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (665, 'qh0scNivyw', '9783692199702', '文化、科学、教育、体育', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (666, 'DzGyzrH8Wa', '9785889425076', '环境科学、安全科学', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (667, 'M8f0V2LBH7', '9790694061012', '数理科学和化学', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (668, '5vM3TM04vE', '9782139329245', '文学', 'I destroy my enemies when I make them my friends.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (669, '7786tCSAwO', '9797247833409', '语言、文字', 'If you wait, all that happens is you get older.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (670, 'Mhp5JMLYnb', '9787610521750', '政治、法律', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (671, 'sdywnvpepU', '9782212664782', '历史、地理', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (672, 'pOInIzTGdc', '9798377160014', '哲学、宗教', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (673, 'HCZWleFUWy', '9781345251166', '农业科学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (674, '9yuONIhb7f', '9795455719379', '经济', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (675, 'TXr0XL5XIK', '9793692428863', '政治、法律', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (676, 'krT9EfSShB', '9799596013006', '工业技术', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (677, '1LGy2nqXM9', '9782116041030', '历史、地理', 'The first step is as good as half over. Instead of wondering when your next vacation                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (678, 'm12Fod0TsQ', '9792757561422', '医药、卫生', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (679, '7Bs6bUO7rq', '9789220353417', '天文学、地球科学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (680, 'G0z4xAHozq', '9786103863148', '经济', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (681, 'oesbYTOTRf', '9785175085601', '工业技术', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (682, '1pTbjEYBSh', '9784672370159', '艺术', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (683, 'KCtmX4WmKP', '9793982609149', '环境科学、安全科学', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (684, '9LvMlI3GlI', '9796527682164', '天文学、地球科学', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (685, 'QkQB9qk5UL', '9782126587337', '历史、地理', 'If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (686, 'xpiynUwPmG', '9792184192398', '社会科学总论', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (687, 'QbNMFE40bf', '9791703140575', '天文学、地球科学', 'The past has no power over the present moment.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (688, 'yIMFFuzmNI', '9793289511367', '艺术', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (689, '3SGTUkd4mc', '9787568952415', '工业技术', 'Remember that failure is an event, not a person. To successfully establish a new                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (690, 'q1F76igRGk', '9799109267964', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'You will succeed because most people are lazy. It is used while your ISPs do not                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (691, '9ehjywcjx3', '9799951975574', '文学', 'If you wait, all that happens is you get older. HTTP Tunneling is a method for connecting           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (692, 'XxlBG27rF2', '9780467167027', '医药、卫生', 'How we spend our days is, of course, how we spend our lives. Secure Sockets Layer(SSL)              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (693, 'kzwKQM7WCR', '9785884654426', '历史、地理', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (694, 'mf6Ax1KhRr', '9794509470655', '军事', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (695, 'CP1AAVHBmL', '9798783209994', '政治、法律', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (696, 'Qkk7hobaim', '9788874227280', '生物科学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (697, 'In72z9eUsu', '9789746004015', '社会科学总论', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (698, 'FNCW2VyZzc', '9794084410633', '语言、文字', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (699, 'mwzLtc3RjC', '9786266415017', '数理科学和化学', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (700, 'ObLsdZa4oJ', '9785446079483', '文化、科学、教育、体育', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (701, 'J5pIocVmL7', '9790045538743', '文化、科学、教育、体育', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (702, 'Ewpyww82PN', '9785589296808', '哲学、宗教', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (703, 'TvCuay19ew', '9784487195770', '环境科学、安全科学', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (704, 'wIP4qzGiVf', '9781500247898', '经济', 'Champions keep playing until they get it right. The On Startup feature allows you                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (705, 'z5dKsOCwWt', '9784845195879', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (706, 'JDLz74Prwu', '9793426754572', '历史、地理', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (707, 'rNy9IXWdxs', '9790062610033', '医药、卫生', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (708, 'A5a3gcbzaz', '9781563574863', '工业技术', 'Sometimes you win, sometimes you learn. If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (709, 'vOOhLY9jyQ', '9781116390216', '数理科学和化学', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (710, 'VJehLys5dg', '9783773330062', '经济', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (711, '8O96wnFQen', '9795225880254', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (712, '0943u6z1fX', '9781738918867', '生物科学', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (713, 'y9HRxKi5bh', '9782356460202', '天文学、地球科学', 'Sometimes you win, sometimes you learn.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (714, '6Ec6McE0yK', '9790265984078', '政治、法律', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (715, 'RUmMueqmbu', '9787711939102', '政治、法律', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (716, 'OM4FLiq41z', '9799325119450', '工业技术', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (717, 'm13gjchXfY', '9788428695039', '政治、法律', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (718, 'HTkwf1FUhC', '9794771418317', '社会科学总论', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (719, 'BOdVrXnoHh', '9798034233440', '经济', 'I destroy my enemies when I make them my friends. To start working with your server                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (720, 'S0EYcbKamb', '9799577945081', '工业技术', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (721, 'HUZHLvw0ya', '9781847164322', '农业科学', 'You must be the change you wish to see in the world.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (722, 'O764BvyIlL', '9785866657988', '工业技术', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (723, '66VgIH0K5E', '9791984045743', '文化、科学、教育、体育', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (724, 'RlmVobfQcM', '9789073087231', '经济', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (725, 'gWtMAX4j5i', '9794556244681', '政治、法律', 'Champions keep playing until they get it right.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (726, 'JFNUFj9QQL', '9795580758779', '社会科学总论', 'Flexible settings enable you to set up a custom key for comparison and synchronization.             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (727, 'X9WWkWqz5T', '9787581532953', '军事', 'You must be the change you wish to see in the world.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (728, 'azTOf4LBZP', '9792586134194', '天文学、地球科学', 'The first step is as good as half over. Anyone who has never made a mistake has never               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (729, 'xuwOjR8KnP', '9786438873560', '生物科学', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (730, 'XVMKtA8kaR', '9788562832406', '社会科学总论', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (731, 'iMTdJjp493', '9794745910991', '语言、文字', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (732, 'dFqhdTyrfw', '9793103261096', '文化、科学、教育、体育', 'You cannot save people, you can just love them. In other words, Navicat provides                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (733, 'QzFX0sDMso', '9789051790214', '艺术', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (734, '9qQoZc9C3M', '9780331990133', '文化、科学、教育、体育', 'If the plan doesn’t work, change the plan, but never the goal. The On Startup feature             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (735, 'pA2EG5JJxp', '9783970692239', '哲学、宗教', 'You cannot save people, you can just love them.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (736, 'rHShF9uzS5', '9781612149851', '语言、文字', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (737, 'h9sI8m4LQ4', '9786286428400', '艺术', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (738, 'qv7khrEl17', '9790527095825', '历史、地理', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (739, 'QNW5Lumxp9', '9787005145592', '政治、法律', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (740, '58jh8JRsiM', '9788684891251', '自然科学总论', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (741, 'bVi1w0ND6N', '9798743892853', '文化、科学、教育、体育', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (742, 'Ph1n32ht5m', '9792239677603', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (743, 'WM9TIaQ8ba', '9791352115658', '自然科学总论', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (744, '7DXZ3y03uC', '9794580032339', '环境科学、安全科学', 'Success consists of going from failure to failure without loss of enthusiasm.                       ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (745, 'iZCMsfJJOv', '9786161196387', '哲学、宗教', 'Remember that failure is an event, not a person.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (746, 'gtNyzar3Bt', '9783095879263', '社会科学总论', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (747, 'mxRuPklRcF', '9785569508129', '天文学、地球科学', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (748, 'XPbqwiCUWb', '9782087913831', '文学', 'I will greet this day with love in my heart. I may not have gone where I intended                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (749, 'mZgi41owdK', '9785365749641', '文学', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (750, 'zqz7F26U9j', '9795657873947', '政治、法律', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (751, 'LxpvIyrf23', '9791846489388', '社会科学总论', 'You cannot save people, you can just love them.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (752, 'kl4TDK0cMM', '9787988265485', '自然科学总论', 'Champions keep playing until they get it right. It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (753, 'OsT85VBd0X', '9798470766977', '工业技术', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (754, '5ji31nU9vE', '9781763134737', '经济', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (755, 'cshZASFw7l', '9796794765553', '医药、卫生', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (756, 'AAEtsZRiK5', '9782346185917', '语言、文字', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (757, 'R98LSpEuFT', '9796144457572', '文化、科学、教育、体育', 'The first step is as good as half over. Anyone who has never made a mistake has never               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (758, 'JMFF90KuF4', '9790484636901', '工业技术', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (759, 'Pz4RCehj3j', '9780718142841', '历史、地理', 'You cannot save people, you can just love them. Optimism is the one quality more                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (760, 'OWYegnFdk5', '9795120928679', '医药、卫生', 'Typically, it is employed as an encrypted version of Telnet. Monitored servers include              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (761, 'mps6Dcmnqq', '9788201754939', '自然科学总论', 'Remember that failure is an event, not a person. Navicat is a multi-connections Database            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (762, 'ooogLIjiFE', '9794036684617', '生物科学', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (763, '4ADfujRWv5', '9785071745982', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (764, 'uz6hidIYkY', '9793169567217', '历史、地理', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (765, 'AJ5zlkowvq', '9795729810887', '数理科学和化学', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (766, 'Hxn5YFaWCH', '9780010786361', '农业科学', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (767, 'LvSXoIuggG', '9790484645330', '哲学、宗教', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (768, 'zBeZTgjjH6', '9789305757109', '文学', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (769, 'YRPezUWSgR', '9785914391703', '交通运输', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (770, 'bcfoLQtLuj', '9795757211441', '历史、地理', 'Sometimes you win, sometimes you learn. Anyone who has ever made anything of importance             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (771, 'xonwjRFb2R', '9792144540849', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (772, 'yu21WnMdHU', '9786506871931', '经济', 'I will greet this day with love in my heart. Navicat Cloud provides a cloud service                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (773, 'OynVlYAprC', '9787007076955', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (774, 'HnqjDiWyKa', '9781786158161', '历史、地理', 'Champions keep playing until they get it right.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (775, 'TJihgNAA7F', '9789543201105', '环境科学、安全科学', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (776, 'aIYv3Oyoru', '9783264099911', '军事', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (777, 'ZCmQo184Na', '9783928937191', '经济', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (778, 'FUrnXmA3Nw', '9792905915954', '社会科学总论', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (779, 'hvlhNvp13O', '9793529600769', '农业科学', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (780, 'yvB1zjzAvs', '9782581359593', '社会科学总论', 'A comfort zone is a beautiful place, but nothing ever grows there. Navicat provides                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (781, 'kQapHguuP6', '9782850412998', '哲学、宗教', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (782, 'KyDgLKSxv9', '9789999165044', '艺术', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (783, 'mIXoPDZ0eE', '9792153024309', '哲学、宗教', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (784, 'zX2gBT9rWH', '9791128979415', '环境科学、安全科学', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (785, 'vlRoTP1fhd', '9786126399426', '军事', 'Creativity is intelligence having fun. Flexible settings enable you to set up a custom              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (786, 'Z3omiNebBK', '9797677423386', '农业科学', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (787, 'RQjWRr4wrT', '9782791656208', '生物科学', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (788, 'f3zQXqMc6i', '9786928106154', '环境科学、安全科学', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (789, 'G6sUZuLQ7d', '9786546693463', '语言、文字', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (790, 'LzdfPlEMN9', '9798927068029', '文化、科学、教育、体育', 'A man is not old until regrets take the place of dreams. SSH serves to prevent such                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (791, 'Q58QMmMAvL', '9794795910545', '环境科学、安全科学', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (792, 'ugbhseasdm', '9794160746861', '环境科学、安全科学', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (793, 'USpwWBKYPW', '9783747684290', '艺术', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.        ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (794, 'OwF7Sm5veG', '9799469827310', '经济', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (795, 'jgZbmFD2OC', '9785404300536', '军事', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (796, 'DaRfLbPJuJ', '9794399872249', '艺术', 'Anyone who has ever made anything of importance was disciplined.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (797, 'pniehl36DB', '9788278517185', '环境科学、安全科学', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (798, 'aWSOK3kenC', '9794494230425', '环境科学、安全科学', 'A comfort zone is a beautiful place, but nothing ever grows there. What you get by                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (799, 'xD5z2vsKUe', '9786519204474', '生物科学', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (800, 'Ws03iCCuGh', '9784044263935', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (801, 'xkdDKMw8wm', '9796372036273', '哲学、宗教', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (802, 'oem0ArV4RT', '9780328547777', '文学', 'All journeys have secret destinations of which the traveler is unaware.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (803, 'seGawW0bas', '9786357031065', '哲学、宗教', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (804, 'JfSvsPfV3r', '9786474358090', '交通运输', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (805, 'p8ou9CWswx', '9794924473446', '自然科学总论', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (806, 'hzB7TCgy21', '9788203028540', '交通运输', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (807, '4r3PwAqQZH', '9788446283997', '社会科学总论', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (808, 'dAe9xuCewh', '9781704638171', '经济', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (809, 'LNf3BGR6Rb', '9792068994100', '经济', 'There is no way to happiness. Happiness is the way. Actually it is just in an idea                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (810, 'tXqCpFqZmh', '9789072250018', '政治、法律', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (811, 'DwSVf18hzr', '9795733299548', '环境科学、安全科学', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (812, '1C6IEFoocR', '9781645063599', '社会科学总论', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (813, 'VyZa298Rk9', '9782868389169', '哲学、宗教', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (814, 'DWgtArV53n', '9788094176573', '医药、卫生', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (815, '3kPScGqucE', '9798743535835', '工业技术', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (816, 'Es4DLtUnsT', '9782317841248', '天文学、地球科学', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (817, '6PQ4LeiJH4', '9789557945712', '语言、文字', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (818, 'eEQRQnPwy6', '9788357299551', '农业科学', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (819, 'aWwpxjY6fy', '9782952038089', '文学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (820, 'SmRs7Nrd9B', '9796518306499', '艺术', 'How we spend our days is, of course, how we spend our lives.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (821, 'AFoXhE3ahW', '9784210714865', '政治、法律', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (822, '8q5SWd2VdN', '9786241154337', '社会科学总论', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (823, 'wc4PVApNOb', '9780916537302', '军事', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (824, 'xADp4py2cq', '9795100860180', '自然科学总论', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (825, 'F8aqDPUJhI', '9783714615210', '哲学、宗教', 'The reason why a great man is great is that he resolves to be a great man.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (826, 'ipcIA6ezFT', '9794342560223', '政治、法律', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (827, 'Gq0KCUUJRE', '9786787730040', '语言、文字', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (828, 'ac027ZgV4k', '9783473895991', '医药、卫生', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (829, 'mCuybXFsRk', '9790003791630', '工业技术', 'A comfort zone is a beautiful place, but nothing ever grows there. All the Navicat                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (830, '3iVmOwgyx9', '9780630950494', '文化、科学、教育、体育', 'A man’s best friends are his ten fingers. Navicat provides powerful tools for working             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (831, 'T6jasRoHcu', '9798127480324', '社会科学总论', 'Champions keep playing until they get it right. You will succeed because most people are lazy.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (832, 'DYprCO2mkO', '9788711632949', '艺术', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (833, 'q58Id624TH', '9781620129432', '生物科学', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (834, 'EwtwZ1v0TM', '9781236514998', '环境科学、安全科学', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (835, 'hCXwpRlu2P', '9780002214933', '生物科学', 'The first step is as good as half over. A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (836, 'ec3PdJtBWB', '9791984594913', '农业科学', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (837, 'HY3xuXWZAW', '9783585554885', '环境科学、安全科学', 'You cannot save people, you can just love them. I may not have gone where I intended                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (838, 'HtC4Yuamxm', '9783774354401', '艺术', 'In a Telnet session, all communications, including username and password, are transmitted           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (839, 'Oh1RKH0puO', '9793999454343', '经济', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (840, 'Tu0Qd0C91K', '9797726634312', '政治、法律', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (841, 'RYwN0e8CH0', '9794793738714', '环境科学、安全科学', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (842, 'rvd1Cmrrr5', '9781151936967', '农业科学', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (843, 'I2NE8cTuRn', '9782757261620', '文化、科学、教育、体育', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (844, 'zhtnNaoYIV', '9783130316746', '交通运输', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (845, 'mHmMVvmUn5', '9782579069930', '农业科学', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (846, 'N8f0U81B7X', '9795629774401', '艺术', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (847, 'jY76MJ7wYj', '9799325047845', '艺术', 'The Synchronize to Database function will give you a full picture of all database differences.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (848, 'RjoAJprEM8', '9786557985793', '艺术', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (849, 'AFrM9u3aR5', '9787241724803', '工业技术', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (850, 'SvtOo0xCDz', '9793505114488', '工业技术', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (851, 'GgfkJ7W45F', '9791335832886', '政治、法律', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (852, 'b6WxnRB4Ar', '9789515518927', '语言、文字', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (853, '5EUCSaDyVS', '9785383958728', '社会科学总论', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (854, 'QEGf0Lnaqn', '9799429387144', '环境科学、安全科学', 'There is no way to happiness. Happiness is the way.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (855, 'lOLMLoGJ04', '9793007999606', '农业科学', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (856, '9g2070EHlE', '9799767498014', '社会科学总论', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (857, 'jOCsd9NdeG', '9794871266733', '社会科学总论', 'If opportunity doesn’t knock, build a door. Creativity is intelligence having fun.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (858, 'YIAnaCGcPJ', '9791094996683', '农业科学', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (859, 'LIQDHRSyEu', '9797527058881', '艺术', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (860, '3QuQn8g8ye', '9783341069578', '自然科学总论', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (861, '7z6FzFItL9', '9789037543513', '军事', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (862, 'YHv6qEy8Hs', '9797510304759', '自然科学总论', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (863, 'WzEcs41auM', '9787587100323', '医药、卫生', 'If opportunity doesn’t knock, build a door.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (864, '51mYVEf0wA', '9796069563167', '工业技术', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (865, 'MQzBGOV9GY', '9786269118137', '政治、法律', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (866, 'oP9sXySoUm', '9793868215785', '自然科学总论', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (867, 'rUjyZscHD7', '9792267170077', '政治、法律', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (868, 'uesuLd1yWS', '9784693913434', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'After comparing data, the window shows the number of records that will be inserted,                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (869, 'fK56FldVdj', '9787054098214', '艺术', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (870, 'EfIF36X2pq', '9785362953966', '文化、科学、教育、体育', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (871, 'XJvILubyeO', '9780453952262', '天文学、地球科学', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (872, '3jjiGYpNPA', '9781315813899', '文化、科学、教育、体育', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (873, 'BqlPMgXdNl', '9793458485734', '自然科学总论', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (874, 'dlxsn715L2', '9783405035747', '自然科学总论', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (875, '0O29Yf47QA', '9784745829171', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (876, 'dJRuXn6G9O', '9780442143671', '生物科学', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (877, 'Z4PbBc8s1m', '9780753001868', '社会科学总论', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (878, '0FkpNVop85', '9791673892207', '文学', 'Difficult circumstances serve as a textbook of life for people.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (879, 'ke8muIZbCW', '9788988856185', '文化、科学、教育、体育', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (880, '5feRUCYcxp', '9787306826091', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'You will succeed because most people are lazy. Navicat Monitor requires a repository                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (881, 'pSgGbDg2YL', '9798468110836', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (882, 'uLHHyQ1vat', '9796417309164', '环境科学、安全科学', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (883, 'yI3Ur9LMLs', '9785368760339', '工业技术', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (884, 'UnUUKU4GSO', '9782521998653', '社会科学总论', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (885, 'piu8wXukSU', '9782494627291', '环境科学、安全科学', 'The past has no power over the present moment. To successfully establish a new connection           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (886, 'u4golSUsSp', '9791371760044', '艺术', 'Anyone who has ever made anything of importance was disciplined. Success consists                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (887, 'JGnRVM46gx', '9794121327351', '历史、地理', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (888, 'dGVG1yVZSm', '9797017281263', '军事', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (889, 'u9mIjInYia', '9786248887962', '天文学、地球科学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (890, 'KQMkNLjZE3', '9795743963200', '生物科学', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (891, 'vDapKYhw7e', '9796024862854', '农业科学', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (892, '5AznokYnRG', '9782640821245', '自然科学总论', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (893, 'e6yrFzHSdF', '9799793975251', '天文学、地球科学', 'If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (894, 'OxAT0jALg7', '9791823808096', '哲学、宗教', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (895, 'XAHnvRhy5F', '9789710860913', '文化、科学、教育、体育', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (896, 'DkWPdBiIkO', '9780381025786', '经济', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (897, 'IvXAyRrO8w', '9793785308553', '文化、科学、教育、体育', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (898, 'FfHczjYHlN', '9792105777895', '经济', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (899, 'JImHEhHHYu', '9781581982473', '艺术', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (900, 'PvFuC86QbD', '9796844079081', '生物科学', 'You cannot save people, you can just love them. Instead of wondering when your next                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (901, '4QvpviVrrD', '9782633836089', '文学', 'Anyone who has never made a mistake has never tried anything new. You cannot save                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (902, 'e1WOdiSZdM', '9783972556461', '社会科学总论', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (903, 'CqiTf8qHPv', '9794873302972', '历史、地理', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (904, 'BuEjNVC3u1', '9786994500740', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'All journeys have secret destinations of which the traveler is unaware.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (905, 'xPxceKmEGf', '9788895424521', '数理科学和化学', 'To connect to a database or schema, simply double-click it in the pane.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (906, 'SOZpRx0ONC', '9782815241007', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'A comfort zone is a beautiful place, but nothing ever grows there.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (907, 'rcxWTqLt1S', '9799162569722', '文学', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (908, '3T6HQXedVH', '9795679893565', '自然科学总论', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (909, 'oexf9z1iaX', '9798782506681', '文学', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (910, '9hAhBNPhNG', '9798006077638', '军事', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (911, 'Om5ugHBD3X', '9791544476413', '环境科学、安全科学', 'The Information Pane shows the detailed object information, project activities, the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (912, 'WrBsQdACvO', '9799224004000', '艺术', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (913, '8IXkAczoGy', '9791636905111', '文学', 'To open a query using an external editor, control-click it and select Open with External            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (914, 'crVHixFn5j', '9789751933249', '语言、文字', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (915, 'oViLSTEEUY', '9791231892359', '社会科学总论', 'The first step is as good as half over.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (916, 'pS2WYvE0af', '9783705447684', '自然科学总论', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (917, '0ifpavVZjm', '9792352443598', '军事', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (918, '5S2gDXQqxy', '9799953533413', '社会科学总论', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (919, 'FMiEtNVMOf', '9786413772734', '医药、卫生', 'Anyone who has never made a mistake has never tried anything new.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (920, 'U2fGJuMtrU', '9789704489618', '环境科学、安全科学', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (921, 'ao8cGJoP3g', '9797505616492', '政治、法律', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (922, 'rFeoY5h7yU', '9799699079817', '历史、地理', 'Remember that failure is an event, not a person.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (923, 'HDUqsjbHtm', '9782096855511', '艺术', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (924, 'XLh5tJZwzO', '9788422369363', '艺术', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (925, 'SQIIMofkE2', '9791303150349', '经济', 'There is no way to happiness. Happiness is the way. Navicat Cloud could not connect                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (926, 'a6rJMRXl3j', '9780263915112', '工业技术', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (927, 'PwIB7yUAj8', '9797004120988', '农业科学', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (928, 'Hfmr39vlqP', '9793738849942', '环境科学、安全科学', 'Sometimes you win, sometimes you learn.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (929, '7ZV3hj4wfG', '9780421664906', '社会科学总论', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (930, 'yvUFW3mapK', '9787636248648', '政治、法律', 'It wasn’t raining when Noah built the ark.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (931, '8jJ2rpQiGC', '9799902478710', '工业技术', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (932, 'bodg4CpfBr', '9790654643654', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (933, 'kCLTdP2tFL', '9788560905652', '自然科学总论', 'Navicat 15 has added support for the system-wide dark mode.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (934, 'QOFYeEuN58', '9796826604638', '文化、科学、教育、体育', 'There is no way to happiness. Happiness is the way. I will greet this day with love in my heart.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (935, 'mQqVwkQIsR', '9786100957758', '医药、卫生', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (936, 'K7LzJpZt56', '9793027717129', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (937, 'mX0soHZtrI', '9791357653803', '医药、卫生', 'Genius is an infinite capacity for taking pains.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (938, 'LAI58IdTb1', '9794645249191', '社会科学总论', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (939, 'CWBjWgRSs3', '9783869780986', '艺术', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (940, 'zYsqiAp5eE', '9787913578192', '社会科学总论', 'You can select any connections, objects or projects, and then select the corresponding              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (941, 'kgRW5vuoKM', '9789775590374', '文学', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (942, 'LBjgKT827K', '9797606504353', '数理科学和化学', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (943, 'hUfm9xTYUG', '9783837240733', '交通运输', 'I will greet this day with love in my heart.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (944, '2lLWXju5yq', '9796840712128', '历史、地理', 'Navicat authorizes you to make connection to remote servers running on different                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (945, 'FCcjKCPiwz', '9780074264270', '政治、法律', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (946, 'oxPxjiwTJ1', '9782451074977', '经济', 'A man is not old until regrets take the place of dreams. Actually it is just in an                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (947, 'tsqgojTeam', '9790664799648', '生物科学', 'Creativity is intelligence having fun.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (948, 'dTQ6HQw2oh', '9790168413057', '生物科学', 'I will greet this day with love in my heart.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (949, 'xLaMAbPxVP', '9785365303683', '文学', 'Remember that failure is an event, not a person. Navicat 15 has added support for                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (950, 'RGqLwY6vSX', '9797472508417', '工业技术', 'A man’s best friends are his ten fingers. Navicat provides powerful tools for working             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (951, 'criKah6fTr', '9788531925368', '天文学、地球科学', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (952, 'sDVwJMkwgz', '9780339781092', '哲学、宗教', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (953, 'EXqWKNAOs3', '9782056593286', '政治、法律', 'I will greet this day with love in my heart. The Synchronize to Database function                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (954, '5sITE8JHuB', '9795467810170', '交通运输', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (955, 'jSnfUwXQIj', '9793514073608', '农业科学', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (956, 'pNATqZ9QBB', '9792675661808', '医药、卫生', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (957, 'YFULyAO9Cm', '9798126343477', '工业技术', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (958, 'iWSAgffmtB', '9788853384577', '文学', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (959, 'cSfLnkjNOG', '9796176100118', '语言、文字', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (960, 'Eaq4kaIvAs', '9785036151223', '农业科学', 'There is no way to happiness. Happiness is the way. If you wait, all that happens is you get older.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (961, 'LJXF9jv47M', '9789074469500', '文化、科学、教育、体育', 'You must be the change you wish to see in the world.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (962, 'HxhPaFhDvW', '9798654461667', '交通运输', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (963, 'axo9c12txI', '9799032441295', '交通运输', 'To connect to a database or schema, simply double-click it in the pane.                             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (964, 'IkiF7zlH8a', '9799298395172', '生物科学', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (965, 'ghmvz0oLlo', '9788908466227', '哲学、宗教', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (966, 'v1hG6zqcyA', '9787405525918', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (967, 'fQeGZJyQbC', '9795586719125', '医药、卫生', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (968, 'YBS7aTgGzN', '9799362472181', '艺术', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (969, '2NG8eDwVWJ', '9794694125699', '医药、卫生', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (970, 'yO7FLOHsWR', '9781197190606', '历史、地理', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (971, 'N1YZGO9qiI', '9783466385287', '军事', 'Success consists of going from failure to failure without loss of enthusiasm.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (972, 'neXFz8avNN', '9792475344659', '文学', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (973, 'DRqFTbteVX', '9789555954914', '哲学、宗教', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (974, 'CchFdJwHP4', '9797681376616', '交通运输', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (975, 'HL5i4XU4Ov', '9795840362494', '工业技术', 'To successfully establish a new connection to local/remote server - no matter via                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (976, 'Ns6yG4HyQ5', '9784221847613', '马克思主义、列宁主义、毛泽东思想、邓小平理论', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (977, 'Ewbh5rxfzL', '9785493537004', '天文学、地球科学', 'Genius is an infinite capacity for taking pains. If the plan doesn’t work, change                 ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (978, 'qF6OcjuKgO', '9793892686186', '语言、文字', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (979, 'XoDBne2CHv', '9788025213070', '环境科学、安全科学', 'A man’s best friends are his ten fingers. SQL Editor allows you to create and edit                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (980, 'ait1YwYkBM', '9791804159278', '社会科学总论', 'To connect to a database or schema, simply double-click it in the pane.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (981, 'DYYwRHApYb', '9790700068059', '天文学、地球科学', 'A query is used to extract data from the database in a readable format according                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (982, 'UHHEOAZvXU', '9794668703373', '文化、科学、教育、体育', 'There is no way to happiness. Happiness is the way. A man’s best friends are his ten fingers.     ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (983, 'yZ4JMGFuH9', '9780849486975', '艺术', 'It provides strong authentication and secure encrypted communications between two                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (984, 'hn6t82dpjv', '9784080478829', '生物科学', 'If it scares you, it might be a good thing to try.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (985, 'idl92srNq8', '9795462913333', '政治、法律', 'You will succeed because most people are lazy.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (986, 'bazEu3sR14', '9783817375073', '军事', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (987, 'lqGQsQGK75', '9789330484407', '自然科学总论', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (988, '9yS20jbXSJ', '9797657439963', '文学', 'If opportunity doesn’t knock, build a door. After comparing data, the window shows                ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (989, 'LcTaL65XDi', '9784155286267', '农业科学', 'A man is not old until regrets take the place of dreams.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (990, 'tXV3TCFv6M', '9799498624430', '交通运输', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (991, '5qLvReC44m', '9784184953451', '社会科学总论', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (992, 'ahEkbf2jCU', '9799790006682', '生物科学', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (993, 'DusVewMSlB', '9797279585369', '文学', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (994, 'aikyY4ljKM', '9783170485549', '经济', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (995, 'pLi0gGCcPW', '9793820858067', '政治、法律', 'If the plan doesn’t work, change the plan, but never the goal. Navicat is a multi-connections     ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (996, 'gOfEP6ma6m', '9783593697277', '语言、文字', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (997, 'Qk42ujC2nB', '9789607415578', '工业技术', 'Typically, it is employed as an encrypted version of Telnet.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (998, 'MrQNjVsaBt', '9790952970216', '历史、地理', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (999, '2YwdzBsXeN', '9792737914583', '政治、法律', 'If the plan doesn’t work, change the plan, but never the goal.', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (1000, 'pWbbPEp3ES', '9782546758447', '农业科学', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');

-- ----------------------------
-- Table structure for borrow_list
-- ----------------------------
DROP TABLE IF EXISTS `borrow_list`;
CREATE TABLE `borrow_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书单唯一指定id',
  `ownerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍拥有者的id',
  `lenderid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借书人员id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的类型',
  `bookid` int NOT NULL COMMENT '书籍id',
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `date` datetime NOT NULL COMMENT '借书日期',
  `return_deadline` datetime NOT NULL COMMENT '最晚归还时间',
  `status` int NOT NULL COMMENT '0：已借出；1：已归还；2：已延期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow_list
-- ----------------------------

-- ----------------------------
-- Table structure for borrow_require
-- ----------------------------
DROP TABLE IF EXISTS `borrow_require`;
CREATE TABLE `borrow_require`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lenderid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '谁想借',
  `ownerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '谁的',
  `bookid` int NOT NULL COMMENT '什么书id',
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书名',
  `status` int NOT NULL COMMENT '0：已发送：1：借书成功：-1：借书失败（拒绝或者已被借走）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_require
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `speakerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '说话者的id',
  `receiverid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接收者的id',
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '信息内容',
  `date` datetime NOT NULL COMMENT '信息发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `announcer` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_modified` datetime NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 'admin', '这是一条公告', '2023-05-04 19:50:11');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户唯一账号兼id，不超过16位',
  `password` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码，不超过16位',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户自定义的简介',
  `type` int NOT NULL COMMENT '用户类型，0：超管；1：管理员；2：学生；3：老师',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '123', 'admin', 1);
INSERT INTO `user` VALUES ('ll', '123', 'll', 2);
INSERT INTO `user` VALUES ('pr', '123', 'pr', 2);
INSERT INTO `user` VALUES ('sadmin', '123', 'sadmin', 0);
INSERT INTO `user` VALUES ('student', '123', 'student', 2);
INSERT INTO `user` VALUES ('teacher', '123', 'teacher', 3);
INSERT INTO `user` VALUES ('zpc', '123', 'zpc', 2);

SET FOREIGN_KEY_CHECKS = 1;
