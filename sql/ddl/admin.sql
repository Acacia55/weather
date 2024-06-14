create table if not exists shixun.admin
(
    id       int          not null comment '管理员ID，唯一身份标识'
        primary key,
    code     varchar(20)  null comment '登录编码',
    password varchar(20)  null comment '登录密码',
    remarks  varchar(255) null comment '备注'
);
