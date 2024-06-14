create table if not exists grid
(
    id       int auto_increment comment '网格编号'
        primary key,
    province varchar(255) null comment '省级地区',
    city     varchar(255) null comment '市级地区',
    address  varchar(255) null comment '详细地址'
)
    comment '网格表，即一个详细地址';

