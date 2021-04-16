

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_info`
-- ----------------------------
DROP TABLE IF EXISTS `app_info`;
CREATE TABLE `app_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `app_packname` varchar(200) DEFAULT NULL COMMENT '应用包名',
  `username` varchar(50) DEFAULT NULL COMMENT '所属用户名',
  `app_code` varchar(200) DEFAULT NULL COMMENT '应用code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用信息表';

-- ----------------------------
-- Records of app_info
-- ----------------------------

-- ----------------------------
-- Table structure for `exposure_history`
-- ----------------------------
DROP TABLE IF EXISTS `exposure_history`;
CREATE TABLE `exposure_history` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `idea_id` varchar(50) DEFAULT NULL COMMENT '创意id',
  `create_date` date DEFAULT NULL COMMENT '日期',
  `exposure` int(20) DEFAULT NULL COMMENT '曝光量',
  `app_code` varchar(200) DEFAULT NULL COMMENT '应用code',
  `advert_code` varchar(200) DEFAULT NULL COMMENT '广告商code',
  `total_cost` varchar(20) DEFAULT NULL COMMENT '此日总消费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exposure_history
-- ----------------------------
INSERT INTO `exposure_history` VALUES ('1', '20180401aaaa', '2018-05-01', '65', 'mangguo', '23zhushou_001', '5.08');
INSERT INTO `exposure_history` VALUES ('2', '20180401aaaa', '2018-05-02', '9815', 'mangguo', '23zhushou_001', '1673.52');
INSERT INTO `exposure_history` VALUES ('3', '20180401aaaa', '2018-05-03', '1946', 'mangguo', '23zhushou_001', '1106.84');
INSERT INTO `exposure_history` VALUES ('4', '20180401aaaa', '2018-05-04', '541', 'mangguo', '23zhushou_001', '639.38');
INSERT INTO `exposure_history` VALUES ('5', '20180401aaaa', '2018-05-05', '88', 'mangguo', '23zhushou_001', '1148.73');
INSERT INTO `exposure_history` VALUES ('6', '20180401aaaa', '2018-05-06', '170', 'mangguo', '23zhushou_001', '1013.04');
INSERT INTO `exposure_history` VALUES ('7', '20180401aaaa', '2018-05-07', '187', 'mangguo', '23zhushou_001', '639.85');
INSERT INTO `exposure_history` VALUES ('8', '20180401aaaa', '2019-10-01', '0', 'mangguo', '23zhushou_001', '0');
INSERT INTO `exposure_history` VALUES ('9', '20180401aaaa', '2019-10-02', '2000', 'mangguo', '23zhushou_001', '5.0');
INSERT INTO `exposure_history` VALUES ('10', '20180402bbbb', '2019-10-02', '21320', 'mangguo', 'xinguo', '996.0');
INSERT INTO `exposure_history` VALUES ('12', '20180401aaaa', '2019-10-07', '0', 'mangguo', '23zhushou_001', '0.0');
INSERT INTO `exposure_history` VALUES ('13', '20180402bbbb', '2019-10-07', '104940', 'mangguo', 'xinguo', '4598.4');
INSERT INTO `exposure_history` VALUES ('14', '20180402bbbb', '2018-05-01', '1951', 'mangguo', 'xinguo', '96.0');

