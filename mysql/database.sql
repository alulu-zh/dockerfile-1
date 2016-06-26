use `users`;

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(32) DEFAULT NULL,
  `role_id` int(16) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='permission relation';
/* initial data for table permission */
insert  into `permission`(`id`,`permission_name`,`role_id`) values (1,'add',2),(2,'del',1),(3,'update',2),(4,'query',2),(5,'user:query',3),(6,'user:edit',2),(7,'add',1),(8,'upate',1),(9,'query',1);

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='role relation';
/* initial data for table role */
insert  into `role`(`id`,`role_name`) values (1,'admin'),(2,'manager'),(3,'user'),(4,'anonymous');

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='user table';
/* initial data for table user */
insert  into `user`(`id`,`username`,`password`) values (1,'sys_admin','123456'),(2,'sys_manager','123456'),(3,'zhouhu','123456');

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(16) DEFAULT NULL,
  `role_id` int(16) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='user role relationship';
/* initial data for table user_role */
insert  into `user_role`(`user_id`,`role_id`) values (1,1),(1,2),(1,3),(2,2),(2,3),(3,3);
