/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : educational_administration_system

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 11/07/2018 15:01:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `collegeID` int(11) NOT NULL,
  `collegeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名',
  PRIMARY KEY (`collegeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1, '计算机系');
INSERT INTO `college` VALUES (2, '设计系');
INSERT INTO `college` VALUES (3, '财经系');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `teacherID` int(11) NOT NULL,
  `courseTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开课时间',
  `classRoom` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开课地点',
  `courseWeek` int(200) DEFAULT NULL COMMENT '学时',
  `courseType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程类型',
  `collegeID` int(11) NOT NULL COMMENT '所属院系',
  `score` int(11) NOT NULL COMMENT '学分',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`courseID`) USING BTREE,
  INDEX `collegeID`(`collegeID`) USING BTREE,
  INDEX `teacherID`(`teacherID`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`userID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'C语言程序设计', 1001, '周三', '科1', 12, '必修课', 1, 3, '8c41ca41d98b423c99a671b435c07916.jpg');
INSERT INTO `course` VALUES (2, 'Python爬虫技巧', 1001, '周四', 'X402', 18, '必修课', 1, 3, '');
INSERT INTO `course` VALUES (3, '数据结构', 1001, '周四', '科401', 18, '必修课', 1, 2, '');
INSERT INTO `course` VALUES (4, 'Java程序设计', 1002, '周五', '科401', 18, '必修课', 1, 2, '');
INSERT INTO `course` VALUES (6, '服装设计', 1003, '周一', '科401', 18, '选修课', 2, 2, '');
INSERT INTO `course` VALUES (7, '经济学', 1002, '周三', '科403', 18, '选修课', 2, 2, '');
INSERT INTO `course` VALUES (8, 'go语言学习', 1001, '周四', '科402', 18, '必修课', 1, 2, '8f953e1020e440d7bc52423d9c984f49.jpg');
INSERT INTO `course` VALUES (9, 'C语言程序设计', 1001, '周二', '科1', 12, '公共课', 1, 3, '');
INSERT INTO `course` VALUES (10, 'Python爬虫技巧', 1001, '周四', 'X402', 18, '必修课', 1, 3, '');
INSERT INTO `course` VALUES (11, '数据结构', 1001, '周四', '科401', 18, '必修课', 1, 2, '');
INSERT INTO `course` VALUES (12, 'Java程序设计', 1002, '周五', '科401', 18, '必修课', 1, 2, '');
INSERT INTO `course` VALUES (13, '服装设计', 1003, '周一', '科401', 18, '选修课', 2, 2, '');
INSERT INTO `course` VALUES (14, '经济学', 1002, '周三', '科403', 18, '选修课', 2, 2, '');
INSERT INTO `course` VALUES (98, 'C语言程序设计213', 1001, '12', 'A8', 12, '选修课', 1, 12, NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleID` int(11) NOT NULL,
  `roleName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permissions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`roleID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (0, 'admin', NULL);
INSERT INTO `role` VALUES (1, 'teacher', NULL);
INSERT INTO `role` VALUES (2, 'student', NULL);

-- ----------------------------
-- Table structure for selectedcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectedcourse`;
CREATE TABLE `selectedcourse`  (
  `courseID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL COMMENT '成绩',
  INDEX `courseID`(`courseID`) USING BTREE,
  INDEX `studentID`(`studentID`) USING BTREE,
  CONSTRAINT `selectedcourse_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `selectedcourse_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`userID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of selectedcourse
-- ----------------------------
INSERT INTO `selectedcourse` VALUES (2, 10001, 12);
INSERT INTO `selectedcourse` VALUES (1, 10001, 95);
INSERT INTO `selectedcourse` VALUES (1, 10002, 66);
INSERT INTO `selectedcourse` VALUES (1, 10003, 95);
INSERT INTO `selectedcourse` VALUES (2, 10003, 99);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthYear` date DEFAULT NULL COMMENT '出生日期',
  `grade` date DEFAULT NULL COMMENT '入学时间',
  `collegeID` int(11) NOT NULL COMMENT '院系id',
  PRIMARY KEY (`userID`) USING BTREE,
  INDEX `collegeID`(`collegeID`) USING BTREE,
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 123340 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (10001, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (10002, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (10003, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (10005, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123274, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123275, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123276, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123277, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123278, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123279, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123280, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123281, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123282, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123283, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123284, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123285, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123286, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123287, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123288, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123289, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123290, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123291, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123292, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123293, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123294, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123295, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123296, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123297, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123298, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123299, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123300, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123301, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123302, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123303, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123304, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123305, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123306, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123307, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123308, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123309, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123310, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123311, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123312, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123313, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123314, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123315, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123316, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123317, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123318, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123319, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123320, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123321, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123322, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123323, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123324, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123325, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123326, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123327, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123328, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123329, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123330, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123331, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123332, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123333, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123334, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123335, '小黄', '男', '1996-09-02', '2015-09-02', 1);
INSERT INTO `student` VALUES (123336, '小米', '女', '1995-09-14', '2015-09-02', 3);
INSERT INTO `student` VALUES (123337, '小陈', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123338, '小左', '女', '1996-09-02', '2015-09-02', 2);
INSERT INTO `student` VALUES (123339, '小左', '女', '1996-09-02', '2015-09-02', 2);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthYear` date NOT NULL,
  `degree` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职称',
  `grade` date DEFAULT NULL COMMENT '入职时间',
  `collegeID` int(11) NOT NULL COMMENT '院系',
  PRIMARY KEY (`userID`) USING BTREE,
  INDEX `collegeID`(`collegeID`) USING BTREE,
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1001, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1002, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1003, '软老师', '男', '1996-09-02', '硕士', '助教', '2018-07-11', 1);
INSERT INTO `teacher` VALUES (1004, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1005, '张老师', '男', '1996-09-02', '博士', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1073, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1074, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1075, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1076, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1077, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1078, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1079, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1080, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1081, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1082, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1083, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1084, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1085, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1086, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1087, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1088, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1089, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1090, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1091, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1092, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1093, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1094, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1095, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1096, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1097, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1098, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1099, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1100, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1101, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1102, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1103, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1104, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1105, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1106, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1107, '张老师', '男', '1996-09-02', '本科', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1108, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1109, '张老师', '男', '1996-09-02', '硕士', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1110, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1111, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1112, '张老师', '男', '1996-09-02', '硕士', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1113, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1114, '张老师', '男', '1996-09-02', '硕士', '普通教师', '2015-09-02', 1);
INSERT INTO `teacher` VALUES (1115, '软老师', '男', '1996-09-02', '硕士', '助教', '2017-07-07', 1);
INSERT INTO `teacher` VALUES (1116, '刘老师', '女', '1990-03-08', '硕士', '副教授', '2015-09-02', 2);
INSERT INTO `teacher` VALUES (1117, '张老师', '男', '1996-09-02', '硕士', '普通教师', '2015-09-02', 1);

-- ----------------------------
-- Table structure for userlogin
-- ----------------------------
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin`  (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2 COMMENT '角色权限',
  PRIMARY KEY (`userID`) USING BTREE,
  INDEX `role`(`role`) USING BTREE,
  CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`roleID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userlogin
-- ----------------------------
INSERT INTO `userlogin` VALUES (1, 'admin', '123', 0);
INSERT INTO `userlogin` VALUES (8, '10001', '123', 0);
INSERT INTO `userlogin` VALUES (9, '10002', '123', 0);
INSERT INTO `userlogin` VALUES (10, '10003', '123', 0);
INSERT INTO `userlogin` VALUES (11, '10005', '123', 0);
INSERT INTO `userlogin` VALUES (14, '1001', '1', 1);
INSERT INTO `userlogin` VALUES (15, '1002', '123', 1);
INSERT INTO `userlogin` VALUES (16, '1003', '123', 1);
INSERT INTO `userlogin` VALUES (17, '123123', '123', 2);

SET FOREIGN_KEY_CHECKS = 1;
