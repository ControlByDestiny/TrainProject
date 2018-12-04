INSERT INTO `role` (`id`, `name`, `display_name`) VALUES(1,'admin','系统管理员');
INSERT INTO `role` (`id`, `name`, `display_name`) VALUES(2,'general','一般用户');

INSERT INTO `permission` (`id`, `name`, `displayname`) VALUES (1, 'add_book', '新增图书'); 
INSERT INTO `permission` (`id`, `name`, `displayname`) VALUES (2, 'edit_book', '修改图书');
INSERT INTO `permission` (`id`, `name`, `displayname`) VALUES (3, 'del_book', '删除图书');

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES (2, 1);
INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES (2, 2);
INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES (2, 3);

INSERT INTO `user`(`id`, `user_name`, `password`, `email`, `created_time`, `updated_time`) VALUES (1, 'Dylan', 'dylan', '986641202@qq.com', '2018-11-25 10:12:54', '2018-11-25 10:12:54');

INSERT INTO `user_role`(`user_id`, `role_id`) VALUES (1, 1);