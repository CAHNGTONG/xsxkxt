/*
 Navicat Premium Dump SQL

 Source Server         : mysql80
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : xsxk

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 07/04/2025 15:46:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9091/files/download/1743926305517-1743851840704-3406c71a3032379ebae8df462c2e09.jpg', 'ADMIN');

-- ----------------------------
-- Table structure for choice
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `teacher_id` int NULL DEFAULT NULL COMMENT '授课教师',
  `student_id` int NULL DEFAULT NULL COMMENT '选课学生',
  `course_id` int NULL DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '选课信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES (5, 'Java基础', 3, 2, 2);
INSERT INTO `choice` VALUES (6, 'python基础', 6, 2, 1);
INSERT INTO `choice` VALUES (8, 'Java基础', 3, 4, 2);
INSERT INTO `choice` VALUES (9, 'Go语言', 3, 4, 4);
INSERT INTO `choice` VALUES (11, 'python基础', 6, 4, 1);
INSERT INTO `choice` VALUES (33, '课程1', 1, 7, 101);
INSERT INTO `choice` VALUES (34, '课程2', 1, 7, 102);
INSERT INTO `choice` VALUES (35, '法律实务实践课程', 25, 7, 3);
INSERT INTO `choice` VALUES (36, '法律实务实践课程', 25, 6, 3);
INSERT INTO `choice` VALUES (37, '法律实务进阶课程', 13, 6, 6);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学院名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '学院描述',
  `score` int NULL DEFAULT NULL COMMENT '最低学分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '学院信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1, '计算机科学与技术学院', '涵盖计算机科学理论、软件开发、人工智能、计算机网络等多个领域的教学与研究，培养具备扎实计算机基础和创新能力的专业人才。', 130);
INSERT INTO `college` VALUES (2, '电子信息学院', '专注于电子技术、信息处理、通信工程等方向，开展前沿科研和实践教学，为电子信息产业输送高素质工程技术人才。', 125);
INSERT INTO `college` VALUES (3, '机械工程学院', '在机械设计、制造、自动化等方面进行深入研究和教学，培养学生的工程实践能力和创新设计能力，以满足制造业对高端人才的需求。', 135);
INSERT INTO `college` VALUES (4, '经济管理学院', '提供经济学、管理学相关专业课程，注重理论与实践结合，培养具有国际视野和创新思维的经济管理人才，服务于各类企业和政府部门。', 120);
INSERT INTO `college` VALUES (5, '外国语学院', '教授多种外语，包括英语、日语、法语等，强调语言技能培养和跨文化交流能力提升，为外事、教育、翻译等领域培养专业人才。', 115);
INSERT INTO `college` VALUES (6, '文学院', '聚焦文学、语言学、文化学等学科，培养学生的人文素养、写作能力和批判性思维，为文化、教育、传媒等行业输送专业人才。', 110);
INSERT INTO `college` VALUES (7, '医学院', '承担医学教育、科研和医疗服务任务，培养临床医生、医学研究人员和公共卫生专业人才，为保障人民健康贡献力量。', 170);
INSERT INTO `college` VALUES (8, '法学院', '系统传授法学知识，培养学生的法律思维和实践能力，为司法机关、律师事务所、企业法务部门等培养专业法律人才。', 125);
INSERT INTO `college` VALUES (9, '体育学院', '开展体育教学、训练和科研工作，培养体育教育、运动训练、社会体育等方面的专业人才，推动体育事业的发展。', 110);
INSERT INTO `college` VALUES (10, '艺术学院', '涵盖音乐、美术、设计等多个艺术领域，培养具有创新精神和艺术素养的专业人才，服务于文化艺术产业。', 115);
INSERT INTO `college` VALUES (11, '建筑学院', '进行建筑设计、城市规划、景观设计等方面的教学与研究，培养具有创新能力和实践经验的建筑专业人才。', 130);
INSERT INTO `college` VALUES (12, '材料科学与工程学院', '研究金属材料、无机非金属材料、高分子材料等各类材料的制备、性能和应用，为材料产业培养专业技术人才。', 135);
INSERT INTO `college` VALUES (13, '化学化工学院', '开展化学基础研究和化工应用技术开发，培养化学、化工领域的专业人才，为化工、制药等行业提供技术支持。', 130);
INSERT INTO `college` VALUES (14, '生命科学学院', '致力于生物学、生物技术、生物工程等领域的教学与研究，培养生命科学领域的创新人才，推动生物产业的发展。', 130);
INSERT INTO `college` VALUES (15, '环境科学与工程学院', '研究环境科学与工程领域的理论和技术，培养环境监测、污染控制、生态保护等方面的专业人才，解决环境问题。', 125);
INSERT INTO `college` VALUES (16, '地理科学学院', '开展自然地理学、人文地理学、地理信息科学等方面的教学与研究，培养地理科学领域的专业人才，为资源开发、环境保护等提供服务。', 120);
INSERT INTO `college` VALUES (17, '教育学院', '培养教育领域的专业人才，开展教育学、心理学等学科的研究，为教育事业的发展提供理论支持和实践指导。', 115);
INSERT INTO `college` VALUES (18, '数学与统计学院', '进行数学理论研究和统计方法应用，培养数学、统计学专业人才，为金融、科研等领域提供数据分析和建模支持。', 125);
INSERT INTO `college` VALUES (19, '物理与光电工程学院', '研究物理学基础理论和光电技术应用，培养物理、光电领域的专业人才，推动光电产业的发展。', 130);
INSERT INTO `college` VALUES (20, '航空航天学院', '专注于航空航天工程领域的教学与研究，培养航空航天领域的专业人才，为国家航空航天事业做出贡献。', 140);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '课程介绍',
  `score` int NULL DEFAULT NULL COMMENT '课程学分',
  `teacher_id` int NULL DEFAULT NULL COMMENT '授课教师',
  `num` int NULL DEFAULT NULL COMMENT '开班人数',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上课时间',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上课地点',
  `college_id` int NULL DEFAULT NULL COMMENT '所属学院',
  `already_num` int NULL DEFAULT 0 COMMENT '已选人数',
  `preCourseIds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '需要先修的课程列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课程信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '医学研究专题课程', '本课程聚焦临床医学/公共卫生/医学研究领域，通过案例分析等方式，掌握前沿技术。', 3, 14, 48, '周四 5-7节', 'D楼141室', 7, 11, '1,2,3,4');
INSERT INTO `course` VALUES (2, '航天工程实践课程', '本课程聚焦航空航天/飞行器设计/航天工程领域，通过实践操作等方式，拓展行业视野。', 2, 1, 62, '周三 2-10节', 'C楼515室', 20, 14, NULL);
INSERT INTO `course` VALUES (3, '法律实务实践课程', '本课程聚焦法律实务/司法制度/法律思维领域，通过项目开发等方式，掌握前沿技术。', 4, 25, 40, '周五 5-6节', 'A楼540室', 8, 16, NULL);
INSERT INTO `course` VALUES (4, '机械设计基础课程', '本课程聚焦机械设计/自动化/制造技术领域，通过案例分析等方式，拓展行业视野。', 3, 10, 76, '周一 3-7节', 'A楼339室', 3, 28, NULL);
INSERT INTO `course` VALUES (5, '污染控制专题课程', '本课程聚焦环境监测/污染控制/生态保护领域，通过实践操作等方式，提升实践能力。', 3, 31, 46, '周三 1-7节', 'D楼521室', 15, 1, NULL);
INSERT INTO `course` VALUES (6, '法律实务进阶课程', '本课程聚焦法律实务/司法制度/法律思维领域，通过案例分析等方式，掌握前沿技术。', 3, 13, 77, '周一 2-10节', 'D楼399室', 8, 28, NULL);
INSERT INTO `course` VALUES (7, '生态保护基础课程', '本课程聚焦环境监测/污染控制/生态保护领域，通过项目开发等方式，提升实践能力。', 4, 41, 59, '周五 1-7节', 'D楼308室', 15, 1, NULL);
INSERT INTO `course` VALUES (8, '管理学专题课程', '本课程聚焦经济学/管理学/国际视野领域，通过案例分析等方式，培养专业技能。', 3, 23, 31, '周五 1-8节', 'A楼257室', 4, 8, NULL);
INSERT INTO `course` VALUES (9, '统计分析专题课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过理论教学等方式，掌握前沿技术。', 3, 29, 33, '周五 5-8节', 'B楼126室', 18, 26, NULL);
INSERT INTO `course` VALUES (10, '体育教育进阶课程', '本课程聚焦体育教育/运动训练/体育科研领域，通过实践操作等方式，提升实践能力。', 4, 18, 75, '周三 2-10节', 'A楼590室', 9, 26, NULL);
INSERT INTO `course` VALUES (11, '人工智能专题课程', '本课程聚焦人工智能/软件开发/计算机网络领域，通过实践操作等方式，培养专业技能。', 3, 5, 75, '周三 3-9节', 'A楼243室', 1, 22, NULL);
INSERT INTO `course` VALUES (12, '化工工艺基础课程', '本课程聚焦化学分析/化工工艺/制药技术领域，通过项目开发等方式，掌握前沿技术。', 3, 15, 65, '周三 3-9节', 'A楼544室', 13, 9, NULL);
INSERT INTO `course` VALUES (13, '地理信息进阶课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过实践操作等方式，拓展行业视野。', 4, 41, 73, '周四 1-6节', 'B楼321室', 16, 9, NULL);
INSERT INTO `course` VALUES (14, '环境保护理论课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过实践操作等方式，提升实践能力。', 4, 18, 48, '周二 5-6节', 'A楼231室', 16, 17, NULL);
INSERT INTO `course` VALUES (15, '生态保护进阶课程', '本课程聚焦环境监测/污染控制/生态保护领域，通过项目开发等方式，提升实践能力。', 4, 17, 75, '周一 3-6节', 'D楼107室', 15, 18, NULL);
INSERT INTO `course` VALUES (16, '制造技术基础课程', '本课程聚焦机械设计/自动化/制造技术领域，通过案例分析等方式，培养专业技能。', 2, 28, 76, '周二 4-8节', 'B楼501室', 3, 25, NULL);
INSERT INTO `course` VALUES (17, '景观设计理论课程', '本课程聚焦建筑设计/城市规划/景观设计领域，通过理论教学等方式，培养专业技能。', 3, 32, 33, '周一 2-8节', 'C楼597室', 11, 16, NULL);
INSERT INTO `course` VALUES (18, '教学实践理论课程', '本课程聚焦教育学/心理学/教学实践领域，通过实践操作等方式，掌握前沿技术。', 4, 13, 33, '周四 3-10节', 'C楼510室', 17, 18, NULL);
INSERT INTO `course` VALUES (19, '英语实践课程', '本课程聚焦英语/日语/跨文化交流领域，通过案例分析等方式，培养专业技能。', 2, 25, 33, '周五 2-7节', 'C楼291室', 5, 2, NULL);
INSERT INTO `course` VALUES (20, '音乐理论课程', '本课程聚焦音乐/美术/艺术设计领域，通过案例分析等方式，拓展行业视野。', 3, 13, 37, '周二 4-10节', 'B楼321室', 10, 2, NULL);
INSERT INTO `course` VALUES (21, '自动化基础课程', '本课程聚焦机械设计/自动化/制造技术领域，通过理论教学等方式，拓展行业视野。', 3, 17, 40, '周一 1-8节', 'D楼155室', 3, 14, NULL);
INSERT INTO `course` VALUES (22, '自然资源进阶课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过案例分析等方式，拓展行业视野。', 2, 4, 60, '周三 4-6节', 'A楼181室', 16, 25, NULL);
INSERT INTO `course` VALUES (23, '体育科研进阶课程', '本课程聚焦体育教育/运动训练/体育科研领域，通过实践操作等方式，掌握前沿技术。', 4, 27, 44, '周三 2-9节', 'B楼201室', 9, 23, NULL);
INSERT INTO `course` VALUES (24, '生物技术实践课程', '本课程聚焦生物技术/基因工程/生物产业领域，通过实践操作等方式，提升实践能力。', 2, 16, 32, '周二 4-8节', 'D楼400室', 14, 3, NULL);
INSERT INTO `course` VALUES (25, '航天工程理论课程', '本课程聚焦航空航天/飞行器设计/航天工程领域，通过理论教学等方式，拓展行业视野。', 4, 13, 39, '周三 2-8节', 'A楼263室', 20, 18, NULL);
INSERT INTO `course` VALUES (26, '电子技术基础课程', '本课程聚焦电子技术/通信工程/信息处理领域，通过项目开发等方式，掌握前沿技术。', 3, 42, 66, '周三 3-10节', 'A楼152室', 2, 4, NULL);
INSERT INTO `course` VALUES (27, '机械设计实践课程', '本课程聚焦机械设计/自动化/制造技术领域，通过实践操作等方式，培养专业技能。', 3, 46, 74, '周一 4-8节', 'A楼176室', 3, 10, NULL);
INSERT INTO `course` VALUES (28, '光电应用理论课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过项目开发等方式，掌握前沿技术。', 3, 42, 41, '周一 5-6节', 'A楼486室', 19, 23, NULL);
INSERT INTO `course` VALUES (29, '自然资源实践课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过案例分析等方式，掌握前沿技术。', 3, 13, 43, '周二 1-6节', 'C楼458室', 16, 20, NULL);
INSERT INTO `course` VALUES (30, '金属材料理论课程', '本课程聚焦金属材料/高分子材料/材料制备领域，通过理论教学等方式，拓展行业视野。', 3, 46, 42, '周三 2-8节', 'B楼131室', 12, 22, NULL);
INSERT INTO `course` VALUES (31, '光电应用基础课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过实践操作等方式，掌握前沿技术。', 2, 6, 64, '周一 4-7节', 'A楼331室', 19, 17, NULL);
INSERT INTO `course` VALUES (32, '光电应用进阶课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过理论教学等方式，培养专业技能。', 4, 39, 66, '周五 5-8节', 'A楼398室', 19, 11, NULL);
INSERT INTO `course` VALUES (33, '艺术设计理论课程', '本课程聚焦音乐/美术/艺术设计领域，通过实践操作等方式，提升实践能力。', 4, 28, 78, '周二 2-8节', 'D楼207室', 10, 17, NULL);
INSERT INTO `course` VALUES (34, '国际视野理论课程', '本课程聚焦经济学/管理学/国际视野领域，通过理论教学等方式，培养专业技能。', 4, 8, 69, '周一 5-8节', 'B楼447室', 4, 29, NULL);
INSERT INTO `course` VALUES (35, '环境监测实践课程', '本课程聚焦环境监测/污染控制/生态保护领域，通过理论教学等方式，掌握前沿技术。', 4, 9, 76, '周三 3-8节', 'C楼375室', 15, 23, NULL);
INSERT INTO `course` VALUES (36, '经济学专题课程', '本课程聚焦经济学/管理学/国际视野领域，通过项目开发等方式，掌握前沿技术。', 2, 21, 77, '周三 5-7节', 'D楼406室', 4, 17, NULL);
INSERT INTO `course` VALUES (37, '地理信息实践课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过项目开发等方式，拓展行业视野。', 4, 32, 36, '周五 3-9节', 'A楼249室', 16, 20, NULL);
INSERT INTO `course` VALUES (38, '生物技术进阶课程', '本课程聚焦生物技术/基因工程/生物产业领域，通过项目开发等方式，提升实践能力。', 2, 34, 52, '周一 5-9节', 'A楼452室', 14, 19, NULL);
INSERT INTO `course` VALUES (39, '文学理论课程', '本课程聚焦文学/写作/文化研究领域，通过项目开发等方式，提升实践能力。', 4, 37, 38, '周四 5-7节', 'B楼330室', 6, 24, '46');
INSERT INTO `course` VALUES (40, '计算机网络基础课程', '本课程聚焦人工智能/软件开发/计算机网络领域，通过案例分析等方式，提升实践能力。', 3, 45, 48, '周五 3-9节', 'D楼260室', 1, 13, NULL);
INSERT INTO `course` VALUES (41, '公共卫生理论课程', '本课程聚焦临床医学/公共卫生/医学研究领域，通过项目开发等方式，提升实践能力。', 2, 24, 66, '周三 3-10节', 'B楼164室', 7, 16, NULL);
INSERT INTO `course` VALUES (42, '金融数学专题课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过项目开发等方式，培养专业技能。', 4, 48, 58, '周一 2-10节', 'B楼199室', 18, 29, NULL);
INSERT INTO `course` VALUES (43, '景观设计基础课程', '本课程聚焦建筑设计/城市规划/景观设计领域，通过项目开发等方式，提升实践能力。', 3, 26, 50, '周五 3-6节', 'B楼332室', 11, 8, NULL);
INSERT INTO `course` VALUES (44, '化学分析专题课程', '本课程聚焦化学分析/化工工艺/制药技术领域，通过实践操作等方式，拓展行业视野。', 4, 4, 45, '周一 2-10节', 'C楼145室', 13, 27, NULL);
INSERT INTO `course` VALUES (45, '经济学基础课程', '本课程聚焦经济学/管理学/国际视野领域，通过案例分析等方式，拓展行业视野。', 2, 10, 60, '周二 5-6节', 'D楼440室', 4, 15, NULL);
INSERT INTO `course` VALUES (46, '文化研究基础课程', '本课程聚焦文学/写作/文化研究领域，通过实践操作等方式，培养专业技能。', 4, 43, 71, '周二 4-7节', 'B楼362室', 6, 5, NULL);
INSERT INTO `course` VALUES (47, '艺术设计实践课程', '本课程聚焦音乐/美术/艺术设计领域，通过项目开发等方式，培养专业技能。', 2, 27, 76, '周五 2-10节', 'B楼119室', 10, 19, NULL);
INSERT INTO `course` VALUES (48, '日语理论课程', '本课程聚焦英语/日语/跨文化交流领域，通过项目开发等方式，拓展行业视野。', 2, 47, 48, '周一 4-10节', 'B楼318室', 5, 25, NULL);
INSERT INTO `course` VALUES (49, '飞行器设计理论课程', '本课程聚焦航空航天/飞行器设计/航天工程领域，通过案例分析等方式，培养专业技能。', 3, 43, 38, '周四 4-9节', 'B楼468室', 20, 12, NULL);
INSERT INTO `course` VALUES (50, '物理理论理论课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过项目开发等方式，拓展行业视野。', 4, 36, 62, '周一 4-8节', 'B楼184室', 19, 18, NULL);
INSERT INTO `course` VALUES (51, '制造技术专题课程', '本课程聚焦机械设计/自动化/制造技术领域，通过项目开发等方式，拓展行业视野。', 3, 46, 35, '周三 5-6节', 'C楼350室', 3, 21, NULL);
INSERT INTO `course` VALUES (52, '光学技术理论课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过项目开发等方式，培养专业技能。', 2, 28, 37, '周五 4-8节', 'A楼545室', 19, 1, NULL);
INSERT INTO `course` VALUES (53, '跨文化交流基础课程', '本课程聚焦英语/日语/跨文化交流领域，通过项目开发等方式，掌握前沿技术。', 3, 40, 37, '周二 4-8节', 'A楼130室', 5, 15, NULL);
INSERT INTO `course` VALUES (54, '地理信息理论课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过实践操作等方式，掌握前沿技术。', 4, 34, 77, '周四 5-9节', 'C楼338室', 16, 9, NULL);
INSERT INTO `course` VALUES (55, '医学研究基础课程', '本课程聚焦临床医学/公共卫生/医学研究领域，通过实践操作等方式，拓展行业视野。', 4, 14, 37, '周二 5-7节', 'D楼266室', 7, 2, NULL);
INSERT INTO `course` VALUES (56, '教育学基础课程', '本课程聚焦教育学/心理学/教学实践领域，通过理论教学等方式，拓展行业视野。', 4, 34, 66, '周五 3-6节', 'A楼341室', 17, 18, NULL);
INSERT INTO `course` VALUES (57, '数学建模理论课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过理论教学等方式，拓展行业视野。', 3, 23, 33, '周五 1-9节', 'D楼384室', 18, 13, NULL);
INSERT INTO `course` VALUES (58, '污染控制进阶课程', '本课程聚焦环境监测/污染控制/生态保护领域，通过案例分析等方式，提升实践能力。', 3, 24, 70, '周五 5-8节', 'C楼104室', 15, 19, NULL);
INSERT INTO `course` VALUES (59, '地理信息专题课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过项目开发等方式，提升实践能力。', 2, 30, 31, '周二 2-10节', 'D楼357室', 16, 4, NULL);
INSERT INTO `course` VALUES (60, '建筑设计理论课程', '本课程聚焦建筑设计/城市规划/景观设计领域，通过理论教学等方式，掌握前沿技术。', 4, 27, 55, '周二 2-7节', 'C楼189室', 11, 25, NULL);
INSERT INTO `course` VALUES (61, '电子技术实践课程', '本课程聚焦电子技术/通信工程/信息处理领域，通过项目开发等方式，掌握前沿技术。', 2, 46, 48, '周一 2-9节', 'D楼420室', 2, 21, NULL);
INSERT INTO `course` VALUES (62, '信息处理专题课程', '本课程聚焦电子技术/通信工程/信息处理领域，通过项目开发等方式，掌握前沿技术。', 2, 47, 79, '周四 1-9节', 'A楼202室', 2, 4, NULL);
INSERT INTO `course` VALUES (63, '日语实践课程', '本课程聚焦英语/日语/跨文化交流领域，通过实践操作等方式，拓展行业视野。', 4, 36, 37, '周二 1-7节', 'D楼380室', 5, 24, NULL);
INSERT INTO `course` VALUES (64, '音乐专题课程', '本课程聚焦音乐/美术/艺术设计领域，通过案例分析等方式，拓展行业视野。', 2, 43, 79, '周二 2-8节', 'D楼178室', 10, 5, NULL);
INSERT INTO `course` VALUES (65, '通信工程基础课程', '本课程聚焦电子技术/通信工程/信息处理领域，通过理论教学等方式，培养专业技能。', 3, 40, 69, '周三 2-7节', 'B楼197室', 2, 5, NULL);
INSERT INTO `course` VALUES (66, '飞行器设计进阶课程', '本课程聚焦航空航天/飞行器设计/航天工程领域，通过案例分析等方式，培养专业技能。', 2, 49, 47, '周四 1-7节', 'A楼438室', 20, 4, NULL);
INSERT INTO `course` VALUES (67, '统计分析实践课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过实践操作等方式，培养专业技能。', 4, 5, 49, '周四 4-8节', 'C楼340室', 18, 11, NULL);
INSERT INTO `course` VALUES (68, '生物产业进阶课程', '本课程聚焦生物技术/基因工程/生物产业领域，通过理论教学等方式，提升实践能力。', 3, 26, 55, '周五 2-10节', 'C楼496室', 14, 14, NULL);
INSERT INTO `course` VALUES (69, '化工工艺理论课程', '本课程聚焦化学分析/化工工艺/制药技术领域，通过案例分析等方式，培养专业技能。', 2, 6, 54, '周三 2-9节', 'B楼583室', 13, 27, NULL);
INSERT INTO `course` VALUES (70, '自然资源专题课程', '本课程聚焦地理信息/自然资源/环境保护领域，通过理论教学等方式，提升实践能力。', 4, 47, 50, '周四 2-6节', 'A楼117室', 16, 27, NULL);
INSERT INTO `course` VALUES (71, '高分子材料理论课程', '本课程聚焦金属材料/高分子材料/材料制备领域，通过案例分析等方式，掌握前沿技术。', 4, 50, 71, '周三 3-9节', 'D楼405室', 12, 13, NULL);
INSERT INTO `course` VALUES (72, '管理学基础课程', '本课程聚焦经济学/管理学/国际视野领域，通过项目开发等方式，掌握前沿技术。', 4, 1, 76, '周四 4-8节', 'C楼555室', 4, 17, NULL);
INSERT INTO `course` VALUES (73, '临床医学专题课程', '本课程聚焦临床医学/公共卫生/医学研究领域，通过实践操作等方式，拓展行业视野。', 3, 2, 34, '周五 2-10节', 'B楼127室', 7, 25, NULL);
INSERT INTO `course` VALUES (74, '金属材料专题课程', '本课程聚焦金属材料/高分子材料/材料制备领域，通过项目开发等方式，培养专业技能。', 4, 21, 59, '周二 3-10节', 'C楼323室', 12, 25, NULL);
INSERT INTO `course` VALUES (75, '飞行器设计实践课程', '本课程聚焦航空航天/飞行器设计/航天工程领域，通过项目开发等方式，拓展行业视野。', 4, 20, 74, '周四 1-9节', 'D楼141室', 20, 21, NULL);
INSERT INTO `course` VALUES (76, '文化研究实践课程', '本课程聚焦文学/写作/文化研究领域，通过实践操作等方式，拓展行业视野。', 3, 50, 76, '周一 4-7节', 'C楼314室', 6, 11, NULL);
INSERT INTO `course` VALUES (77, '制药技术进阶课程', '本课程聚焦化学分析/化工工艺/制药技术领域，通过案例分析等方式，培养专业技能。', 3, 50, 49, '周二 4-10节', 'D楼598室', 13, 13, NULL);
INSERT INTO `course` VALUES (78, '数学建模专题课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过理论教学等方式，掌握前沿技术。', 3, 42, 49, '周二 3-8节', 'B楼509室', 18, 27, NULL);
INSERT INTO `course` VALUES (79, '化工工艺实践课程', '本课程聚焦化学分析/化工工艺/制药技术领域，通过项目开发等方式，培养专业技能。', 4, 45, 71, '周二 2-7节', 'D楼454室', 13, 3, NULL);
INSERT INTO `course` VALUES (80, '金属材料基础课程', '本课程聚焦金属材料/高分子材料/材料制备领域，通过案例分析等方式，拓展行业视野。', 3, 47, 64, '周五 5-6节', 'C楼472室', 12, 13, NULL);
INSERT INTO `course` VALUES (81, '高分子材料专题课程', '本课程聚焦金属材料/高分子材料/材料制备领域，通过实践操作等方式，培养专业技能。', 3, 42, 50, '周二 1-9节', 'C楼543室', 12, 12, NULL);
INSERT INTO `course` VALUES (82, '文化研究进阶课程', '本课程聚焦文学/写作/文化研究领域，通过项目开发等方式，培养专业技能。', 4, 42, 61, '周二 5-10节', 'D楼132室', 6, 1, NULL);
INSERT INTO `course` VALUES (83, '英语基础课程', '本课程聚焦英语/日语/跨文化交流领域，通过项目开发等方式，提升实践能力。', 2, 39, 73, '周五 5-8节', 'B楼264室', 5, 25, NULL);
INSERT INTO `course` VALUES (84, '污染控制实践课程', '本课程聚焦环境监测/污染控制/生态保护领域，通过实践操作等方式，掌握前沿技术。', 3, 26, 76, '周四 4-9节', 'B楼389室', 15, 1, NULL);
INSERT INTO `course` VALUES (85, '体育科研实践课程', '本课程聚焦体育教育/运动训练/体育科研领域，通过实践操作等方式，拓展行业视野。', 3, 43, 69, '周三 2-6节', 'D楼151室', 9, 28, NULL);
INSERT INTO `course` VALUES (86, '高分子材料实践课程', '本课程聚焦金属材料/高分子材料/材料制备领域，通过项目开发等方式，培养专业技能。', 3, 44, 50, '周一 5-8节', 'B楼510室', 12, 3, NULL);
INSERT INTO `course` VALUES (87, '教育学进阶课程', '本课程聚焦教育学/心理学/教学实践领域，通过案例分析等方式，培养专业技能。', 2, 44, 58, '周三 1-6节', 'A楼511室', 17, 20, NULL);
INSERT INTO `course` VALUES (88, '公共卫生基础课程', '本课程聚焦临床医学/公共卫生/医学研究领域，通过理论教学等方式，掌握前沿技术。', 3, 8, 72, '周三 2-6节', 'D楼164室', 7, 12, NULL);
INSERT INTO `course` VALUES (89, '通信工程实践课程', '本课程聚焦电子技术/通信工程/信息处理领域，通过理论教学等方式，掌握前沿技术。', 3, 43, 30, '周五 3-6节', 'B楼132室', 2, 21, NULL);
INSERT INTO `course` VALUES (90, '英语理论课程', '本课程聚焦英语/日语/跨文化交流领域，通过项目开发等方式，拓展行业视野。', 3, 22, 45, '周五 1-10节', 'C楼138室', 5, 7, NULL);
INSERT INTO `course` VALUES (91, '光学技术实践课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过项目开发等方式，拓展行业视野。', 2, 2, 70, '周一 5-10节', 'B楼209室', 19, 8, NULL);
INSERT INTO `course` VALUES (92, '景观设计进阶课程', '本课程聚焦建筑设计/城市规划/景观设计领域，通过项目开发等方式，培养专业技能。', 4, 8, 39, '周五 1-7节', 'D楼491室', 11, 1, NULL);
INSERT INTO `course` VALUES (93, '制药技术理论课程', '本课程聚焦化学分析/化工工艺/制药技术领域，通过实践操作等方式，拓展行业视野。', 4, 13, 34, '周四 3-10节', 'C楼521室', 13, 21, NULL);
INSERT INTO `course` VALUES (94, '数学建模进阶课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过项目开发等方式，拓展行业视野。', 3, 40, 78, '周二 1-10节', 'C楼333室', 18, 14, NULL);
INSERT INTO `course` VALUES (95, '司法制度进阶课程', '本课程聚焦法律实务/司法制度/法律思维领域，通过案例分析等方式，培养专业技能。', 2, 10, 64, '周一 3-7节', 'D楼153室', 8, 1, NULL);
INSERT INTO `course` VALUES (96, '统计分析基础课程', '本课程聚焦数学建模/统计分析/金融数学领域，通过项目开发等方式，掌握前沿技术。', 4, 23, 39, '周一 3-10节', 'D楼117室', 18, 17, NULL);
INSERT INTO `course` VALUES (97, '运动训练专题课程', '本课程聚焦体育教育/运动训练/体育科研领域，通过案例分析等方式，拓展行业视野。', 4, 26, 55, '周一 2-6节', 'B楼448室', 9, 17, NULL);
INSERT INTO `course` VALUES (98, '心理学进阶课程', '本课程聚焦教育学/心理学/教学实践领域，通过项目开发等方式，培养专业技能。', 4, 9, 36, '周五 1-9节', 'D楼399室', 17, 22, NULL);
INSERT INTO `course` VALUES (99, '信息处理实践课程', '本课程聚焦电子技术/通信工程/信息处理领域，通过实践操作等方式，拓展行业视野。', 2, 41, 73, '周二 5-10节', 'A楼308室', 2, 0, NULL);
INSERT INTO `course` VALUES (100, '物理理论专题课程', '本课程聚焦光学技术/物理理论/光电应用领域，通过实践操作等方式，拓展行业视野。', 3, 19, 55, '周四 4-8节', 'A楼368室', 19, 9, NULL);
INSERT INTO `course` VALUES (101, '课程1', '要让他非会员', 4, 1, 2, '周一 1-4节', '风格恢复', 8, 1, NULL);
INSERT INTO `course` VALUES (102, '课程2', '测试', 4, 1, 2, '周二 1-4节', '111', 8, 1, '101');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '关于最新选课通知', '选课快要开始了，大家请及时选课，注意自己的学分，过时不候', '2024-07-30 17:20:59');
INSERT INTO `notice` VALUES (2, '学校关于选课作弊的通告', '选课奔着公平公正原则，大家切勿利用任何方式作弊，一旦发现，记过处理。', '2024-07-30 17:21:17');
INSERT INTO `notice` VALUES (3, '最新选课管理系统上线啦！', '最新版选课管理系统经过内测，完美上线！好开森！！', '2024-07-30 17:21:34');

-- ----------------------------
-- Table structure for speciality
-- ----------------------------
DROP TABLE IF EXISTS `speciality`;
CREATE TABLE `speciality`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '专业名称',
  `college_id` int NULL DEFAULT NULL COMMENT '学院ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '专业信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of speciality
-- ----------------------------
INSERT INTO `speciality` VALUES (1, '计算机科学与技术', 1);
INSERT INTO `speciality` VALUES (2, '软件工程', 1);
INSERT INTO `speciality` VALUES (3, '人工智能', 1);
INSERT INTO `speciality` VALUES (4, '网络工程', 1);
INSERT INTO `speciality` VALUES (5, '电子信息工程', 2);
INSERT INTO `speciality` VALUES (6, '通信工程', 2);
INSERT INTO `speciality` VALUES (7, '微电子科学与工程', 2);
INSERT INTO `speciality` VALUES (8, '机械设计制造及其自动化', 3);
INSERT INTO `speciality` VALUES (9, '车辆工程', 3);
INSERT INTO `speciality` VALUES (10, '工业工程', 3);
INSERT INTO `speciality` VALUES (11, '会计学', 4);
INSERT INTO `speciality` VALUES (12, '市场营销', 4);
INSERT INTO `speciality` VALUES (13, '国际经济与贸易', 4);
INSERT INTO `speciality` VALUES (14, '英语', 5);
INSERT INTO `speciality` VALUES (15, '日语', 5);
INSERT INTO `speciality` VALUES (16, '法语', 5);
INSERT INTO `speciality` VALUES (17, '汉语言文学', 6);
INSERT INTO `speciality` VALUES (18, '新闻学', 6);
INSERT INTO `speciality` VALUES (19, '广告学', 6);
INSERT INTO `speciality` VALUES (20, '临床医学', 7);
INSERT INTO `speciality` VALUES (21, '护理学', 7);
INSERT INTO `speciality` VALUES (22, '药学', 7);
INSERT INTO `speciality` VALUES (23, '法学', 8);
INSERT INTO `speciality` VALUES (24, '体育教育', 9);
INSERT INTO `speciality` VALUES (25, '运动训练', 9);
INSERT INTO `speciality` VALUES (26, '环境设计', 10);
INSERT INTO `speciality` VALUES (27, '视觉传达设计', 10);
INSERT INTO `speciality` VALUES (28, '音乐学', 10);
INSERT INTO `speciality` VALUES (29, '建筑学', 11);
INSERT INTO `speciality` VALUES (30, '城乡规划', 11);
INSERT INTO `speciality` VALUES (31, '材料科学与工程', 12);
INSERT INTO `speciality` VALUES (32, '高分子材料与工程', 12);
INSERT INTO `speciality` VALUES (33, '化学工程与工艺', 13);
INSERT INTO `speciality` VALUES (34, '应用化学', 13);
INSERT INTO `speciality` VALUES (35, '生物科学', 14);
INSERT INTO `speciality` VALUES (36, '生物技术', 14);
INSERT INTO `speciality` VALUES (37, '环境科学', 15);
INSERT INTO `speciality` VALUES (38, '环境工程', 15);
INSERT INTO `speciality` VALUES (39, '地理科学', 16);
INSERT INTO `speciality` VALUES (40, '自然地理与资源环境', 16);
INSERT INTO `speciality` VALUES (41, '教育学', 17);
INSERT INTO `speciality` VALUES (42, '学前教育', 17);
INSERT INTO `speciality` VALUES (43, '数学与应用数学', 18);
INSERT INTO `speciality` VALUES (44, '统计学', 18);
INSERT INTO `speciality` VALUES (45, '物理学', 19);
INSERT INTO `speciality` VALUES (46, '光电信息科学与工程', 19);
INSERT INTO `speciality` VALUES (47, '飞行器设计与工程', 20);
INSERT INTO `speciality` VALUES (48, '航空航天工程', 20);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学号',
  `college_id` int NULL DEFAULT NULL COMMENT '学院ID',
  `score` int NULL DEFAULT NULL COMMENT '学分',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `speciality_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '学生信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'zhangsan', '123456', '张三', 'STUDENT', '男', '10000', 6, 23, 'http://localhost:9091/files/download/1743851840704-3406c71a3032379ebae8df462c2e09.jpg', 18);
INSERT INTO `student` VALUES (2, 'lisi', '123456', '李四', 'STUDENT', '男', '10001', 18, 0, 'http://localhost:9091/files/download/1722324706756-拉布拉多.jpeg', 44);
INSERT INTO `student` VALUES (3, 'wangwu', '123456', '王五', 'STUDENT', '男', '10002', 20, 0, 'http://localhost:9091/files/download/1722324732342-柯基.jpeg', 48);
INSERT INTO `student` VALUES (4, 'zhaoliu', '123', '赵六', 'STUDENT', '男', '10003', 5, 10, 'http://localhost:9091/files/download/1722329105934-金毛.jpeg', 16);
INSERT INTO `student` VALUES (5, 'liqi', '123456', '李七', 'STUDENT', '女', '10004', 4, 0, 'http://localhost:9091/files/download/1722329141458-柯基.jpeg', 12);
INSERT INTO `student` VALUES (6, 'admin', 'admin', '123', 'STUDENT', '男', '0000001', 8, 7, 'http://localhost:9091/files/download/1743929783636-1b4fcf79da50f4d98e53866b1502ca.jpg', 23);
INSERT INTO `student` VALUES (7, '123', '123456', '123', 'STUDENT', '男', '123', 8, 12, NULL, 23);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职称',
  `speciality_id` int NULL DEFAULT NULL COMMENT '专业ID',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教师信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'teacher6835', '123456', '林丽', '男', NULL, 10, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (2, 'teacher2859', '123456', '徐超', '女', NULL, 15, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (3, 'teacher1093', '123456', '杨刚', '女', NULL, 38, 'TEACHER', 'http://localhost:9091/files/download/1722322696451-柴犬.jpeg');
INSERT INTO `teacher` VALUES (4, 'teacher9088', '123456', '陈军', '男', NULL, 27, 'TEACHER', 'http://localhost:9091/files/download/1722323069575-柯基.jpeg');
INSERT INTO `teacher` VALUES (5, 'teacher1441', '123456', '马丽', '女', NULL, 30, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (6, 'teacher8959', '123456', '何秀兰', '男', NULL, 35, 'TEACHER', 'http://localhost:9091/files/download/1722323075913-拉布拉多.jpeg');
INSERT INTO `teacher` VALUES (7, 'teacher4566', '123456', '郭超', '男', NULL, 24, 'TEACHER', 'http://localhost:9091/files/download/1743926354982-0bef0af4a59bb363cb27ad17da8280.jpg');
INSERT INTO `teacher` VALUES (8, 'teacher5643', '123456', '朱秀兰', '男', NULL, 4, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (9, 'teacher9197', '123456', '刘娜', '女', NULL, 35, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (10, 'teacher1484', '123456', '黄平', '男', NULL, 38, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (11, 'teacher9037', '123456', '林明', '女', NULL, 37, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (12, 'teacher6709', '123456', '高杰', '女', NULL, 15, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (13, 'teacher6600', '123456', '徐娜', '男', NULL, 7, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (14, 'teacher8945', '123456', '郭平', '男', NULL, 31, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (15, 'teacher2444', '123456', '孙平', '男', NULL, 31, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (16, 'teacher2133', '123456', '杨磊', '女', NULL, 6, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (17, 'teacher2315', '123456', '何刚', '男', NULL, 12, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (18, 'teacher2966', '123456', '周静', '女', NULL, 33, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (19, 'teacher3117', '123456', '吴军', '女', NULL, 37, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (20, 'teacher2450', '123456', '何勇', '男', NULL, 15, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (21, 'teacher8418', '123456', '赵艳', '男', NULL, 28, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (22, 'teacher5457', '123456', '赵燕', '女', NULL, 35, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (23, 'teacher8465', '123456', '张芳', '男', NULL, 29, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (24, 'teacher7715', '123456', '赵平', '男', NULL, 45, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (25, 'teacher5186', '123456', '李丽', '女', NULL, 48, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (26, 'teacher5615', '123456', '孙勇', '女', NULL, 23, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (27, 'teacher7970', '123456', '徐刚', '男', NULL, 46, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (28, 'teacher8654', '123456', '胡娜', '男', NULL, 38, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (29, 'teacher4187', '123456', '周平', '女', NULL, 33, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (30, 'teacher9681', '123456', '朱军', '男', NULL, 15, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (31, 'teacher3550', '123456', '吴芳', '男', NULL, 1, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (32, 'teacher9638', '123456', '孙丽', '男', NULL, 30, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (33, 'teacher8919', '123456', '朱强', '男', NULL, 41, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (34, 'teacher8443', '123456', '张艳', '女', NULL, 16, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (35, 'teacher7250', '123456', '马军', '男', NULL, 33, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (36, 'teacher1022', '123456', '杨燕', '男', NULL, 36, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (37, 'teacher9520', '123456', '郭芳', '男', NULL, 39, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (38, 'teacher5767', '123456', '林娜', '女', NULL, 38, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (39, 'teacher9937', '123456', '赵磊', '男', NULL, 6, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (40, 'teacher4608', '123456', '周勇', '女', NULL, 22, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (41, 'teacher6991', '123456', '黄杰', '男', NULL, 39, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (42, 'teacher1304', '123456', '郭洋', '男', NULL, 35, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (43, 'teacher9082', '123456', '郑刚', '男', NULL, 19, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (44, 'teacher9639', '123456', '赵明', '男', NULL, 1, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (45, 'teacher5524', '123456', '王洋', '男', NULL, 6, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (46, 'teacher7291', '123456', '朱杰', '男', NULL, 7, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (47, 'teacher4300', '123456', '孙艳', '男', NULL, 22, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (48, 'teacher7095', '123456', '高洋', '男', NULL, 26, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (49, 'teacher7674', '123456', '马刚', '女', NULL, 41, 'TEACHER', NULL);
INSERT INTO `teacher` VALUES (50, 'teacher8859', '123456', '李强', '女', NULL, 5, 'TEACHER', NULL);

SET FOREIGN_KEY_CHECKS = 1;
