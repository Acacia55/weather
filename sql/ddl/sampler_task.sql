create table if not exists sampler_task
(
    supervisor_task_id int      not null comment '对应的监督员任务编号',
    sampler_id         int      null comment '这个任务的网格员ID',
    so2                int      null comment 'SO2浓度',
    co                 int      null comment 'CO浓度',
    pm2_5              int      null comment 'PM2.5浓度',
    time               datetime null comment '网格员确认时间，直接用当前时间存储',
    id                 int auto_increment comment '任务编号'
        primary key,
    aqi                int      null comment '根据网格员测量值计算出的aqi',
    constraint feedback_griduser_id_fk
        foreign key (sampler_id) references sampler (id),
    constraint sampler_task_supervisor_task_id_fk
        foreign key (supervisor_task_id) references supervisor_task (id)
)
    comment '确认AQI数据表，即网格员的任务';