-- ----------------------------
-- Table structure for `exposure_xs`
-- ----------------------------
DROP TABLE IF EXISTS `exposure_xs`;
CREATE TABLE `exposure_xs` (
  `idea_id` varchar(50) NOT NULL,
  `app_code` varchar(200) DEFAULT NULL,
  `advert_code` varchar(50) DEFAULT NULL,
  `today_exposure` int(20) DEFAULT NULL,
  `today_cost` decimal(20,2) DEFAULT NULL,
  `0_1` int(5) DEFAULT NULL,
  `1_2` int(5) DEFAULT NULL,
  `2_3` int(5) DEFAULT NULL,
  `3_4` int(5) DEFAULT NULL,
  `4_5` int(5) DEFAULT NULL,
  `5_6` int(5) DEFAULT NULL,
  `6_7` int(5) DEFAULT NULL,
  `7_8` int(5) DEFAULT NULL,
  `8_9` int(5) DEFAULT NULL,
  `9_10` int(5) DEFAULT NULL,
  `10_11` int(5) DEFAULT NULL,
  `11_12` int(5) DEFAULT NULL,
  `12_13` int(5) DEFAULT NULL,
  `13_14` int(5) DEFAULT NULL,
  `14_15` int(5) DEFAULT NULL,
  `15_16` int(5) DEFAULT NULL,
  `16_17` int(5) DEFAULT NULL,
  `17_18` int(5) DEFAULT NULL,
  `18_19` int(5) DEFAULT NULL,
  `19_20` int(5) DEFAULT NULL,
  `20_21` int(5) DEFAULT NULL,
  `21_22` int(5) DEFAULT NULL,
  `22_23` int(5) DEFAULT NULL,
  `23_24` int(5) DEFAULT NULL,
  PRIMARY KEY (`idea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exposure_xs
-- ----------------------------
INSERT INTO `exposure_xs` VALUES ('20180401aaaa', 'mangguo', '23zhushou_001', '0', '0.00', '1', '2', '3', '4', '5', '6', '7', '8', '9', '1', '2', '3', '4', '5', '6', '7', '8', '9', '2', '3', '4', '5', '6', '7');
INSERT INTO `exposure_xs` VALUES ('20180402bbbb', 'mangguo', 'xinguo', '80143', '3704.70', '0', '1', '2', '3', '4', '5', '6', '7', '9', '8', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '2', '1', '3');
INSERT INTO `exposure_xs` VALUES ('xs21570628673092', 'mangguo', '23zhushou_001', '0', '0.00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exposure_xs` VALUES ('xs21570628687094', 'mangguo', 'aisi_001', '0', '0.00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `idea_info`
-- ----------------------------
DROP TABLE IF EXISTS `idea_info`;
CREATE TABLE `idea_info` (
  `idea_id` varchar(50) NOT NULL COMMENT '创意id',
  `idea_name` varchar(200) DEFAULT NULL COMMENT '创意名',
  `username` varchar(50) DEFAULT NULL COMMENT '所属用户名',
  `idea_cost` varchar(20) DEFAULT NULL COMMENT '创意出价',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `isOpen` varchar(10) DEFAULT NULL COMMENT '是否投放（Y是，N否）',
  `status` int(20) DEFAULT NULL COMMENT '状态',
  `advert_code` varchar(50) DEFAULT NULL COMMENT '广告媒体',
  `app_code` varchar(200) DEFAULT NULL COMMENT '应用code',
  `app_id` varchar(200) DEFAULT NULL COMMENT '应用id',
  `img_url` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `type` int(20) DEFAULT NULL,
  PRIMARY KEY (`idea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='创意信息表';

-- ----------------------------
-- Records of idea_info
-- ----------------------------
INSERT INTO `idea_info` VALUES ('20180401aaaa', '测试创意', 'admin', '0.5', '2018-04-01 11:50:14', 'Y', '1', '23zhushou_001', 'mangguo', null, null, null);
INSERT INTO `idea_info` VALUES ('20180402bbbb', '测试创意2', 'admin', '0.5', '2018-04-02 09:42:46', 'Y', '1', 'xinguo', 'mangguo', null, null, null);
INSERT INTO `idea_info` VALUES ('23sad', '222', 'admin2', '5.54', '2019-10-04 20:41:37', 'Y', '1', '12', 'erw', '3333', '%2FUsers%2Fmengweijuan%2FtyyCode%2Fupload_test%2F1570022643319电话.png', null);
INSERT INTO `idea_info` VALUES ('xs21570628673092', '111', 'xs2', '0.8', '2019-10-09 21:44:33', 'N', '2', '23zhushou_001', 'mangguo', '629774477', '', '1');
INSERT INTO `idea_info` VALUES ('xs21570628687094', '222', 'xs2', '0.8', '2019-10-09 21:44:47', 'N', '2', 'aisi_001', 'mangguo', '629774477', '', '1');

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/15 * * * ? *', 'GMT+08:00');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', null, 'io.renren.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016CD86EDD407874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'MSI1570628418581', '1570634122837', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1570635000000', '1570634100000', '5', 'WAITING', 'CRON', '1566999361000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016CD86EDD40787400103020302F3135202A202A202A203F202A7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for `schedule_job`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'renren', '0 0/15 * * * ? *', '0', '参数测试', '2019-08-28 21:34:00');

-- ----------------------------
-- Table structure for `schedule_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '1', 'testTask', 'renren', '0', null, '1', '2019-08-28 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('2', '1', 'testTask', 'renren', '0', null, '0', '2019-08-28 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('3', '1', 'testTask', 'renren', '0', null, '0', '2019-08-28 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('4', '1', 'testTask', 'renren', '0', null, '0', '2019-08-28 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('5', '1', 'testTask', 'renren', '0', null, '15', '2019-08-29 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('6', '1', 'testTask', 'renren', '0', null, '1', '2019-08-29 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('7', '1', 'testTask', 'renren', '0', null, '1', '2019-08-29 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('8', '1', 'testTask', 'renren', '0', null, '1', '2019-09-02 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('9', '1', 'testTask', 'renren', '0', null, '1', '2019-09-02 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('10', '1', 'testTask', 'renren', '0', null, '1', '2019-09-02 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('11', '1', 'testTask', 'renren', '0', null, '0', '2019-09-02 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('12', '1', 'testTask', 'renren', '0', null, '1', '2019-09-03 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('13', '1', 'testTask', 'renren', '0', null, '2', '2019-09-03 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('14', '1', 'testTask', 'renren', '0', null, '1', '2019-09-03 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('15', '1', 'testTask', 'renren', '0', null, '1', '2019-09-03 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('16', '1', 'testTask', 'renren', '0', null, '1', '2019-09-05 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('17', '1', 'testTask', 'renren', '0', null, '1', '2019-09-05 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('18', '1', 'testTask', 'renren', '0', null, '2', '2019-09-08 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('19', '1', 'testTask', 'renren', '0', null, '1', '2019-09-08 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('20', '1', 'testTask', 'renren', '0', null, '1', '2019-09-08 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('21', '1', 'testTask', 'renren', '0', null, '1', '2019-09-08 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('22', '1', 'testTask', 'renren', '0', null, '1', '2019-09-08 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('23', '1', 'testTask', 'renren', '0', null, '16', '2019-09-09 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('24', '1', 'testTask', 'renren', '0', null, '1', '2019-09-10 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('25', '1', 'testTask', 'renren', '0', null, '1', '2019-09-11 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('26', '1', 'testTask', 'renren', '0', null, '1', '2019-09-11 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('27', '1', 'testTask', 'renren', '0', null, '0', '2019-09-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('28', '1', 'testTask', 'renren', '0', null, '1', '2019-09-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('29', '1', 'testTask', 'renren', '0', null, '1', '2019-09-14 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('30', '1', 'testTask', 'renren', '0', null, '0', '2019-09-15 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('31', '1', 'testTask', 'renren', '0', null, '1', '2019-09-15 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('32', '1', 'testTask', 'renren', '0', null, '1', '2019-09-15 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('33', '1', 'testTask', 'renren', '0', null, '1', '2019-09-15 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('34', '1', 'testTask', 'renren', '0', null, '1', '2019-09-15 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('35', '1', 'testTask', 'renren', '0', null, '3', '2019-09-15 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('36', '1', 'testTask', 'renren', '0', null, '0', '2019-09-18 20:39:01');
INSERT INTO `schedule_job_log` VALUES ('37', '1', 'testTask', 'renren', '0', null, '0', '2019-09-18 20:39:25');
INSERT INTO `schedule_job_log` VALUES ('38', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 20:56:00');
INSERT INTO `schedule_job_log` VALUES ('39', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 20:57:00');
INSERT INTO `schedule_job_log` VALUES ('40', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 20:58:00');
INSERT INTO `schedule_job_log` VALUES ('41', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 20:59:00');
INSERT INTO `schedule_job_log` VALUES ('42', '1', 'testTask', 'renren', '0', null, '0', '2019-09-18 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('43', '1', 'testTask', 'renren', '0', null, '0', '2019-09-18 21:01:00');
INSERT INTO `schedule_job_log` VALUES ('44', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 21:02:00');
INSERT INTO `schedule_job_log` VALUES ('45', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 21:03:00');
INSERT INTO `schedule_job_log` VALUES ('46', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 21:04:00');
INSERT INTO `schedule_job_log` VALUES ('47', '1', 'testTask', 'renren', '0', null, '2', '2019-09-18 21:15:00');
INSERT INTO `schedule_job_log` VALUES ('48', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('49', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 21:45:00');
INSERT INTO `schedule_job_log` VALUES ('50', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('51', '1', 'testTask', 'renren', '0', null, '2', '2019-09-18 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('52', '1', 'testTask', 'renren', '0', null, '1', '2019-09-18 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('53', '1', 'testTask', 'renren', '0', null, '2', '2019-09-18 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('54', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('55', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 11:45:00');
INSERT INTO `schedule_job_log` VALUES ('56', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('57', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 12:15:00');
INSERT INTO `schedule_job_log` VALUES ('58', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('59', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 12:45:00');
INSERT INTO `schedule_job_log` VALUES ('60', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('61', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 13:15:00');
INSERT INTO `schedule_job_log` VALUES ('62', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('63', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 13:45:00');
INSERT INTO `schedule_job_log` VALUES ('64', '1', 'testTask', 'renren', '0', null, '3', '2019-09-21 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('65', '1', 'testTask', 'renren', '0', null, '16', '2019-09-21 14:15:00');
INSERT INTO `schedule_job_log` VALUES ('66', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('67', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 14:45:00');
INSERT INTO `schedule_job_log` VALUES ('68', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('69', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 15:15:00');
INSERT INTO `schedule_job_log` VALUES ('70', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('71', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 15:45:00');
INSERT INTO `schedule_job_log` VALUES ('72', '1', 'testTask', 'renren', '0', null, '15', '2019-09-21 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('73', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('74', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('75', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('76', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('77', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('78', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('79', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('80', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('81', '1', 'testTask', 'renren', '0', null, '3', '2019-09-21 18:15:00');
INSERT INTO `schedule_job_log` VALUES ('82', '1', 'testTask', 'renren', '0', null, '2', '2019-09-21 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('83', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('84', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 19:15:00');
INSERT INTO `schedule_job_log` VALUES ('85', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('86', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 19:45:00');
INSERT INTO `schedule_job_log` VALUES ('87', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 20:15:00');
INSERT INTO `schedule_job_log` VALUES ('88', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('89', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 20:45:00');
INSERT INTO `schedule_job_log` VALUES ('90', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('91', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 21:15:00');
INSERT INTO `schedule_job_log` VALUES ('92', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('93', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 21:45:00');
INSERT INTO `schedule_job_log` VALUES ('94', '1', 'testTask', 'renren', '0', null, '1', '2019-09-21 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('95', '1', 'testTask', 'renren', '0', null, '0', '2019-09-21 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('96', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('97', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 09:15:00');
INSERT INTO `schedule_job_log` VALUES ('98', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('99', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 09:45:00');
INSERT INTO `schedule_job_log` VALUES ('100', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 10:15:00');
INSERT INTO `schedule_job_log` VALUES ('101', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('102', '1', 'testTask', 'renren', '0', null, '3', '2019-09-22 10:45:00');
INSERT INTO `schedule_job_log` VALUES ('103', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('104', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 11:15:00');
INSERT INTO `schedule_job_log` VALUES ('105', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('106', '1', 'testTask', 'renren', '0', null, '3', '2019-09-22 11:45:00');
INSERT INTO `schedule_job_log` VALUES ('107', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('108', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 12:15:00');
INSERT INTO `schedule_job_log` VALUES ('109', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('110', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 12:45:00');
INSERT INTO `schedule_job_log` VALUES ('111', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('112', '1', 'testTask', 'renren', '0', null, '0', '2019-09-22 13:15:00');
INSERT INTO `schedule_job_log` VALUES ('113', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('114', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 13:45:00');
INSERT INTO `schedule_job_log` VALUES ('115', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('116', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 14:15:00');
INSERT INTO `schedule_job_log` VALUES ('117', '1', 'testTask', 'renren', '0', null, '3', '2019-09-22 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('118', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 14:45:00');
INSERT INTO `schedule_job_log` VALUES ('119', '1', 'testTask', 'renren', '0', null, '0', '2019-09-22 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('120', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 15:15:00');
INSERT INTO `schedule_job_log` VALUES ('121', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('122', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 15:45:00');
INSERT INTO `schedule_job_log` VALUES ('123', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('124', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('125', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('126', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('127', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('128', '1', 'testTask', 'renren', '0', null, '5', '2019-09-22 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('129', '1', 'testTask', 'renren', '0', null, '5', '2019-09-22 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('130', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('131', '1', 'testTask', 'renren', '0', null, '3', '2019-09-22 18:15:00');
INSERT INTO `schedule_job_log` VALUES ('132', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 19:45:00');
INSERT INTO `schedule_job_log` VALUES ('133', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('134', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 20:15:00');
INSERT INTO `schedule_job_log` VALUES ('135', '1', 'testTask', 'renren', '0', null, '0', '2019-09-22 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('136', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 20:45:00');
INSERT INTO `schedule_job_log` VALUES ('137', '1', 'testTask', 'renren', '0', null, '0', '2019-09-22 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('138', '1', 'testTask', 'renren', '0', null, '0', '2019-09-22 21:15:00');
INSERT INTO `schedule_job_log` VALUES ('139', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('140', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 21:45:00');
INSERT INTO `schedule_job_log` VALUES ('141', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('142', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('143', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('144', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('145', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('146', '1', 'testTask', 'renren', '0', null, '2', '2019-09-22 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('147', '1', 'testTask', 'renren', '0', null, '1', '2019-09-22 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('148', '1', 'testTask', 'renren', '0', null, '3', '2019-09-22 23:45:00');
INSERT INTO `schedule_job_log` VALUES ('149', '1', 'testTask', 'renren', '0', null, '11', '2019-09-23 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('150', '1', 'testTask', 'renren', '0', null, '1', '2019-09-23 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('151', '1', 'testTask', 'renren', '0', null, '3', '2019-09-23 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('152', '1', 'testTask', 'renren', '0', null, '1', '2019-09-23 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('153', '1', 'testTask', 'renren', '0', null, '2', '2019-09-23 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('154', '1', 'testTask', 'renren', '0', null, '1', '2019-09-23 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('155', '1', 'testTask', 'renren', '0', null, '1', '2019-09-25 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('156', '1', 'testTask', 'renren', '0', null, '2', '2019-09-25 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('157', '1', 'testTask', 'renren', '0', null, '1', '2019-09-25 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('158', '1', 'testTask', 'renren', '0', null, '3526872', '2019-09-27 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('159', '1', 'testTask', 'renren', '0', null, '11670', '2019-09-28 00:15:00');
INSERT INTO `schedule_job_log` VALUES ('160', '1', 'testTask', 'renren', '0', null, '1', '2019-09-28 13:15:00');
INSERT INTO `schedule_job_log` VALUES ('161', '1', 'testTask', 'renren', '0', null, '1', '2019-09-28 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('162', '1', 'testTask', 'renren', '0', null, '0', '2019-09-28 13:45:00');
INSERT INTO `schedule_job_log` VALUES ('163', '1', 'testTask', 'renren', '0', null, '1', '2019-09-28 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('164', '1', 'testTask', 'renren', '0', null, '1', '2019-09-28 14:15:00');
INSERT INTO `schedule_job_log` VALUES ('165', '1', 'testTask', 'renren', '0', null, '2', '2019-09-28 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('166', '1', 'testTask', 'renren', '0', null, '1', '2019-09-29 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('167', '1', 'testTask', 'renren', '0', null, '225070', '2019-09-30 10:45:00');
INSERT INTO `schedule_job_log` VALUES ('168', '1', 'testTask', 'renren', '0', null, '1', '2019-09-30 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('169', '1', 'testTask', 'renren', '0', null, '1', '2019-09-30 11:15:00');
INSERT INTO `schedule_job_log` VALUES ('170', '1', 'testTask', 'renren', '0', null, '2', '2019-09-30 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('171', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '72966', '2019-09-30 11:45:00');
INSERT INTO `schedule_job_log` VALUES ('172', '1', 'testTask', 'renren', '0', null, '30', '2019-09-30 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('173', '1', 'testTask', 'renren', '0', null, '7', '2019-09-30 12:15:00');
INSERT INTO `schedule_job_log` VALUES ('174', '1', 'testTask', 'renren', '0', null, '9', '2019-09-30 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('175', '1', 'testTask', 'renren', '0', null, '11', '2019-09-30 12:45:00');
INSERT INTO `schedule_job_log` VALUES ('176', '1', 'testTask', 'renren', '0', null, '9', '2019-09-30 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('177', '1', 'testTask', 'renren', '0', null, '12', '2019-09-30 13:15:00');
INSERT INTO `schedule_job_log` VALUES ('178', '1', 'testTask', 'renren', '0', null, '8', '2019-09-30 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('179', '1', 'testTask', 'renren', '0', null, '13', '2019-09-30 13:45:00');
INSERT INTO `schedule_job_log` VALUES ('180', '1', 'testTask', 'renren', '0', null, '13', '2019-09-30 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('181', '1', 'testTask', 'renren', '0', null, '13', '2019-09-30 14:15:00');
INSERT INTO `schedule_job_log` VALUES ('182', '1', 'testTask', 'renren', '0', null, '13', '2019-09-30 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('183', '1', 'testTask', 'renren', '0', null, '8', '2019-09-30 14:45:00');
INSERT INTO `schedule_job_log` VALUES ('184', '1', 'testTask', 'renren', '0', null, '10', '2019-09-30 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('185', '1', 'testTask', 'renren', '0', null, '21', '2019-09-30 15:15:00');
INSERT INTO `schedule_job_log` VALUES ('186', '1', 'testTask', 'renren', '0', null, '8', '2019-09-30 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('187', '1', 'testTask', 'renren', '0', null, '29', '2019-09-30 15:45:00');
INSERT INTO `schedule_job_log` VALUES ('188', '1', 'testTask', 'renren', '0', null, '326', '2019-09-30 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('189', '1', 'testTask', 'renren', '0', null, '309', '2019-09-30 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('190', '1', 'testTask', 'renren', '0', null, '298', '2019-09-30 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('191', '1', 'testTask', 'renren', '0', null, '306', '2019-09-30 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('192', '1', 'testTask', 'renren', '0', null, '301', '2019-09-30 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('193', '1', 'testTask', 'renren', '0', null, '303', '2019-09-30 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('194', '1', 'testTask', 'renren', '0', null, '305', '2019-09-30 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('195', '1', 'testTask', 'renren', '0', null, '342', '2019-09-30 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('196', '1', 'testTask', 'renren', '0', null, '322', '2019-09-30 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('197', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '4', '2019-10-01 20:15:00');
INSERT INTO `schedule_job_log` VALUES ('198', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '4', '2019-10-01 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('199', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '5', '2019-10-01 20:45:00');
INSERT INTO `schedule_job_log` VALUES ('200', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '5', '2019-10-01 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('201', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '7', '2019-10-01 21:45:00');
INSERT INTO `schedule_job_log` VALUES ('202', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '7', '2019-10-01 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('203', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '6', '2019-10-01 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('204', '1', 'testTask', 'renren', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'testTask\' available', '6', '2019-10-01 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('205', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '251', '2019-10-01 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('206', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '15', '2019-10-01 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('207', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '180', '2019-10-01 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('208', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '54', '2019-10-02 15:45:00');
INSERT INTO `schedule_job_log` VALUES ('209', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '84', '2019-10-02 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('210', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '85', '2019-10-02 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('211', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '105', '2019-10-02 16:23:00');
INSERT INTO `schedule_job_log` VALUES ('212', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '91', '2019-10-02 16:28:00');
INSERT INTO `schedule_job_log` VALUES ('213', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '9', '2019-10-02 16:29:00');
INSERT INTO `schedule_job_log` VALUES ('214', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '180', '2019-10-02 16:32:00');
INSERT INTO `schedule_job_log` VALUES ('215', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '126', '2019-10-02 16:33:00');
INSERT INTO `schedule_job_log` VALUES ('216', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '29762', '2019-10-02 16:34:00');
INSERT INTO `schedule_job_log` VALUES ('217', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '49', '2019-10-02 16:37:00');
INSERT INTO `schedule_job_log` VALUES ('218', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '3', '2019-10-02 16:38:00');
INSERT INTO `schedule_job_log` VALUES ('219', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '4', '2019-10-02 16:39:00');
INSERT INTO `schedule_job_log` VALUES ('220', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '33', '2019-10-02 16:41:00');
INSERT INTO `schedule_job_log` VALUES ('221', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '3', '2019-10-02 16:42:00');
INSERT INTO `schedule_job_log` VALUES ('222', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '2', '2019-10-02 16:43:00');
INSERT INTO `schedule_job_log` VALUES ('223', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '3', '2019-10-02 16:44:00');
INSERT INTO `schedule_job_log` VALUES ('224', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '3', '2019-10-02 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('225', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '2', '2019-10-02 16:46:00');
INSERT INTO `schedule_job_log` VALUES ('226', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '3', '2019-10-02 16:47:00');
INSERT INTO `schedule_job_log` VALUES ('227', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '2', '2019-10-02 16:48:00');
INSERT INTO `schedule_job_log` VALUES ('228', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '3', '2019-10-02 16:49:00');
INSERT INTO `schedule_job_log` VALUES ('229', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '5', '2019-10-02 16:50:00');
INSERT INTO `schedule_job_log` VALUES ('230', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '41', '2019-10-02 16:52:00');
INSERT INTO `schedule_job_log` VALUES ('231', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '7', '2019-10-02 16:53:00');
INSERT INTO `schedule_job_log` VALUES ('232', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '7', '2019-10-02 16:54:00');
INSERT INTO `schedule_job_log` VALUES ('233', '1', 'testTask', 'renren', '0', null, '38267', '2019-10-02 17:04:00');
INSERT INTO `schedule_job_log` VALUES ('234', '1', 'testTask', 'renren', '0', null, '291', '2019-10-02 17:05:00');
INSERT INTO `schedule_job_log` VALUES ('235', '1', 'testTask', 'renren', '1', 'java.lang.reflect.InvocationTargetException', '295', '2019-10-02 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('236', '1', 'testTask', 'renren', '0', null, '453', '2019-10-02 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('237', '1', 'testTask', 'renren', '0', null, '431', '2019-10-02 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('238', '1', 'testTask', 'renren', '0', null, '425', '2019-10-02 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('239', '1', 'testTask', 'renren', '0', null, '376', '2019-10-02 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('240', '1', 'testTask', 'renren', '0', null, '366', '2019-10-02 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('241', '1', 'testTask', 'renren', '0', null, '363', '2019-10-02 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('242', '1', 'testTask', 'renren', '0', null, '1362', '2019-10-02 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('243', '1', 'testTask', 'renren', '0', null, '1219', '2019-10-02 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('244', '1', 'testTask', 'renren', '0', null, '1417', '2019-10-02 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('245', '1', 'testTask', 'renren', '0', null, '1326', '2019-10-02 23:45:00');
INSERT INTO `schedule_job_log` VALUES ('246', '1', 'testTask', 'renren', '0', null, '1399', '2019-10-03 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('247', '1', 'testTask', 'renren', '0', null, '389', '2019-10-03 00:15:00');
INSERT INTO `schedule_job_log` VALUES ('248', '1', 'testTask', 'renren', '0', null, '1311', '2019-10-03 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('249', '1', 'testTask', 'renren', '0', null, '387', '2019-10-03 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('250', '1', 'testTask', 'renren', '0', null, '342', '2019-10-03 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('251', '1', 'testTask', 'renren', '0', null, '334', '2019-10-03 18:15:00');
INSERT INTO `schedule_job_log` VALUES ('252', '1', 'testTask', 'renren', '0', null, '332', '2019-10-03 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('253', '1', 'testTask', 'renren', '0', null, '325', '2019-10-03 18:45:00');
INSERT INTO `schedule_job_log` VALUES ('254', '1', 'testTask', 'renren', '0', null, '320', '2019-10-03 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('255', '1', 'testTask', 'renren', '0', null, '341', '2019-10-03 19:15:00');
INSERT INTO `schedule_job_log` VALUES ('256', '1', 'testTask', 'renren', '0', null, '359', '2019-10-03 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('257', '1', 'testTask', 'renren', '0', null, '359', '2019-10-03 19:45:00');
INSERT INTO `schedule_job_log` VALUES ('258', '1', 'testTask', 'renren', '0', null, '316', '2019-10-03 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('259', '1', 'testTask', 'renren', '0', null, '333', '2019-10-03 20:15:00');
INSERT INTO `schedule_job_log` VALUES ('260', '1', 'testTask', 'renren', '0', null, '313', '2019-10-03 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('261', '1', 'testTask', 'renren', '0', null, '333', '2019-10-03 20:45:00');
INSERT INTO `schedule_job_log` VALUES ('262', '1', 'testTask', 'renren', '0', null, '366', '2019-10-03 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('263', '1', 'testTask', 'renren', '0', null, '332', '2019-10-03 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('264', '1', 'testTask', 'renren', '0', null, '432', '2019-10-04 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('265', '1', 'testTask', 'renren', '0', null, '408', '2019-10-04 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('266', '1', 'testTask', 'renren', '0', null, '393', '2019-10-04 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('267', '1', 'testTask', 'renren', '0', null, '384', '2019-10-04 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('268', '1', 'testTask', 'renren', '0', null, '385', '2019-10-04 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('269', '1', 'testTask', 'renren', '0', null, '389', '2019-10-04 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('270', '1', 'testTask', 'renren', '0', null, '392', '2019-10-04 18:15:00');
INSERT INTO `schedule_job_log` VALUES ('271', '1', 'testTask', 'renren', '0', null, '386', '2019-10-04 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('272', '1', 'testTask', 'renren', '0', null, '405', '2019-10-04 18:45:00');
INSERT INTO `schedule_job_log` VALUES ('273', '1', 'testTask', 'renren', '0', null, '404', '2019-10-04 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('274', '1', 'testTask', 'renren', '0', null, '411', '2019-10-04 19:15:00');
INSERT INTO `schedule_job_log` VALUES ('275', '1', 'testTask', 'renren', '0', null, '428', '2019-10-04 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('276', '1', 'testTask', 'renren', '0', null, '367', '2019-10-05 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('277', '1', 'testTask', 'renren', '0', null, '321', '2019-10-05 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('278', '1', 'testTask', 'renren', '0', null, '319', '2019-10-05 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('279', '1', 'testTask', 'renren', '0', null, '309', '2019-10-05 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('280', '1', 'testTask', 'renren', '0', null, '356', '2019-10-05 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('281', '1', 'testTask', 'renren', '0', null, '346', '2019-10-05 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('282', '1', 'testTask', 'renren', '0', null, '336', '2019-10-05 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('283', '1', 'testTask', 'renren', '0', null, '423', '2019-10-05 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('284', '1', 'testTask', 'renren', '0', null, '426', '2019-10-05 18:15:00');
INSERT INTO `schedule_job_log` VALUES ('285', '1', 'testTask', 'renren', '0', null, '116', '2019-10-07 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('286', '1', 'testTask', 'renren', '0', null, '114', '2019-10-07 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('287', '1', 'testTask', 'renren', '0', null, '122', '2019-10-07 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('288', '1', 'testTask', 'renren', '0', null, '84', '2019-10-07 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('289', '1', 'testTask', 'renren', '0', null, '88', '2019-10-07 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('290', '1', 'testTask', 'renren', '0', null, '118', '2019-10-07 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('291', '1', 'testTask', 'renren', '0', null, '94', '2019-10-07 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('292', '1', 'testTask', 'renren', '0', null, '122', '2019-10-07 23:45:00');
INSERT INTO `schedule_job_log` VALUES ('293', '1', 'testTask', 'renren', '0', null, '117', '2019-10-08 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('294', '1', 'testTask', 'renren', '0', null, '76', '2019-10-08 00:15:00');
INSERT INTO `schedule_job_log` VALUES ('295', '1', 'testTask', 'renren', '0', null, '110', '2019-10-08 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('296', '1', 'testTask', 'renren', '0', null, '87', '2019-10-08 00:45:00');
INSERT INTO `schedule_job_log` VALUES ('297', '1', 'testTask', 'renren', '0', null, '119', '2019-10-08 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('298', '1', 'testTask', 'renren', '0', null, '86', '2019-10-08 01:15:00');
INSERT INTO `schedule_job_log` VALUES ('299', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('300', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 01:45:00');
INSERT INTO `schedule_job_log` VALUES ('301', '1', 'testTask', 'renren', '0', null, '97', '2019-10-08 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('302', '1', 'testTask', 'renren', '0', null, '93', '2019-10-08 02:15:00');
INSERT INTO `schedule_job_log` VALUES ('303', '1', 'testTask', 'renren', '0', null, '104', '2019-10-08 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('304', '1', 'testTask', 'renren', '0', null, '99', '2019-10-08 02:45:00');
INSERT INTO `schedule_job_log` VALUES ('305', '1', 'testTask', 'renren', '0', null, '97', '2019-10-08 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('306', '1', 'testTask', 'renren', '0', null, '108', '2019-10-08 03:15:00');
INSERT INTO `schedule_job_log` VALUES ('307', '1', 'testTask', 'renren', '0', null, '125', '2019-10-08 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('308', '1', 'testTask', 'renren', '0', null, '106', '2019-10-08 03:45:00');
INSERT INTO `schedule_job_log` VALUES ('309', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('310', '1', 'testTask', 'renren', '0', null, '88', '2019-10-08 04:15:00');
INSERT INTO `schedule_job_log` VALUES ('311', '1', 'testTask', 'renren', '0', null, '111', '2019-10-08 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('312', '1', 'testTask', 'renren', '0', null, '96', '2019-10-08 04:45:00');
INSERT INTO `schedule_job_log` VALUES ('313', '1', 'testTask', 'renren', '0', null, '96', '2019-10-08 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('314', '1', 'testTask', 'renren', '0', null, '91', '2019-10-08 05:15:00');
INSERT INTO `schedule_job_log` VALUES ('315', '1', 'testTask', 'renren', '0', null, '112', '2019-10-08 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('316', '1', 'testTask', 'renren', '0', null, '82', '2019-10-08 05:45:00');
INSERT INTO `schedule_job_log` VALUES ('317', '1', 'testTask', 'renren', '0', null, '84', '2019-10-08 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('318', '1', 'testTask', 'renren', '0', null, '104', '2019-10-08 06:15:00');
INSERT INTO `schedule_job_log` VALUES ('319', '1', 'testTask', 'renren', '0', null, '70', '2019-10-08 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('320', '1', 'testTask', 'renren', '0', null, '88', '2019-10-08 06:45:00');
INSERT INTO `schedule_job_log` VALUES ('321', '1', 'testTask', 'renren', '0', null, '71', '2019-10-08 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('322', '1', 'testTask', 'renren', '0', null, '85', '2019-10-08 07:15:00');
INSERT INTO `schedule_job_log` VALUES ('323', '1', 'testTask', 'renren', '0', null, '91', '2019-10-08 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('324', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 07:45:00');
INSERT INTO `schedule_job_log` VALUES ('325', '1', 'testTask', 'renren', '0', null, '104', '2019-10-08 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('326', '1', 'testTask', 'renren', '0', null, '83', '2019-10-08 08:15:00');
INSERT INTO `schedule_job_log` VALUES ('327', '1', 'testTask', 'renren', '0', null, '107', '2019-10-08 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('328', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 08:45:00');
INSERT INTO `schedule_job_log` VALUES ('329', '1', 'testTask', 'renren', '0', null, '87', '2019-10-08 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('330', '1', 'testTask', 'renren', '0', null, '81', '2019-10-08 09:15:00');
INSERT INTO `schedule_job_log` VALUES ('331', '1', 'testTask', 'renren', '0', null, '82', '2019-10-08 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('332', '1', 'testTask', 'renren', '0', null, '94', '2019-10-08 09:45:00');
INSERT INTO `schedule_job_log` VALUES ('333', '1', 'testTask', 'renren', '0', null, '84', '2019-10-08 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('334', '1', 'testTask', 'renren', '0', null, '82', '2019-10-08 10:15:00');
INSERT INTO `schedule_job_log` VALUES ('335', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('336', '1', 'testTask', 'renren', '0', null, '96', '2019-10-08 10:45:00');
INSERT INTO `schedule_job_log` VALUES ('337', '1', 'testTask', 'renren', '0', null, '90', '2019-10-08 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('338', '1', 'testTask', 'renren', '0', null, '90', '2019-10-08 11:15:00');
INSERT INTO `schedule_job_log` VALUES ('339', '1', 'testTask', 'renren', '0', null, '89', '2019-10-08 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('340', '1', 'testTask', 'renren', '0', null, '85', '2019-10-08 11:45:00');
INSERT INTO `schedule_job_log` VALUES ('341', '1', 'testTask', 'renren', '0', null, '88', '2019-10-08 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('342', '1', 'testTask', 'renren', '0', null, '91', '2019-10-08 12:15:00');
INSERT INTO `schedule_job_log` VALUES ('343', '1', 'testTask', 'renren', '0', null, '79', '2019-10-08 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('344', '1', 'testTask', 'renren', '0', null, '78', '2019-10-08 12:45:00');
INSERT INTO `schedule_job_log` VALUES ('345', '1', 'testTask', 'renren', '0', null, '90', '2019-10-08 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('346', '1', 'testTask', 'renren', '0', null, '84', '2019-10-08 13:15:00');
INSERT INTO `schedule_job_log` VALUES ('347', '1', 'testTask', 'renren', '0', null, '87', '2019-10-08 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('348', '1', 'testTask', 'renren', '0', null, '89', '2019-10-08 13:45:00');
INSERT INTO `schedule_job_log` VALUES ('349', '1', 'testTask', 'renren', '0', null, '80', '2019-10-08 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('350', '1', 'testTask', 'renren', '0', null, '98', '2019-10-08 14:15:00');
INSERT INTO `schedule_job_log` VALUES ('351', '1', 'testTask', 'renren', '0', null, '88', '2019-10-08 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('352', '1', 'testTask', 'renren', '0', null, '96', '2019-10-08 14:45:00');
INSERT INTO `schedule_job_log` VALUES ('353', '1', 'testTask', 'renren', '0', null, '80', '2019-10-08 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('354', '1', 'testTask', 'renren', '0', null, '88', '2019-10-08 15:15:00');
INSERT INTO `schedule_job_log` VALUES ('355', '1', 'testTask', 'renren', '0', null, '77', '2019-10-08 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('356', '1', 'testTask', 'renren', '0', null, '96', '2019-10-08 15:45:00');
INSERT INTO `schedule_job_log` VALUES ('357', '1', 'testTask', 'renren', '0', null, '70', '2019-10-08 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('358', '1', 'testTask', 'renren', '0', null, '80', '2019-10-08 16:15:00');
INSERT INTO `schedule_job_log` VALUES ('359', '1', 'testTask', 'renren', '0', null, '81', '2019-10-08 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('360', '1', 'testTask', 'renren', '0', null, '93', '2019-10-08 16:45:00');
INSERT INTO `schedule_job_log` VALUES ('361', '1', 'testTask', 'renren', '0', null, '84', '2019-10-08 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('362', '1', 'testTask', 'renren', '0', null, '82', '2019-10-08 17:15:00');
INSERT INTO `schedule_job_log` VALUES ('363', '1', 'testTask', 'renren', '0', null, '77', '2019-10-08 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('364', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 17:45:00');
INSERT INTO `schedule_job_log` VALUES ('365', '1', 'testTask', 'renren', '0', null, '100', '2019-10-08 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('366', '1', 'testTask', 'renren', '0', null, '91', '2019-10-08 18:15:00');
INSERT INTO `schedule_job_log` VALUES ('367', '1', 'testTask', 'renren', '0', null, '101', '2019-10-08 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('368', '1', 'testTask', 'renren', '0', null, '77', '2019-10-08 18:45:00');
INSERT INTO `schedule_job_log` VALUES ('369', '1', 'testTask', 'renren', '0', null, '89', '2019-10-08 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('370', '1', 'testTask', 'renren', '0', null, '106', '2019-10-08 19:15:00');
INSERT INTO `schedule_job_log` VALUES ('371', '1', 'testTask', 'renren', '0', null, '106', '2019-10-08 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('372', '1', 'testTask', 'renren', '0', null, '88', '2019-10-08 19:45:00');
INSERT INTO `schedule_job_log` VALUES ('373', '1', 'testTask', 'renren', '0', null, '93', '2019-10-08 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('374', '1', 'testTask', 'renren', '0', null, '115', '2019-10-08 20:15:00');
INSERT INTO `schedule_job_log` VALUES ('375', '1', 'testTask', 'renren', '0', null, '91', '2019-10-08 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('376', '1', 'testTask', 'renren', '0', null, '114', '2019-10-08 20:45:00');
INSERT INTO `schedule_job_log` VALUES ('377', '1', 'testTask', 'renren', '0', null, '117', '2019-10-08 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('378', '1', 'testTask', 'renren', '0', null, '92', '2019-10-08 21:15:00');
INSERT INTO `schedule_job_log` VALUES ('379', '1', 'testTask', 'renren', '0', null, '602', '2019-10-08 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('380', '1', 'testTask', 'renren', '0', null, '197', '2019-10-08 21:45:00');
INSERT INTO `schedule_job_log` VALUES ('381', '1', 'testTask', 'renren', '0', null, '158', '2019-10-08 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('382', '1', 'testTask', 'renren', '0', null, '81', '2019-10-08 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('383', '1', 'testTask', 'renren', '0', null, '97', '2019-10-08 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('384', '1', 'testTask', 'renren', '0', null, '112', '2019-10-08 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('385', '1', 'testTask', 'renren', '0', null, '110', '2019-10-08 23:15:00');
INSERT INTO `schedule_job_log` VALUES ('386', '1', 'testTask', 'renren', '0', null, '180', '2019-10-09 18:45:00');
INSERT INTO `schedule_job_log` VALUES ('387', '1', 'testTask', 'renren', '0', null, '2328', '2019-10-09 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('388', '1', 'testTask', 'renren', '0', null, '1255', '2019-10-09 19:15:00');
INSERT INTO `schedule_job_log` VALUES ('389', '1', 'testTask', 'renren', '0', null, '1286', '2019-10-09 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('390', '1', 'testTask', 'renren', '0', null, '155', '2019-10-09 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('391', '1', 'testTask', 'renren', '0', null, '2257', '2019-10-09 21:15:00');
INSERT INTO `schedule_job_log` VALUES ('392', '1', 'testTask', 'renren', '0', null, '1270', '2019-10-09 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('393', '1', 'testTask', 'renren', '0', null, '192', '2019-10-09 21:45:00');
INSERT INTO `schedule_job_log` VALUES ('394', '1', 'testTask', 'renren', '0', null, '203', '2019-10-09 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('395', '1', 'testTask', 'renren', '0', null, '172', '2019-10-09 22:15:00');
INSERT INTO `schedule_job_log` VALUES ('396', '1', 'testTask', 'renren', '0', null, '1343', '2019-10-09 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('397', '1', 'testTask', 'renren', '0', null, '1398', '2019-10-09 22:45:00');
INSERT INTO `schedule_job_log` VALUES ('398', '1', 'testTask', 'renren', '0', null, '1280', '2019-10-09 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('399', '1', 'testTask', 'renren', '0', null, '1324', '2019-10-09 23:15:00');

-- ----------------------------
-- Table structure for `sys_captcha`
-- ----------------------------
DROP TABLE IF EXISTS `sys_captcha`;
CREATE TABLE `sys_captcha` (
  `uuid` char(36) NOT NULL COMMENT 'uuid',
  `code` varchar(6) NOT NULL COMMENT '验证码',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统验证码';

-- ----------------------------
-- Records of sys_captcha
-- ----------------------------
INSERT INTO `sys_captcha` VALUES ('02f8f311-5d57-4d4b-8e75-fd9135b4f112', '4pnf2', '2019-09-03 22:59:20');
INSERT INTO `sys_captcha` VALUES ('05bfb466-a642-4444-8984-1a471adb78ca', '2nynp', '2019-09-02 23:35:23');
INSERT INTO `sys_captcha` VALUES ('0c24fbb9-2056-4e16-8614-46c41781fbd9', '27m24', '2019-09-03 23:01:04');
INSERT INTO `sys_captcha` VALUES ('0e235f97-851d-4b2c-8210-c032a9a93ad7', 'ne7yf', '2019-09-02 23:33:31');
INSERT INTO `sys_captcha` VALUES ('10e49110-0a0b-46ef-84ae-01f5b5a68f3e', 'nn562', '2019-09-02 23:48:48');
INSERT INTO `sys_captcha` VALUES ('15313ce7-5a1e-4727-8e6f-c3b3b8a4239e', 'epn2n', '2019-09-03 22:54:36');
INSERT INTO `sys_captcha` VALUES ('16b4f3de-70e6-4b95-8c09-6bf0c3c35a7b', 'fd4gb', '2019-09-03 22:43:12');
INSERT INTO `sys_captcha` VALUES ('18464baa-0503-4e8f-8750-4c9f3cad644a', 'y3cpa', '2019-09-03 22:45:06');
INSERT INTO `sys_captcha` VALUES ('1b234538-0efc-44c9-82ed-def13ddbc083', 'deyyx', '2019-09-02 23:49:46');
INSERT INTO `sys_captcha` VALUES ('1cb0e142-3ede-4a75-8e73-e39b37ed32d8', 'nyp6m', '2019-09-05 22:21:39');
INSERT INTO `sys_captcha` VALUES ('230f06ea-5485-4962-871c-add7390d0e1c', 'f558b', '2019-09-03 22:45:58');
INSERT INTO `sys_captcha` VALUES ('235722d8-eb54-46fc-8204-cb30ace0a878', 'nfg6a', '2019-09-03 21:18:42');
INSERT INTO `sys_captcha` VALUES ('23879f0a-e896-46e6-8fec-0b2fa080f682', 'nxce5', '2019-09-03 23:01:18');
INSERT INTO `sys_captcha` VALUES ('23c2f82d-ce2f-403c-8c00-a09b33b84479', 'xf8nn', '2019-09-03 22:52:00');
INSERT INTO `sys_captcha` VALUES ('2604ef4d-427a-4659-8a64-bedcc4e21326', 'n83xd', '2019-09-03 22:36:43');
INSERT INTO `sys_captcha` VALUES ('3e00436c-9cb2-4a5a-800f-d1bb5c1e8464', 'nxgdx', '2019-09-02 23:54:17');
INSERT INTO `sys_captcha` VALUES ('4451070f-ed13-42f8-8133-1bb6a7507a3f', '523dc', '2019-09-03 23:00:57');
INSERT INTO `sys_captcha` VALUES ('4920e6c4-b869-4260-8a90-ffecc3945f81', 'gpm2x', '2019-09-03 21:19:59');
INSERT INTO `sys_captcha` VALUES ('4d9f4911-57d7-4b0f-8086-1943f111a000', '7y248', '2019-09-03 22:59:43');
INSERT INTO `sys_captcha` VALUES ('511a9f12-079b-4cb9-800a-b6c07f9f0441', 'n7w4x', '2019-08-28 23:44:55');
INSERT INTO `sys_captcha` VALUES ('554a14d4-0cd1-47c1-8a75-a6ed8c6f51fc', 'pn7dg', '2019-09-03 22:37:56');
INSERT INTO `sys_captcha` VALUES ('55786e7e-d14b-40c0-85b2-ebb1a512f263', '4anb2', '2019-09-03 22:50:25');
INSERT INTO `sys_captcha` VALUES ('55ad75e4-5d3f-4334-897c-6d24f5a1029b', 'wg247', '2019-09-03 22:53:00');
INSERT INTO `sys_captcha` VALUES ('59f146b3-44a4-40e4-8947-31ffee3c6d74', 'n5eyd', '2019-09-03 22:56:57');
INSERT INTO `sys_captcha` VALUES ('5c71ea83-a61d-416d-8a0b-dced380cab69', 'peea3', '2019-09-03 22:59:16');
INSERT INTO `sys_captcha` VALUES ('5ed486f6-649a-4dc7-8a7f-cbc48be0102d', '4ncfg', '2019-09-03 22:46:05');
INSERT INTO `sys_captcha` VALUES ('62fd9b15-ecfd-4cb3-8746-892cdc0896a4', 'y5ffb', '2019-09-03 23:00:32');
INSERT INTO `sys_captcha` VALUES ('6550e2ac-6ef1-495a-8601-162007ededbc', 'e5p75', '2019-09-03 22:55:45');
INSERT INTO `sys_captcha` VALUES ('655abad1-749f-4d8b-804b-22596cd96825', 'ncxgb', '2019-09-03 23:02:30');
INSERT INTO `sys_captcha` VALUES ('67fbfec4-ad7b-4b97-84a9-c9842a11b048', '2np5e', '2019-09-03 22:54:45');
INSERT INTO `sys_captcha` VALUES ('702d0a5f-8f1a-4716-8cff-b4fa5aa65a16', 'fbwa4', '2019-09-03 22:41:52');
INSERT INTO `sys_captcha` VALUES ('786a1888-faa9-4541-8f52-345f9d550d70', 'mmmmn', '2019-09-03 22:52:35');
INSERT INTO `sys_captcha` VALUES ('7b0622da-4517-4765-8dc8-423e281dee2f', 'a8x73', '2019-09-03 22:49:05');
INSERT INTO `sys_captcha` VALUES ('7bf8a575-b1c4-4568-871b-65a059a24911', 'm2mby', '2019-09-03 22:47:39');
INSERT INTO `sys_captcha` VALUES ('7df4f270-b42b-4f62-8e4f-183ac6b9c876', '6nccx', '2019-09-03 22:54:30');
INSERT INTO `sys_captcha` VALUES ('81940f13-1854-4a17-8e74-5a7d30d5b23d', 'encd7', '2019-08-28 23:44:39');
INSERT INTO `sys_captcha` VALUES ('856c7fc4-63cf-4807-8a41-68f03aac104d', 'npyap', '2019-09-08 21:36:03');
INSERT INTO `sys_captcha` VALUES ('85cbb79c-da22-466d-85d0-a46015d4e2cb', '24x5a', '2019-09-02 23:54:37');
INSERT INTO `sys_captcha` VALUES ('8804baa2-49ea-4b86-8530-ea7172121191', 'cdygp', '2019-09-03 22:51:39');
INSERT INTO `sys_captcha` VALUES ('8c13d050-f140-4a98-8562-d077c23e58d4', 'x7afy', '2019-09-08 21:22:44');
INSERT INTO `sys_captcha` VALUES ('8fef761e-92e5-4555-8640-5e806bfc35ea', 'ypn3a', '2019-09-03 23:02:18');
INSERT INTO `sys_captcha` VALUES ('92f51174-7256-415c-80e1-bd038f39e299', '5an3n', '2019-09-03 22:36:25');
INSERT INTO `sys_captcha` VALUES ('980f7feb-d3ae-4a2b-8588-8ea03cddda69', 'yg756', '2019-08-28 23:43:27');
INSERT INTO `sys_captcha` VALUES ('9c071f66-283c-4743-8a30-3d974b5f370e', '4wnp7', '2019-09-03 22:51:02');
INSERT INTO `sys_captcha` VALUES ('9fa0964d-b1e0-4d4f-8db9-c2c28a9fdb9d', '2p6yc', '2019-09-03 22:45:18');
INSERT INTO `sys_captcha` VALUES ('abee6cfe-ebc2-4de4-8060-2b43574132bb', '6c5ap', '2019-09-03 22:40:21');
INSERT INTO `sys_captcha` VALUES ('ad717fda-a1dd-4895-88c6-83a4849e2499', 'g4n66', '2019-09-03 23:03:30');
INSERT INTO `sys_captcha` VALUES ('b05f5fd5-71f5-4792-8019-7e87ddc686f6', '46e3c', '2019-09-03 22:50:37');
INSERT INTO `sys_captcha` VALUES ('b0a867fc-9042-4ce1-830e-583afaf969e6', 'naapx', '2019-09-03 21:19:49');
INSERT INTO `sys_captcha` VALUES ('b43d16ac-3761-4b33-83aa-18e7ecd2d22b', '3f7cp', '2019-09-03 23:00:21');
INSERT INTO `sys_captcha` VALUES ('b653672e-616b-4528-898e-7ed93883f922', '2x64b', '2019-09-03 23:01:09');
INSERT INTO `sys_captcha` VALUES ('c0de5773-0524-498d-82b5-1ab0f109f150', '8a622', '2019-09-03 23:00:40');
INSERT INTO `sys_captcha` VALUES ('c68d17cd-adf9-4fdb-8ad5-b765849321a6', 'amncx', '2019-09-03 23:13:52');
INSERT INTO `sys_captcha` VALUES ('cfc64962-b751-4619-8400-0629f3615675', '6bn24', '2019-09-03 23:03:59');
INSERT INTO `sys_captcha` VALUES ('deb8322d-acd7-4213-8ebd-dcd8e80b3573', 'em3fa', '2019-09-02 23:30:44');
INSERT INTO `sys_captcha` VALUES ('e0285366-3ec5-4597-81a6-1d107a0d5ad8', 'f7pdd', '2019-09-02 23:51:59');
INSERT INTO `sys_captcha` VALUES ('e27ee1f9-5f6d-4ff1-8a04-5dd6e1205269', 'm356n', '2019-09-03 22:39:55');
INSERT INTO `sys_captcha` VALUES ('ee2aa2be-1ac9-4064-8d1d-ce11d4d5713d', 'w23fe', '2019-09-02 23:35:13');
INSERT INTO `sys_captcha` VALUES ('eead1bbd-1fd0-4c7a-8d1b-0cd5f5fc2457', 'mfney', '2019-08-28 23:44:04');
INSERT INTO `sys_captcha` VALUES ('f4075ef7-c7c5-4264-8511-e408597b16cf', 'wcc6y', '2019-08-28 23:44:24');
INSERT INTO `sys_captcha` VALUES ('fad5bb5d-89bd-4964-8323-6ea3585aa4d4', 'nnfnm', '2019-09-02 23:51:38');
INSERT INTO `sys_captcha` VALUES ('ff1e6fa9-9aac-4194-8b7e-cc4d4354d5c3', 'cd4g8', '2019-09-03 21:20:44');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '立即执行任务', 'io.renren.modules.job.controller.ScheduleJobController.run()', '[[1]]', '32', '0:0:0:0:0:0:0:1', '2019-09-18 20:39:01');
INSERT INTO `sys_log` VALUES ('2', 'admin', '立即执行任务', 'io.renren.modules.job.controller.ScheduleJobController.run()', '[[1]]', '19', '0:0:0:0:0:0:0:1', '2019-09-18 20:39:25');
INSERT INTO `sys_log` VALUES ('3', 'admin', '修改定时任务', 'io.renren.modules.job.controller.ScheduleJobController.update()', '[{\"jobId\":1,\"beanName\":\"testTask\",\"params\":\"renren\",\"cronExpression\":\"0 0/1 * * * ?\",\"status\":0,\"remark\":\"参数测试\"}]', '102', '0:0:0:0:0:0:0:1', '2019-09-18 20:55:27');
INSERT INTO `sys_log` VALUES ('4', 'admin', '修改定时任务', 'io.renren.modules.job.controller.ScheduleJobController.update()', '[{\"jobId\":1,\"beanName\":\"testTask\",\"params\":\"renren\",\"cronExpression\":\"0 0/15 * * * ? *\",\"status\":0,\"remark\":\"参数测试\"}]', '34', '0:0:0:0:0:0:0:1', '2019-09-18 21:04:18');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'system', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '管理员列表', 'sys/user', null, '1', 'admin', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'sys/role', null, '1', 'role', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'sys/menu', null, '1', 'menu', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'http://localhost:8080/renren-fast/druid/sql.html', null, '1', 'sql', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'job/schedule', null, '1', 'job', '5');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'sys/config', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'sys/log', 'sys:log:list', '1', 'log', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'oss/oss', 'sys:oss:all', '1', 'oss', '6');

-- ----------------------------
-- Table structure for `sys_oss`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11', null);
INSERT INTO `sys_user` VALUES ('3', 'xs', '0aac6b0ddf26ce528366718901a1d2124a90cb96ca31b5a2cb68cf01f87cd06a', '0FjdvltcL0alu1jThF5F', null, null, null, null, '2019-09-02 23:49:17', null);
INSERT INTO `sys_user` VALUES ('6', 'tyy', '951ffe7fad6a3ace2122ff0ab12b219e9e6c2f39b3ac1bd2a19d02801dc50616', 'QN5XuCJ2hgyBJpXTZNR6', null, null, null, null, '2019-09-09 22:20:54', null);
INSERT INTO `sys_user` VALUES ('7', 'tyy2', '4f54439ea7b3abc1547f41f0fc0d2ed2e7648ea5e6bbc3baf8a7f237fea21e4b', 'ty5GMXC27CrzupIeTGRL', null, null, null, null, '2019-09-09 22:22:10', null);
INSERT INTO `sys_user` VALUES ('9', 'ttyy', 'b12c42ca52b2ec07b8047bb961e694c61520882b3b2bacfd8cbbb84e48d9868a', 'A2DgydFWnKsAnw7DdxHG', null, null, '1', null, '2019-10-09 18:43:07', 'tyy');
INSERT INTO `sys_user` VALUES ('10', 'xs2', '538c57af8ffac38c731ef3ea5b9038ec63e588338dd059ffda5d567655a83cfb', 'MLxw1XpjKMex9DeasZUu', null, null, '1', null, '2019-10-09 18:55:00', '123');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户Token';

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES ('1', '76303be098a51722571afd8c76d82208', '2019-10-10 09:40:28', '2019-10-09 21:40:28');
INSERT INTO `sys_user_token` VALUES ('3', 'a5684df9e5c5cd47dca1c9f68e19205a', '2019-10-04 11:09:01', '2019-10-03 23:09:01');
INSERT INTO `sys_user_token` VALUES ('7', '135f082f6a4303c045a383b0a8b2aea2', '2019-09-10 10:22:18', '2019-09-09 22:22:18');
INSERT INTO `sys_user_token` VALUES ('9', 'd3204f6de0aa93879557fcdb31dad7e4', '2019-10-10 06:49:37', '2019-10-09 18:49:37');
INSERT INTO `sys_user_token` VALUES ('10', 'c9b679cd365d439f194f9b9e611d9dd2', '2019-10-10 09:43:53', '2019-10-09 21:43:53');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');

-- ----------------------------
-- Table structure for `user_balance`
-- ----------------------------
DROP TABLE IF EXISTS `user_balance`;
CREATE TABLE `user_balance` (
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `balance` decimal(20,2) DEFAULT NULL COMMENT '用户余额',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_balance
-- ----------------------------
INSERT INTO `user_balance` VALUES ('admin', '56295.30');
INSERT INTO `user_balance` VALUES ('ttyy', '0.00');
INSERT INTO `user_balance` VALUES ('xs2', '0.00');

-- ----------------------------
-- Table structure for `user_money`
-- ----------------------------
DROP TABLE IF EXISTS `user_money`;
CREATE TABLE `user_money` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `money` varchar(20) DEFAULT NULL COMMENT '存储金额',
  `saveDate` datetime DEFAULT NULL COMMENT '存储日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户存储金额日志';

-- ----------------------------
-- Records of user_money
-- ----------------------------
INSERT INTO `user_money` VALUES ('1', 'admin', '200', '2019-08-28 19:30:00');
INSERT INTO `user_money` VALUES ('2', 'admin', '100', '2019-09-15 19:18:57');
INSERT INTO `user_money` VALUES ('3', 'admin', '300.5', '2019-09-21 11:30:00');
INSERT INTO `user_money` VALUES ('4', 'admin', '20000', '2019-10-05 17:35:05');
INSERT INTO `user_money` VALUES ('5', 'admin', '60000', '2019-10-07 22:07:46');
