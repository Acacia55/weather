create table if not exists supervisor_task
(
    id            int auto_increment comment '任务编号'
        primary key,
    aqi           int          null comment '监督员估计的aqi',
    supervisor_id varchar(11)  not null comment '创建任务的监督员的手机号',
    time          datetime     null comment '监督员反馈时间，直接用当前时间存储',
    message       varchar(255) null comment '监督员填写的反馈信息',
    arrangement   int          not null comment '指派情况，0为未指派，非0为网格员ID',
    grid_id       int          null,
    constraint supervisor_task_grid_id_fk
        foreign key (grid_id) references grid (id),
    constraint supervisor_task_supervisor_id_fk
        foreign key (supervisor_id) references supervisor (id)
)
    comment '公众监督数据表，即监督员的任务';

