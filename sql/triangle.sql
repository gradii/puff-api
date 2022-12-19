create table triangle.action_audits
(
  id                 int(11) unsigned auto_increment
    primary key,
  audit_type         varchar(255)            null comment 'person, role, department_manager, multi_manager, direct_manager, departmant_liaison, self, select, form_field, remote',
  name               int                     not null,
  description        int                     not null,
  btn_approve        tinyint(1)   default 1  not null,
  btn_decline        tinyint(1)   default 1  not null,
  btn_save           tinyint(1)   default 1  not null,
  btn_transfer       tinyint(1)   default 0  not null,
  btn_sign           tinyint(1)   default 0  not null,
  btn_back           tinyint(1)   default 0  not null,
  btn_approve_label  varchar(255) default '' not null,
  btn_decline_label  varchar(255) default '' not null,
  btn_save_label     varchar(255) default '' not null,
  btn_transfer_label varchar(255) default '' not null,
  btn_sign_label     varchar(255) default '' not null,
  btn_back_label     varchar(255) default '' not null,
  created_at         datetime                not null,
  updated_at         datetime                not null,
  deleted_at         datetime                null
);

create table triangle.action_conditions
(
  id int(11) unsigned auto_increment
    primary key
);

create table triangle.action_connectors
(
  id int(11) unsigned auto_increment
    primary key
);

create table triangle.action_db
(
  id int(11) unsigned auto_increment
    primary key
);

create table triangle.action_remotes
(
  id int(11) unsigned auto_increment
    primary key
);

create table triangle.form_ak2ysz149kalf9oq
(
  id int(11) unsigned auto_increment
    primary key
);

create table triangle.form_ap32nk12aajie93k
(
  id int(11) unsigned auto_increment
    primary key
);

create table triangle.pivot_process
(
  id         int(11) unsigned auto_increment
    primary key,
  process_id int                     not null,
  pivot_type varchar(255) default '' not null comment 'form_ap32nk12aajie93k, form_ak2ysz149kalf9oq',
  fk_id      int                     not null,
  created_at varchar(255) default '' not null,
  updated_at varchar(255) default '' not null,
  deleted_at varchar(255)            null
);

create table triangle.process_actions
(
  id          int(11) unsigned auto_increment
    primary key,
  process_id  int                                  null,
  workflow_id int                                  not null,
  action_type varchar(255)              default '' not null comment 'such like start, end, audit',
  name        varchar(255) charset utf8 default '' not null,
  description text charset utf8                    not null,
  data        longtext collate utf8mb4_bin         not null,
  created_at  datetime                             not null,
  updated_at  datetime                             not null,
  deleted_at  datetime                             null,
  constraint data
    check (json_valid(`data`))
)
  comment 'Workflow action';

create table triangle.process_activities
(
  id          int(11) unsigned auto_increment
    primary key,
  workflow_id int null,
  action_id   int null
)
  comment 'Action has many activities';

create table triangle.process_request_actions
(
  id          int(11) unsigned auto_increment
    primary key,
  workflow_id int                                  not null,
  action_id   int                                  not null,
  name        varchar(255) charset utf8 default '' not null,
  owner       int                                  not null,
  is_active   tinyint(1)                           not null,
  is_complete tinyint(1)                           not null,
  created_at  datetime                             not null,
  updated_at  datetime                             not null,
  deleted_at  datetime                             null
)
  comment 'Workflow trigger actions. Used for fire workflow';

create table triangle.process_transition_actions
(
  id                     int(11) unsigned auto_increment
    primary key,
  workflow_transition_id int null,
  workflow_action_id     int null,
  created_at             int null,
  updated_at             int null
)
  comment 'The many to many pivot for transition and action table';

create table triangle.process_transitions
(
  id               int(11) unsigned auto_increment
    primary key,
  label            varchar(255)  null,
  process_id       int           not null,
  workflow_id      int           not null,
  workflow_link_id int           not null,
  state            varchar(255)  null,
  from_action_id   int           not null comment 'current workflow action',
  to_action_id     int           not null comment 'nex workflow action',
  owner            int default 0 not null comment 'user id of this running action',
  created_at       datetime      not null,
  updated_at       datetime      not null,
  deleted_at       datetime      null
)
  comment 'Workflow transitions';

create table triangle.processes
(
  id          int(11) unsigned auto_increment
    primary key,
  name        varchar(255) default ''     not null,
  state       varchar(255) default 'idle' not null comment 'idle, start, running, end, declined, cancelled',
  workflow_id int                         not null,
  created_at  datetime                    not null,
  updated_at  datetime                    not null,
  deleted_at  datetime                    null
)
  comment 'Workflows generate a process instance. Like goods has orders';

create table triangle.workflow_links
(
  id         int(11) unsigned auto_increment
    primary key,
  name       varchar(255) charset utf8 default '' not null,
  port_in    int                                  not null,
  port_out   int                                  not null,
  type       int                                  not null,
  labels     text collate utf8mb4_bin             not null,
  created_at datetime                             not null,
  updated_at datetime                             not null,
  deleted_at datetime                             null,
  constraint labels
    check (json_valid(`labels`))
)
  comment 'The link used for designer.';

create table triangle.workflow_nodes
(
  id         int(11) unsigned auto_increment comment 'primary key'
    primary key,
  name       varchar(255) charset utf8 default '' not null comment 'node name',
  type       varchar(255) charset utf8 default '' not null comment 'workflow node type',
  created_at datetime                             not null,
  updated_at datetime                             not null,
  deleted_at datetime                             null
)
  comment 'workflow node.';

create table triangle.workflow_ports
(
  id         int(11) unsigned auto_increment comment 'primary key'
    primary key,
  name       int                     not null comment 'name',
  type       varchar(255) default '' not null,
  `in`       tinyint(1)              not null comment 'in eq 1, out eq 0',
  created_at int                     not null,
  updated_at int                     not null,
  deleted_at int                     null
)
  comment 'The workfow node port';

create table triangle.workflows
(
  id         int(11) unsigned auto_increment
    primary key,
  name       varchar(255) charset utf8 default '' not null,
  config     longtext collate utf8mb4_bin         not null,
  created_by int                                  not null,
  created_at datetime                             not null,
  updated_at datetime                             not null,
  deleted_at datetime                             null,
  constraint config
    check (json_valid(`config`))
)
  comment 'workflow main table.';

create table triangle.workflows_history
(
  id          int(11) unsigned auto_increment
    primary key,
  workflow_id int                          not null,
  config      longtext collate utf8mb4_bin not null,
  created_at  datetime                     not null,
  updated_at  datetime                     not null,
  deleted_at  datetime                     null,
  constraint config
    check (json_valid(`config`))
);

