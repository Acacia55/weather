create table if not exists supervisor
(
    id       varchar(11)  not null comment '手机号，监督员只用手机号登录并作为唯一身份标识'
        primary key,
    password varchar(20)  null comment '登录密码',
    name     varchar(20)  null comment '真实姓名',
    birthday date         null comment '生日，格式为yyyy-MM-dd',
    sex      int          null comment '性别，1为男0为女',
    remarks  varchar(255) null comment '备注',
    age      int          null comment '年龄。原型图上有“输入年龄”，这个字段是给它留着的'
);

