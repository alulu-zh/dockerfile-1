use ejabberd;

DROP TABLE IF EXISTS `message_body_1`;
CREATE TABLE IF NOT EXISTS `message_body_1` (
  `id` bigint(20) unsigned AUTO_INCREMENT PRIMARY KEY,
  `mid` bigint NOT NULL,
  `body` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='kv store for message body';

CREATE INDEX i_message_body_1 USING BTREE ON message_body_1(mid);

DROP TABLE IF EXISTS `message_index_1`;
CREATE TABLE IF NOT EXISTS `message_index_1` (
  `id` bigint(20) unsigned AUTO_INCREMENT PRIMARY KEY,
  `mid` bigint NOT NULL,
  `type` char(1) NOT NULL COMMENT 's for send, r for receive',
  `username` varchar(250) NOT NULL,
  `opposite` varchar(250) NOT NULL COMMENT 'user with whom people have conversations',
  `source` varchar(250) DEFAULT NULL COMMENT 'i.e. org#app infomation',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user''s message box index';

CREATE INDEX i_username_message_index_1 USING BTREE ON message_index_1(username);
CREATE INDEX i_username_oppo_message_index_1 USING BTREE ON message_index_1(username, opposite);
CREATE INDEX i_source_message_index_1 USING BTREE ON message_index_1(source);
