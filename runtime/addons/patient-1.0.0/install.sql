
CREATE TABLE IF NOT EXISTS `__PREFIX__patient` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `gender` int(11) NOT NULL DEFAULT '0' COMMENT '性别',
  `birth_year` int(11) DEFAULT NULL COMMENT '出生年份',
  `disease` varchar(255) NOT NULL COMMENT '疾病',
  `diagnose_at` int(11) DEFAULT NULL COMMENT '确诊年份',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) DEFAULT NULL COMMENT '住址',
  `smoke` varchar(255) DEFAULT NULL COMMENT '吸烟情况',
  `memo` text DEFAULT NULL COMMENT '备注',
  `medicine` varchar(255) DEFAULT NULL COMMENT '药物'
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='病人信息表';


CREATE TABLE IF NOT EXISTS `__PREFIX__patient_qa` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL COMMENT '病人id',
  `replier_id` int(10) DEFAULT NULL,
  `question` text NOT NULL DEFAULT '' COMMENT '问题',
  `answer` text NOT NULL DEFAULT '' COMMENT '回答',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间'
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='病人咨询表';