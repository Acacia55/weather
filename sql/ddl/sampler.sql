create table if not exists sampler
(
    id       int          not null comment '网格员ID，唯一身份标识'
        primary key,
    password varchar(20)  null comment '登录密码',
    code     varchar(20)  null comment '登录编码',
    remarks  varchar(255) null comment '备注',
    name     varchar(255) null comment '网格员的姓名'
)
    comment '网格员表';

