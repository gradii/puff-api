
create table bk_itsm.Records
(
  id               int auto_increment
    primary key,
  uid              char(32)          not null,
  api_uid          varchar(64)       not null,
  ticket_id        int               not null,
  state_id         int               not null,
  api_instance_id  int               not null,
  remark           varchar(255)      not null,
  method           varchar(8)        not null,
  url              varchar(255)      not null,
  request_message  longtext          not null,
  operator         varchar(255)      not null,
  request_host     varchar(128)      not null,
  status_code      smallint unsigned not null,
  response_message longtext          not null,
  date_created     datetime(6)       not null,
  duration         bigint            null,
  constraint uid
    unique (uid)
);

create table bkssm.access_tokens
(
  id                          int unsigned auto_increment
    primary key,
  client_id                   varchar(32)                               not null,
  user_id                     varchar(255) default ''                   not null,
  user_type                   varchar(32)  default 'bkuser'             not null,
  access_token                varchar(255)                              not null,
  expires                     int unsigned                              not null,
  last_accessed               timestamp                                 null,
  refresh_token               varchar(255)                              not null,
  refresh_token_expires       int unsigned                              not null,
  refresh_token_last_accessed timestamp                                 null,
  grant_type                  varchar(40)  default 'client_credentials' null,
  created_at                  timestamp    default CURRENT_TIMESTAMP    not null,
  updated_at                  timestamp    default CURRENT_TIMESTAMP    not null on update CURRENT_TIMESTAMP,
  constraint access_token
    unique (access_token),
  constraint refresh_token
    unique (refresh_token)
);

create index idx_client_id_user_type_user_id
  on bkssm.access_tokens (client_id, user_id, user_type);

create table bk_user_manage.account_bkuser
(
  id           int auto_increment
    primary key,
  password     varchar(128) not null,
  last_login   datetime(6)  null,
  is_superuser tinyint(1)   not null,
  username     varchar(128) not null,
  chname       varchar(254) not null,
  company      varchar(128) not null,
  qq           varchar(32)  not null,
  phone        varchar(64)  not null,
  email        varchar(254) not null,
  is_staff     tinyint(1)   not null,
  date_joined  datetime(6)  not null,
  constraint username
    unique (username)
);

create table bk_sops.account_cache
(
  cache_key varchar(255) not null
    primary key,
  value     longtext     not null,
  expires   datetime(6)  not null
);

create index account_cache_expires
  on bk_sops.account_cache (expires);

create table bk_iam.account_user
(
  id           int auto_increment
    primary key,
  password     varchar(128) not null,
  last_login   datetime(6)  null,
  is_superuser tinyint(1)   not null,
  username     varchar(64)  not null,
  nickname     varchar(64)  not null,
  is_staff     tinyint(1)   not null,
  is_active    tinyint(1)   not null,
  date_joined  datetime(6)  not null,
  constraint username
    unique (username)
);

create table bk_itsm.account_user
(
  id           int auto_increment
    primary key,
  password     varchar(128) not null,
  last_login   datetime(6)  null,
  is_superuser tinyint(1)   not null,
  username     varchar(64)  not null,
  nickname     varchar(64)  not null,
  is_staff     tinyint(1)   not null,
  is_active    tinyint(1)   not null,
  date_joined  datetime(6)  not null,
  constraint username
    unique (username)
);

create table bk_nodeman.account_user
(
  id           int auto_increment
    primary key,
  password     varchar(128) not null,
  last_login   datetime(6)  null,
  is_superuser tinyint(1)   not null,
  username     varchar(64)  not null,
  nickname     varchar(64)  not null,
  is_staff     tinyint(1)   not null,
  is_active    tinyint(1)   not null,
  date_joined  datetime(6)  not null,
  constraint username
    unique (username)
);

create table bk_sops.account_user
(
  id           int auto_increment
    primary key,
  password     varchar(128) not null,
  last_login   datetime(6)  null,
  is_superuser tinyint(1)   not null,
  username     varchar(64)  not null,
  nickname     varchar(64)  not null,
  is_staff     tinyint(1)   not null,
  is_active    tinyint(1)   not null,
  date_joined  datetime(6)  not null,
  constraint username
    unique (username)
);

create table bk_iam.account_user_property
(
  id      int auto_increment
    primary key,
  `key`   varchar(64) not null,
  value   longtext    not null,
  user_id int         not null,
  constraint account_user_property_user_id_key_652c804e_uniq
    unique (user_id, `key`),
  constraint account_user_property_user_id_f10c8a01_fk_account_user_id
    foreign key (user_id) references bk_iam.account_user (id)
);

create table bk_itsm.account_user_property
(
  id      int auto_increment
    primary key,
  `key`   varchar(64) not null,
  value   longtext    not null,
  user_id int         not null,
  constraint account_user_property_user_id_key_652c804e_uniq
    unique (user_id, `key`),
  constraint account_user_property_user_id_f10c8a01_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_nodeman.account_user_property
(
  id      int auto_increment
    primary key,
  `key`   varchar(64) not null,
  value   longtext    not null,
  user_id int         not null,
  constraint account_user_property_user_id_key_652c804e_uniq
    unique (user_id, `key`),
  constraint account_user_property_user_id_f10c8a01_fk_account_user_id
    foreign key (user_id) references bk_nodeman.account_user (id)
);

create table bk_sops.account_user_property
(
  id      int auto_increment
    primary key,
  `key`   varchar(64) not null,
  value   longtext    not null,
  user_id int         not null,
  constraint account_user_property_user_id_key_652c804e_uniq
    unique (user_id, `key`),
  constraint account_user_property_user_id_f10c8a01_fk_account_user_id
    foreign key (user_id) references bk_sops.account_user (id)
);

create table bk_iam.account_verifyinfo
(
  id         int auto_increment
    primary key,
  code       varchar(6)  not null,
  updated_at datetime(6) not null,
  user_id    int         not null,
  constraint account_verifyinfo_user_id_85128af2_fk_account_user_id
    foreign key (user_id) references bk_iam.account_user (id)
);

create table bk_itsm.account_verifyinfo
(
  id         int auto_increment
    primary key,
  code       varchar(6)  not null,
  updated_at datetime(6) not null,
  user_id    int         not null,
  constraint account_verifyinfo_user_id_85128af2_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_nodeman.account_verifyinfo
(
  id         int auto_increment
    primary key,
  code       varchar(6)  not null,
  updated_at datetime(6) not null,
  user_id    int         not null,
  constraint account_verifyinfo_user_id_85128af2_fk_account_user_id
    foreign key (user_id) references bk_nodeman.account_user (id)
);

create table bk_sops.account_verifyinfo
(
  id         int auto_increment
    primary key,
  code       varchar(6)  not null,
  updated_at datetime(6) not null,
  user_id    int         not null,
  constraint account_verifyinfo_user_id_85128af2_fk_account_user_id
    foreign key (user_id) references bk_sops.account_user (id)
);

create table action
(
  pk         int unsigned auto_increment
    primary key,
  system_id  varchar(32)                         not null,
  id         varchar(32)                         not null,
  created_at timestamp default CURRENT_TIMESTAMP not null,
  updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_system_action_id
    unique (system_id, id)
);

create table bk_iam.action_aggregateaction
(
  id                      int auto_increment
    primary key,
  system_id               varchar(32) not null,
  action_ids              longtext    not null,
  aggregate_resource_type longtext    not null
);

create index action_aggregateaction_system_id_d8b89a6f_idx
  on bk_iam.action_aggregateaction (system_id);

create table action_resource_type
(
  pk                      int unsigned auto_increment
    primary key,
  action_system_id        varchar(32)                         not null,
  action_id               varchar(32)                         not null,
  resource_type_system_id varchar(32)                         not null,
  resource_type_id        varchar(32)                         not null,
  scope_expression        text                                not null,
  created_at              timestamp default CURRENT_TIMESTAMP not null,
  updated_at              timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_action
  on action_resource_type (action_system_id, action_id);

create table bk_nodeman.api_dataapirecord
(
  id               int auto_increment
    primary key,
  request_datetime datetime(6)   not null,
  url              varchar(128)  not null,
  module           varchar(64)   not null,
  method           varchar(16)   not null,
  method_override  varchar(16)   null,
  query_params     longtext      not null,
  response_result  tinyint(1)    not null,
  response_code    varchar(16)   not null,
  response_data    longtext      not null,
  response_message varchar(1024) null,
  cost_time        double        not null,
  request_id       varchar(64)   not null,
  response_errors  longtext      null
);

create index api_dataapirecord_module_9d26b782
  on bk_nodeman.api_dataapirecord (module);

create index api_dataapirecord_request_id_d4d87e2c
  on bk_nodeman.api_dataapirecord (request_id);

create index api_dataapirecord_response_code_15ace32f
  on bk_nodeman.api_dataapirecord (response_code);

create index api_dataapirecord_url_753b5097
  on bk_nodeman.api_dataapirecord (url);

create table bk_iam.application_application
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  updater      varchar(64)  not null,
  created_time datetime(6)  not null,
  updated_time datetime(6)  not null,
  sn           varchar(64)  not null,
  type         varchar(64)  not null,
  applicant    varchar(64)  not null,
  reason       varchar(255) not null,
  data         longtext     not null,
  status       varchar(32)  not null,
  callback_id  varchar(32)  not null
);

create index application_application_created_time_c998e122_idx
  on bk_iam.application_application (created_time);

create table bk_iam.approval_actionprocessrelation
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  system_id    varchar(32) not null,
  action_id    varchar(32) not null,
  process_id   int         not null
);

create table bk_iam.approval_approvalprocessglobalconfig
(
  id               int auto_increment
    primary key,
  creator          varchar(64) not null,
  updater          varchar(64) not null,
  created_time     datetime(6) not null,
  updated_time     datetime(6) not null,
  application_type varchar(32) not null,
  process_id       int         not null,
  constraint approval_approvalprocess_application_type_c99f0ede_uniq
    unique (application_type)
);

create table bk_iam.approval_groupprocessrelation
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  group_id     int         not null,
  process_id   int         not null
);

create table bk_user.audit_apirequest
(
  id          int auto_increment
    primary key,
  create_time datetime(6) not null,
  update_time datetime(6) not null,
  operator    varchar(32) null,
  extra_value longtext    null,
  uri         varchar(64) not null,
  time_cost   double      not null,
  method      varchar(32) not null,
  status      int         not null
);

create table bk_iam.audit_event_202204
(
  creator                varchar(64)  not null,
  updater                varchar(64)  not null,
  created_time           datetime(6)  not null,
  updated_time           datetime(6)  not null,
  id                     char(32)     not null
    primary key,
  source_type            varchar(32)  not null,
  source_data_request_id varchar(32)  not null,
  source_data_app_code   varchar(128) not null,
  source_data_task_id    varchar(36)  not null,
  time                   datetime(6)  not null,
  type                   varchar(64)  not null,
  username               varchar(64)  not null,
  role_type              varchar(32)  not null,
  role_id                int          not null,
  system_id              varchar(32)  not null,
  object_type            varchar(32)  not null,
  object_id              varchar(64)  not null,
  object_name            varchar(128) not null,
  extra                  longtext     not null,
  status                 int          not null
);

create table bk_user.audit_generallog
(
  id          int auto_increment
    primary key,
  create_time datetime(6) not null,
  update_time datetime(6) not null,
  operator    varchar(32) null,
  extra_value longtext    null
);

create table bk_iam.auth_group
(
  id   int auto_increment
    primary key,
  name varchar(150) not null,
  constraint name
    unique (name)
);

create table bk_iam.account_user_groups
(
  id       int auto_increment
    primary key,
  user_id  int not null,
  group_id int not null,
  constraint account_user_groups_user_id_group_id_4d09af3e_uniq
    unique (user_id, group_id),
  constraint account_user_groups_group_id_6c71f749_fk_auth_group_id
    foreign key (group_id) references bk_iam.auth_group (id),
  constraint account_user_groups_user_id_14345e7b_fk_account_user_id
    foreign key (user_id) references bk_iam.account_user (id)
);

create table bk_itsm.auth_group
(
  id   int auto_increment
    primary key,
  name varchar(80) not null,
  constraint name
    unique (name)
);

create table bk_itsm.account_user_groups
(
  id       int auto_increment
    primary key,
  user_id  int not null,
  group_id int not null,
  constraint account_user_groups_user_id_group_id_4d09af3e_uniq
    unique (user_id, group_id),
  constraint account_user_groups_group_id_6c71f749_fk_auth_group_id
    foreign key (group_id) references bk_itsm.auth_group (id),
  constraint account_user_groups_user_id_14345e7b_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_nodeman.auth_group
(
  id   int auto_increment
    primary key,
  name varchar(150) not null,
  constraint name
    unique (name)
);

create table bk_nodeman.account_user_groups
(
  id       int auto_increment
    primary key,
  user_id  int not null,
  group_id int not null,
  constraint account_user_groups_user_id_group_id_4d09af3e_uniq
    unique (user_id, group_id),
  constraint account_user_groups_group_id_6c71f749_fk_auth_group_id
    foreign key (group_id) references bk_nodeman.auth_group (id),
  constraint account_user_groups_user_id_14345e7b_fk_account_user_id
    foreign key (user_id) references bk_nodeman.account_user (id)
);

create table bk_sops.auth_group
(
  id   int auto_increment
    primary key,
  name varchar(150) not null,
  constraint name
    unique (name)
);

create table bk_sops.account_user_groups
(
  id       int auto_increment
    primary key,
  user_id  int not null,
  group_id int not null,
  constraint account_user_groups_user_id_group_id_4d09af3e_uniq
    unique (user_id, group_id),
  constraint account_user_groups_group_id_6c71f749_fk_auth_group_id
    foreign key (group_id) references bk_sops.auth_group (id),
  constraint account_user_groups_user_id_14345e7b_fk_account_user_id
    foreign key (user_id) references bk_sops.account_user (id)
);

create table bk_user.auth_group
(
  id   int auto_increment
    primary key,
  name varchar(80) not null,
  constraint name
    unique (name)
);

create table bk_user_manage.auth_group
(
  id   int auto_increment
    primary key,
  name varchar(80) not null,
  constraint name
    unique (name)
);

create table bk_user_manage.account_bkuser_groups
(
  id        int auto_increment
    primary key,
  bkuser_id int not null,
  group_id  int not null,
  constraint account_bkuser_groups_bkuser_id_group_id_cc136174_uniq
    unique (bkuser_id, group_id),
  constraint account_bkuser_groups_bkuser_id_4ab47c5e_fk_account_bkuser_id
    foreign key (bkuser_id) references bk_user_manage.account_bkuser (id),
  constraint account_bkuser_groups_group_id_3efea5e4_fk_auth_group_id
    foreign key (group_id) references bk_user_manage.auth_group (id)
);

create table bk_user.auth_user
(
  id           int auto_increment
    primary key,
  password     varchar(128) not null,
  last_login   datetime(6)  null,
  is_superuser tinyint(1)   not null,
  username     varchar(150) not null,
  first_name   varchar(30)  not null,
  last_name    varchar(30)  not null,
  email        varchar(254) not null,
  is_staff     tinyint(1)   not null,
  is_active    tinyint(1)   not null,
  date_joined  datetime(6)  not null,
  constraint username
    unique (username)
);

create table bk_user.auth_user_groups
(
  id       int auto_increment
    primary key,
  user_id  int not null,
  group_id int not null,
  constraint auth_user_groups_user_id_group_id_94350c0c_uniq
    unique (user_id, group_id),
  constraint auth_user_groups_group_id_97559544_fk_auth_group_id
    foreign key (group_id) references bk_user.auth_group (id),
  constraint auth_user_groups_user_id_6a12ed8b_fk_auth_user_id
    foreign key (user_id) references bk_user.auth_user (id)
);

create table bk_iam.authorization_authapiallowlistconfig
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  type         varchar(32) not null,
  system_id    varchar(32) not null,
  object_id    varchar(32) not null
);

create index authorization_authapiallo_system_id_object_id_9d47d741_idx
  on bk_iam.authorization_authapiallowlistconfig (system_id, object_id);

create table bk_itsm.bk_weixin_user
(
  id          int auto_increment
    primary key,
  openid      varchar(128) null,
  nickname    varchar(127) not null,
  gender      varchar(15)  not null,
  country     varchar(63)  not null,
  province    varchar(63)  not null,
  city        varchar(63)  not null,
  avatar_url  varchar(255) not null,
  date_joined datetime(6)  not null,
  email       varchar(128) not null,
  mobile      varchar(11)  not null,
  qr_code     varchar(128) not null,
  userid      varchar(128) null,
  constraint bk_weixin_user_openid_userid_8bcd8788_uniq
    unique (openid, userid)
);

create table bk_sops.bk_weixin_user
(
  id          int auto_increment
    primary key,
  userid      varchar(128) not null,
  name        varchar(127) not null,
  gender      varchar(15)  not null,
  country     varchar(63)  not null,
  province    varchar(63)  not null,
  city        varchar(63)  not null,
  avatar_url  varchar(255) not null,
  date_joined datetime(6)  not null,
  constraint openid
    unique (userid)
);

create table bk_user.categories_profilecategory
(
  id               int auto_increment
    primary key,
  create_time      datetime(6) not null,
  update_time      datetime(6) not null,
  type             varchar(32) not null,
  description      longtext    null,
  display_name     varchar(64) not null,
  domain           varchar(64) not null,
  `default`        tinyint(1)  not null,
  enabled          tinyint(1)  not null,
  last_synced_time datetime(6) null,
  `order`          int         not null,
  status           varchar(32) not null,
  constraint domain
    unique (domain)
);

create table bk_iam.celery_taskmeta
(
  id        int auto_increment
    primary key,
  task_id   varchar(255) not null,
  status    varchar(50)  not null,
  result    longtext     null,
  date_done datetime(6)  not null,
  traceback longtext     null,
  hidden    tinyint(1)   not null,
  meta      longtext     null,
  constraint task_id
    unique (task_id)
);

create table bk_itsm.celery_taskmeta
(
  id        int auto_increment
    primary key,
  task_id   varchar(255) not null,
  status    varchar(50)  not null,
  result    longtext     null,
  date_done datetime(6)  not null,
  traceback longtext     null,
  hidden    tinyint(1)   not null,
  meta      longtext     null,
  constraint task_id
    unique (task_id)
);

create table bk_nodeman.celery_taskmeta
(
  id        int auto_increment
    primary key,
  task_id   varchar(255) not null,
  status    varchar(50)  not null,
  result    longtext     null,
  date_done datetime(6)  not null,
  traceback longtext     null,
  hidden    tinyint(1)   not null,
  meta      longtext     null,
  constraint task_id
    unique (task_id)
);

create index celery_taskmeta_hidden_23fd02dc
  on bk_iam.celery_taskmeta (hidden);

create index celery_taskmeta_hidden_23fd02dc
  on bk_itsm.celery_taskmeta (hidden);

create index celery_taskmeta_hidden_23fd02dc
  on bk_nodeman.celery_taskmeta (hidden);

create table bk_iam.celery_tasksetmeta
(
  id         int auto_increment
    primary key,
  taskset_id varchar(255) not null,
  result     longtext     not null,
  date_done  datetime(6)  not null,
  hidden     tinyint(1)   not null,
  constraint taskset_id
    unique (taskset_id)
);

create table bk_itsm.celery_tasksetmeta
(
  id         int auto_increment
    primary key,
  taskset_id varchar(255) not null,
  result     longtext     not null,
  date_done  datetime(6)  not null,
  hidden     tinyint(1)   not null,
  constraint taskset_id
    unique (taskset_id)
);

create table bk_nodeman.celery_tasksetmeta
(
  id         int auto_increment
    primary key,
  taskset_id varchar(255) not null,
  result     longtext     not null,
  date_done  datetime(6)  not null,
  hidden     tinyint(1)   not null,
  constraint taskset_id
    unique (taskset_id)
);

create index celery_tasksetmeta_hidden_593cfc24
  on bk_iam.celery_tasksetmeta (hidden);

create index celery_tasksetmeta_hidden_593cfc24
  on bk_itsm.celery_tasksetmeta (hidden);

create index celery_tasksetmeta_hidden_593cfc24
  on bk_nodeman.celery_tasksetmeta (hidden);

create table bk_sops.collection_collection
(
  id          int auto_increment
    primary key,
  username    varchar(255) not null,
  category    varchar(255) not null,
  extra_info  longtext     not null,
  instance_id int          not null
);

create index collection_collection_category_instance_id_5b0053a2_idx
  on bk_sops.collection_collection (category, instance_id);

create table lesscode.comp
(
  id              int auto_increment
    primary key,
  type            varchar(255)                       not null comment '自定义组件 id，全局唯一，（要和上传的 config.js 中的 type 一致，自定义组件的标签名）',
  name            varchar(255)                       not null comment '自定义组件名称',
  displayName     varchar(255)                       not null comment '自定义组件中文名称',
  categoryId      int                                not null comment '自定义组件分类',
  belongProjectId int                                not null comment '自定义组件所属项目',
  isPublic        int      default 0                 not null comment '是否公开：0 为公开，1 为不公开',
  status          int      default 0                 not null comment '自定义组件状态：0 为已发布，1 为已下架',
  createTime      datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime      datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser      varchar(255)                       null comment '创建人，默认当前用户',
  updateUser      varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag      int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '自定义组件表' charset = utf8mb4;

create index belong_project_id
  on lesscode.comp (belongProjectId);

create index category_id
  on lesscode.comp (categoryId);

create table lesscode.comp_category
(
  id              int auto_increment
    primary key,
  name            varchar(255)                       not null,
  belongProjectId int                                not null comment '所属项目',
  createTime      datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime      datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser      varchar(255)                       null comment '创建人，默认当前用户',
  updateUser      varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag      int      default 0                 null comment '是否删除，1代表已删除',
  `order`         int                                not null comment '排序索引'
)
  comment '组件分类表' charset = utf8mb4;

create index belong_project_id
  on lesscode.comp_category (belongProjectId);

create table bk_itsm.component_framework_componentmodel
(
  id      int auto_increment
    primary key,
  code    varchar(255) not null,
  name    varchar(255) not null,
  status  tinyint(1)   not null,
  version varchar(64)  not null
);

create table bk_nodeman.component_framework_componentmodel
(
  id      int auto_increment
    primary key,
  code    varchar(255) not null,
  name    varchar(255) not null,
  status  tinyint(1)   not null,
  version varchar(64)  not null
);

create table bk_sops.component_framework_componentmodel
(
  id      int auto_increment
    primary key,
  code    varchar(255) not null,
  name    varchar(255) not null,
  status  tinyint(1)   not null,
  version varchar(64)  not null,
  constraint component_framework_componentmodel_code_version_1b8e366c_uniq
    unique (code, version)
);

create index component_framework_componentmodel_code_338ba51f
  on bk_sops.component_framework_componentmodel (code);

create index component_framework_componentmodel_version_318ba856
  on bk_sops.component_framework_componentmodel (version);

create table bk_sops.core_business
(
  id                  int auto_increment
    primary key,
  cc_id               int          not null,
  cc_name             varchar(256) not null,
  cc_owner            varchar(100) not null,
  cc_company          varchar(100) not null,
  time_zone           varchar(100) not null,
  executor            varchar(100) not null,
  life_cycle          varchar(100) not null,
  always_use_executor tinyint(1)   not null,
  status              varchar(32)  null,
  constraint cc_id
    unique (cc_id)
);

create table bk_sops.core_businessgroupmembership
(
  id           int auto_increment
    primary key,
  date_created datetime(6) not null,
  business_id  int         not null,
  group_id     int         not null,
  constraint core_businessgroupmembership_business_id_group_id_734aa76b_uniq
    unique (business_id, group_id),
  constraint core_businessgroupme_business_id_33a124b9_fk_core_busi
    foreign key (business_id) references bk_sops.core_business (id),
  constraint core_businessgroupmembership_group_id_71cbc212_fk_auth_group_id
    foreign key (group_id) references bk_sops.auth_group (id)
);

create table bk_sops.core_environmentvariables
(
  id    int auto_increment
    primary key,
  `key` varchar(255)  not null,
  name  varchar(255)  not null,
  value varchar(1000) not null,
  constraint `key`
    unique (`key`)
);

create table bk_sops.core_project
(
  id         int auto_increment
    primary key,
  name       varchar(192) not null,
  time_zone  varchar(100) not null,
  creator    varchar(256) not null,
  `desc`     varchar(512) not null,
  create_at  datetime(6)  not null,
  from_cmdb  tinyint(1)   not null,
  bk_biz_id  int          not null,
  is_disable tinyint(1)   not null,
  constraint core_project_bk_biz_id_name_02388f70_uniq
    unique (bk_biz_id, name)
);

create table bk_sops.core_project_relate_business
(
  id          int auto_increment
    primary key,
  project_id  int not null,
  business_id int not null,
  constraint core_project_relate_busi_project_id_business_id_712688c7_uniq
    unique (project_id, business_id),
  constraint core_project_relate__business_id_b46d9a39_fk_core_busi
    foreign key (business_id) references bk_sops.core_business (id),
  constraint core_project_relate__project_id_bbc7ad31_fk_core_proj
    foreign key (project_id) references bk_sops.core_project (id)
);

create table bk_sops.core_projectbasedcomponent
(
  id             int auto_increment
    primary key,
  component_code varchar(255) not null,
  project_id     varchar(64)  not null
);

create table bk_sops.core_projectconfig
(
  id                     int auto_increment
    primary key,
  project_id             int          not null,
  executor_proxy         varchar(255) not null,
  executor_proxy_exempts longtext     not null,
  max_periodic_task_num  int          not null
);

create table bk_sops.core_projectcounter
(
  id         int auto_increment
    primary key,
  username   varchar(255) not null,
  count      int          not null,
  project_id int          not null,
  constraint core_projectcounter_project_id_5ea66e56_fk_core_project_id
    foreign key (project_id) references bk_sops.core_project (id)
);

create table bk_sops.core_resourceconfig
(
  id          int auto_increment
    primary key,
  project_id  int          not null,
  name        varchar(255) not null,
  config_type varchar(255) not null,
  creator     varchar(255) null,
  data        longtext     not null,
  create_time datetime(6)  null,
  constraint core_resourceconfig_project_id_name_config_type_5632a7f4_uniq
    unique (project_id, name, config_type)
);

create table bk_sops.core_staffgroupset
(
  id         int auto_increment
    primary key,
  name       varchar(255) not null,
  members    longtext     null,
  is_deleted tinyint(1)   not null,
  project_id int          not null
);

create table bk_sops.core_userbusiness
(
  id           int auto_increment
    primary key,
  user         varchar(255) not null,
  default_buss int          not null,
  constraint user
    unique (user)
);

create table bk_sops.core_userdefaultproject
(
  id                 int auto_increment
    primary key,
  username           varchar(255) not null,
  default_project_id int          not null,
  constraint username
    unique (username),
  constraint core_userdefaultproj_default_project_id_bd5eca30_fk_core_proj
    foreign key (default_project_id) references bk_sops.core_project (id)
);

create table bk_user.departments_department
(
  id          int auto_increment
    primary key,
  create_time datetime(6)  not null,
  update_time datetime(6)  not null,
  name        varchar(255) not null,
  code        varchar(64)  null,
  `order`     int          not null,
  category_id int          null,
  lft         int unsigned not null,
  rght        int unsigned not null,
  tree_id     int unsigned not null,
  level       int unsigned not null,
  parent_id   int          null,
  enabled     tinyint(1)   not null,
  extras      longtext     not null,
  constraint code
    unique (code),
  constraint departments_departme_parent_id_cc8b848e_fk_departmen
    foreign key (parent_id) references bk_user.departments_department (id)
);

create index departments_department_level_ac528bba
  on bk_user.departments_department (level);

create index departments_department_lft_432ac99b
  on bk_user.departments_department (lft);

create index departments_department_parent_id_cc8b848e
  on bk_user.departments_department (parent_id);

create index departments_department_rght_5ed8cba5
  on bk_user.departments_department (rght);

create index departments_department_tree_id_28cdc253
  on bk_user.departments_department (tree_id);

create table bk_iam.django_cache
(
  cache_key varchar(255) not null
    primary key,
  value     longtext     not null,
  expires   datetime(6)  not null
);

create table bk_itsm.django_cache
(
  cache_key varchar(255) not null
    primary key,
  value     longtext     not null,
  expires   datetime(6)  not null
);

create table bk_sops.django_cache
(
  cache_key varchar(255) not null
    primary key,
  value     longtext     not null,
  expires   datetime(6)  not null
);

create table bk_user_manage.django_cache
(
  cache_key varchar(255) not null
    primary key,
  value     longtext     not null,
  expires   datetime(6)  not null
);

create index django_cache_expires
  on bk_iam.django_cache (expires);

create index django_cache_expires
  on bk_itsm.django_cache (expires);

create index django_cache_expires
  on bk_sops.django_cache (expires);

create index django_cache_expires
  on bk_user_manage.django_cache (expires);

create table bk_sops.django_celery_beat_clockedschedule
(
  id           int auto_increment
    primary key,
  clocked_time datetime(6) not null,
  enabled      tinyint(1)  not null
);

create table bk_user.django_celery_beat_clockedschedule
(
  id           int auto_increment
    primary key,
  clocked_time datetime(6) not null,
  enabled      tinyint(1)  not null
);

create table bk_sops.django_celery_beat_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(240) not null,
  hour          varchar(96)  not null,
  day_of_week   varchar(64)  not null,
  day_of_month  varchar(124) not null,
  month_of_year varchar(64)  not null,
  timezone      varchar(63)  not null
);

create table bk_user.django_celery_beat_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(240) not null,
  hour          varchar(96)  not null,
  day_of_week   varchar(64)  not null,
  day_of_month  varchar(124) not null,
  month_of_year varchar(64)  not null,
  timezone      varchar(63)  not null
);

create table bk_sops.django_celery_beat_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_user.django_celery_beat_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_sops.django_celery_beat_periodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_user.django_celery_beat_periodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_sops.django_celery_beat_solarschedule
(
  id        int auto_increment
    primary key,
  event     varchar(24)   not null,
  latitude  decimal(9, 6) not null,
  longitude decimal(9, 6) not null,
  constraint django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq
    unique (event, latitude, longitude)
);

create table bk_sops.django_celery_beat_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  solar_id        int          null,
  one_off         tinyint(1)   not null,
  start_time      datetime(6)  null,
  priority        int unsigned null,
  headers         longtext     not null,
  clocked_id      int          null,
  expire_seconds  int unsigned null,
  constraint name
    unique (name),
  constraint django_celery_beat_p_clocked_id_47a69f82_fk_django_ce
    foreign key (clocked_id) references bk_sops.django_celery_beat_clockedschedule (id),
  constraint django_celery_beat_p_crontab_id_d3cba168_fk_django_ce
    foreign key (crontab_id) references bk_sops.django_celery_beat_crontabschedule (id),
  constraint django_celery_beat_p_interval_id_a8ca27da_fk_django_ce
    foreign key (interval_id) references bk_sops.django_celery_beat_intervalschedule (id),
  constraint django_celery_beat_p_solar_id_a87ce72c_fk_django_ce
    foreign key (solar_id) references bk_sops.django_celery_beat_solarschedule (id)
);

create table bk_user.django_celery_beat_solarschedule
(
  id        int auto_increment
    primary key,
  event     varchar(24)   not null,
  latitude  decimal(9, 6) not null,
  longitude decimal(9, 6) not null,
  constraint django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq
    unique (event, latitude, longitude)
);

create table bk_user.django_celery_beat_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  solar_id        int          null,
  one_off         tinyint(1)   not null,
  start_time      datetime(6)  null,
  priority        int unsigned null,
  headers         longtext     not null,
  clocked_id      int          null,
  constraint name
    unique (name),
  constraint django_celery_beat_p_clocked_id_47a69f82_fk_django_ce
    foreign key (clocked_id) references bk_user.django_celery_beat_clockedschedule (id),
  constraint django_celery_beat_p_crontab_id_d3cba168_fk_django_ce
    foreign key (crontab_id) references bk_user.django_celery_beat_crontabschedule (id),
  constraint django_celery_beat_p_interval_id_a8ca27da_fk_django_ce
    foreign key (interval_id) references bk_user.django_celery_beat_intervalschedule (id),
  constraint django_celery_beat_p_solar_id_a87ce72c_fk_django_ce
    foreign key (solar_id) references bk_user.django_celery_beat_solarschedule (id)
);

create table bk_sops.django_celery_results_taskresult
(
  id               int auto_increment
    primary key,
  task_id          varchar(255) not null,
  status           varchar(50)  not null,
  content_type     varchar(128) not null,
  content_encoding varchar(64)  not null,
  result           longtext     null,
  date_done        datetime(6)  not null,
  traceback        longtext     null,
  meta             longtext     null,
  task_args        longtext     null,
  task_kwargs      longtext     null,
  task_name        varchar(255) null,
  worker           varchar(100) null,
  date_created     datetime(6)  not null,
  constraint task_id
    unique (task_id)
);

create index django_celery_results_taskresult_date_created_099f3424
  on bk_sops.django_celery_results_taskresult (date_created);

create index django_celery_results_taskresult_date_done_49edada6
  on bk_sops.django_celery_results_taskresult (date_done);

create index django_celery_results_taskresult_status_cbbed23a
  on bk_sops.django_celery_results_taskresult (status);

create index django_celery_results_taskresult_task_name_90987df3
  on bk_sops.django_celery_results_taskresult (task_name);

create index django_celery_results_taskresult_worker_f8711389
  on bk_sops.django_celery_results_taskresult (worker);

create table bk_iam.django_content_type
(
  id        int auto_increment
    primary key,
  app_label varchar(100) not null,
  model     varchar(100) not null,
  constraint django_content_type_app_label_model_76bd3d3b_uniq
    unique (app_label, model)
);

create table bk_iam.auth_permission
(
  id              int auto_increment
    primary key,
  name            varchar(255) not null,
  content_type_id int          not null,
  codename        varchar(100) not null,
  constraint auth_permission_content_type_id_codename_01ab375a_uniq
    unique (content_type_id, codename),
  constraint auth_permission_content_type_id_2f476e4b_fk_django_co
    foreign key (content_type_id) references bk_iam.django_content_type (id)
);

create table bk_iam.account_user_user_permissions
(
  id            int auto_increment
    primary key,
  user_id       int not null,
  permission_id int not null,
  constraint account_user_user_permis_user_id_permission_id_48bdd28b_uniq
    unique (user_id, permission_id),
  constraint account_user_user_pe_permission_id_66c44191_fk_auth_perm
    foreign key (permission_id) references bk_iam.auth_permission (id),
  constraint account_user_user_pe_user_id_cc42d270_fk_account_u
    foreign key (user_id) references bk_iam.account_user (id)
);

create table bk_iam.auth_group_permissions
(
  id            int auto_increment
    primary key,
  group_id      int not null,
  permission_id int not null,
  constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
    unique (group_id, permission_id),
  constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
    foreign key (permission_id) references bk_iam.auth_permission (id),
  constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
    foreign key (group_id) references bk_iam.auth_group (id)
);

create table bk_iam.django_admin_log
(
  id              int auto_increment
    primary key,
  action_time     datetime(6)       not null,
  object_id       longtext          null,
  object_repr     varchar(200)      not null,
  action_flag     smallint unsigned not null,
  change_message  longtext          not null,
  content_type_id int               null,
  user_id         int               not null,
  constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
    foreign key (content_type_id) references bk_iam.django_content_type (id),
  constraint django_admin_log_user_id_c564eba6_fk_account_user_id
    foreign key (user_id) references bk_iam.account_user (id)
);

create table bk_itsm.django_content_type
(
  id        int auto_increment
    primary key,
  app_label varchar(100) not null,
  model     varchar(100) not null,
  constraint django_content_type_app_label_model_76bd3d3b_uniq
    unique (app_label, model)
);

create table bk_itsm.auth_permission
(
  id              int auto_increment
    primary key,
  name            varchar(255) not null,
  content_type_id int          not null,
  codename        varchar(100) not null,
  constraint auth_permission_content_type_id_codename_01ab375a_uniq
    unique (content_type_id, codename),
  constraint auth_permission_content_type_id_2f476e4b_fk_django_co
    foreign key (content_type_id) references bk_itsm.django_content_type (id)
);

create table bk_itsm.account_user_user_permissions
(
  id            int auto_increment
    primary key,
  user_id       int not null,
  permission_id int not null,
  constraint account_user_user_permis_user_id_permission_id_48bdd28b_uniq
    unique (user_id, permission_id),
  constraint account_user_user_pe_permission_id_66c44191_fk_auth_perm
    foreign key (permission_id) references bk_itsm.auth_permission (id),
  constraint account_user_user_pe_user_id_cc42d270_fk_account_u
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_itsm.auth_group_permissions
(
  id            int auto_increment
    primary key,
  group_id      int not null,
  permission_id int not null,
  constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
    unique (group_id, permission_id),
  constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
    foreign key (permission_id) references bk_itsm.auth_permission (id),
  constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
    foreign key (group_id) references bk_itsm.auth_group (id)
);

create table bk_itsm.django_admin_log
(
  id              int auto_increment
    primary key,
  action_time     datetime(6)       not null,
  object_id       longtext          null,
  object_repr     varchar(200)      not null,
  action_flag     smallint unsigned not null,
  change_message  longtext          not null,
  content_type_id int               null,
  user_id         int               not null,
  constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
    foreign key (content_type_id) references bk_itsm.django_content_type (id),
  constraint django_admin_log_user_id_c564eba6_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_nodeman.django_content_type
(
  id        int auto_increment
    primary key,
  app_label varchar(100) not null,
  model     varchar(100) not null,
  constraint django_content_type_app_label_model_76bd3d3b_uniq
    unique (app_label, model)
);

create table bk_nodeman.auth_permission
(
  id              int auto_increment
    primary key,
  name            varchar(255) not null,
  content_type_id int          not null,
  codename        varchar(100) not null,
  constraint auth_permission_content_type_id_codename_01ab375a_uniq
    unique (content_type_id, codename),
  constraint auth_permission_content_type_id_2f476e4b_fk_django_co
    foreign key (content_type_id) references bk_nodeman.django_content_type (id)
);

create table bk_nodeman.account_user_user_permissions
(
  id            int auto_increment
    primary key,
  user_id       int not null,
  permission_id int not null,
  constraint account_user_user_permis_user_id_permission_id_48bdd28b_uniq
    unique (user_id, permission_id),
  constraint account_user_user_pe_permission_id_66c44191_fk_auth_perm
    foreign key (permission_id) references bk_nodeman.auth_permission (id),
  constraint account_user_user_pe_user_id_cc42d270_fk_account_u
    foreign key (user_id) references bk_nodeman.account_user (id)
);

create table bk_nodeman.auth_group_permissions
(
  id            int auto_increment
    primary key,
  group_id      int not null,
  permission_id int not null,
  constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
    unique (group_id, permission_id),
  constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
    foreign key (permission_id) references bk_nodeman.auth_permission (id),
  constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
    foreign key (group_id) references bk_nodeman.auth_group (id)
);

create table bk_nodeman.django_admin_log
(
  id              int auto_increment
    primary key,
  action_time     datetime(6)       not null,
  object_id       longtext          null,
  object_repr     varchar(200)      not null,
  action_flag     smallint unsigned not null,
  change_message  longtext          not null,
  content_type_id int               null,
  user_id         int               not null,
  constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
    foreign key (content_type_id) references bk_nodeman.django_content_type (id),
  constraint django_admin_log_user_id_c564eba6_fk_account_user_id
    foreign key (user_id) references bk_nodeman.account_user (id)
);

create table bk_sops.django_content_type
(
  id        int auto_increment
    primary key,
  app_label varchar(100) not null,
  model     varchar(100) not null,
  constraint django_content_type_app_label_model_76bd3d3b_uniq
    unique (app_label, model)
);

create table bk_sops.auth_permission
(
  id              int auto_increment
    primary key,
  name            varchar(255) not null,
  content_type_id int          not null,
  codename        varchar(100) not null,
  constraint auth_permission_content_type_id_codename_01ab375a_uniq
    unique (content_type_id, codename),
  constraint auth_permission_content_type_id_2f476e4b_fk_django_co
    foreign key (content_type_id) references bk_sops.django_content_type (id)
);

create table bk_sops.account_user_user_permissions
(
  id            int auto_increment
    primary key,
  user_id       int not null,
  permission_id int not null,
  constraint account_user_user_permis_user_id_permission_id_48bdd28b_uniq
    unique (user_id, permission_id),
  constraint account_user_user_pe_permission_id_66c44191_fk_auth_perm
    foreign key (permission_id) references bk_sops.auth_permission (id),
  constraint account_user_user_pe_user_id_cc42d270_fk_account_u
    foreign key (user_id) references bk_sops.account_user (id)
);

create table bk_sops.auth_group_permissions
(
  id            int auto_increment
    primary key,
  group_id      int not null,
  permission_id int not null,
  constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
    unique (group_id, permission_id),
  constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
    foreign key (permission_id) references bk_sops.auth_permission (id),
  constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
    foreign key (group_id) references bk_sops.auth_group (id)
);

create table bk_sops.django_admin_log
(
  id              int auto_increment
    primary key,
  action_time     datetime(6)       not null,
  object_id       longtext          null,
  object_repr     varchar(200)      not null,
  action_flag     smallint unsigned not null,
  change_message  longtext          not null,
  content_type_id int               null,
  user_id         int               not null,
  constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
    foreign key (content_type_id) references bk_sops.django_content_type (id),
  constraint django_admin_log_user_id_c564eba6_fk_account_user_id
    foreign key (user_id) references bk_sops.account_user (id)
);

create table bk_user.django_content_type
(
  id        int auto_increment
    primary key,
  app_label varchar(100) not null,
  model     varchar(100) not null,
  constraint django_content_type_app_label_model_76bd3d3b_uniq
    unique (app_label, model)
);

create table bk_user.auth_permission
(
  id              int auto_increment
    primary key,
  name            varchar(255) not null,
  content_type_id int          not null,
  codename        varchar(100) not null,
  constraint auth_permission_content_type_id_codename_01ab375a_uniq
    unique (content_type_id, codename),
  constraint auth_permission_content_type_id_2f476e4b_fk_django_co
    foreign key (content_type_id) references bk_user.django_content_type (id)
);

create table bk_user.auth_group_permissions
(
  id            int auto_increment
    primary key,
  group_id      int not null,
  permission_id int not null,
  constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
    unique (group_id, permission_id),
  constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
    foreign key (permission_id) references bk_user.auth_permission (id),
  constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
    foreign key (group_id) references bk_user.auth_group (id)
);

create table bk_user.auth_user_user_permissions
(
  id            int auto_increment
    primary key,
  user_id       int not null,
  permission_id int not null,
  constraint auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
    unique (user_id, permission_id),
  constraint auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm
    foreign key (permission_id) references bk_user.auth_permission (id),
  constraint auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id
    foreign key (user_id) references bk_user.auth_user (id)
);

create table bk_user.django_admin_log
(
  id              int auto_increment
    primary key,
  action_time     datetime(6)       not null,
  object_id       longtext          null,
  object_repr     varchar(200)      not null,
  action_flag     smallint unsigned not null,
  change_message  longtext          not null,
  content_type_id int               null,
  user_id         int               not null,
  constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
    foreign key (content_type_id) references bk_user.django_content_type (id),
  constraint django_admin_log_user_id_c564eba6_fk_auth_user_id
    foreign key (user_id) references bk_user.auth_user (id)
);

create table bk_user_manage.django_content_type
(
  id        int auto_increment
    primary key,
  app_label varchar(100) not null,
  model     varchar(100) not null,
  constraint django_content_type_app_label_model_76bd3d3b_uniq
    unique (app_label, model)
);

create table bk_user_manage.auth_permission
(
  id              int auto_increment
    primary key,
  name            varchar(255) not null,
  content_type_id int          not null,
  codename        varchar(100) not null,
  constraint auth_permission_content_type_id_codename_01ab375a_uniq
    unique (content_type_id, codename),
  constraint auth_permission_content_type_id_2f476e4b_fk_django_co
    foreign key (content_type_id) references bk_user_manage.django_content_type (id)
);

create table bk_user_manage.account_bkuser_user_permissions
(
  id            int auto_increment
    primary key,
  bkuser_id     int not null,
  permission_id int not null,
  constraint account_bkuser_user_perm_bkuser_id_permission_id_07b42055_uniq
    unique (bkuser_id, permission_id),
  constraint account_bkuser_user__bkuser_id_8b8b07f6_fk_account_b
    foreign key (bkuser_id) references bk_user_manage.account_bkuser (id),
  constraint account_bkuser_user__permission_id_c0c3c2f7_fk_auth_perm
    foreign key (permission_id) references bk_user_manage.auth_permission (id)
);

create table bk_user_manage.auth_group_permissions
(
  id            int auto_increment
    primary key,
  group_id      int not null,
  permission_id int not null,
  constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
    unique (group_id, permission_id),
  constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
    foreign key (permission_id) references bk_user_manage.auth_permission (id),
  constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
    foreign key (group_id) references bk_user_manage.auth_group (id)
);

create table bk_iam.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime(6)  not null
);

create table bk_itsm.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime(6)  not null
);

create table bk_nodeman.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime(6)  not null
);

create table bk_sops.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime(6)  not null
);

create table bk_user.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime(6)  not null
);

create table bk_user_manage.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime(6)  not null
);

create table bksuite_common.django_migrations
(
  id      int auto_increment
    primary key,
  app     varchar(255) not null,
  name    varchar(255) not null,
  applied datetime     not null
);

create table bk_iam.django_session
(
  session_key  varchar(40) not null
    primary key,
  session_data longtext    not null,
  expire_date  datetime(6) not null
);

create table bk_itsm.django_session
(
  session_key  varchar(40) not null
    primary key,
  session_data longtext    not null,
  expire_date  datetime(6) not null
);

create table bk_sops.django_session
(
  session_key  varchar(40) not null
    primary key,
  session_data longtext    not null,
  expire_date  datetime(6) not null
);

create table bk_user.django_session
(
  session_key  varchar(40) not null
    primary key,
  session_data longtext    not null,
  expire_date  datetime(6) not null
);

create table bk_user_manage.django_session
(
  session_key  varchar(40) not null
    primary key,
  session_data longtext    not null,
  expire_date  datetime(6) not null
);

create index django_session_expire_date_a5c62663
  on bk_iam.django_session (expire_date);

create index django_session_expire_date_a5c62663
  on bk_itsm.django_session (expire_date);

create index django_session_expire_date_a5c62663
  on bk_sops.django_session (expire_date);

create index django_session_expire_date_a5c62663
  on bk_user.django_session (expire_date);

create index django_session_expire_date_a5c62663
  on bk_user_manage.django_session (expire_date);

create table bk_itsm.django_signal_valve_signal
(
  id          int auto_increment
    primary key,
  module_path longtext    not null,
  name        varchar(64) not null,
  kwargs      longblob    not null
);

create table bk_nodeman.django_signal_valve_signal
(
  id          int auto_increment
    primary key,
  module_path longtext    not null,
  name        varchar(64) not null,
  kwargs      longblob    not null
);

create table bk_sops.django_signal_valve_signal
(
  id          int auto_increment
    primary key,
  module_path longtext    not null,
  name        varchar(64) not null,
  kwargs      longblob    not null
);

create table bk_iam.django_site
(
  id     int auto_increment
    primary key,
  domain varchar(100) not null,
  name   varchar(50)  not null,
  constraint django_site_domain_a2e37b91_uniq
    unique (domain)
);

create table bk_itsm.django_site
(
  id     int auto_increment
    primary key,
  domain varchar(100) not null,
  name   varchar(50)  not null,
  constraint django_site_domain_a2e37b91_uniq
    unique (domain)
);

create table bk_sops.django_site
(
  id     int auto_increment
    primary key,
  domain varchar(100) not null,
  name   varchar(50)  not null,
  constraint django_site_domain_a2e37b91_uniq
    unique (domain)
);

create table bk_user.django_site
(
  id     int auto_increment
    primary key,
  domain varchar(100) not null,
  name   varchar(50)  not null,
  constraint django_site_domain_a2e37b91_uniq
    unique (domain)
);

create table bk_iam.djcelery_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(64) not null,
  hour          varchar(64) not null,
  day_of_week   varchar(64) not null,
  day_of_month  varchar(64) not null,
  month_of_year varchar(64) not null
);

create table bk_itsm.djcelery_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(64) not null,
  hour          varchar(64) not null,
  day_of_week   varchar(64) not null,
  day_of_month  varchar(64) not null,
  month_of_year varchar(64) not null
);

create table bk_nodeman.djcelery_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(64) not null,
  hour          varchar(64) not null,
  day_of_week   varchar(64) not null,
  day_of_month  varchar(64) not null,
  month_of_year varchar(64) not null
);

create table bk_iam.djcelery_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_itsm.djcelery_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_nodeman.djcelery_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_iam.djcelery_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  constraint name
    unique (name),
  constraint djcelery_periodictas_crontab_id_75609bab_fk_djcelery_
    foreign key (crontab_id) references bk_iam.djcelery_crontabschedule (id),
  constraint djcelery_periodictas_interval_id_b426ab02_fk_djcelery_
    foreign key (interval_id) references bk_iam.djcelery_intervalschedule (id)
);

create table bk_itsm.djcelery_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  constraint name
    unique (name),
  constraint djcelery_periodictas_crontab_id_75609bab_fk_djcelery_
    foreign key (crontab_id) references bk_itsm.djcelery_crontabschedule (id),
  constraint djcelery_periodictas_interval_id_b426ab02_fk_djcelery_
    foreign key (interval_id) references bk_itsm.djcelery_intervalschedule (id)
);

create table bk_nodeman.djcelery_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  constraint name
    unique (name),
  constraint djcelery_periodictas_crontab_id_75609bab_fk_djcelery_
    foreign key (crontab_id) references bk_nodeman.djcelery_crontabschedule (id),
  constraint djcelery_periodictas_interval_id_b426ab02_fk_djcelery_
    foreign key (interval_id) references bk_nodeman.djcelery_intervalschedule (id)
);

create table bk_iam.djcelery_periodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_itsm.djcelery_periodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_nodeman.djcelery_periodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_iam.djcelery_workerstate
(
  id             int auto_increment
    primary key,
  hostname       varchar(255) not null,
  last_heartbeat datetime(6)  null,
  constraint hostname
    unique (hostname)
);

create table bk_iam.djcelery_taskstate
(
  id        int auto_increment
    primary key,
  state     varchar(64)  not null,
  task_id   varchar(36)  not null,
  name      varchar(200) null,
  tstamp    datetime(6)  not null,
  args      longtext     null,
  kwargs    longtext     null,
  eta       datetime(6)  null,
  expires   datetime(6)  null,
  result    longtext     null,
  traceback longtext     null,
  runtime   double       null,
  retries   int          not null,
  hidden    tinyint(1)   not null,
  worker_id int          null,
  constraint task_id
    unique (task_id),
  constraint djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id
    foreign key (worker_id) references bk_iam.djcelery_workerstate (id)
);

create index djcelery_taskstate_hidden_c3905e57
  on bk_iam.djcelery_taskstate (hidden);

create index djcelery_taskstate_name_8af9eded
  on bk_iam.djcelery_taskstate (name);

create index djcelery_taskstate_state_53543be4
  on bk_iam.djcelery_taskstate (state);

create index djcelery_taskstate_tstamp_4c3f93a1
  on bk_iam.djcelery_taskstate (tstamp);

create table bk_itsm.djcelery_workerstate
(
  id             int auto_increment
    primary key,
  hostname       varchar(255) not null,
  last_heartbeat datetime(6)  null,
  constraint hostname
    unique (hostname)
);

create table bk_itsm.djcelery_taskstate
(
  id        int auto_increment
    primary key,
  state     varchar(64)  not null,
  task_id   varchar(36)  not null,
  name      varchar(200) null,
  tstamp    datetime(6)  not null,
  args      longtext     null,
  kwargs    longtext     null,
  eta       datetime(6)  null,
  expires   datetime(6)  null,
  result    longtext     null,
  traceback longtext     null,
  runtime   double       null,
  retries   int          not null,
  hidden    tinyint(1)   not null,
  worker_id int          null,
  constraint task_id
    unique (task_id),
  constraint djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id
    foreign key (worker_id) references bk_itsm.djcelery_workerstate (id)
);

create index djcelery_taskstate_hidden_c3905e57
  on bk_itsm.djcelery_taskstate (hidden);

create index djcelery_taskstate_name_8af9eded
  on bk_itsm.djcelery_taskstate (name);

create index djcelery_taskstate_state_53543be4
  on bk_itsm.djcelery_taskstate (state);

create index djcelery_taskstate_tstamp_4c3f93a1
  on bk_itsm.djcelery_taskstate (tstamp);

create table bk_nodeman.djcelery_workerstate
(
  id             int auto_increment
    primary key,
  hostname       varchar(255) not null,
  last_heartbeat datetime(6)  null,
  constraint hostname
    unique (hostname)
);

create table bk_nodeman.djcelery_taskstate
(
  id        int auto_increment
    primary key,
  state     varchar(64)  not null,
  task_id   varchar(36)  not null,
  name      varchar(200) null,
  tstamp    datetime(6)  not null,
  args      longtext     null,
  kwargs    longtext     null,
  eta       datetime(6)  null,
  expires   datetime(6)  null,
  result    longtext     null,
  traceback longtext     null,
  runtime   double       null,
  retries   int          not null,
  hidden    tinyint(1)   not null,
  worker_id int          null,
  constraint task_id
    unique (task_id),
  constraint djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id
    foreign key (worker_id) references bk_nodeman.djcelery_workerstate (id)
);

create index djcelery_taskstate_hidden_c3905e57
  on bk_nodeman.djcelery_taskstate (hidden);

create index djcelery_taskstate_name_8af9eded
  on bk_nodeman.djcelery_taskstate (name);

create index djcelery_taskstate_state_53543be4
  on bk_nodeman.djcelery_taskstate (state);

create index djcelery_taskstate_tstamp_4c3f93a1
  on bk_nodeman.djcelery_taskstate (tstamp);

create index djcelery_workerstate_last_heartbeat_4539b544
  on bk_iam.djcelery_workerstate (last_heartbeat);

create index djcelery_workerstate_last_heartbeat_4539b544
  on bk_itsm.djcelery_workerstate (last_heartbeat);

create index djcelery_workerstate_last_heartbeat_4539b544
  on bk_nodeman.djcelery_workerstate (last_heartbeat);

create table bk_itsm.engine_data
(
  id      varchar(32) not null
    primary key,
  inputs  longblob    not null,
  outputs longblob    not null,
  ex_data longblob    not null
);

create table bk_nodeman.engine_data
(
  id      varchar(32) not null
    primary key,
  inputs  longblob    not null,
  outputs longblob    not null,
  ex_data longblob    not null
);

create table bk_sops.engine_data
(
  id      varchar(32) not null
    primary key,
  inputs  longblob    not null,
  outputs longblob    not null,
  ex_data longblob    not null
);

create table bk_itsm.engine_datasnapshot
(
  `key` varchar(255) not null
    primary key,
  obj   longblob     not null
);

create table bk_nodeman.engine_datasnapshot
(
  `key` varchar(255) not null
    primary key,
  obj   longblob     not null
);

create table bk_sops.engine_datasnapshot
(
  `key` varchar(255) not null
    primary key,
  obj   longblob     not null
);

create table bk_itsm.engine_functionswitch
(
  id          int auto_increment
    primary key,
  name        varchar(32) not null,
  description longtext    not null,
  is_active   tinyint(1)  not null,
  constraint engine_functionswitch_name_4eaabfd5_uniq
    unique (name)
);

create table bk_nodeman.engine_functionswitch
(
  id          int auto_increment
    primary key,
  name        varchar(32) not null,
  description longtext    not null,
  is_active   tinyint(1)  not null,
  constraint engine_functionswitch_name_4eaabfd5_uniq
    unique (name)
);

create table bk_sops.engine_functionswitch
(
  id          int auto_increment
    primary key,
  name        varchar(32) not null,
  description longtext    not null,
  is_active   tinyint(1)  not null,
  constraint engine_functionswitch_name_4eaabfd5_uniq
    unique (name)
);

create table bk_itsm.engine_historydata
(
  id      bigint auto_increment
    primary key,
  inputs  longblob not null,
  outputs longblob not null,
  ex_data longblob not null
);

create table bk_itsm.engine_history
(
  id            bigint auto_increment
    primary key,
  identifier    varchar(32) not null,
  started_time  datetime(6) not null,
  archived_time datetime(6) not null,
  data_id       bigint      null,
  `loop`        int         not null,
  skip          tinyint(1)  not null,
  constraint engine_history_data_id_6ab72823_fk
    foreign key (data_id) references bk_itsm.engine_historydata (id)
);

create index engine_history_identifier_ae4002b4
  on bk_itsm.engine_history (identifier);

create table bk_nodeman.engine_historydata
(
  id      bigint auto_increment
    primary key,
  inputs  longblob not null,
  outputs longblob not null,
  ex_data longblob not null
);

create table bk_nodeman.engine_history
(
  id            bigint auto_increment
    primary key,
  identifier    varchar(32) not null,
  started_time  datetime(6) not null,
  archived_time datetime(6) not null,
  data_id       bigint      null,
  `loop`        int         not null,
  skip          tinyint(1)  not null,
  constraint engine_history_data_id_6ab72823_fk_engine_historydata_id
    foreign key (data_id) references bk_nodeman.engine_historydata (id)
);

create index engine_history_identifier_ae4002b4
  on bk_nodeman.engine_history (identifier);

create table bk_sops.engine_historydata
(
  id      bigint auto_increment
    primary key,
  inputs  longblob not null,
  outputs longblob not null,
  ex_data longblob not null
);

create table bk_sops.engine_history
(
  id            bigint auto_increment
    primary key,
  identifier    varchar(32) not null,
  started_time  datetime(6) not null,
  archived_time datetime(6) not null,
  data_id       bigint      null,
  `loop`        int         not null,
  skip          tinyint(1)  not null,
  constraint engine_history_data_id_6ab72823_fk_engine_historydata_id
    foreign key (data_id) references bk_sops.engine_historydata (id)
);

create index engine_history_identifier_ae4002b4
  on bk_sops.engine_history (identifier);

create table bk_itsm.engine_multicallbackdata
(
  id          bigint auto_increment
    primary key,
  schedule_id varchar(64) not null,
  data        longblob    not null
);

create table bk_nodeman.engine_multicallbackdata
(
  id          bigint auto_increment
    primary key,
  schedule_id varchar(64) not null,
  data        longblob    not null
);

create table bk_sops.engine_multicallbackdata
(
  id          bigint auto_increment
    primary key,
  schedule_id varchar(64) not null,
  data        longblob    not null
);

create table bk_itsm.engine_nodecelerytask
(
  id             bigint auto_increment
    primary key,
  node_id        varchar(32) not null,
  celery_task_id varchar(40) not null,
  constraint node_id
    unique (node_id)
);

create table bk_nodeman.engine_nodecelerytask
(
  id             bigint auto_increment
    primary key,
  node_id        varchar(32) not null,
  celery_task_id varchar(40) not null,
  constraint node_id
    unique (node_id)
);

create table bk_sops.engine_nodecelerytask
(
  id             bigint auto_increment
    primary key,
  node_id        varchar(32) not null,
  celery_task_id varchar(40) not null,
  constraint node_id
    unique (node_id)
);

create table bk_itsm.engine_noderelationship
(
  id            bigint auto_increment
    primary key,
  ancestor_id   varchar(32) not null,
  descendant_id varchar(32) not null,
  distance      int         not null
);

create table bk_nodeman.engine_noderelationship
(
  id            bigint auto_increment
    primary key,
  ancestor_id   varchar(32) not null,
  descendant_id varchar(32) not null,
  distance      int         not null
);

create table bk_sops.engine_noderelationship
(
  id            bigint auto_increment
    primary key,
  ancestor_id   varchar(32) not null,
  descendant_id varchar(32) not null,
  distance      int         not null
);

create index engine_noderelationship_ancestor_id_47d3352e
  on bk_itsm.engine_noderelationship (ancestor_id);

create index engine_noderelationship_ancestor_id_47d3352e
  on bk_nodeman.engine_noderelationship (ancestor_id);

create index engine_noderelationship_ancestor_id_47d3352e
  on bk_sops.engine_noderelationship (ancestor_id);

create index engine_noderelationship_descendant_id_259c88cb
  on bk_itsm.engine_noderelationship (descendant_id);

create index engine_noderelationship_descendant_id_259c88cb
  on bk_nodeman.engine_noderelationship (descendant_id);

create index engine_noderelationship_descendant_id_259c88cb
  on bk_sops.engine_noderelationship (descendant_id);

create index engine_noderelationship_distance_6ddef031
  on bk_itsm.engine_noderelationship (distance);

create index engine_noderelationship_distance_6ddef031
  on bk_nodeman.engine_noderelationship (distance);

create index engine_noderelationship_distance_6ddef031
  on bk_sops.engine_noderelationship (distance);

create table bk_itsm.engine_processcelerytask
(
  id             bigint auto_increment
    primary key,
  process_id     varchar(32) not null,
  celery_task_id varchar(40) not null,
  constraint process_id
    unique (process_id)
);

create table bk_nodeman.engine_processcelerytask
(
  id             bigint auto_increment
    primary key,
  process_id     varchar(32) not null,
  celery_task_id varchar(40) not null,
  constraint process_id
    unique (process_id)
);

create table bk_sops.engine_processcelerytask
(
  id             bigint auto_increment
    primary key,
  process_id     varchar(32) not null,
  celery_task_id varchar(40) not null,
  constraint process_id
    unique (process_id)
);

create table bk_itsm.engine_processsnapshot
(
  id   bigint auto_increment
    primary key,
  data longblob not null
);

create table bk_itsm.engine_pipelineprocess
(
  id               varchar(32) not null
    primary key,
  root_pipeline_id varchar(32) not null,
  current_node_id  varchar(32) not null,
  destination_id   varchar(32) not null,
  parent_id        varchar(32) not null,
  ack_num          int         not null,
  need_ack         int         not null,
  is_alive         tinyint(1)  not null,
  is_sleep         tinyint(1)  not null,
  snapshot_id      bigint      null,
  is_frozen        tinyint(1)  not null,
  constraint engine_pipelineprocess_snapshot_id_19bd7d81_fk
    foreign key (snapshot_id) references bk_itsm.engine_processsnapshot (id)
);

create table bk_itsm.engine_pipelinemodel
(
  id         varchar(32)  not null
    primary key,
  process_id varchar(32)  null,
  priority   int          not null,
  queue      varchar(512) not null,
  constraint engine_pipelinemodel_process_id_4b6eb2c9_fk_engine_pi
    foreign key (process_id) references bk_itsm.engine_pipelineprocess (id)
);

create index engine_pipelineprocess_current_node_id_8b05c275
  on bk_itsm.engine_pipelineprocess (current_node_id);

create index engine_pipelineprocess_is_alive_a58e9ef9
  on bk_itsm.engine_pipelineprocess (is_alive);

create index engine_pipelineprocess_is_frozen_ec43266a
  on bk_itsm.engine_pipelineprocess (is_frozen);

create index engine_pipelineprocess_is_sleep_4cd140e1
  on bk_itsm.engine_pipelineprocess (is_sleep);

create index engine_pipelineprocess_root_pipeline_id_6683f57c
  on bk_itsm.engine_pipelineprocess (root_pipeline_id);

create table bk_nodeman.engine_processsnapshot
(
  id   bigint auto_increment
    primary key,
  data longblob not null
);

create table bk_nodeman.engine_pipelineprocess
(
  id               varchar(32) not null
    primary key,
  root_pipeline_id varchar(32) not null,
  current_node_id  varchar(32) not null,
  destination_id   varchar(32) not null,
  parent_id        varchar(32) not null,
  ack_num          int         not null,
  need_ack         int         not null,
  is_alive         tinyint(1)  not null,
  is_sleep         tinyint(1)  not null,
  snapshot_id      bigint      null,
  is_frozen        tinyint(1)  not null,
  constraint engine_pipelineproce_snapshot_id_19bd7d81_fk_engine_pr
    foreign key (snapshot_id) references bk_nodeman.engine_processsnapshot (id)
);

create table bk_nodeman.engine_pipelinemodel
(
  id         varchar(32)  not null
    primary key,
  process_id varchar(32)  null,
  priority   int          not null,
  queue      varchar(512) not null,
  constraint engine_pipelinemodel_process_id_4b6eb2c9_fk_engine_pi
    foreign key (process_id) references bk_nodeman.engine_pipelineprocess (id)
);

create index engine_pipelineprocess_current_node_id_8b05c275
  on bk_nodeman.engine_pipelineprocess (current_node_id);

create index engine_pipelineprocess_is_alive_a58e9ef9
  on bk_nodeman.engine_pipelineprocess (is_alive);

create index engine_pipelineprocess_is_frozen_ec43266a
  on bk_nodeman.engine_pipelineprocess (is_frozen);

create index engine_pipelineprocess_is_sleep_4cd140e1
  on bk_nodeman.engine_pipelineprocess (is_sleep);

create index engine_pipelineprocess_root_pipeline_id_6683f57c
  on bk_nodeman.engine_pipelineprocess (root_pipeline_id);

create table bk_sops.engine_processsnapshot
(
  id   bigint auto_increment
    primary key,
  data longblob not null
);

create table bk_sops.engine_pipelineprocess
(
  id               varchar(32) not null
    primary key,
  root_pipeline_id varchar(32) not null,
  current_node_id  varchar(32) not null,
  destination_id   varchar(32) not null,
  parent_id        varchar(32) not null,
  ack_num          int         not null,
  need_ack         int         not null,
  is_alive         tinyint(1)  not null,
  is_sleep         tinyint(1)  not null,
  snapshot_id      bigint      null,
  is_frozen        tinyint(1)  not null,
  constraint engine_pipelineproce_snapshot_id_19bd7d81_fk_engine_pr
    foreign key (snapshot_id) references bk_sops.engine_processsnapshot (id)
);

create table bk_sops.engine_pipelinemodel
(
  id         varchar(32)  not null
    primary key,
  process_id varchar(32)  null,
  priority   int          not null,
  queue      varchar(512) not null,
  constraint engine_pipelinemodel_process_id_4b6eb2c9_fk_engine_pi
    foreign key (process_id) references bk_sops.engine_pipelineprocess (id)
);

create index engine_pipelineprocess_current_node_id_8b05c275
  on bk_sops.engine_pipelineprocess (current_node_id);

create index engine_pipelineprocess_is_alive_a58e9ef9
  on bk_sops.engine_pipelineprocess (is_alive);

create index engine_pipelineprocess_is_frozen_ec43266a
  on bk_sops.engine_pipelineprocess (is_frozen);

create index engine_pipelineprocess_is_sleep_4cd140e1
  on bk_sops.engine_pipelineprocess (is_sleep);

create index engine_pipelineprocess_root_pipeline_id_6683f57c
  on bk_sops.engine_pipelineprocess (root_pipeline_id);

create table bk_itsm.engine_schedulecelerytask
(
  id             bigint auto_increment
    primary key,
  schedule_id    varchar(64) not null,
  celery_task_id varchar(40) not null,
  constraint schedule_id
    unique (schedule_id)
);

create table bk_nodeman.engine_schedulecelerytask
(
  id             bigint auto_increment
    primary key,
  schedule_id    varchar(64) not null,
  celery_task_id varchar(40) not null,
  constraint schedule_id
    unique (schedule_id)
);

create table bk_sops.engine_schedulecelerytask
(
  id             bigint auto_increment
    primary key,
  schedule_id    varchar(64) not null,
  celery_task_id varchar(40) not null,
  constraint schedule_id
    unique (schedule_id)
);

create table bk_itsm.engine_scheduleservice
(
  id                     varchar(64) not null
    primary key,
  activity_id            varchar(32) not null,
  process_id             varchar(32) not null,
  schedule_times         int         not null,
  wait_callback          tinyint(1)  not null,
  callback_data          longblob    not null,
  service_act            longblob    not null,
  is_finished            tinyint(1)  not null,
  version                varchar(32) not null,
  is_scheduling          tinyint(1)  not null,
  multi_callback_enabled tinyint(1)  not null
);

create table bk_nodeman.engine_scheduleservice
(
  id                     varchar(64) not null
    primary key,
  activity_id            varchar(32) not null,
  process_id             varchar(32) not null,
  schedule_times         int         not null,
  wait_callback          tinyint(1)  not null,
  callback_data          longblob    not null,
  service_act            longblob    not null,
  is_finished            tinyint(1)  not null,
  version                varchar(32) not null,
  is_scheduling          tinyint(1)  not null,
  multi_callback_enabled tinyint(1)  not null
);

create table bk_sops.engine_scheduleservice
(
  id                     varchar(64) not null
    primary key,
  activity_id            varchar(32) not null,
  process_id             varchar(32) not null,
  schedule_times         int         not null,
  wait_callback          tinyint(1)  not null,
  callback_data          longblob    not null,
  service_act            longblob    not null,
  is_finished            tinyint(1)  not null,
  version                varchar(32) not null,
  is_scheduling          tinyint(1)  not null,
  multi_callback_enabled tinyint(1)  not null
);

create index engine_scheduleservice_activity_id_03644764
  on bk_itsm.engine_scheduleservice (activity_id);

create index engine_scheduleservice_activity_id_03644764
  on bk_nodeman.engine_scheduleservice (activity_id);

create index engine_scheduleservice_activity_id_03644764
  on bk_sops.engine_scheduleservice (activity_id);

create index engine_scheduleservice_is_scheduling_d84d5676
  on bk_itsm.engine_scheduleservice (is_scheduling);

create index engine_scheduleservice_is_scheduling_d84d5676
  on bk_nodeman.engine_scheduleservice (is_scheduling);

create index engine_scheduleservice_is_scheduling_d84d5676
  on bk_sops.engine_scheduleservice (is_scheduling);

create index engine_scheduleservice_version_1e9eb3b3
  on bk_itsm.engine_scheduleservice (version);

create index engine_scheduleservice_version_1e9eb3b3
  on bk_nodeman.engine_scheduleservice (version);

create index engine_scheduleservice_version_1e9eb3b3
  on bk_sops.engine_scheduleservice (version);

create table bk_itsm.engine_sendfailedcelerytask
(
  id           bigint auto_increment
    primary key,
  name         varchar(1024) not null,
  kwargs       longtext      not null,
  type         int           not null,
  extra_kwargs longtext      not null,
  exec_trace   longtext      not null,
  created_at   datetime(6)   not null
);

create table bk_sops.engine_sendfailedcelerytask
(
  id           bigint auto_increment
    primary key,
  name         varchar(1024) not null,
  kwargs       longtext      not null,
  type         int           not null,
  extra_kwargs longtext      not null,
  exec_trace   longtext      not null,
  created_at   datetime(6)   not null
);

create table bk_itsm.engine_status
(
  id               varchar(32) not null
    primary key,
  state            varchar(10) not null,
  name             varchar(64) not null,
  retry            int         not null,
  `loop`           int         not null,
  skip             tinyint(1)  not null,
  created_time     datetime(6) not null,
  started_time     datetime(6) null,
  archived_time    datetime(6) null,
  version          varchar(32) not null,
  error_ignorable  tinyint(1)  not null,
  state_refresh_at datetime(6) null
);

create table bk_nodeman.engine_status
(
  id               varchar(32) not null
    primary key,
  state            varchar(10) not null,
  name             varchar(64) not null,
  retry            int         not null,
  `loop`           int         not null,
  skip             tinyint(1)  not null,
  created_time     datetime(6) not null,
  started_time     datetime(6) null,
  archived_time    datetime(6) null,
  version          varchar(32) not null,
  error_ignorable  tinyint(1)  not null,
  state_refresh_at datetime(6) null
);

create table bk_sops.engine_status
(
  id               varchar(32) not null
    primary key,
  state            varchar(10) not null,
  name             varchar(64) not null,
  retry            int         not null,
  `loop`           int         not null,
  skip             tinyint(1)  not null,
  created_time     datetime(6) not null,
  started_time     datetime(6) null,
  archived_time    datetime(6) null,
  version          varchar(32) not null,
  error_ignorable  tinyint(1)  not null,
  state_refresh_at datetime(6) null
);

create index engine_status_created_time_777eadc5
  on bk_itsm.engine_status (created_time);

create index engine_status_created_time_777eadc5
  on bk_nodeman.engine_status (created_time);

create index engine_status_created_time_777eadc5
  on bk_sops.engine_status (created_time);

create table bk_itsm.engine_subprocessrelationship
(
  id            bigint auto_increment
    primary key,
  subprocess_id varchar(32) not null,
  process_id    varchar(32) not null
);

create table bk_nodeman.engine_subprocessrelationship
(
  id            bigint auto_increment
    primary key,
  subprocess_id varchar(32) not null,
  process_id    varchar(32) not null
);

create table bk_sops.engine_subprocessrelationship
(
  id            bigint auto_increment
    primary key,
  subprocess_id varchar(32) not null,
  process_id    varchar(32) not null
);

create index engine_subprocessrelationship_subprocess_id_5498c53e
  on bk_itsm.engine_subprocessrelationship (subprocess_id);

create index engine_subprocessrelationship_subprocess_id_5498c53e
  on bk_nodeman.engine_subprocessrelationship (subprocess_id);

create index engine_subprocessrelationship_subprocess_id_5498c53e
  on bk_sops.engine_subprocessrelationship (subprocess_id);

create table expression
(
  pk               int unsigned auto_increment
    primary key,
  action_pk        int unsigned      default 0                 not null,
  expression       mediumtext                                  not null,
  signature        char(32)                                    not null,
  type             smallint unsigned default 0                 not null,
  template_id      int unsigned      default 0                 not null,
  template_version int unsigned      default 0                 not null,
  created_at       timestamp         default CURRENT_TIMESTAMP not null,
  updated_at       timestamp         default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_signature_action
  on expression (signature, action_pk);

create table bk_sops.external_plugins_cachepackagesource
(
  id             int auto_increment
    primary key,
  type           varchar(64) not null,
  base_source_id int         null,
  `desc`         longtext    not null
);

create table bk_sops.external_plugins_filesystemoriginalsource
(
  id             int auto_increment
    primary key,
  type           varchar(64)  not null,
  base_source_id int          null,
  name           varchar(128) not null,
  `desc`         longtext     not null,
  packages       longtext     not null,
  path           longtext     not null
);

create table bk_sops.external_plugins_gitrepooriginalsource
(
  id               int auto_increment
    primary key,
  type             varchar(64)  not null,
  base_source_id   int          null,
  name             varchar(128) not null,
  `desc`           longtext     not null,
  packages         longtext     not null,
  repo_address     longtext     not null,
  repo_raw_address longtext     not null,
  branch           varchar(128) not null
);

create table bk_sops.external_plugins_s3originalsource
(
  id              int auto_increment
    primary key,
  type            varchar(64)  not null,
  base_source_id  int          null,
  name            varchar(128) not null,
  `desc`          longtext     not null,
  packages        longtext     not null,
  service_address longtext     not null,
  bucket          longtext     not null,
  access_key      longtext     not null,
  secret_key      longtext     not null,
  source_dir      longtext     not null
);

create table bk_sops.external_plugins_synctask
(
  id            int auto_increment
    primary key,
  creator       varchar(32) not null,
  create_method varchar(32) not null,
  start_time    datetime(6) not null,
  finish_time   datetime(6) null,
  status        varchar(32) not null,
  details       longtext    not null
);

create table bk_sops.files_uploadmodulefiletag
(
  id        int auto_increment
    primary key,
  source_ip varchar(128) not null,
  file_name longtext     not null,
  file_path longtext     not null
);

create table bk_sops.files_uploadticket
(
  id           int auto_increment
    primary key,
  code         varchar(32)  not null,
  applicant    varchar(128) not null,
  apply_from   varchar(128) not null,
  created_at   datetime(6)  not null,
  is_available tinyint(1)   not null,
  used_at      datetime(6)  null
);

create table lesscode.func
(
  id           int auto_increment
    primary key,
  funcName     varchar(255)                                       not null comment '函数名字，项目下唯一',
  funcParams   text                                               null comment '函数参数，逗号分隔字符串',
  funcBody     longtext                                           null comment '函数内容',
  funcGroupId  int                                                not null comment 'function_group 表主键',
  createTime   datetime                 default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime   datetime                 default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser   varchar(255)                                       null comment '创建人，默认当前用户',
  updateUser   varchar(255)                                       null comment '更新人，默认当前用户',
  funcSummary  text                                               null comment '函数简介',
  funcType     int                                                null comment '函数模板类型',
  funcMethod   varchar(255)                                       null comment '远程函数方法',
  withToken    int                      default 0                 null comment '远程方法是否携带Token',
  funcApiData  mediumtext                                         null comment '远程函数数据体',
  publicFlag   int(1) unsigned zerofill default 0                 null comment '是否公开',
  funcApiUrl   varchar(255)                                       null comment '远程函数URL',
  deleteFlag   int                      default 0                 null comment '是否删除，1代表已删除',
  `order`      int                                                null comment '排序',
  remoteParams text                                               null comment '回调函数参数，逗号分隔字符串',
  funcCode     varchar(255)                                       not null comment '函数项目下唯一code'
)
  comment '函数表' charset = utf8mb4;

create index func_group_id
  on lesscode.func (funcGroupId);

create table lesscode.func_group
(
  id         int auto_increment
    primary key,
  groupName  varchar(255)                       not null comment '函数文件夹名称',
  parentId   int      default -1                not null comment '父 group 节点的 id，无父节点即为 -1',
  createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser varchar(255)                       null comment '创建人，默认当前用户',
  updateUser varchar(255)                       null comment '更新人，默认当前用户',
  `order`    int                                null comment '排序',
  deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '函数分类表' charset = utf8mb4;

create table bk_iam.group_group
(
  id               int auto_increment
    primary key,
  creator          varchar(64)  not null,
  updater          varchar(64)  not null,
  created_time     datetime(6)  not null,
  updated_time     datetime(6)  not null,
  name             varchar(128) not null,
  description      varchar(512) not null,
  user_count       int          not null,
  department_count int          not null
);

create table bk_iam.group_groupauthorizelock
(
  id          int auto_increment
    primary key,
  group_id    int         not null,
  template_id int         not null,
  system_id   varchar(32) not null,
  `key`       varchar(32) not null,
  data        longblob    not null,
  constraint group_groupauthorizelock_template_id_group_id_sys_991e8ff9_uniq
    unique (template_id, group_id, system_id)
);

create table bk_iam.group_groupsaasattribute
(
  id           int auto_increment
    primary key,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  group_id     int         not null,
  `key`        varchar(32) not null,
  value        varchar(64) not null,
  constraint group_groupsaasattribute_group_id_key_66ae6e2e_uniq
    unique (group_id, `key`)
);

create table bk_itsm.iadmin_customnotice
(
  id               int auto_increment
    primary key,
  title_template   varchar(255) null,
  content_template longtext     null,
  notify_type      varchar(32)  not null,
  create_at        datetime(6)  not null,
  update_at        datetime(6)  not null,
  action           varchar(32)  not null,
  updated_by       varchar(64)  not null,
  version          varchar(32)  not null,
  is_for_task      tinyint(1)   not null
);

create table bk_itsm.iadmin_data
(
  id        int auto_increment
    primary key,
  `key`     varchar(128) not null,
  value     longblob     not null,
  type      varchar(32)  not null,
  expire_at datetime(6)  null
);

create index iadmin_data_expire_at_08ff490a
  on bk_itsm.iadmin_data (expire_at);

create index iadmin_data_key_e5bc4ba3
  on bk_itsm.iadmin_data (`key`);

create table bk_itsm.iadmin_migratelogs
(
  id           int auto_increment
    primary key,
  version_from varchar(64) not null,
  version_to   varchar(64) not null,
  operator     varchar(64) not null,
  create_at    datetime(6) not null,
  note         longtext    null,
  exe_func     longtext    not null,
  is_finished  tinyint(1)  not null,
  is_success   tinyint(1)  not null
);

create table bk_itsm.iadmin_releaseversionlog
(
  id           int auto_increment
    primary key,
  version      varchar(64) not null,
  log          longtext    null,
  lang         varchar(64) not null,
  create_at    date        not null,
  is_latest    tinyint(1)  not null,
  version_size int         not null
);

create table bk_itsm.iadmin_systemsettings
(
  id         int auto_increment
    primary key,
  creator    varchar(64) not null,
  create_at  datetime(6) not null,
  update_at  datetime(6) not null,
  updated_by varchar(64) not null,
  is_deleted tinyint(1)  not null,
  type       varchar(64) not null,
  `key`      varchar(64) not null,
  value      longtext    null,
  constraint iadmin_systemsettings_key_324b3988_uniq
    unique (`key`)
);

create table bk_sops.label_label
(
  id          int auto_increment
    primary key,
  name        varchar(255) not null,
  creator     varchar(255) not null,
  project_id  int          not null,
  is_default  tinyint(1)   not null,
  color       varchar(7)   not null,
  description varchar(255) null,
  constraint label_label_project_id_name_475768a3_uniq
    unique (project_id, name)
);

create index label_label_name_19b8650e
  on bk_sops.label_label (name);

create table bk_sops.label_templatelabelrelation
(
  id          int auto_increment
    primary key,
  template_id int not null,
  label_id    int not null,
  constraint label_templatelabelrelation_template_id_label_id_bd5bd6bf_uniq
    unique (template_id, label_id)
);

create index label_templatelabelrelation_label_id_d2b82a46
  on bk_sops.label_templatelabelrelation (label_id);

create index label_templatelabelrelation_template_id_5028d531
  on bk_sops.label_templatelabelrelation (template_id);

create table lesscode.layout
(
  id             int auto_increment
    primary key,
  defaultPath    varchar(30)   not null comment '默认路由',
  defaultName    varchar(30)   not null comment '布局中文名称',
  defaultCode    varchar(255)  not null comment '布局英文名称',
  type           varchar(20)   not null comment '布局类型',
  code           longtext      null comment '模板源码',
  defaultContent longtext      not null comment '默认targetData',
  createTime     datetime      null,
  updateTime     datetime      null,
  createUser     varchar(255)  null,
  updateUser     varchar(255)  null,
  deleteFlag     int default 0 not null
)
  comment '平台布局模板表' charset = utf8mb4;

create table lesscode.layout_inst
(
  id         int auto_increment
    primary key,
  content    mediumtext    not null comment '布局的targetData',
  layoutId   int           not null comment 'layout 表主键',
  projectId  int           not null comment 'project 表主键',
  routePath  varchar(255)  null comment '布局路由路径',
  isDefault  int default 0 not null comment '是否默认空模板：1为是，0为否',
  showName   varchar(30)   not null comment '布局展示名称',
  layoutCode varchar(255)  not null comment '布局英文名称',
  createTime datetime      null,
  updateTime datetime      null,
  createUser varchar(255)  null,
  updateUser varchar(255)  null,
  deleteFlag int default 0 not null
)
  comment '项目模板表' charset = utf8mb4;

create index layout_id
  on lesscode.layout_inst (layoutId);

create index project_id
  on lesscode.layout_inst (projectId);

create table bk_itsm.log_logentry
(
  id          bigint auto_increment
    primary key,
  logger_name varchar(128) not null,
  level_name  varchar(32)  not null,
  message     longtext     null,
  exception   longtext     null,
  logged_at   datetime(6)  not null,
  node_id     varchar(32)  not null,
  history_id  int          not null
);

create table bk_sops.log_logentry
(
  id          bigint auto_increment
    primary key,
  logger_name varchar(128) not null,
  level_name  varchar(32)  not null,
  message     longtext     null,
  exception   longtext     null,
  logged_at   datetime(6)  not null,
  node_id     varchar(32)  not null,
  history_id  int          not null
);

create index log_logentry_level_name_ee3058cb
  on bk_itsm.log_logentry (level_name);

create index log_logentry_level_name_ee3058cb
  on bk_sops.log_logentry (level_name);

create index log_logentry_logged_at_e3b3f283
  on bk_sops.log_logentry (logged_at);

create index log_logentry_logger_name_a74c8312
  on bk_itsm.log_logentry (logger_name);

create index log_logentry_logger_name_a74c8312
  on bk_sops.log_logentry (logger_name);

create index log_logentry_node_id_e0d756d9
  on bk_itsm.log_logentry (node_id);

create index log_logentry_node_id_e0d756d9
  on bk_sops.log_logentry (node_id);

create table bk_iam.long_task_subtaskstate
(
  id        int auto_increment
    primary key,
  task_id   int         not null,
  celery_id varchar(36) not null,
  `index`   int         not null,
  status    int         not null,
  exception longtext    not null
);

create table bk_iam.long_task_taskdetail
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  type         varchar(32) not null,
  args         longtext    not null,
  params       longtext    not null,
  unique_sign  varchar(64) not null,
  status       int         not null,
  celery_id    varchar(36) not null,
  results      longtext    not null
);

create table bk_iam.management_managementapiallowlistconfig
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  api          varchar(32) not null,
  system_id    varchar(32) not null
);

create index management_managementapia_system_id_api_57d49684_idx
  on bk_iam.management_managementapiallowlistconfig (system_id, api);

create table bk_iam.management_systemallowauthsystem
(
  id             int auto_increment
    primary key,
  creator        varchar(64) not null,
  updater        varchar(64) not null,
  created_time   datetime(6) not null,
  updated_time   datetime(6) not null,
  system_id      varchar(32) not null,
  auth_system_id varchar(32) not null
);

create index management_systemallowaut_system_id_auth_system_id_66c3d887_idx
  on bk_iam.management_systemallowauthsystem (system_id, auth_system_id);

create table lesscode.migrations
(
  id     int auto_increment
    primary key,
  name   varchar(255) not null,
  run_on datetime     not null
);

create table bk_iam.model_builder_mocksystemmodel
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  updater      varchar(64)  not null,
  created_time datetime(6)  not null,
  updated_time datetime(6)  not null,
  system_id    varchar(128) not null,
  owner        varchar(64)  not null,
  data         longtext     not null,
  constraint model_builder_mocksystemmodel_system_id_owner_82ee7708_uniq
    unique (system_id, owner)
);

create table model_change_event
(
  pk         int unsigned auto_increment
    primary key,
  type       varchar(32)                         not null,
  status     varchar(32)                         not null,
  system_id  varchar(32)                         not null,
  model_type varchar(32)                         not null,
  model_id   varchar(32)                         not null,
  model_pk   int unsigned                        not null,
  created_at timestamp default CURRENT_TIMESTAMP not null,
  updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_type_model
  on model_change_event (status, type, model_type, model_pk);

create table bk_itsm.nyt_notification
(
  id              int auto_increment
    primary key,
  message         longtext     not null,
  url             varchar(200) null,
  is_viewed       tinyint(1)   not null,
  is_emailed      tinyint(1)   not null,
  created         datetime(6)  not null,
  occurrences     int unsigned not null,
  subscription_id int          null,
  user_id         int          null,
  modified        datetime(6)  not null,
  constraint nyt_notification_user_id_acbb5c10_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_itsm.nyt_notificationtype
(
  `key`           varchar(128) not null
    primary key,
  label           varchar(128) null,
  content_type_id int          null,
  constraint nyt_notificationtype_content_type_id_18800dea_fk_django_co
    foreign key (content_type_id) references bk_itsm.django_content_type (id)
);

create table bk_itsm.nyt_settings
(
  id         int auto_increment
    primary key,
  user_id    int        not null,
  `interval` smallint   not null,
  is_default tinyint(1) not null,
  constraint nyt_settings_user_id_1fad6d98_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_itsm.nyt_subscription
(
  id                   int auto_increment
    primary key,
  settings_id          int          not null,
  notification_type_id varchar(128) not null,
  object_id            varchar(64)  null,
  send_emails          tinyint(1)   not null,
  latest_id            int          null,
  constraint nyt_subscription_latest_id_bbb7d98b_fk_nyt_notification_id
    foreign key (latest_id) references bk_itsm.nyt_notification (id),
  constraint nyt_subscription_notification_type_id_ca8af379_fk_nyt_notif
    foreign key (notification_type_id) references bk_itsm.nyt_notificationtype (`key`),
  constraint nyt_subscription_settings_id_761bae06_fk_nyt_settings_id
    foreign key (settings_id) references bk_itsm.nyt_settings (id)
);

alter table bk_itsm.nyt_notification
  add constraint nyt_notification_subscription_id_5a132ae1_fk_nyt_subscription_id
    foreign key (subscription_id) references bk_itsm.nyt_subscription (id);

create table lesscode.operate_log
(
  id              int auto_increment
    primary key,
  projectId       int                                null comment '项目id',
  operateObj      varchar(255)                       not null comment '操作对象',
  operateCode     varchar(255)                       not null comment '对应 perm.perm_code',
  operateCodeText varchar(255)                       not null comment '对应 perm.perm_desc',
  operateTarget   varchar(255)                       not null comment '操作目标',
  operateUserId   int                                not null comment 'user 表主键',
  operateStatus   int                                not null comment '操作状态：1为成功，0为失败',
  operateDesc     longtext                           null comment '操作描述',
  operateRaw      longtext                           null comment '操作请求和响应原始数据',
  operateTime     datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
  deleteFlag      int      default 0                 null comment '是否删除，1代表已删除',
  createTime      datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime      datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser      varchar(255)                       null comment '创建人，默认当前用户',
  updateUser      varchar(255)                       null comment '更新人，默认当前用户'
)
  comment '操作日志表' charset = utf8mb4;

create index operate_obj
  on lesscode.operate_log (operateObj);

create index operate_project_id
  on lesscode.operate_log (projectId);

create index operate_user_id
  on lesscode.operate_log (operateUserId);

create table bk_sops.operate_record_taskoperaterecord
(
  id             int auto_increment
    primary key,
  operator       varchar(128) not null,
  operate_type   varchar(64)  not null,
  operate_source varchar(64)  not null,
  instance_id    int          not null,
  project_id     int          not null,
  operate_date   datetime(6)  not null,
  node_id        varchar(255) not null
);

create index operate_rec_instanc_d0dfad_idx
  on bk_sops.operate_record_taskoperaterecord (instance_id, node_id);

create table bk_sops.operate_record_templateoperaterecord
(
  id             int auto_increment
    primary key,
  operator       varchar(128) not null,
  operate_type   varchar(64)  not null,
  operate_source varchar(64)  not null,
  instance_id    int          not null,
  project_id     int          not null,
  operate_date   datetime(6)  not null
);

create index operate_rec_instanc_39f580_idx
  on bk_sops.operate_record_templateoperaterecord (instance_id);

create table bk_iam.organization_category
(
  id           int         not null
    primary key,
  type         varchar(32) not null,
  display_name varchar(64) not null,
  domain       varchar(64) not null,
  `default`    tinyint(1)  not null,
  `order`      int         not null,
  constraint domain
    unique (domain)
);

create table bk_iam.organization_department
(
  created_time           datetime(6)  not null,
  updated_time           datetime(6)  not null,
  id                     int          not null
    primary key,
  name                   varchar(255) not null,
  category_id            int          null,
  `order`                int          not null,
  ancestors              longtext     not null,
  child_count            int          not null,
  member_count           int          not null,
  recursive_member_count int          not null,
  lft                    int unsigned not null,
  rght                   int unsigned not null,
  tree_id                int unsigned not null,
  level                  int unsigned not null,
  parent_id              int          null,
  constraint organization_departm_parent_id_26506ab2_fk_organizat
    foreign key (parent_id) references bk_iam.organization_department (id)
);

create index organization_department_parent_id_26506ab2
  on bk_iam.organization_department (parent_id);

create index organization_department_tree_id_c9c30344
  on bk_iam.organization_department (tree_id);

create table bk_iam.organization_departmentmember
(
  id            int auto_increment
    primary key,
  department_id int not null,
  user_id       int not null
);

create index organization_departmentmember_department_id_e7323ed1
  on bk_iam.organization_departmentmember (department_id);

create index organization_departmentmember_user_id_5067e532
  on bk_iam.organization_departmentmember (user_id);

create table bk_iam.organization_syncrecord
(
  id           int auto_increment
    primary key,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  executor     varchar(64) not null,
  type         varchar(16) not null,
  status       varchar(16) not null
);

create table bk_iam.organization_user
(
  created_time datetime(6)  not null,
  updated_time datetime(6)  not null,
  id           int          not null
    primary key,
  username     varchar(255) not null,
  display_name varchar(255) null,
  staff_status varchar(16)  not null,
  category_id  int          null,
  constraint username
    unique (username)
);

create table bk_iam.organization_userleader
(
  id        int auto_increment
    primary key,
  user_id   int not null,
  leader_id int not null
);

create index organization_userleader_user_id_6849f4c4
  on bk_iam.organization_userleader (user_id);

create table lesscode.page
(
  id         int auto_increment
    primary key,
  pageName   varchar(255)                       not null,
  pageCode   varchar(255)                       not null comment '页面 ID 即英文名称',
  lifeCycle  mediumtext                         not null comment '页面的生命周期',
  content    longtext                           null comment '页面的 targetData（JSON 串）',
  sourceCode longtext                           null comment '页面源代码',
  previewImg longtext                           null comment '缩略图base64',
  status     int      default 0                 not null comment '项目状态：0 为正常，1 为私有，2 为删除',
  createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser varchar(255)                       null comment '创建人，默认当前用户',
  updateUser varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '页面表' charset = utf8mb4;

create table bk_itsm.periodic_task_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(64) not null,
  hour          varchar(64) not null,
  day_of_week   varchar(64) not null,
  day_of_month  varchar(64) not null,
  month_of_year varchar(64) not null,
  timezone      varchar(63) not null
);

create table bk_sops.periodic_task_crontabschedule
(
  id            int auto_increment
    primary key,
  minute        varchar(64) not null,
  hour          varchar(64) not null,
  day_of_week   varchar(64) not null,
  day_of_month  varchar(64) not null,
  month_of_year varchar(64) not null,
  timezone      varchar(63) not null
);

create table bk_itsm.periodic_task_djceleryperiodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_sops.periodic_task_djceleryperiodictasks
(
  ident       smallint    not null
    primary key,
  last_update datetime(6) not null
);

create table bk_itsm.periodic_task_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_itsm.periodic_task_djceleryperiodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  constraint name
    unique (name),
  constraint periodic_task_djcele_crontab_id_5b2cf80e_fk_periodic_
    foreign key (crontab_id) references bk_itsm.periodic_task_crontabschedule (id),
  constraint periodic_task_djcele_interval_id_8732f06b_fk_periodic_
    foreign key (interval_id) references bk_itsm.periodic_task_intervalschedule (id)
);

create table bk_sops.periodic_task_intervalschedule
(
  id    int auto_increment
    primary key,
  every int not null,
  period varchar (24) not null
);

create table bk_sops.periodic_task_djceleryperiodictask
(
  id              int auto_increment
    primary key,
  name            varchar(200) not null,
  task            varchar(200) not null,
  args            longtext     not null,
  kwargs          longtext     not null,
  queue           varchar(200) null,
  exchange        varchar(200) null,
  routing_key     varchar(200) null,
  expires         datetime(6)  null,
  enabled         tinyint(1)   not null,
  last_run_at     datetime(6)  null,
  total_run_count int unsigned not null,
  date_changed    datetime(6)  not null,
  description     longtext     not null,
  crontab_id      int          null,
  interval_id     int          null,
  constraint name
    unique (name),
  constraint periodic_task_djcele_crontab_id_5b2cf80e_fk_periodic_
    foreign key (crontab_id) references bk_sops.periodic_task_crontabschedule (id),
  constraint periodic_task_djcele_interval_id_8732f06b_fk_periodic_
    foreign key (interval_id) references bk_sops.periodic_task_intervalschedule (id)
);

create table lesscode.perm
(
  id         int auto_increment
    primary key,
  permCode   varchar(255)                       not null,
  permDesc   varchar(255)                       not null,
  createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser varchar(255)                       null comment '创建人，默认当前用户',
  updateUser varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '权限表' charset = utf8mb4;

create table bk_sops.pipeline_external_plugins_filesystemsource
(
  id          int auto_increment
    primary key,
  name        varchar(128) not null,
  from_config tinyint(1)   not null,
  packages    longtext     not null,
  path        longtext     not null,
  constraint name
    unique (name)
);

create table bk_sops.pipeline_external_plugins_gitreposource
(
  id               int auto_increment
    primary key,
  name             varchar(128) not null,
  from_config      tinyint(1)   not null,
  packages         longtext     not null,
  repo_raw_address longtext     not null,
  branch           varchar(128) not null,
  constraint name
    unique (name)
);

create table bk_sops.pipeline_external_plugins_s3source
(
  id              int auto_increment
    primary key,
  name            varchar(128) not null,
  from_config     tinyint(1)   not null,
  packages        longtext     not null,
  service_address longtext     not null,
  bucket          longtext     not null,
  access_key      longtext     not null,
  secret_key      longtext     not null,
  source_dir      longtext     not null,
  constraint name
    unique (name)
);

create table bk_itsm.pipeline_signal
(
  id          int auto_increment
    primary key,
  module_path longtext    not null,
  name        varchar(64) not null,
  kwargs      longblob    not null
);

create table bk_itsm.pipeline_snapshot
(
  id          int auto_increment
    primary key,
  md5sum      varchar(32) not null,
  create_time datetime(6) not null,
  data        longblob    null,
  constraint md5sum
    unique (md5sum)
);

create table bk_itsm.pipeline_pipelinetemplate
(
  id             int auto_increment
    primary key,
  template_id    varchar(32)  not null,
  name           varchar(128) not null,
  create_time    datetime(6)  not null,
  creator        varchar(32)  not null,
  description    longtext     null,
  editor         varchar(32)  null,
  edit_time      datetime(6)  not null,
  is_deleted     tinyint(1)   not null,
  snapshot_id    int          not null,
  has_subprocess tinyint(1)   not null,
  constraint template_id
    unique (template_id),
  constraint pipeline_pipelinetem_snapshot_id_b951a2e9_fk_pipeline_
    foreign key (snapshot_id) references bk_itsm.pipeline_snapshot (id)
);

create table bk_itsm.periodic_task_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(64)  not null,
  cron            varchar(128) not null,
  total_run_count int unsigned not null,
  last_run_at     datetime(6)  null,
  creator         varchar(32)  not null,
  extra_info      longblob     null,
  celery_task_id  int          null,
  snapshot_id     int          not null,
  template_id     varchar(32)  null,
  priority        int          not null,
  queue           varchar(512) not null,
  constraint periodic_task_period_celery_task_id_83366d9f_fk_periodic_
    foreign key (celery_task_id) references bk_itsm.periodic_task_djceleryperiodictask (id),
  constraint periodic_task_period_snapshot_id_785df0fb_fk_pipeline_
    foreign key (snapshot_id) references bk_itsm.pipeline_snapshot (id),
  constraint periodic_task_period_template_id_b829e08b_fk_pipeline_
    foreign key (template_id) references bk_itsm.pipeline_pipelinetemplate (template_id)
);

create table bk_sops.pipeline_snapshot
(
  id          int auto_increment
    primary key,
  md5sum      varchar(32) not null,
  create_time datetime(6) not null,
  data        longblob    null
);

create table bk_sops.pipeline_pipelinetemplate
(
  id             int auto_increment
    primary key,
  template_id    varchar(32)  not null,
  name           varchar(128) not null,
  create_time    datetime(6)  not null,
  creator        varchar(32)  not null,
  description    longtext     null,
  editor         varchar(32)  null,
  edit_time      datetime(6)  not null,
  is_deleted     tinyint(1)   not null,
  snapshot_id    int          not null,
  has_subprocess tinyint(1)   not null,
  constraint template_id
    unique (template_id),
  constraint pipeline_pipelinetem_snapshot_id_b951a2e9_fk_pipeline_
    foreign key (snapshot_id) references bk_sops.pipeline_snapshot (id)
);

create table bk_sops.periodic_task_periodictask
(
  id              int auto_increment
    primary key,
  name            varchar(64)  not null,
  cron            varchar(128) not null,
  total_run_count int unsigned not null,
  last_run_at     datetime(6)  null,
  creator         varchar(32)  not null,
  extra_info      longblob     null,
  celery_task_id  int          null,
  snapshot_id     int          not null,
  template_id     varchar(32)  null,
  priority        int          not null,
  queue           varchar(512) not null,
  constraint periodic_task_period_celery_task_id_83366d9f_fk_django_ce
    foreign key (celery_task_id) references bk_sops.django_celery_beat_periodictask (id),
  constraint periodic_task_period_snapshot_id_785df0fb_fk_pipeline_
    foreign key (snapshot_id) references bk_sops.pipeline_snapshot (id),
  constraint periodic_task_period_template_id_b829e08b_fk_pipeline_
    foreign key (template_id) references bk_sops.pipeline_pipelinetemplate (template_id)
);

create table bk_sops.periodictask_periodictask
(
  id              int auto_increment
    primary key,
  template_id     varchar(255) not null,
  task_id         int          not null,
  project_id      int          null,
  template_source varchar(32)  not null,
  constraint periodictask_periodi_task_id_baf1b245_fk_periodic_
    foreign key (task_id) references bk_sops.periodic_task_periodictask (id),
  constraint periodictask_periodictask_project_id_d32a8f57_fk_core_project_id
    foreign key (project_id) references bk_sops.core_project (id)
);

create index pipeline_pipelinetemplate_create_time_98d402cd
  on bk_sops.pipeline_pipelinetemplate (create_time);

create index pipeline_pipelinetemplate_edit_time_0eff9dbd
  on bk_sops.pipeline_pipelinetemplate (edit_time);

create index pipeline_pipelinetemplate_name_2665c288
  on bk_sops.pipeline_pipelinetemplate (name);

create index pipeline_snapshot_md5sum_1cd6fde5
  on bk_sops.pipeline_snapshot (md5sum);

create table bk_itsm.pipeline_templatecurrentversion
(
  id              int auto_increment
    primary key,
  template_id     varchar(32) not null,
  current_version varchar(32) not null
);

create table bk_sops.pipeline_templatecurrentversion
(
  id              int auto_increment
    primary key,
  template_id     varchar(32) not null,
  current_version varchar(32) not null
);

create index pipeline_templatecurrentversion_template_id_11b7fc58
  on bk_itsm.pipeline_templatecurrentversion (template_id);

create index pipeline_templatecurrentversion_template_id_11b7fc58
  on bk_sops.pipeline_templatecurrentversion (template_id);

create table bk_itsm.pipeline_templaterelationship
(
  id                     int auto_increment
    primary key,
  ancestor_template_id   varchar(32) not null,
  descendant_template_id varchar(32) not null,
  subprocess_node_id     varchar(32) not null,
  version                varchar(32) not null
);

create table bk_sops.pipeline_templaterelationship
(
  id                     int auto_increment
    primary key,
  ancestor_template_id   varchar(32) not null,
  descendant_template_id varchar(32) not null,
  subprocess_node_id     varchar(32) not null,
  version                varchar(32) not null
);

create index pipeline_templaterelationship_ancestor_template_id_d87c2cc2
  on bk_itsm.pipeline_templaterelationship (ancestor_template_id);

create index pipeline_templaterelationship_ancestor_template_id_d87c2cc2
  on bk_sops.pipeline_templaterelationship (ancestor_template_id);

create table bk_itsm.pipeline_templatescheme
(
  id          int auto_increment
    primary key,
  unique_id   varchar(97) not null,
  name        varchar(64) not null,
  edit_time   datetime(6) not null,
  data        longblob    not null,
  template_id int         not null,
  constraint unique_id
    unique (unique_id),
  constraint pipeline_templatesch_template_id_106274eb_fk_pipeline_
    foreign key (template_id) references bk_itsm.pipeline_pipelinetemplate (id)
);

create table bk_sops.pipeline_templatescheme
(
  id          int auto_increment
    primary key,
  unique_id   varchar(97) not null,
  name        varchar(64) not null,
  edit_time   datetime(6) not null,
  data        longblob    not null,
  template_id int         not null,
  constraint unique_id
    unique (unique_id),
  constraint pipeline_templatesch_template_id_106274eb_fk_pipeline_
    foreign key (template_id) references bk_sops.pipeline_pipelinetemplate (id)
);

create table bk_itsm.pipeline_templateversion
(
  id          int auto_increment
    primary key,
  md5         varchar(32) not null,
  date        datetime(6) not null,
  snapshot_id int         not null,
  template_id int         not null,
  constraint pipeline_templatever_snapshot_id_9f506913_fk_pipeline_
    foreign key (snapshot_id) references bk_itsm.pipeline_snapshot (id),
  constraint pipeline_templatever_template_id_acbce41e_fk_pipeline_
    foreign key (template_id) references bk_itsm.pipeline_pipelinetemplate (id)
);

create table bk_sops.pipeline_templateversion
(
  id          int auto_increment
    primary key,
  md5         varchar(32) not null,
  date        datetime(6) not null,
  snapshot_id int         not null,
  template_id int         not null,
  constraint pipeline_templatever_snapshot_id_9f506913_fk_pipeline_
    foreign key (snapshot_id) references bk_sops.pipeline_snapshot (id),
  constraint pipeline_templatever_template_id_acbce41e_fk_pipeline_
    foreign key (template_id) references bk_sops.pipeline_pipelinetemplate (id)
);

create index pipeline_templateversion_md5_90920973
  on bk_itsm.pipeline_templateversion (md5);

create index pipeline_templateversion_md5_90920973
  on bk_sops.pipeline_templateversion (md5);

create table bk_itsm.pipeline_treeinfo
(
  id   int auto_increment
    primary key,
  data longblob null
);

create table bk_itsm.pipeline_pipelineinstance
(
  id                    int auto_increment
    primary key,
  instance_id           varchar(32)  not null,
  name                  varchar(128) not null,
  creator               varchar(32)  not null,
  create_time           datetime(6)  not null,
  executor              varchar(32)  not null,
  start_time            datetime(6)  null,
  finish_time           datetime(6)  null,
  description           longtext     not null,
  is_started            tinyint(1)   not null,
  is_finished           tinyint(1)   not null,
  is_deleted            tinyint(1)   not null,
  execution_snapshot_id int          null,
  snapshot_id           int          null,
  template_id           int          null,
  tree_info_id          int          null,
  is_revoked            tinyint(1)   not null,
  constraint instance_id
    unique (instance_id),
  constraint pipeline_pipelineins_execution_snapshot_i_2ac08ec7_fk_pipeline_
    foreign key (execution_snapshot_id) references bk_itsm.pipeline_snapshot (id),
  constraint pipeline_pipelineins_snapshot_id_f8c3289b_fk_pipeline_
    foreign key (snapshot_id) references bk_itsm.pipeline_snapshot (id),
  constraint pipeline_pipelineins_template_id_cc4fedf1_fk_pipeline_
    foreign key (template_id) references bk_itsm.pipeline_pipelinetemplate (id),
  constraint pipeline_pipelineins_tree_info_id_9fadc892_fk_pipeline_
    foreign key (tree_info_id) references bk_itsm.pipeline_treeinfo (id)
);

create table bk_itsm.periodic_task_periodictaskhistory
(
  id                   int auto_increment
    primary key,
  ex_data              longtext     not null,
  start_at             datetime(6)  not null,
  start_success        tinyint(1)   not null,
  periodic_task_id     int          null,
  pipeline_instance_id varchar(32)  null,
  priority             int          not null,
  queue                varchar(512) not null,
  constraint periodic_task_period_periodic_task_id_3f5c51d8_fk_periodic_
    foreign key (periodic_task_id) references bk_itsm.periodic_task_periodictask (id),
  constraint periodic_task_period_pipeline_instance_id_e229764c_fk_pipeline_
    foreign key (pipeline_instance_id) references bk_itsm.pipeline_pipelineinstance (instance_id)
);

create table bk_sops.pipeline_treeinfo
(
  id   int auto_increment
    primary key,
  data longblob null
);

create table bk_sops.pipeline_pipelineinstance
(
  id                    int auto_increment
    primary key,
  instance_id           varchar(32)  not null,
  name                  varchar(128) not null,
  creator               varchar(32)  not null,
  create_time           datetime(6)  not null,
  executor              varchar(32)  not null,
  start_time            datetime(6)  null,
  finish_time           datetime(6)  null,
  description           longtext     not null,
  is_started            tinyint(1)   not null,
  is_finished           tinyint(1)   not null,
  is_deleted            tinyint(1)   not null,
  execution_snapshot_id int          null,
  snapshot_id           int          null,
  template_id           int          null,
  tree_info_id          int          null,
  is_revoked            tinyint(1)   not null,
  constraint instance_id
    unique (instance_id),
  constraint pipeline_pipelineins_execution_snapshot_i_2ac08ec7_fk_pipeline_
    foreign key (execution_snapshot_id) references bk_sops.pipeline_snapshot (id),
  constraint pipeline_pipelineins_snapshot_id_f8c3289b_fk_pipeline_
    foreign key (snapshot_id) references bk_sops.pipeline_snapshot (id),
  constraint pipeline_pipelineins_template_id_cc4fedf1_fk_pipeline_
    foreign key (template_id) references bk_sops.pipeline_pipelinetemplate (id),
  constraint pipeline_pipelineins_tree_info_id_9fadc892_fk_pipeline_
    foreign key (tree_info_id) references bk_sops.pipeline_treeinfo (id)
);

create table bk_sops.periodic_task_periodictaskhistory
(
  id                   int auto_increment
    primary key,
  ex_data              longtext     not null,
  start_at             datetime(6)  not null,
  start_success        tinyint(1)   not null,
  periodic_task_id     int          null,
  pipeline_instance_id varchar(32)  null,
  priority             int          not null,
  queue                varchar(512) not null,
  constraint periodic_task_period_periodic_task_id_3f5c51d8_fk_periodic_
    foreign key (periodic_task_id) references bk_sops.periodic_task_periodictask (id),
  constraint periodic_task_period_pipeline_instance_id_e229764c_fk_pipeline_
    foreign key (pipeline_instance_id) references bk_sops.pipeline_pipelineinstance (instance_id)
);

create table bk_sops.pipeline_web_core_nodeininstance
(
  id          int auto_increment
    primary key,
  node_id     varchar(32)  not null,
  node_type   varchar(100) not null,
  create_time datetime(6)  not null,
  edit_time   datetime(6)  not null,
  instance_id varchar(32)  not null,
  constraint pipeline_web_core_nodein_node_id_instance_id_7d27cdf6_uniq
    unique (node_id, instance_id)
);

create index pipeline_web_core_nodeininstance_instance_id_aa48e655
  on bk_sops.pipeline_web_core_nodeininstance (instance_id);

create table bk_sops.pipeline_web_core_nodeintemplate
(
  id          int auto_increment
    primary key,
  node_id     varchar(32)  not null,
  node_type   varchar(100) not null,
  create_time datetime(6)  not null,
  edit_time   datetime(6)  not null,
  template_id varchar(32)  not null,
  version     varchar(32)  not null,
  constraint pipeline_web_core_nodein_node_id_template_id_vers_ab8e735b_uniq
    unique (node_id, template_id, version)
);

create index pipeline_web_core_nodeint_template_id_version_1ef0150a_idx
  on bk_sops.pipeline_web_core_nodeintemplate (template_id, version);

create index pipeline_web_core_nodeintemplate_template_id_8642caee
  on bk_sops.pipeline_web_core_nodeintemplate (template_id);

create table bk_sops.pipeline_web_label_labelgroup
(
  id   int auto_increment
    primary key,
  code varchar(255) not null,
  name varchar(255) not null
);

create table bk_sops.pipeline_web_label_label
(
  id       int auto_increment
    primary key,
  code     varchar(255) not null,
  name     varchar(255) not null,
  group_id int          not null,
  constraint pipeline_web_label_l_group_id_caef14a7_fk_pipeline_
    foreign key (group_id) references bk_sops.pipeline_web_label_labelgroup (id)
);

create index pipeline_web_label_label_code_861b4e10
  on bk_sops.pipeline_web_label_label (code);

create index pipeline_web_label_labelgroup_code_8576228e
  on bk_sops.pipeline_web_label_labelgroup (code);

create table bk_sops.pipeline_web_label_nodeininstanceattrlabel
(
  id      int auto_increment
    primary key,
  node_id int not null,
  constraint pipeline_web_label_n_node_id_519453bb_fk_pipeline_
    foreign key (node_id) references bk_sops.pipeline_web_core_nodeininstance (id)
);

create table bk_sops.pipeline_web_label_nodeininstanceattrlabel_labels
(
  id                         int auto_increment
    primary key,
  nodeininstanceattrlabel_id int not null,
  label_id                   int not null,
  constraint pipeline_web_label_nodei_nodeininstanceattrlabel__49eb7554_uniq
    unique (nodeininstanceattrlabel_id, label_id),
  constraint pipeline_web_label_n_label_id_dbb276f0_fk_pipeline_
    foreign key (label_id) references bk_sops.pipeline_web_label_label (id),
  constraint pipeline_web_label_n_nodeininstanceattrla_2f6bde62_fk_pipeline_
    foreign key (nodeininstanceattrlabel_id) references bk_sops.pipeline_web_label_nodeininstanceattrlabel (id)
);

create table bk_sops.pipeline_web_label_nodeintemplateattrlabel
(
  id      int auto_increment
    primary key,
  node_id int not null,
  constraint pipeline_web_label_n_node_id_a2cd977a_fk_pipeline_
    foreign key (node_id) references bk_sops.pipeline_web_core_nodeintemplate (id)
);

create table bk_sops.pipeline_web_label_nodeintemplateattrlabel_labels
(
  id                         int auto_increment
    primary key,
  nodeintemplateattrlabel_id int not null,
  label_id                   int not null,
  constraint pipeline_web_label_nodei_nodeintemplateattrlabel__38e66bfe_uniq
    unique (nodeintemplateattrlabel_id, label_id),
  constraint pipeline_web_label_n_label_id_355c40d9_fk_pipeline_
    foreign key (label_id) references bk_sops.pipeline_web_label_label (id),
  constraint pipeline_web_label_n_nodeintemplateattrla_4b82ed53_fk_pipeline_
    foreign key (nodeintemplateattrlabel_id) references bk_sops.pipeline_web_label_nodeintemplateattrlabel (id)
);

create table bk_sops.plugin_management_deprecatedplugin
(
  id      int auto_increment
    primary key,
  code    varchar(255) not null,
  version varchar(64)  not null,
  type    int unsigned not null,
  phase   int unsigned not null
);

create table policy
(
  pk            int unsigned auto_increment
    primary key,
  subject_pk    int unsigned                           not null,
  action_pk     int unsigned                           not null,
  expression_pk int                                    not null,
  expired_at    int unsigned                           not null,
  template_id   int unsigned default 0                 not null,
  created_at    timestamp    default CURRENT_TIMESTAMP not null,
  updated_at    timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_action_expire
  on policy (action_pk, expired_at);

create index idx_subject_action_expire
  on policy (subject_pk, action_pk, expired_at);

create index idx_subject_template
  on policy (subject_pk, template_id);

create index idx_uk_subject_expression
  on policy (subject_pk, expression_pk);

create index idx_updated_at
  on policy (updated_at);

create table bk_iam.policy_policy
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  subject_type varchar(32) not null,
  subject_id   varchar(64) not null,
  system_id    varchar(32) not null,
  action_type  varchar(32) not null,
  action_id    varchar(64) not null,
  resources    longtext    not null,
  environment  longtext    not null,
  policy_id    bigint      not null
);

create index policy_policy_subject_id_subject_type_system_id_f305f61c_idx
  on bk_iam.policy_policy (subject_id, subject_type, system_id);

create table bk_itsm.postman_remotesystem
(
  id                  int auto_increment
    primary key,
  creator             varchar(64)    not null,
  create_at           datetime(6)    not null,
  update_at           datetime(6)    not null,
  updated_by          varchar(64)    not null,
  is_deleted          tinyint(1)     not null,
  system_id           int            not null,
  name                varchar(64)    not null,
  code                varchar(64)    not null,
  `desc`              varchar(255)   null,
  contact_information longtext       not null,
  is_builtin          tinyint(1)     not null,
  is_activated        tinyint(1)     not null,
  headers             longtext       null,
  cookies             longtext       null,
  variables           longtext       null,
  domain              varchar(10000) null,
  owners              varchar(64)    null
);

create table bk_itsm.postman_remoteapi
(
  id               int auto_increment
    primary key,
  creator          varchar(64)    not null,
  create_at        datetime(6)    not null,
  update_at        datetime(6)    not null,
  updated_by       varchar(64)    not null,
  is_deleted       tinyint(1)     not null,
  name             varchar(64)    not null,
  path             varchar(1000)  not null,
  version          varchar(32)    null,
  func_name        varchar(64)    not null,
  method           varchar(32)    not null,
  `desc`           varchar(255)   not null,
  req_headers      longtext       null,
  req_params       longtext       null,
  req_body         longtext       null,
  rsp_data         longtext       null,
  is_activated     tinyint(1)     not null,
  is_builtin       tinyint(1)     not null,
  `read_only`      tinyint(1)     not null,
  remote_system_id int            not null,
  map_code         longtext       not null,
  before_req       longtext       not null,
  owners           varchar(10000) not null,
  constraint postman_remoteapi_remote_system_id_23d1bd41_fk_postman_r
    foreign key (remote_system_id) references bk_itsm.postman_remotesystem (id)
);

create table bk_itsm.postman_remoteapiinstance
(
  id                 int auto_increment
    primary key,
  creator            varchar(64)    not null,
  create_at          datetime(6)    not null,
  update_at          datetime(6)    not null,
  updated_by         varchar(64)    not null,
  is_deleted         tinyint(1)     not null,
  name               varchar(32)    not null,
  `desc`             varchar(1000)  null,
  req_params         longtext       not null,
  req_body           longtext       not null,
  rsp_data           varchar(10000) not null,
  succeed_conditions longtext       not null,
  end_conditions     longtext       null,
  need_poll          tinyint(1)     not null,
  remote_api_info    longtext       not null,
  remote_api_id      int            not null,
  map_code           longtext       not null,
  before_req         longtext       not null,
  constraint postman_remoteapiins_remote_api_id_f1ed6725_fk_postman_r
    foreign key (remote_api_id) references bk_itsm.postman_remoteapi (id)
);

create table bksuite_common.production_info
(
  `index` int         not null,
  code    varchar(32) not null comment '模块代码'
    primary key,
  name    varchar(32) not null comment '模块名称',
  version varchar(32) not null comment '版本号',
  constraint `index`
    unique (`index`),
  constraint name
    unique (name)
)
  engine = MyISAM;

create table bk_user.profiles_dynamicfieldinfo
(
  id                   int auto_increment
    primary key,
  create_time          datetime(6) not null,
  update_time          datetime(6) not null,
  name                 varchar(32) not null,
  display_name         varchar(64) not null,
  type                 varchar(32) not null,
  `require`            tinyint(1)  not null,
  `unique`             tinyint(1)  not null,
  editable             tinyint(1)  not null,
  builtin              tinyint(1)  not null,
  `order`              int         not null,
  `default`            longtext    not null,
  enabled              tinyint(1)  not null,
  options              longtext    not null,
  visible              tinyint(1)  not null,
  configurable         tinyint(1)  not null,
  map_method           varchar(64) not null,
  display_name_en      varchar(64) null,
  display_name_zh_hans varchar(64) null,
  constraint name
    unique (name),
  constraint profiles_dynamicfieldinfo_display_name_en_046a1889_uniq
    unique (display_name_en),
  constraint profiles_dynamicfieldinfo_display_name_fb5cc255_uniq
    unique (display_name),
  constraint profiles_dynamicfieldinfo_display_name_zh_hans_548f0609_uniq
    unique (display_name_zh_hans)
);

create table bk_user.profiles_profile
(
  id                   int auto_increment
    primary key,
  create_time          datetime(6)  not null,
  update_time          datetime(6)  not null,
  username             varchar(255) not null,
  qq                   varchar(64)  not null,
  email                varchar(255) null,
  telephone            varchar(255) null,
  wx_userid            varchar(255) null,
  wx_openid            varchar(255) null,
  domain               varchar(64)  null,
  category_id          int          null,
  display_name         varchar(255) null,
  logo                 longtext     null,
  password             varchar(255) null,
  status               varchar(64)  not null,
  staff_status         varchar(64)  not null,
  password_valid_days  int          not null,
  type                 varchar(255) null,
  role                 int          not null,
  position             int          null,
  time_zone            varchar(32)  not null,
  language             varchar(32)  not null,
  country_code         varchar(32)  null,
  iso_code             varchar(32)  null,
  extras               longtext     not null,
  enabled              tinyint(1)   not null,
  code                 varchar(64)  null,
  password_update_time datetime(6)  null,
  constraint code
    unique (code),
  constraint profiles_profile_username_category_id_cd037bac_uniq
    unique (username, category_id)
);

create table bk_user.audit_login
(
  id          int auto_increment
    primary key,
  create_time datetime(6) not null,
  update_time datetime(6) not null,
  operator    varchar(32) null,
  extra_value longtext    null,
  is_success  tinyint(1)  not null,
  reason      varchar(32) null,
  profile_id  int         not null,
  constraint audit_login_profile_id_d2798646_fk_profiles_profile_id
    foreign key (profile_id) references bk_user.profiles_profile (id)
);

create table bk_user.audit_resetpassword
(
  id          int auto_increment
    primary key,
  create_time datetime(6) not null,
  update_time datetime(6) not null,
  operator    varchar(32) null,
  extra_value longtext    null,
  token       char(32)    null,
  is_success  tinyint(1)  not null,
  profile_id  int         not null,
  password    longtext    not null,
  constraint audit_resetpassword_profile_id_42c135e1_fk_profiles_profile_id
    foreign key (profile_id) references bk_user.profiles_profile (id)
);

create index audit_resetpassword_token_8d3a555b
  on bk_user.audit_resetpassword (token);

create table bk_user.departments_department_profiles
(
  id            int auto_increment
    primary key,
  department_id int not null,
  profile_id    int not null,
  constraint departments_department_p_department_id_profile_id_5725269b_uniq
    unique (department_id, profile_id),
  constraint departments_departme_department_id_d7519742_fk_departmen
    foreign key (department_id) references bk_user.departments_department (id),
  constraint departments_departme_profile_id_4e1d8a38_fk_profiles_
    foreign key (profile_id) references bk_user.profiles_profile (id)
);

create index profiles_profile_category_id_d2c62791
  on bk_user.profiles_profile (category_id);

create index profiles_profile_domain_a481fb0d
  on bk_user.profiles_profile (domain);

create index profiles_profile_username_5e4bd024
  on bk_user.profiles_profile (username);

create table bk_user.profiles_profile_leader
(
  id              int auto_increment
    primary key,
  from_profile_id int not null,
  to_profile_id   int not null,
  constraint profiles_profile_leader_from_profile_id_to_profi_1d0d5ef9_uniq
    unique (from_profile_id, to_profile_id),
  constraint profiles_profile_lea_from_profile_id_5ed0e968_fk_profiles_
    foreign key (from_profile_id) references bk_user.profiles_profile (id),
  constraint profiles_profile_lea_to_profile_id_ff33a4dd_fk_profiles_
    foreign key (to_profile_id) references bk_user.profiles_profile (id)
);

create table bk_user.profiles_profiletokenholder
(
  id          int auto_increment
    primary key,
  create_time datetime(6)  not null,
  update_time datetime(6)  not null,
  token       varchar(128) not null,
  enabled     tinyint(1)   not null,
  expire_time datetime(6)  not null,
  profile_id  int          not null,
  constraint profiles_profiletoke_profile_id_57289c20_fk_profiles_
    foreign key (profile_id) references bk_user.profiles_profile (id)
);

create table lesscode.project
(
  id          int auto_increment comment '自增主键'
    primary key,
  projectCode varchar(255)                       not null comment '项目 ID 即英文名称',
  projectName varchar(255)                       not null comment '项目名称',
  projectDesc varchar(255)                       null comment '项目简介',
  status      int      default 0                 not null comment '项目状态：0 为正常，1 为私有',
  appCode     varchar(100)                       null comment '绑定蓝鲸应用名称',
  moduleCode  varchar(100)                       null comment '绑定应用模块名称',
  createTime  datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime  datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser  varchar(255)                       null comment '创建人，默认当前用户',
  updateUser  varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag  int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '项目表' charset = utf8mb4;

create table lesscode.r_comp_favourite
(
  id         int auto_increment
    primary key,
  compId     int           not null comment 'comp 表主键',
  projectId  int           not null comment 'project 表主键',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  createTime datetime      null comment '创建时间',
  updateTime datetime      null comment '更新时间',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '组件收藏关联表' charset = utf8mb4;

create index comp_id
  on lesscode.r_comp_favourite (compId);

create index project_id
  on lesscode.r_comp_favourite (projectId);

create table lesscode.r_comp_share
(
  id              int auto_increment
    primary key,
  compId          int           not null comment 'comp 表主键',
  sourceProjectId int           not null comment '源项目id，project 表主键',
  targetProjectId int           not null comment '目标项目id，project 表主键',
  createUser      varchar(255)  null comment '创建人',
  updateUser      varchar(255)  null comment '更新人',
  createTime      datetime      null comment '创建时间',
  updateTime      datetime      null comment '更新时间',
  deleteFlag      int default 0 null comment '是否删除，1代表已删除'
)
  comment '组件共享关联表' charset = utf8mb4;

create index source_project_id
  on lesscode.r_comp_share (sourceProjectId);

create index target_project_id
  on lesscode.r_comp_share (targetProjectId);

create table lesscode.r_favourite
(
  id         int auto_increment
    primary key,
  userId     int           not null comment 'user 表主键',
  projectId  int           not null comment 'project 表主键',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '项目收藏表' charset = utf8mb4;

create index project_id
  on lesscode.r_favourite (projectId);

create index user_id
  on lesscode.r_favourite (userId);

create table lesscode.r_func_func
(
  id             int auto_increment
    primary key,
  parentFuncCode varchar(255)  not null comment 'func 表 Code',
  funcCode       varchar(255)  not null comment 'func 表 Code',
  projectId      int           not null comment 'project 表主键',
  createUser     varchar(255)  null comment '创建人',
  updateUser     varchar(255)  null comment '更新人',
  createTime     datetime      null comment '创建时间',
  updateTime     datetime      null comment '更新时间',
  deleteFlag     int default 0 null comment '是否删除，1代表已删除'
)
  comment '函数与函数关联表' charset = utf8mb4;

create index func_code
  on lesscode.r_func_func (funcCode);

create index parentFuncCode
  on lesscode.r_func_func (parentFuncCode);

create index project_id
  on lesscode.r_func_func (projectId);

create table lesscode.r_func_variable
(
  id         int auto_increment
    primary key,
  projectId  int           not null comment '项目id',
  variableId int           not null comment '变量id',
  funcCode   varchar(255)  null comment '函数funcCode',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
);

create index func_code
  on lesscode.r_func_variable (funcCode);

create index project_id
  on lesscode.r_func_variable (projectId);

create index variable_id
  on lesscode.r_func_variable (variableId);

create table lesscode.r_page_comp
(
  id         int auto_increment
    primary key,
  pageId     int           not null comment 'page 表主键',
  compId     int           not null comment 'comp 表主键',
  versionId  int           not null comment 'version 表主键',
  projectId  int           not null comment 'project 表主键',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  createTime datetime      null comment '创建时间',
  updateTime datetime      null comment '更新时间',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '页面组件关联表' charset = utf8mb4;

create index comp_id
  on lesscode.r_page_comp (compId);

create index page_id
  on lesscode.r_page_comp (pageId);

create index project_id
  on lesscode.r_page_comp (projectId);

create index version_id
  on lesscode.r_page_comp (versionId);

create table lesscode.r_page_func
(
  id         int auto_increment
    primary key,
  pageId     int           not null comment 'page 表主键',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  funcId     int           not null comment 'function 表主键',
  deleteFlag int default 0 null comment '是否删除，1代表已删除',
  projectId  int           not null comment 'project 表主键'
)
  charset = utf8mb4;

create index func_id
  on lesscode.r_page_func (funcId);

create index page_id
  on lesscode.r_page_func (pageId);

create index project_id
  on lesscode.r_page_func (projectId);

create table lesscode.r_page_route
(
  id         int auto_increment
    primary key,
  routeId    int           not null comment 'route 表主键',
  pageId     int           not null comment 'page 表主键',
  redirect   int           null comment '跳转 route',
  layoutId   int           not null comment 'layout_inst 表主键',
  projectId  int           not null comment 'project 表主键',
  createTime datetime      null comment '创建时间',
  updateTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '页面路由关联表' charset = utf8mb4;

create index layout_id
  on lesscode.r_page_route (layoutId);

create index page_id
  on lesscode.r_page_route (pageId);

create index project_id
  on lesscode.r_page_route (projectId);

create index route_id
  on lesscode.r_page_route (routeId);

create table lesscode.r_page_variable
(
  id         int auto_increment
    primary key,
  projectId  int           not null comment '项目id',
  variableId int           not null comment '变量id',
  pageCode   varchar(255)  null comment '页面pageCode',
  useInfo    mediumtext    null comment '关联情况',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
);

create index page_code
  on lesscode.r_page_variable (pageCode);

create index project_id
  on lesscode.r_page_variable (projectId);

create index variable_d
  on lesscode.r_page_variable (variableId);

create table lesscode.r_project_comp
(
  id           int auto_increment
    primary key,
  projectId    int                       not null comment 'project 表主键',
  updateTime   datetime                  null comment '创建时间',
  createTime   datetime                  null comment '更新时间',
  createUser   varchar(255)              null comment '创建人',
  updateUser   varchar(255)              null comment '更新人',
  compId       int                       not null comment 'component 表主键',
  useVersionId int                       not null comment '当前使用的自定义组件的版本 id',
  pageIds      varchar(255) default '[]' not null comment 'page 表主键的集合',
  deleteFlag   int          default 0    null comment '是否删除，1代表已删除'
)
  comment '项目使用的自定义组件关联表' charset = utf8mb4;

create index category_id
  on lesscode.r_project_comp (compId);

create index page_id
  on lesscode.r_project_comp (pageIds);

create index project_id
  on lesscode.r_project_comp (projectId);

create index useVersionId
  on lesscode.r_project_comp (useVersionId);

create table lesscode.r_project_func_group
(
  id          int auto_increment
    primary key,
  projectId   int           not null comment 'project 表主键',
  updateTime  datetime      null comment '创建时间',
  createTime  datetime      null comment '更新时间',
  createUser  varchar(255)  null comment '创建人',
  updateUser  varchar(255)  null comment '更新人',
  funcGroupId int           not null comment 'function 表主键',
  deleteFlag  int default 0 null comment '是否删除，1代表已删除'
)
  comment '项目/函数关联表' charset = utf8mb4;

create index project_id
  on lesscode.r_project_func_group (projectId);

create index r_project_func_group_ibfk_2
  on lesscode.r_project_func_group (funcGroupId);

create table lesscode.r_project_page
(
  id         int auto_increment
    primary key,
  projectId  int           not null comment 'project 表主键',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  pageId     int           not null comment 'page 表主键',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '项目/页面关联表' charset = utf8mb4;

create index page_id
  on lesscode.r_project_page (pageId);

create index project_id
  on lesscode.r_project_page (projectId);

create table lesscode.r_role_perm
(
  id         int auto_increment
    primary key,
  roleId     int           not null comment 'role 表主键',
  permId     int           not null comment 'perm 表主键',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '角色/权限关联表' charset = utf8mb4;

create index operate_id
  on lesscode.r_role_perm (permId);

create index perm_id
  on lesscode.r_role_perm (roleId);

create table lesscode.r_user_project_role
(
  id         int auto_increment
    primary key,
  userId     int           not null comment 'user 表主键',
  projectId  int           not null comment 'project 表主键',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  roleId     int           not null comment 'role 表主键',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
)
  comment '用户/项目/角色关联表' charset = utf8mb4;

create index project_id
  on lesscode.r_user_project_role (projectId);

create index role_id
  on lesscode.r_user_project_role (roleId);

create index user_id
  on lesscode.r_user_project_role (userId);

create table lesscode.r_variable_func
(
  id         int auto_increment
    primary key,
  projectId  int           not null comment '项目id',
  variableId int           not null comment '变量id',
  funcCode   varchar(255)  null comment '函数funcCode',
  updateTime datetime      null comment '创建时间',
  createTime datetime      null comment '更新时间',
  createUser varchar(255)  null comment '创建人',
  updateUser varchar(255)  null comment '更新人',
  deleteFlag int default 0 null comment '是否删除，1代表已删除'
);

create index func_code
  on lesscode.r_variable_func (funcCode);

create index project_id
  on lesscode.r_variable_func (projectId);

create index variable_id
  on lesscode.r_variable_func (variableId);

create table lesscode.r_variable_variable
(
  id               int auto_increment
    primary key,
  projectId        int           not null comment '项目id',
  variableId       int           not null comment '变量id',
  parentVariableId int           not null comment '父级变量Id',
  updateTime       datetime      null comment '创建时间',
  createTime       datetime      null comment '更新时间',
  createUser       varchar(255)  null comment '创建人',
  updateUser       varchar(255)  null comment '更新人',
  deleteFlag       int default 0 null comment '是否删除，1代表已删除'
);

create index project_id
  on lesscode.r_variable_variable (projectId);

create index variable_d
  on lesscode.r_variable_variable (parentVariableId);

create index variable_id
  on lesscode.r_variable_variable (variableId);

create table lesscode.release_version
(
  id           int auto_increment
    primary key,
  releaseType  varchar(20)   null comment '发布类型',
  env          varchar(10)   null comment '部署环境',
  version      varchar(40)   null comment '版本号',
  projectId    int           not null comment '所属项目',
  codeUrl      varchar(255)  null comment '项目源码存放路径',
  status       varchar(20)   null comment '当前状态',
  accessUrl    varchar(60)   null comment '访问url',
  errorMsg     text          null comment '程序报错信息',
  currentStep  varchar(20)   null comment '当前运行阶段',
  deployId     varchar(50)   null comment 'v3部署关联id',
  bindInfo     varchar(100)  null comment '绑定应用和模块名称',
  fromPaasInfo text          null comment '同步paas平台部署信息',
  appCode      varchar(40)   not null comment '本次部署对应应用',
  moduleCode   varchar(40)   not null comment '本次部署对应模块',
  createTime   datetime      null comment '创建时间',
  updateTime   datetime      null comment '更新时间',
  createUser   varchar(255)  null comment '创建人',
  updateUser   varchar(255)  null comment '更新人',
  deleteFlag   int default 0 null comment '是否删除，1代表已删除',
  isOffline    int default 0 null comment '1代表下架操作，0表示部署操作'
)
  comment '版本部署表' charset = utf8mb4;

create index project_id
  on lesscode.release_version (projectId);

create table resource_type
(
  pk         int unsigned auto_increment
    primary key,
  system_id  varchar(32)                         not null,
  id         varchar(32)                         not null,
  created_at timestamp default CURRENT_TIMESTAMP not null,
  updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_system_rt_id
    unique (system_id, id)
);

create table lesscode.role
(
  id         int auto_increment
    primary key,
  roleCode   varchar(255)                       not null comment '角色 ID',
  roleName   varchar(255)                       not null comment '角色名称',
  createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser varchar(255)                       null comment '创建人，默认当前用户',
  updateUser varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '角色表' charset = utf8mb4;

create index role_id
  on lesscode.role (roleCode);

create table bk_itsm.role_bkuserrole
(
  id        int auto_increment
    primary key,
  username  varchar(64) not null,
  roles     longtext    null,
  uid       varchar(64) null,
  update_at datetime(6) not null
);

create table bk_iam.role_permission
(
  id      int auto_increment
    primary key,
  name    varchar(64) not null,
  name_en varchar(64) not null,
  code    varchar(64) not null
);

create table bk_iam.role_role
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  updater      varchar(64)  not null,
  created_time datetime(6)  not null,
  updated_time datetime(6)  not null,
  name         varchar(128) not null,
  name_en      varchar(128) not null,
  description  varchar(255) not null,
  type         varchar(32)  not null,
  code         varchar(64)  not null
);

create table bk_iam.role_rolecommonaction
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  updater      varchar(64)  not null,
  created_time datetime(6)  not null,
  updated_time datetime(6)  not null,
  role_id      int          not null,
  system_id    varchar(32)  not null,
  name         varchar(128) not null,
  name_en      varchar(128) not null,
  action_ids   longtext     not null
);

create index role_rolecommonaction_role_id_system_id_a8476c06_idx
  on bk_iam.role_rolecommonaction (role_id, system_id);

create table bk_iam.role_roleperm
(
  id      int auto_increment
    primary key,
  role_id int not null,
  perm_id int not null
);

create index role_roleperm_role_id_e923a007_idx
  on bk_iam.role_roleperm (role_id);

create table bk_iam.role_rolerelatedobject
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  role_id      int         not null,
  object_type  varchar(32) not null,
  object_id    int         not null,
  constraint role_rolerelatedobject_role_id_object_type_obje_49076201_uniq
    unique (role_id, object_type, object_id)
);

create table bk_iam.role_rolescope
(
  id      int auto_increment
    primary key,
  role_id int         not null,
  type    varchar(32) not null,
  content longtext    not null
);

create index role_rolescope_role_id_b1c76dc3_idx
  on bk_iam.role_rolescope (role_id);

create table bk_iam.role_rolesource
(
  id               int auto_increment
    primary key,
  creator          varchar(64) not null,
  updater          varchar(64) not null,
  created_time     datetime(6) not null,
  updated_time     datetime(6) not null,
  role_id          int         not null,
  source_type      varchar(32) not null,
  source_system_id varchar(32) not null,
  constraint role_id
    unique (role_id)
);

create table bk_itsm.role_roletype
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  create_at    datetime(6)  not null,
  update_at    datetime(6)  not null,
  updated_by   varchar(64)  not null,
  end_at       datetime(6)  null,
  is_deleted   tinyint(1)   not null,
  name         varchar(64)  not null,
  type         varchar(64)  not null,
  is_processor tinyint(1)   not null,
  is_display   tinyint(1)   not null,
  `desc`       varchar(128) null
);

create table bk_iam.role_roleuser
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  role_id      int         not null,
  username     varchar(64) not null
);

create index role_roleuser_role_id_c5fe0a50_idx
  on bk_iam.role_roleuser (role_id);

create table bk_iam.role_roleusersystempermission
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  role_id      int         not null,
  content      longtext    not null
);

create table bk_iam.role_scopesubject
(
  id            int auto_increment
    primary key,
  role_scope_id int         not null,
  role_id       int         not null,
  subject_type  varchar(32) not null,
  subject_id    varchar(64) not null
);

create table bk_itsm.role_userrole
(
  id         int auto_increment
    primary key,
  creator    varchar(64)    not null,
  create_at  datetime(6)    not null,
  update_at  datetime(6)    not null,
  updated_by varchar(64)    not null,
  end_at     datetime(6)    null,
  is_deleted tinyint(1)     not null,
  role_type  varchar(64)    not null,
  name       varchar(64)    not null,
  members    varchar(10000) not null,
  access     varchar(128)   not null,
  role_key   varchar(128)   not null,
  `desc`     varchar(128)   null,
  owners     varchar(10000) not null,
  is_builtin tinyint(1)     not null
);

create table lesscode.route
(
  id         int auto_increment
    primary key,
  parentId   int default -1 not null comment '父 route 节点的 id，无父节点即为 -1',
  path       varchar(255)   not null comment '路由路径',
  `order`    int default 1  null comment '排序',
  createTime datetime       null comment '创建时间',
  updateTime datetime       null comment '更新时间',
  createUser varchar(255)   null comment '创建人',
  updateUser varchar(255)   null comment '更新人',
  deleteFlag int default 0  null comment '是否删除，1代表已删除'
)
  comment '路由表' charset = utf8mb4;

create index parent_id
  on lesscode.route (parentId);

create table saas_action
(
  pk              int unsigned auto_increment
    primary key,
  system_id       varchar(32)                             not null,
  id              varchar(32)                             not null,
  name            varchar(255)                            not null,
  name_en         varchar(255)                            not null,
  description     varchar(1024) default ''                not null,
  description_en  varchar(1024) default ''                not null,
  related_actions text                                    not null,
  type            varchar(32)   default ''                not null,
  version         int unsigned  default 0                 null,
  created_at      timestamp     default CURRENT_TIMESTAMP not null,
  updated_at      timestamp     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_system_action_id
    unique (system_id, id)
);

create table saas_action_resource_type
(
  pk                          int unsigned auto_increment
    primary key,
  action_system_id            varchar(32)                            not null,
  action_id                   varchar(32)                            not null,
  resource_type_system_id     varchar(32)                            not null,
  resource_type_id            varchar(32)                            not null,
  name_alias                  varchar(255) default ''                not null,
  name_alias_en               varchar(255) default ''                not null,
  selection_mode              varchar(32)  default ''                not null,
  related_instance_selections text                                   not null,
  created_at                  timestamp    default CURRENT_TIMESTAMP not null,
  updated_at                  timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create index idx_action
  on saas_action_resource_type (action_system_id, action_id);

create table saas_instance_selection
(
  pk                  int unsigned auto_increment
    primary key,
  system_id           varchar(32)                          not null,
  id                  varchar(32)                          not null,
  name                varchar(255)                         not null,
  name_en             varchar(255)                         not null,
  is_dynamic          tinyint(1) default 0                 not null,
  resource_type_chain text                                 not null,
  created_at          timestamp  default CURRENT_TIMESTAMP not null,
  updated_at          timestamp  default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_system_id
    unique (system_id, id)
);

create table saas_resource_type
(
  pk              int unsigned auto_increment
    primary key,
  system_id       varchar(32)                             not null,
  id              varchar(32)                             not null,
  name            varchar(255)                            not null,
  name_en         varchar(255)                            not null,
  description     varchar(1024) default ''                not null,
  description_en  varchar(1024) default ''                not null,
  parents         text                                    not null,
  provider_config text                                    not null,
  version         int unsigned  default 0                 null,
  created_at      timestamp     default CURRENT_TIMESTAMP not null,
  updated_at      timestamp     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_system_rt_id
    unique (system_id, id)
);

create table saas_system_config
(
  pk         int unsigned auto_increment
    primary key,
  system_id  varchar(32)                           not null,
  name       varchar(32)                           not null,
  type       varchar(32) default 'json'            not null,
  value      text                                  not null,
  created_at timestamp   default CURRENT_TIMESTAMP not null,
  updated_at timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_system_name
    unique (system_id, name)
);

create table saas_system_info
(
  id              varchar(32)                             not null
    primary key,
  name            varchar(255)                            not null,
  name_en         varchar(255)                            not null,
  description     varchar(1024) default ''                not null,
  description_en  varchar(1024) default ''                not null,
  clients         varchar(1024)                           not null,
  provider_config text                                    not null,
  created_at      timestamp     default CURRENT_TIMESTAMP not null,
  updated_at      timestamp     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create table bk_itsm.service_favorite
(
  id        int auto_increment
    primary key,
  name      varchar(255) not null,
  service   varchar(64)  not null,
  data      longtext     not null,
  create_at datetime(6)  not null,
  update_at datetime(6)  not null,
  user_id   int          not null,
  constraint service_favorite_user_id_17462940_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_itsm.service_favoriteservice
(
  id         int auto_increment
    primary key,
  user       varchar(255) not null,
  service_id int          not null,
  create_at  datetime(6)  not null
);

create table bk_itsm.service_oldsla
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  not null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  not null,
  end_at     datetime(6)  null,
  is_deleted tinyint(1)   not null,
  is_builtin tinyint(1)   not null,
  name       varchar(255) not null,
  level      int          not null,
  resp_time  varchar(64)  not null,
  deal_time  varchar(64)  not null,
  `desc`     varchar(255) null,
  `key`      varchar(255) not null
);

create table bk_itsm.service_servicecatalog
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  null,
  end_at     datetime(6)  null,
  is_deleted tinyint(1)   not null,
  `key`      varchar(255) not null,
  name       varchar(64)  not null,
  `desc`     varchar(255) null,
  lft        int unsigned not null,
  rght       int unsigned not null,
  tree_id    int unsigned not null,
  level      int unsigned not null,
  parent_id  int          null,
  xt_only    tinyint(1)   not null,
  `order`    int          not null,
  route      longtext     not null,
  constraint `key`
    unique (`key`),
  constraint service_servicecatal_parent_id_b1192a17_fk_service_s
    foreign key (parent_id) references bk_itsm.service_servicecatalog (id)
);

create index service_servicecatalog_is_deleted_c247f0e1
  on bk_itsm.service_servicecatalog (is_deleted);

create index service_servicecatalog_level_21ec4aab
  on bk_itsm.service_servicecatalog (level);

create index service_servicecatalog_lft_5ef3ad70
  on bk_itsm.service_servicecatalog (lft);

create index service_servicecatalog_parent_id_b1192a17
  on bk_itsm.service_servicecatalog (parent_id);

create index service_servicecatalog_rght_04673015
  on bk_itsm.service_servicecatalog (rght);

create index service_servicecatalog_tree_id_5880c6f3
  on bk_itsm.service_servicecatalog (tree_id);

create table bk_itsm.service_servicecategory
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  not null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  not null,
  end_at     datetime(6)  null,
  is_deleted tinyint(1)   not null,
  is_builtin tinyint(1)   not null,
  `key`      varchar(64)  not null,
  name       varchar(255) not null,
  `desc`     varchar(255) not null,
  constraint `key`
    unique (`key`)
);

create table bk_itsm.service_serviceproperty
(
  id                  int auto_increment
    primary key,
  creator             varchar(64)  not null,
  create_at           datetime(6)  not null,
  update_at           datetime(6)  not null,
  updated_by          varchar(64)  not null,
  end_at              datetime(6)  null,
  is_deleted          tinyint(1)   not null,
  is_builtin          tinyint(1)   not null,
  `key`               varchar(32)  not null,
  is_cascade          tinyint(1)   not null,
  name                varchar(255) not null,
  `desc`              varchar(255) not null,
  fields              longtext     null,
  service_category_id int          not null,
  pk_key              varchar(32)  not null,
  cascade_key         varchar(32)  not null,
  constraint service_serviceprope_service_category_id_07cfeff0_fk_service_s
    foreign key (service_category_id) references bk_itsm.service_servicecategory (id)
);

create table bk_itsm.service_propertyrecord
(
  id                  int auto_increment
    primary key,
  creator             varchar(64)  not null,
  create_at           datetime(6)  not null,
  update_at           datetime(6)  not null,
  updated_by          varchar(64)  not null,
  end_at              datetime(6)  null,
  is_deleted          tinyint(1)   not null,
  is_builtin          tinyint(1)   not null,
  `key`               varchar(255) not null,
  pk_value            varchar(64)  null,
  flows               longtext     null,
  tickets             longtext     null,
  data                longtext     null,
  service_property_id int          not null,
  display_role        varchar(64)  not null,
  constraint service_propertyreco_service_property_id_f77bf951_fk_service_s
    foreign key (service_property_id) references bk_itsm.service_serviceproperty (id)
);

create table bk_itsm.service_sysdict
(
  id          int auto_increment
    primary key,
  creator     varchar(64)    not null,
  create_at   datetime(6)    not null,
  update_at   datetime(6)    not null,
  updated_by  varchar(64)    not null,
  end_at      datetime(6)    null,
  is_deleted  tinyint(1)     not null,
  is_builtin  tinyint(1)     not null,
  `key`       varchar(255)   not null,
  name        varchar(255)   not null,
  `desc`      varchar(255)   null,
  is_enabled  tinyint(1)     not null,
  is_readonly tinyint(1)     not null,
  is_show     tinyint(1)     not null,
  owners      varchar(10000) not null
);

create table bk_itsm.service_dictdata
(
  id            int auto_increment
    primary key,
  creator       varchar(64)  null,
  create_at     datetime(6)  not null,
  update_at     datetime(6)  not null,
  updated_by    varchar(64)  null,
  end_at        datetime(6)  null,
  is_deleted    tinyint(1)   not null,
  `key`         varchar(255) not null,
  name          varchar(255) not null,
  is_readonly   tinyint(1)   not null,
  lft           int unsigned not null,
  rght          int unsigned not null,
  tree_id       int unsigned not null,
  level         int unsigned not null,
  dict_table_id int          not null,
  parent_id     int          null,
  `order`       int          not null,
  is_builtin    tinyint(1)   not null,
  constraint service_dictdata_dict_table_id_key_481bd261_uniq
    unique (dict_table_id, `key`),
  constraint service_dictdata_dict_table_id_7714dc40_fk_service_sysdict_id
    foreign key (dict_table_id) references bk_itsm.service_sysdict (id),
  constraint service_dictdata_parent_id_b2f31ce7_fk_service_dictdata_id
    foreign key (parent_id) references bk_itsm.service_dictdata (id)
);

create index service_dictdata_is_deleted_0f36f8d9
  on bk_itsm.service_dictdata (is_deleted);

create index service_dictdata_level_58c9091d
  on bk_itsm.service_dictdata (level);

create index service_dictdata_lft_4b0b40e7
  on bk_itsm.service_dictdata (lft);

create index service_dictdata_parent_id_b2f31ce7
  on bk_itsm.service_dictdata (parent_id);

create index service_dictdata_rght_de000d31
  on bk_itsm.service_dictdata (rght);

create index service_dictdata_tree_id_7ed9d1ff
  on bk_itsm.service_dictdata (tree_id);

create table bk_itsm.sla_action
(
  id          int auto_increment
    primary key,
  creator     varchar(64) not null,
  create_at   datetime(6) not null,
  update_at   datetime(6) not null,
  updated_by  varchar(64) not null,
  is_deleted  tinyint(1)  not null,
  action_type varchar(32) not null,
  config      longtext    not null
);

create table bk_itsm.sla_actionpolicy
(
  id          int auto_increment
    primary key,
  creator     varchar(64)  not null,
  create_at   datetime(6)  not null,
  update_at   datetime(6)  not null,
  updated_by  varchar(64)  not null,
  is_deleted  tinyint(1)   not null,
  name        varchar(255) not null,
  `order`     int          not null,
  `condition` longtext     not null
);

create table bk_itsm.sla_actionpolicy_actions
(
  id              int auto_increment
    primary key,
  actionpolicy_id int not null,
  action_id       int not null,
  constraint sla_actionpolicy_actions_actionpolicy_id_action_id_af0be90e_uniq
    unique (actionpolicy_id, action_id),
  constraint sla_actionpolicy_act_actionpolicy_id_78aea068_fk_sla_actio
    foreign key (actionpolicy_id) references bk_itsm.sla_actionpolicy (id),
  constraint sla_actionpolicy_actions_action_id_05bc35a8_fk_sla_action_id
    foreign key (action_id) references bk_itsm.sla_action (id)
);

create table bk_itsm.sla_day
(
  id          int auto_increment
    primary key,
  creator     varchar(64)  not null,
  create_at   datetime(6)  not null,
  update_at   datetime(6)  not null,
  updated_by  varchar(64)  not null,
  is_deleted  tinyint(1)   not null,
  name        varchar(255) not null,
  day_of_week varchar(32)  not null,
  type_of_day varchar(32)  not null,
  start_date  date         null,
  end_date    date         null
);

create table bk_itsm.sla_duration
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  not null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  not null,
  is_deleted tinyint(1)   not null,
  name       varchar(255) not null,
  start_time time(6)      not null,
  end_time   time(6)      not null
);

create table bk_itsm.sla_day_duration
(
  id          int auto_increment
    primary key,
  day_id      int not null,
  duration_id int not null,
  constraint sla_day_duration_day_id_duration_id_cc32dff7_uniq
    unique (day_id, duration_id),
  constraint sla_day_duration_day_id_27fb57e5_fk_sla_day_id
    foreign key (day_id) references bk_itsm.sla_day (id),
  constraint sla_day_duration_duration_id_09659b95_fk_sla_duration_id
    foreign key (duration_id) references bk_itsm.sla_duration (id)
);

create table bk_itsm.sla_engine_slaactionhistory
(
  id            int auto_increment
    primary key,
  task_id       int          not null,
  status        varchar(255) not null,
  action_type   varchar(255) not null,
  action_detail longtext     not null,
  create_time   datetime(6)  not null,
  `condition`   longtext     not null
);

create index sla_engine_slaactionhistory_task_id_e4eab21c
  on bk_itsm.sla_engine_slaactionhistory (task_id);

create table bk_itsm.sla_engine_slaeventlog
(
  id          int auto_increment
    primary key,
  task_id     int          not null,
  priority    varchar(255) not null,
  event_type  varchar(255) not null,
  is_archived tinyint(1)   not null,
  tick_flag   varchar(255) not null,
  create_time datetime(6)  not null
);

create index sla_engine_slaeventlog_task_id_8f8bb400
  on bk_itsm.sla_engine_slaeventlog (task_id);

create table bk_itsm.sla_prioritymatrix
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  create_at    datetime(6)  not null,
  update_at    datetime(6)  not null,
  updated_by   varchar(64)  not null,
  is_deleted   tinyint(1)   not null,
  service_type varchar(64)  not null,
  urgency      varchar(255) not null,
  impact       varchar(255) not null,
  priority     varchar(255) not null,
  constraint sla_prioritymatrix_service_type_urgency_impact_22124154_uniq
    unique (service_type, urgency, impact)
);

create table bk_itsm.sla_schedule
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  not null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  not null,
  is_deleted tinyint(1)   not null,
  name       varchar(255) not null,
  is_enabled tinyint(1)   not null,
  is_builtin tinyint(1)   not null
);

create table bk_itsm.sla_prioritypolicy
(
  id          int auto_increment
    primary key,
  creator     varchar(64)  not null,
  create_at   datetime(6)  not null,
  update_at   datetime(6)  not null,
  updated_by  varchar(64)  not null,
  is_deleted  tinyint(1)   not null,
  name        varchar(255) not null,
  priority    varchar(255) not null,
  handle_time int          not null,
  handle_unit varchar(32)  not null,
  schedule_id int          not null,
  constraint sla_prioritypolicy_schedule_id_49fdf40c_fk_sla_schedule_id
    foreign key (schedule_id) references bk_itsm.sla_schedule (id)
);

create table bk_itsm.sla_schedule_days
(
  id          int auto_increment
    primary key,
  schedule_id int not null,
  day_id      int not null,
  constraint sla_schedule_days_schedule_id_day_id_2d9f6494_uniq
    unique (schedule_id, day_id),
  constraint sla_schedule_days_day_id_47bd81af_fk_sla_day_id
    foreign key (day_id) references bk_itsm.sla_day (id),
  constraint sla_schedule_days_schedule_id_526fe536_fk_sla_schedule_id
    foreign key (schedule_id) references bk_itsm.sla_schedule (id)
);

create table bk_itsm.sla_schedule_holidays
(
  id          int auto_increment
    primary key,
  schedule_id int not null,
  day_id      int not null,
  constraint sla_schedule_holidays_schedule_id_day_id_88f70b16_uniq
    unique (schedule_id, day_id),
  constraint sla_schedule_holidays_day_id_e663e994_fk_sla_day_id
    foreign key (day_id) references bk_itsm.sla_day (id),
  constraint sla_schedule_holidays_schedule_id_bbc52336_fk_sla_schedule_id
    foreign key (schedule_id) references bk_itsm.sla_schedule (id)
);

create table bk_itsm.sla_schedule_workdays
(
  id          int auto_increment
    primary key,
  schedule_id int not null,
  day_id      int not null,
  constraint sla_schedule_workdays_schedule_id_day_id_2b0ce8f0_uniq
    unique (schedule_id, day_id),
  constraint sla_schedule_workdays_day_id_81c45434_fk_sla_day_id
    foreign key (day_id) references bk_itsm.sla_day (id),
  constraint sla_schedule_workdays_schedule_id_9e7ab2f4_fk_sla_schedule_id
    foreign key (schedule_id) references bk_itsm.sla_schedule (id)
);

create table bk_itsm.sla_sla
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  not null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  not null,
  is_deleted tinyint(1)   not null,
  name       varchar(255) not null,
  is_enabled tinyint(1)   not null,
  is_builtin tinyint(1)   not null
);

create table bk_itsm.sla_sla_action_policies
(
  id              int auto_increment
    primary key,
  sla_id          int not null,
  actionpolicy_id int not null,
  constraint sla_sla_action_policies_sla_id_actionpolicy_id_29699d50_uniq
    unique (sla_id, actionpolicy_id),
  constraint sla_sla_action_polic_actionpolicy_id_86f93ee2_fk_sla_actio
    foreign key (actionpolicy_id) references bk_itsm.sla_actionpolicy (id),
  constraint sla_sla_action_policies_sla_id_c284479c_fk_sla_sla_id
    foreign key (sla_id) references bk_itsm.sla_sla (id)
);

create table bk_itsm.sla_sla_policies
(
  id                int auto_increment
    primary key,
  sla_id            int not null,
  prioritypolicy_id int not null,
  constraint sla_sla_policies_sla_id_prioritypolicy_id_6b13cafb_uniq
    unique (sla_id, prioritypolicy_id),
  constraint sla_sla_policies_prioritypolicy_id_28e0f623_fk_sla_prior
    foreign key (prioritypolicy_id) references bk_itsm.sla_prioritypolicy (id),
  constraint sla_sla_policies_sla_id_91ec4db8_fk_sla_sla_id
    foreign key (sla_id) references bk_itsm.sla_sla (id)
);

create table bk_itsm.sla_slatimerrule
(
  id             int auto_increment
    primary key,
  creator        varchar(64)  not null,
  create_at      datetime(6)  not null,
  update_at      datetime(6)  not null,
  updated_by     varchar(64)  not null,
  is_deleted     tinyint(1)   not null,
  service_type   varchar(64)  not null,
  name           varchar(255) not null,
  condition_type varchar(64)  not null,
  `condition`    longtext     not null
);

create table bk_sops.statistics_componentexecutedata
(
  id               int auto_increment
    primary key,
  component_code   varchar(255) not null,
  instance_id      varchar(32)  not null,
  node_id          varchar(32)  not null,
  is_sub           tinyint(1)   not null,
  subprocess_stack longtext     not null,
  started_time     datetime(6)  not null,
  archived_time    datetime(6)  null,
  elapsed_time     int          null,
  status           tinyint(1)   not null,
  is_skip          tinyint(1)   not null,
  is_retry         tinyint(1)   not null,
  version          varchar(255) not null
);

create index statistics_componentexecutedata_component_code_0833cc5b
  on bk_sops.statistics_componentexecutedata (component_code);

create index statistics_componentexecutedata_instance_id_29e5aef9
  on bk_sops.statistics_componentexecutedata (instance_id);

create table bk_sops.statistics_componentintemplate
(
  id               int auto_increment
    primary key,
  component_code   varchar(255) not null,
  template_id      varchar(32)  not null,
  node_id          varchar(32)  not null,
  is_sub           tinyint(1)   not null,
  subprocess_stack longtext     not null,
  version          varchar(255) not null
);

create table bk_sops.statistics_instanceinpipeline
(
  id               int auto_increment
    primary key,
  instance_id      varchar(255) not null,
  atom_total       int          not null,
  subprocess_total int          not null,
  gateways_total   int          not null
);

create index statistics_instanceinpipeline_instance_id_df327ed7
  on bk_sops.statistics_instanceinpipeline (instance_id);

create table bk_sops.statistics_templateinpipeline
(
  id               int auto_increment
    primary key,
  template_id      varchar(255) not null,
  atom_total       int          not null,
  subprocess_total int          not null,
  gateways_total   int          not null
);

create index statistics_templateinpipeline_template_id_a902cb6f
  on bk_sops.statistics_templateinpipeline (template_id);

create table subject
(
  pk         int unsigned auto_increment
    primary key,
  type       varchar(32)                           not null,
  id         varchar(64)                           not null,
  name       varchar(64) default ''                not null,
  created_at timestamp   default CURRENT_TIMESTAMP not null,
  updated_at timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_id_type
    unique (id, type)
);

create table subject_department
(
  pk             int unsigned auto_increment
    primary key,
  subject_pk     int unsigned                        not null,
  department_pks varchar(1024)                       not null,
  created_at     timestamp default CURRENT_TIMESTAMP not null,
  updated_at     timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_subject
    unique (subject_pk)
);

create table subject_relation
(
  pk                int unsigned auto_increment
    primary key,
  subject_pk        int unsigned                        not null,
  subject_type      varchar(16)                         not null,
  subject_id        varchar(64)                         not null,
  parent_pk         int unsigned                        not null,
  parent_type       varchar(16)                         not null,
  parent_id         varchar(64)                         not null,
  policy_expired_at int unsigned                        not null,
  created_at        timestamp default CURRENT_TIMESTAMP not null,
  updated_at        timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_subject_parent
    unique (subject_pk, parent_pk)
);

create index idx_parent
  on subject_relation (parent_id, parent_type);

create index idx_subject
  on subject_relation (subject_id, subject_type);

create index idx_subject_pk_expire
  on subject_relation (subject_pk, policy_expired_at);

create table subject_role
(
  pk         int unsigned auto_increment
    primary key,
  role_type  varchar(32)                           not null,
  system_id  varchar(32) default ''                not null,
  subject_pk int unsigned                          not null,
  created_at timestamp   default CURRENT_TIMESTAMP not null,
  updated_at timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
  constraint idx_uk_type_system_subject
    unique (role_type, system_id, subject_pk)
);

create table system_info
(
  id         varchar(32)                         not null
    primary key,
  created_at timestamp default CURRENT_TIMESTAMP not null,
  updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

create table bk_itsm.task_sopstask
(
  id               int auto_increment
    primary key,
  create_at        datetime(6)  not null,
  update_at        datetime(6)  not null,
  updated_by       varchar(64)  not null,
  is_deleted       tinyint(1)   not null,
  ticket_id        int          not null,
  task_id          varchar(64)  not null,
  task_name        varchar(255) not null,
  sops_template_id int          not null,
  sops_task_id     int          null,
  sops_task_info   longtext     not null,
  sops_task_url    varchar(255) null,
  creator          varchar(64)  not null,
  executor         varchar(64)  not null,
  create_time      datetime(6)  not null,
  start_time       datetime(6)  null,
  finish_time      datetime(6)  null,
  elapsed_time     int          not null,
  state            varchar(64)  not null,
  bk_biz_id        int          not null
);

create table bk_itsm.task_task
(
  id              int auto_increment
    primary key,
  creator         varchar(64)  not null,
  create_at       datetime(6)  not null,
  update_at       datetime(6)  not null,
  updated_by      varchar(64)  not null,
  is_deleted      tinyint(1)   not null,
  ticket_id       int          not null,
  name            varchar(255) not null,
  component_type  varchar(64)  not null,
  inputs          longtext     not null,
  outputs         longtext     not null,
  `order`         int          not null,
  status          varchar(64)  not null,
  start_at        datetime(6)  null,
  end_at          datetime(6)  null,
  activity_id     varchar(64)  not null,
  processors      varchar(255) null,
  processors_type varchar(32)  not null,
  task_schema_id  int          not null,
  executor        varchar(64)  not null,
  confirmer       varchar(64)  not null,
  pipeline_data   longtext     not null,
  state_id        int          not null
);

create table bk_itsm.task_taskfield
(
  id              int auto_increment
    primary key,
  creator         varchar(64)    null,
  create_at       datetime(6)    not null,
  update_at       datetime(6)    not null,
  updated_by      varchar(64)    null,
  end_at          datetime(6)    null,
  is_deleted      tinyint(1)     not null,
  is_builtin      tinyint(1)     not null,
  is_readonly     tinyint(1)     not null,
  is_valid        tinyint(1)     not null,
  display         tinyint(1)     not null,
  source_type     varchar(32)    not null,
  source_uri      varchar(255)   null,
  api_instance_id int            null,
  kv_relation     varchar(64)    not null,
  type            varchar(32)    not null,
  `key`           varchar(255)   not null,
  name            varchar(64)    not null,
  layout          varchar(32)    not null,
  validate_type   varchar(32)    not null,
  show_type       int            not null,
  show_conditions longtext       not null,
  regex           varchar(64)    null,
  regex_config    varchar(255)   not null,
  custom_regex    varchar(128)   null,
  `desc`          varchar(128)   null,
  tips            varchar(128)   null,
  is_tips         tinyint(1)     not null,
  `default`       varchar(10000) null,
  choice          longtext       not null,
  related_fields  longtext       null,
  meta            longtext       not null,
  stage           varchar(64)    not null,
  task_id         int            not null,
  _value          longtext       null,
  sequence        int            not null,
  constraint task_taskfield_task_id_b391c466_fk_task_task_id
    foreign key (task_id) references bk_itsm.task_task (id)
);

create index task_taskfield_is_deleted_136117ab
  on bk_itsm.task_taskfield (is_deleted);

create table bk_itsm.task_tasklib
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  not null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  not null,
  is_deleted tinyint(1)   not null,
  name       varchar(255) not null,
  tasks      longtext     not null
);

create table bk_sops.taskflow3_taskflowinstance
(
  id                   int auto_increment
    primary key,
  category             varchar(255) not null,
  template_id          varchar(255) not null,
  create_method        varchar(30)  not null,
  create_info          varchar(255) not null,
  flow_type            varchar(255) not null,
  current_flow         varchar(255) not null,
  is_deleted           tinyint(1)   not null,
  pipeline_instance_id int          null,
  template_source      varchar(32)  not null,
  project_id           int          null,
  constraint taskflow3_taskflowin_pipeline_instance_id_5322afd2_fk_pipeline_
    foreign key (pipeline_instance_id) references bk_sops.pipeline_pipelineinstance (id),
  constraint taskflow3_taskflowin_project_id_3c18b071_fk_core_proj
    foreign key (project_id) references bk_sops.core_project (id)
);

create table bk_sops.function_functiontask
(
  id            int auto_increment
    primary key,
  creator       varchar(32) not null,
  create_time   datetime(6) not null,
  claimant      varchar(32) not null,
  claim_time    datetime(6) null,
  rejecter      varchar(32) not null,
  reject_time   datetime(6) null,
  predecessor   varchar(32) not null,
  transfer_time datetime(6) null,
  status        varchar(32) not null,
  task_id       int         not null,
  constraint function_functiontas_task_id_671ce105_fk_taskflow3
    foreign key (task_id) references bk_sops.taskflow3_taskflowinstance (id)
);

create table bk_sops.periodictask_periodictaskhistory
(
  id               int auto_increment
    primary key,
  ex_data          longtext    not null,
  start_at         datetime(6) not null,
  start_success    tinyint(1)  not null,
  flow_instance_id int         null,
  history_id       int         not null,
  task_id          int         not null,
  constraint periodictask_periodi_flow_instance_id_9be92389_fk_taskflow3
    foreign key (flow_instance_id) references bk_sops.taskflow3_taskflowinstance (id),
  constraint periodictask_periodi_history_id_0f4454f1_fk_periodic_
    foreign key (history_id) references bk_sops.periodic_task_periodictaskhistory (id),
  constraint periodictask_periodi_task_id_56c2a1c4_fk_periodict
    foreign key (task_id) references bk_sops.periodictask_periodictask (id)
);

create table bk_sops.tasktmpl3_tasktemplate
(
  id                   int auto_increment
    primary key,
  category             varchar(255) not null,
  notify_type          varchar(128) not null,
  notify_receivers     longtext     not null,
  time_out             int          not null,
  is_deleted           tinyint(1)   not null,
  pipeline_template_id varchar(32)  null,
  project_id           int          null,
  executor_proxy       varchar(255) not null,
  constraint tasktmpl3_tasktempla_pipeline_template_id_8798033b_fk_pipeline_
    foreign key (pipeline_template_id) references bk_sops.pipeline_pipelinetemplate (template_id),
  constraint tasktmpl3_tasktemplate_project_id_6846b518_fk_core_project_id
    foreign key (project_id) references bk_sops.core_project (id)
);

create table bk_sops.appmaker_appmaker
(
  id                 int auto_increment
    primary key,
  name               varchar(255) not null,
  code               varchar(255) not null,
  info               varchar(255) null,
  `desc`             varchar(255) null,
  logo_url           longtext     not null,
  link               varchar(255) not null,
  creator            varchar(100) not null,
  create_time        datetime(6)  not null,
  editor             varchar(100) null,
  is_deleted         tinyint(1)   not null,
  edit_time          datetime(6)  null,
  task_template_id   int          not null,
  template_scheme_id varchar(100) not null,
  project_id         int          null,
  category           varchar(255) not null,
  constraint appmaker_appmaker_project_id_b8846ac9_fk_core_project_id
    foreign key (project_id) references bk_sops.core_project (id),
  constraint appmaker_appmaker_task_template_id_291f068a_fk_tasktmpl3
    foreign key (task_template_id) references bk_sops.tasktmpl3_tasktemplate (id)
);

create table bk_sops.tasktmpl3_tasktemplate_collector
(
  id              int auto_increment
    primary key,
  tasktemplate_id int not null,
  user_id         int not null,
  constraint tasktmpl3_tasktemplate_c_tasktemplate_id_user_id_9879a44f_uniq
    unique (tasktemplate_id, user_id),
  constraint tasktmpl3_tasktempla_tasktemplate_id_72ab01a0_fk_tasktmpl3
    foreign key (tasktemplate_id) references bk_sops.tasktmpl3_tasktemplate (id),
  constraint tasktmpl3_tasktempla_user_id_60e52116_fk_account_u
    foreign key (user_id) references bk_sops.account_user (id)
);

create table bk_sops.template_commontemplate
(
  id                   int auto_increment
    primary key,
  category             varchar(255) not null,
  notify_type          varchar(128) not null,
  notify_receivers     longtext     not null,
  time_out             int          not null,
  is_deleted           tinyint(1)   not null,
  pipeline_template_id varchar(32)  null,
  constraint template_commontempl_pipeline_template_id_30df1bae_fk_pipeline_
    foreign key (pipeline_template_id) references bk_sops.pipeline_pipelinetemplate (template_id)
);

create table bk_sops.template_commontemplate_collector
(
  id                int auto_increment
    primary key,
  commontemplate_id int not null,
  user_id           int not null,
  constraint template_commontemplate__commontemplate_id_user_i_9c02c176_uniq
    unique (commontemplate_id, user_id),
  constraint template_commontempl_commontemplate_id_77b5456b_fk_template_
    foreign key (commontemplate_id) references bk_sops.template_commontemplate (id),
  constraint template_commontempl_user_id_2612d36d_fk_account_u
    foreign key (user_id) references bk_sops.account_user (id)
);

create table bk_iam.template_permtemplate
(
  id            int auto_increment
    primary key,
  creator       varchar(64)  not null,
  updater       varchar(64)  not null,
  created_time  datetime(6)  not null,
  updated_time  datetime(6)  not null,
  name          varchar(128) not null,
  system_id     varchar(32)  not null,
  description   varchar(255) not null,
  action_ids    longtext     not null,
  subject_count int          not null
);

create index template_permtemplate_system_id_ac1d7982_idx
  on bk_iam.template_permtemplate (system_id);

create table bk_iam.template_permtemplatepolicyauthorized
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  template_id  int         not null,
  subject_type varchar(32) not null,
  subject_id   varchar(64) not null,
  system_id    varchar(32) not null,
  data         longtext    not null,
  constraint template_permtemplatepol_template_id_subject_type_a458c98e_uniq
    unique (template_id, subject_type, subject_id)
);

create index template_permtemplatepolicyauthorized_system_id_b77ab55a_idx
  on bk_iam.template_permtemplatepolicyauthorized (system_id);

create table bk_iam.template_permtemplatepregroupsync
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  template_id  int         not null,
  group_id     int         not null,
  status       varchar(32) not null,
  data         longblob    not null,
  constraint template_permtemplatepre_template_id_group_id_58db7e3c_uniq
    unique (template_id, group_id)
);

create table bk_iam.template_permtemplatepreupdatelock
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  updater      varchar(64) not null,
  created_time datetime(6) not null,
  updated_time datetime(6) not null,
  template_id  int         not null,
  status       varchar(32) not null,
  action_ids   longblob    not null,
  constraint template_permtemplatepreupdatelock_template_id_d4b94895_uniq
    unique (template_id)
);

create table bk_itsm.thumbnail_kvstore
(
  `key` varchar(200) not null
    primary key,
  value longtext     not null
);

create table bk_itsm.ticket_attentionusers
(
  id        int auto_increment
    primary key,
  ticket_id int          not null,
  follower  varchar(255) not null,
  create_at datetime(6)  not null
);

create table bk_itsm.ticket_signtask
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  null,
  end_at     datetime(6)  null,
  is_deleted tinyint(1)   not null,
  status_id  int          not null,
  `order`    int          not null,
  status     varchar(32)  not null,
  processor  varchar(255) not null,
  is_passed  tinyint(1)   null
);

create index ticket_signtask_is_deleted_616aa7e2
  on bk_itsm.ticket_signtask (is_deleted);

create table bk_itsm.ticket_status
(
  id                int auto_increment
    primary key,
  creator           varchar(64)  null,
  create_at         datetime(6)  not null,
  update_at         datetime(6)  not null,
  updated_by        varchar(64)  null,
  end_at            datetime(6)  null,
  is_deleted        tinyint(1)   not null,
  ticket_id         int          not null,
  state_id          int          not null,
  bk_biz_id         int          not null,
  name              varchar(64)  not null,
  status            varchar(32)  not null,
  action_type       varchar(32)  not null,
  distribute_type   varchar(32)  not null,
  processors_type   varchar(32)  not null,
  processors        varchar(255) null,
  delivers_type     varchar(32)  not null,
  delivers          longtext     null,
  can_deliver       tinyint(1)   not null,
  assignors_type    varchar(32)  not null,
  assignors         longtext     null,
  can_terminate     tinyint(1)   not null,
  terminate_message longtext     null,
  fields            longtext     not null,
  api_instance_id   int          null,
  error_message     longtext     null,
  contexts          longtext     not null,
  tag               varchar(255) not null,
  meta              longtext     not null,
  is_sequential     tinyint(1)   not null,
  type              varchar(32)  not null,
  by_flow           varchar(64)  not null,
  ignore_params     longtext     not null,
  query_params      longtext     not null
);

create index ticket_status_is_deleted_b0f99ab9
  on bk_itsm.ticket_status (is_deleted);

create table bk_itsm.ticket_status_ticketstatus
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  create_at    datetime(6)  not null,
  update_at    datetime(6)  not null,
  updated_by   varchar(64)  not null,
  is_deleted   tinyint(1)   not null,
  service_type varchar(64)  not null,
  `key`        varchar(255) not null,
  name         varchar(255) not null,
  `desc`       varchar(255) null,
  flow_status  varchar(32)  not null,
  `order`      int          not null,
  is_builtin   tinyint(1)   not null,
  is_start     tinyint(1)   not null,
  is_over      tinyint(1)   not null,
  is_suspend   tinyint(1)   not null,
  color_hex    varchar(32)  not null
);

create table bk_itsm.ticket_status_statustransit
(
  id             int auto_increment
    primary key,
  creator        varchar(64) not null,
  create_at      datetime(6) not null,
  update_at      datetime(6) not null,
  updated_by     varchar(64) not null,
  is_deleted     tinyint(1)  not null,
  service_type   varchar(64) not null,
  is_auto        tinyint(1)  not null,
  threshold      int         not null,
  from_status_id int         not null,
  to_status_id   int         not null,
  threshold_unit varchar(32) not null,
  constraint ticket_status_status_from_status_id_a53763e2_fk_ticket_st
    foreign key (from_status_id) references bk_itsm.ticket_status_ticketstatus (id),
  constraint ticket_status_status_to_status_id_8ca41bc5_fk_ticket_st
    foreign key (to_status_id) references bk_itsm.ticket_status_ticketstatus (id)
);

create table bk_itsm.ticket_status_ticketstatusconfig
(
  id           int auto_increment
    primary key,
  creator      varchar(64) not null,
  create_at    datetime(6) not null,
  update_at    datetime(6) not null,
  updated_by   varchar(64) not null,
  is_deleted   tinyint(1)  not null,
  service_type varchar(64) not null,
  configured   tinyint(1)  not null
);

create table bk_itsm.ticket_taskfield
(
  id                int auto_increment
    primary key,
  creator           varchar(64)    null,
  create_at         datetime(6)    not null,
  update_at         datetime(6)    not null,
  updated_by        varchar(64)    null,
  end_at            datetime(6)    null,
  is_deleted        tinyint(1)     not null,
  is_builtin        tinyint(1)     not null,
  is_readonly       tinyint(1)     not null,
  is_valid          tinyint(1)     not null,
  display           tinyint(1)     not null,
  source_type       varchar(32)    not null,
  source_uri        varchar(255)   null,
  api_instance_id   int            null,
  kv_relation       varchar(64)    not null,
  type              varchar(32)    not null,
  `key`             varchar(255)   not null,
  name              varchar(64)    not null,
  layout            varchar(32)    not null,
  validate_type     varchar(32)    not null,
  show_type         int            not null,
  show_conditions   longtext       not null,
  regex             varchar(64)    null,
  regex_config      varchar(255)   not null,
  custom_regex      varchar(128)   null,
  `desc`            varchar(128)   null,
  tips              varchar(128)   null,
  is_tips           tinyint(1)     not null,
  `default`         varchar(10000) null,
  choice            longtext       not null,
  related_fields    longtext       null,
  meta              longtext       not null,
  state_id          varchar(32)    null,
  _value            longtext       null,
  source            varchar(32)    not null,
  workflow_field_id int            not null,
  task_id           int            not null
);

create index ticket_taskfield_is_deleted_82b6fef7
  on bk_itsm.ticket_taskfield (is_deleted);

create table bk_itsm.ticket_ticket
(
  id                      int auto_increment
    primary key,
  creator                 varchar(64)  null,
  create_at               datetime(6)  not null,
  update_at               datetime(6)  not null,
  updated_by              varchar(255) not null,
  end_at                  datetime(6)  null,
  is_deleted              tinyint(1)   not null,
  sn                      varchar(64)  not null,
  title                   varchar(128) not null,
  is_draft                tinyint(1)   not null,
  workflow_snap_id        int          not null,
  current_status          varchar(32)  not null,
  current_processors_type varchar(32)  not null,
  current_processors      varchar(255) not null,
  current_state_id        varchar(64)  null,
  service                 varchar(64)  not null,
  service_property        varchar(255) null,
  current_assignor        varchar(255) not null,
  current_assignor_type   varchar(32)  not null,
  is_supervise_needed     tinyint(1)   not null,
  supervise_type          varchar(32)  not null,
  supervisor              varchar(255) null,
  bk_biz_id               int          null,
  catalog_id              int          not null,
  flow_id                 int          not null,
  service_id              int          not null,
  service_type            varchar(64)  not null,
  pipeline_data           longtext     not null,
  pre_status              varchar(32)  not null,
  meta                    longtext     not null,
  priority_key            varchar(255) null,
  current_task_processors varchar(255) not null,
  history_task_processors varchar(255) not null
);

create table bk_itsm.sla_engine_slatask
(
  id                int auto_increment
    primary key,
  task_status       varchar(64) not null,
  is_frozen         tinyint(1)  not null,
  sla_status        varchar(64) not null,
  deadline          datetime(6) null,
  start_tick_time   datetime(6) null,
  last_tick_time    datetime(6) null,
  stop_tick_time    datetime(6) null,
  cost_duration     int         not null,
  archived_duration int         not null,
  cost_percent      int         not null,
  sla_id            int         not null,
  ticket_id         int         not null,
  next_tick_time    datetime(6) null,
  constraint ticket_id
    unique (ticket_id),
  constraint sla_engine_slatask_ticket_id_ae3a1fc1_fk_ticket_ticket_id
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create table bk_itsm.ticket_statustransitlog
(
  id          int auto_increment
    primary key,
  from_status varchar(255) not null,
  to_status   varchar(255) not null,
  create_at   datetime(6)  not null,
  ticket_id   int          not null,
  constraint ticket_statustransitlog_ticket_id_365ccae9_fk_ticket_ticket_id
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create index ticket_ticket_bk_biz_id_service_id_b0c840b2_idx
  on bk_itsm.ticket_ticket (bk_biz_id, service_id);

create index ticket_ticket_create_at_bk_biz_id_servi_52e301da_idx
  on bk_itsm.ticket_ticket (create_at, bk_biz_id, service_id, current_status, service_type);

create index ticket_ticket_creator_create_at_8a8145f2_idx
  on bk_itsm.ticket_ticket (creator, create_at);

create index ticket_ticket_current_status_create_at_500b61e4_idx
  on bk_itsm.ticket_ticket (current_status, create_at);

create index ticket_ticket_is_deleted_82519734
  on bk_itsm.ticket_ticket (is_deleted);

create index ticket_ticket_service_id_create_at_63a5baf3_idx
  on bk_itsm.ticket_ticket (service_id, create_at);

create index ticket_ticket_sn_7bedce42
  on bk_itsm.ticket_ticket (sn);

create table bk_itsm.ticket_ticket_node_status
(
  id        int auto_increment
    primary key,
  ticket_id int not null,
  status_id int not null,
  constraint ticket_ticket_node_status_ticket_id_status_id_fbc7bdc3_uniq
    unique (ticket_id, status_id),
  constraint ticket_ticket_node_status_status_id_85045742_fk_ticket_status_id
    foreign key (status_id) references bk_itsm.ticket_status (id),
  constraint ticket_ticket_node_status_ticket_id_58d7dd58_fk_ticket_ticket_id
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create table bk_itsm.ticket_ticketcomment
(
  id         int auto_increment
    primary key,
  stars      int          not null,
  comments   varchar(255) null,
  source     varchar(64)  not null,
  creator    varchar(64)  null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  is_deleted tinyint(1)   not null,
  ticket_id  int          not null,
  constraint ticket_ticketcomment_ticket_id_8e86949a_uniq
    unique (ticket_id),
  constraint ticket_ticketcomment_ticket_id_8e86949a_fk_ticket_ticket_id
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create table bk_itsm.ticket_ticketcommentinvite
(
  id          int auto_increment
    primary key,
  create_at   datetime(6) not null,
  comment_id  int         not null,
  code        varchar(10) not null,
  notify_type varchar(32) not null,
  receiver    varchar(64) not null,
  constraint code
    unique (code),
  constraint ticket_ticketcomment_comment_id_acd0e82d_fk_ticket_ti
    foreign key (comment_id) references bk_itsm.ticket_ticketcomment (id)
);

create table bk_itsm.ticket_ticketeventlog
(
  id              int auto_increment
    primary key,
  workflow_id     int            not null,
  transition_id   int            null,
  from_state_id   int            not null,
  to_state_id     int            null,
  type            varchar(32)    not null,
  processors_type varchar(32)    not null,
  processors      varchar(255)   null,
  form_data       longtext       null,
  operator        varchar(64)    null,
  operate_at      datetime(6)    not null,
  message         varchar(1000)  null,
  is_valid        tinyint(1)     not null,
  ticket_id       int            not null,
  deal_time       int            not null,
  is_deleted      tinyint(1)     not null,
  processors_snap varchar(10000) null,
  action          varchar(64)    not null,
  detail_message  varchar(1000)  null,
  from_state_name varchar(64)    not null,
  source          varchar(32)    not null,
  status          int            not null,
  constraint ticket_ticketeventlog_ticket_id_9c348536_fk_ticket_ticket_id
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create index ticket_ticketeventlog_is_deleted_65e6355d
  on bk_itsm.ticket_ticketeventlog (is_deleted);

create index ticket_ticketeventlog_operate_at_operator_is_de_a0c84ab0_idx
  on bk_itsm.ticket_ticketeventlog (operate_at, operator, is_deleted);

create table bk_itsm.ticket_ticketfield
(
  id                int auto_increment
    primary key,
  creator           varchar(64)    null,
  create_at         datetime(6)    not null,
  update_at         datetime(6)    not null,
  updated_by        varchar(64)    null,
  end_at            datetime(6)    null,
  is_deleted        tinyint(1)     not null,
  is_builtin        tinyint(1)     not null,
  is_readonly       tinyint(1)     not null,
  is_valid          tinyint(1)     not null,
  display           tinyint(1)     not null,
  source_type       varchar(32)    not null,
  source_uri        varchar(255)   null,
  type              varchar(32)    not null,
  `key`             varchar(255)   not null,
  name              varchar(64)    not null,
  layout            varchar(32)    not null,
  validate_type     varchar(32)    not null,
  regex             varchar(64)    null,
  `desc`            varchar(128)   null,
  `default`         varchar(10000) null,
  choice            longtext       not null,
  related_fields    longtext       null,
  state_id          varchar(32)    null,
  _value            longtext       null,
  ticket_id         int            not null,
  custom_regex      varchar(128)   null,
  meta              longtext       not null,
  api_instance_id   int            null,
  is_tips           tinyint(1)     not null,
  kv_relation       varchar(64)    not null,
  show_conditions   longtext       not null,
  show_type         int            not null,
  tips              varchar(128)   null,
  source            varchar(32)    not null,
  workflow_field_id int            not null,
  regex_config      varchar(255)   not null,
  constraint ticket_ticketfield_ticket_id_0e39dba7_fk_ticket_ticket_id
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create index ticket_ticketfield_is_deleted_70491694
  on bk_itsm.ticket_ticketfield (is_deleted);

create table bk_itsm.ticket_ticketfollowernotifylog
(
  id             int auto_increment
    primary key,
  state_id       int          not null,
  state_name     varchar(64)  null,
  creator        varchar(64)  null,
  create_at      datetime(6)  not null,
  message        longtext     null,
  notify_type    varchar(32)  not null,
  is_deleted     tinyint(1)   not null,
  followers      varchar(255) null,
  followers_type varchar(32)  not null,
  ticket_token   varchar(10)  null,
  is_sys_sended  tinyint(1)   not null,
  ticket_id      int          not null,
  constraint ticket_token
    unique (ticket_token),
  constraint ticket_ticketfollowe_ticket_id_fc812664_fk_ticket_ti
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create index ticket_ticketfollowernotifylog_is_deleted_88705e4b
  on bk_itsm.ticket_ticketfollowernotifylog (is_deleted);

create table bk_itsm.ticket_ticketglobalvariable
(
  id        int auto_increment
    primary key,
  `key`     varchar(255) not null,
  name      varchar(64)  not null,
  value     longtext     not null,
  state_id  int          null,
  ticket_id int          null,
  create_at datetime(6)  not null,
  update_at datetime(6)  not null
);

create table bk_itsm.ticket_ticketorganization
(
  id                int auto_increment
    primary key,
  creator           varchar(64)  null,
  create_at         datetime(6)  not null,
  update_at         datetime(6)  not null,
  updated_by        varchar(64)  null,
  end_at            datetime(6)  null,
  is_deleted        tinyint(1)   not null,
  username          varchar(255) not null,
  first_level_id    int          not null,
  first_level_name  varchar(255) not null,
  second_level_id   int          not null,
  second_level_name varchar(255) not null,
  third_level_id    int          not null,
  third_level_name  varchar(255) not null,
  family            longtext     not null
);

create index ticket_ticketorganization_create_at_first_level_id_64184444_idx
  on bk_itsm.ticket_ticketorganization (create_at, first_level_id);

create index ticket_ticketorganization_create_at_username_ee4b3dc2_idx
  on bk_itsm.ticket_ticketorganization (create_at, username);

create index ticket_ticketorganization_is_deleted_9f881646
  on bk_itsm.ticket_ticketorganization (is_deleted);

create table bk_itsm.ticket_ticketstatedraft
(
  id        int auto_increment
    primary key,
  creator   varchar(64) not null,
  ticket_id int         not null,
  state_id  int         not null,
  draft     longtext    null
);

create table bk_itsm.ticket_ticketsupervisenotifylog
(
  id          int auto_increment
    primary key,
  state_id    int          not null,
  state_name  varchar(64)  null,
  creator     varchar(64)  null,
  create_at   datetime(6)  not null,
  message     longtext     null,
  notify_type varchar(32)  not null,
  is_deleted  tinyint(1)   not null,
  supervised  varchar(255) null,
  ticket_id   int          not null,
  constraint ticket_ticketsupervi_ticket_id_29d29cad_fk_ticket_ti
    foreign key (ticket_id) references bk_itsm.ticket_ticket (id)
);

create index ticket_ticketsupervisenotifylog_is_deleted_b69ff6f1
  on bk_itsm.ticket_ticketsupervisenotifylog (is_deleted);

create table bk_itsm.ticket_tickettemplate
(
  id       int auto_increment
    primary key,
  name     varchar(64) not null,
  creator  varchar(64) not null,
  template longtext    null,
  service  varchar(64) not null
);

create table bk_itsm.ticket_tickettoticket
(
  id             int auto_increment
    primary key,
  related_type   varchar(32) not null,
  creator        varchar(64) null,
  create_at      datetime(6) not null,
  from_ticket_id int         null,
  to_ticket_id   int         null,
  end_at         datetime(6) null,
  is_deleted     tinyint(1)  not null,
  related_status varchar(32) not null,
  update_at      datetime(6) not null,
  updated_by     varchar(64) null,
  constraint ticket_tickettoticke_from_ticket_id_d4ec3dc3_fk_ticket_ti
    foreign key (from_ticket_id) references bk_itsm.ticket_ticket (id),
  constraint ticket_tickettoticket_to_ticket_id_bd1735f2_fk_ticket_ticket_id
    foreign key (to_ticket_id) references bk_itsm.ticket_ticket (id)
);

create index ticket_tickettoticket_is_deleted_1c2c750d
  on bk_itsm.ticket_tickettoticket (is_deleted);

create table lesscode.token
(
  id           int auto_increment
    primary key,
  token        varchar(255)                       not null comment 'token',
  appCode      varchar(255)                       not null comment 'appCode',
  expiresTime  datetime                           null comment '过期时间',
  createTime   datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime   datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  tokenUser    varchar(255)                       null comment 'token 生成人',
  createUser   varchar(255)                       null comment '创建人，默认当前用户',
  updateUser   varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag   int      default 0                 null comment '是否删除，1代表已删除',
  refreshToken varchar(255)                       null comment 'refreshToken',
  refreshTime  datetime default CURRENT_TIMESTAMP null comment '刷新token时间'
)
  comment 'token' charset = utf8mb4;

create table bk_itsm.trigger_action
(
  id          int auto_increment
    primary key,
  creator     varchar(64)  not null,
  create_at   datetime(6)  not null,
  update_at   datetime(6)  not null,
  updated_by  varchar(64)  not null,
  is_deleted  tinyint(1)   not null,
  signal      varchar(128) not null,
  sender      varchar(64)  not null,
  schema_id   int          not null,
  source_type varchar(64)  not null,
  source_id   int          null,
  context     longtext     not null,
  inputs      longtext     not null,
  status      varchar(64)  not null,
  end_time    datetime(6)  null,
  operator    varchar(64)  not null,
  ex_data     longtext     not null,
  rule_id     int          not null,
  trigger_id  int          not null,
  outputs     longtext     not null
);

create table bk_itsm.trigger_actionschema
(
  id             int auto_increment
    primary key,
  creator        varchar(64)  not null,
  create_at      datetime(6)  not null,
  update_at      datetime(6)  not null,
  updated_by     varchar(64)  not null,
  is_deleted     tinyint(1)   not null,
  name           varchar(255) not null,
  display_name   varchar(255) null,
  component_type varchar(255) not null,
  operate_type   varchar(64)  not null,
  can_repeat     tinyint(1)   not null,
  params         longtext     not null,
  inputs         longtext     not null,
  delay_params   longtext     not null
);

create table bk_itsm.trigger_trigger
(
  id              int auto_increment
    primary key,
  creator         varchar(64)   not null,
  create_at       datetime(6)   not null,
  update_at       datetime(6)   not null,
  updated_by      varchar(64)   not null,
  is_deleted      tinyint(1)    not null,
  name            varchar(64)   not null,
  signal          varchar(128)  not null,
  sender          varchar(64)   not null,
  inputs          longtext      not null,
  source_type     varchar(64)   not null,
  source_id       int           null,
  is_draft        tinyint(1)    not null,
  is_enabled      tinyint(1)    not null,
  icon            varchar(64)   not null,
  `desc`          varchar(1000) not null,
  source_table_id int           not null
);

create table bk_itsm.trigger_triggerrule
(
  id             int auto_increment
    primary key,
  creator        varchar(64)  not null,
  create_at      datetime(6)  not null,
  update_at      datetime(6)  not null,
  updated_by     varchar(64)  not null,
  is_deleted     tinyint(1)   not null,
  `condition`    longtext     not null,
  action_schemas varchar(255) not null,
  trigger_id     int          null,
  by_condition   tinyint(1)   not null,
  name           varchar(64)  not null
);

create table lesscode.user
(
  id         int auto_increment
    primary key,
  username   varchar(255)                       null comment '系统的用户名（内部版为企业微信，外部版为注册的用户名）',
  qq         int                                null comment 'QQ 账号（外部版）',
  wx         varchar(255)                       null comment '微信账号（外部版）',
  bk         varchar(255)                       null comment '企业版/社区版账号（外部版）',
  createTime datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser varchar(255)                       null comment '创建人，默认当前用户',
  updateUser varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '用户表' charset = utf8mb4;

create table bk_user.user_settings_settingmeta
(
  id            int auto_increment
    primary key,
  create_time   datetime(6) not null,
  update_time   datetime(6) not null,
  `key`         varchar(64) not null,
  enabled       tinyint(1)  not null,
  example       longtext    not null,
  `default`     longtext    not null,
  choices       longtext    not null,
  required      tinyint(1)  not null,
  namespace     varchar(32) not null,
  region        varchar(32) not null,
  category_type varchar(32) not null,
  constraint user_settings_settingmet_key_namespace_category_t_42ca50ce_uniq
    unique (`key`, namespace, category_type)
);

create table bk_user.user_settings_setting
(
  id          int auto_increment
    primary key,
  create_time datetime(6) not null,
  update_time datetime(6) not null,
  value       longtext    not null,
  enabled     tinyint(1)  not null,
  category_id int         null,
  meta_id     int         not null,
  constraint user_settings_settin_category_id_ade113a6_fk_categorie
    foreign key (category_id) references bk_user.categories_profilecategory (id),
  constraint user_settings_settin_meta_id_8b0b975f_fk_user_sett
    foreign key (meta_id) references bk_user.user_settings_settingmeta (id)
);

create index user_settings_settingmeta_namespace_82a8a263
  on bk_user.user_settings_settingmeta (namespace);

create table bk_iam.user_userprofile
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  not null,
  updater      varchar(64)  not null,
  created_time datetime(6)  not null,
  updated_time datetime(6)  not null,
  username     varchar(255) not null,
  newbie       longtext     not null,
  constraint username
    unique (username)
);

create table bk_iam.v2migrate_permtemplatepoliciescache
(
  id          int auto_increment
    primary key,
  template_id int      not null,
  data        longtext not null
);

create index v2migrate_permtemplatepoliciescache_template_id_0b0b3b8f_idx
  on bk_iam.v2migrate_permtemplatepoliciescache (template_id);

create table lesscode.variable
(
  id               int auto_increment comment '自增主键'
    primary key,
  variableCode     varchar(255)                       not null comment '变量标识',
  variableName     varchar(255)                       not null comment '变量名称',
  projectId        int                                not null comment '项目id',
  pageCode         varchar(255)                       null comment '页面pageCode',
  description      varchar(255)                       null comment '变量说明',
  valueType        int      default 0                 not null comment '值类型',
  defaultValueType int      default 0                 not null comment '默认值类型',
  defaultValue     mediumtext                         not null comment '默认值',
  effectiveRange   int      default 0                 not null comment '生效范围',
  createTime       datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime       datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser       varchar(255)                       null comment '创建人，默认当前用户',
  updateUser       varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag       int      default 0                 null comment '是否删除，1代表已删除'
);

create index project_id
  on lesscode.variable (projectId);

create table bk_itsm.variable_framework_variablemodel
(
  id     int auto_increment
    primary key,
  code   varchar(255) not null,
  status tinyint(1)   not null,
  constraint code
    unique (code)
);

create table bk_sops.variable_framework_variablemodel
(
  id     int auto_increment
    primary key,
  code   varchar(255) not null,
  status tinyint(1)   not null,
  constraint code
    unique (code)
);

create table lesscode.version
(
  id            int auto_increment
    primary key,
  componentId   int                                not null comment 'component 表的主键',
  componentDest varchar(255)                       not null comment '自定义组件路径',
  version       varchar(255)                       not null comment '版本号',
  versionLog    longtext                           not null comment '版本日志',
  description   varchar(255)                       not null comment '组件描述',
  isLast        int                                not null comment '是否是最新版本，0历史版本，1最新版本',
  createTime    datetime default CURRENT_TIMESTAMP null comment '创建时间',
  updateTime    datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '最新更新时间',
  createUser    varchar(255)                       null comment '创建人，默认当前用户',
  updateUser    varchar(255)                       null comment '更新人，默认当前用户',
  deleteFlag    int      default 0                 null comment '是否删除，1代表已删除'
)
  comment '自定义组件版本表' charset = utf8mb4;

create index component_id
  on lesscode.version (componentId);

create table bk_sops.version_log_versionlogvisited
(
  username        varchar(50) not null
    primary key,
  visited_version varchar(20) not null
);

create table bk_itsm.wiki_article
(
  id                  int auto_increment
    primary key,
  created             datetime(6) not null,
  modified            datetime(6) not null,
  group_read          tinyint(1)  not null,
  group_write         tinyint(1)  not null,
  other_read          tinyint(1)  not null,
  other_write         tinyint(1)  not null,
  current_revision_id int         null,
  group_id            int         null,
  owner_id            int         null,
  constraint current_revision_id
    unique (current_revision_id),
  constraint wiki_article_group_id_bf035c83_fk_auth_group_id
    foreign key (group_id) references bk_itsm.auth_group (id),
  constraint wiki_article_owner_id_956bc94a_fk_account_user_id
    foreign key (owner_id) references bk_itsm.account_user (id)
);

create table bk_itsm.wiki_articleforobject
(
  id              int auto_increment
    primary key,
  object_id       int unsigned not null,
  is_mptt         tinyint(1)   not null,
  article_id      int          not null,
  content_type_id int          not null,
  constraint wiki_articleforobject_content_type_id_object_id_046be756_uniq
    unique (content_type_id, object_id),
  constraint wiki_articleforobjec_content_type_id_ba569059_fk_django_co
    foreign key (content_type_id) references bk_itsm.django_content_type (id),
  constraint wiki_articleforobject_article_id_7d67d809_fk_wiki_article_id
    foreign key (article_id) references bk_itsm.wiki_article (id)
);

create table bk_itsm.wiki_articleplugin
(
  id         int auto_increment
    primary key,
  deleted    tinyint(1)  not null,
  created    datetime(6) not null,
  article_id int         not null,
  constraint wiki_articleplugin_article_id_9ab0e854_fk_wiki_article_id
    foreign key (article_id) references bk_itsm.wiki_article (id)
);

create table bk_itsm.wiki_articlerevision
(
  id                   int auto_increment
    primary key,
  revision_number      int          not null,
  user_message         longtext     not null,
  automatic_log        longtext     not null,
  ip_address           char(39)     null,
  modified             datetime(6)  not null,
  created              datetime(6)  not null,
  deleted              tinyint(1)   not null,
  locked               tinyint(1)   not null,
  content              longtext     not null,
  title                varchar(512) not null,
  article_id           int          not null,
  previous_revision_id int          null,
  user_id              int          null,
  service_category_id  int          null,
  constraint wiki_articlerevision_article_id_revision_number_5bcd5334_uniq
    unique (article_id, revision_number),
  constraint wiki_articlerevision_article_id_e0fb2474_fk_wiki_article_id
    foreign key (article_id) references bk_itsm.wiki_article (id),
  constraint wiki_articlerevision_previous_revision_id_bcfaf4c9_fk_wiki_arti
    foreign key (previous_revision_id) references bk_itsm.wiki_articlerevision (id),
  constraint wiki_articlerevision_service_category_id_453465d9_fk_service_s
    foreign key (service_category_id) references bk_itsm.service_servicecategory (id),
  constraint wiki_articlerevision_user_id_c687e4de_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

alter table bk_itsm.wiki_article
  add constraint wiki_article_current_revision_id_fc83ea0a_fk_wiki_arti
    foreign key (current_revision_id) references bk_itsm.wiki_articlerevision (id);

create table bk_itsm.wiki_reusableplugin
(
  articleplugin_ptr_id int not null
    primary key,
  constraint wiki_reusableplugin_articleplugin_ptr_id_c1737239_fk_wiki_arti
    foreign key (articleplugin_ptr_id) references bk_itsm.wiki_articleplugin (id)
);

create table bk_itsm.wiki_attachments_attachment
(
  reusableplugin_ptr_id int          not null
    primary key,
  original_filename     varchar(256) null,
  current_revision_id   int          null,
  constraint current_revision_id
    unique (current_revision_id),
  constraint wiki_attachments_att_reusableplugin_ptr_i_856ba17c_fk_wiki_reus
    foreign key (reusableplugin_ptr_id) references bk_itsm.wiki_reusableplugin (articleplugin_ptr_id)
);

create table bk_itsm.wiki_attachments_attachmentrevision
(
  id                   int auto_increment
    primary key,
  revision_number      int          not null,
  user_message         longtext     not null,
  automatic_log        longtext     not null,
  ip_address           char(39)     null,
  modified             datetime(6)  not null,
  created              datetime(6)  not null,
  deleted              tinyint(1)   not null,
  locked               tinyint(1)   not null,
  file                 varchar(255) not null,
  description          longtext     not null,
  attachment_id        int          not null,
  previous_revision_id int          null,
  user_id              int          null,
  constraint wiki_attachments_att_attachment_id_32ffc4ea_fk_wiki_atta
    foreign key (attachment_id) references bk_itsm.wiki_attachments_attachment (reusableplugin_ptr_id),
  constraint wiki_attachments_att_previous_revision_id_e7f09093_fk_wiki_atta
    foreign key (previous_revision_id) references bk_itsm.wiki_attachments_attachmentrevision (id),
  constraint wiki_attachments_att_user_id_2da908ac_fk_account_u
    foreign key (user_id) references bk_itsm.account_user (id)
);

alter table bk_itsm.wiki_attachments_attachment
  add constraint wiki_attachments_att_current_revision_id_d30f6b77_fk_wiki_atta
    foreign key (current_revision_id) references bk_itsm.wiki_attachments_attachmentrevision (id);

create table bk_itsm.wiki_reusableplugin_articles
(
  id                int auto_increment
    primary key,
  reusableplugin_id int not null,
  article_id        int not null,
  constraint wiki_reusableplugin_arti_reusableplugin_id_articl_302a7a01_uniq
    unique (reusableplugin_id, article_id),
  constraint wiki_reusableplugin__article_id_8a09d39e_fk_wiki_arti
    foreign key (article_id) references bk_itsm.wiki_article (id),
  constraint wiki_reusableplugin__reusableplugin_id_52618a1c_fk_wiki_reus
    foreign key (reusableplugin_id) references bk_itsm.wiki_reusableplugin (articleplugin_ptr_id)
);

create table bk_itsm.wiki_revisionplugin
(
  articleplugin_ptr_id int not null
    primary key,
  current_revision_id  int null,
  constraint current_revision_id
    unique (current_revision_id),
  constraint wiki_revisionplugin_articleplugin_ptr_id_95c295f2_fk_wiki_arti
    foreign key (articleplugin_ptr_id) references bk_itsm.wiki_articleplugin (id)
);

create table bk_itsm.wiki_images_image
(
  revisionplugin_ptr_id int not null
    primary key,
  constraint wiki_images_image_revisionplugin_ptr_i_d230f69d_fk_wiki_revi
    foreign key (revisionplugin_ptr_id) references bk_itsm.wiki_revisionplugin (articleplugin_ptr_id)
);

create table bk_itsm.wiki_revisionpluginrevision
(
  id                   int auto_increment
    primary key,
  revision_number      int         not null,
  user_message         longtext    not null,
  automatic_log        longtext    not null,
  ip_address           char(39)    null,
  modified             datetime(6) not null,
  created              datetime(6) not null,
  deleted              tinyint(1)  not null,
  locked               tinyint(1)  not null,
  plugin_id            int         not null,
  previous_revision_id int         null,
  user_id              int         null,
  constraint wiki_revisionpluginr_plugin_id_c8f4475b_fk_wiki_revi
    foreign key (plugin_id) references bk_itsm.wiki_revisionplugin (articleplugin_ptr_id),
  constraint wiki_revisionpluginr_previous_revision_id_38c877c0_fk_wiki_revi
    foreign key (previous_revision_id) references bk_itsm.wiki_revisionpluginrevision (id),
  constraint wiki_revisionpluginrevision_user_id_ee40f729_fk_account_user_id
    foreign key (user_id) references bk_itsm.account_user (id)
);

create table bk_itsm.wiki_images_imagerevision
(
  revisionpluginrevision_ptr_id int           not null
    primary key,
  image                         varchar(2000) null,
  width                         smallint      null,
  height                        smallint      null,
  constraint wiki_images_imagerev_revisionpluginrevisi_ecb726e8_fk_wiki_revi
    foreign key (revisionpluginrevision_ptr_id) references bk_itsm.wiki_revisionpluginrevision (id)
);

alter table bk_itsm.wiki_revisionplugin
  add constraint wiki_revisionplugin_current_revision_id_46514536_fk_wiki_revi
    foreign key (current_revision_id) references bk_itsm.wiki_revisionpluginrevision (id);

create table bk_itsm.wiki_simpleplugin
(
  articleplugin_ptr_id int not null
    primary key,
  article_revision_id  int not null,
  constraint wiki_simpleplugin_article_revision_id_cff7df92_fk_wiki_arti
    foreign key (article_revision_id) references bk_itsm.wiki_articlerevision (id),
  constraint wiki_simpleplugin_articleplugin_ptr_id_2b99b828_fk_wiki_arti
    foreign key (articleplugin_ptr_id) references bk_itsm.wiki_articleplugin (id)
);

create table bk_itsm.wiki_urlpath
(
  id          int auto_increment
    primary key,
  slug        varchar(50)  null,
  lft         int unsigned not null,
  rght        int unsigned not null,
  tree_id     int unsigned not null,
  level       int unsigned not null,
  article_id  int          not null,
  parent_id   int          null,
  site_id     int          not null,
  moved_to_id int          null,
  constraint wiki_urlpath_site_id_parent_id_slug_e4942e5d_uniq
    unique (site_id, parent_id, slug),
  constraint wiki_urlpath_article_id_9ef0c0fb_fk_wiki_article_id
    foreign key (article_id) references bk_itsm.wiki_article (id),
  constraint wiki_urlpath_moved_to_id_4718abf8_fk_wiki_urlpath_id
    foreign key (moved_to_id) references bk_itsm.wiki_urlpath (id),
  constraint wiki_urlpath_parent_id_a6e675ac_fk_wiki_urlpath_id
    foreign key (parent_id) references bk_itsm.wiki_urlpath (id),
  constraint wiki_urlpath_site_id_319be912_fk_django_site_id
    foreign key (site_id) references bk_itsm.django_site (id)
);

create index wiki_urlpath_level_57f17cfd
  on bk_itsm.wiki_urlpath (level);

create index wiki_urlpath_lft_46bfd227
  on bk_itsm.wiki_urlpath (lft);

create index wiki_urlpath_moved_to_id_4718abf8
  on bk_itsm.wiki_urlpath (moved_to_id);

create index wiki_urlpath_parent_id_a6e675ac
  on bk_itsm.wiki_urlpath (parent_id);

create index wiki_urlpath_rght_186fc98e
  on bk_itsm.wiki_urlpath (rght);

create index wiki_urlpath_slug_39d212eb
  on bk_itsm.wiki_urlpath (slug);

create index wiki_urlpath_tree_id_090b475d
  on bk_itsm.wiki_urlpath (tree_id);

create table bk_itsm.workflow_defaultfield
(
  id              int auto_increment
    primary key,
  creator         varchar(64)    null,
  create_at       datetime(6)    not null,
  update_at       datetime(6)    not null,
  updated_by      varchar(64)    null,
  end_at          datetime(6)    null,
  is_deleted      tinyint(1)     not null,
  is_builtin      tinyint(1)     not null,
  is_readonly     tinyint(1)     not null,
  is_valid        tinyint(1)     not null,
  display         tinyint(1)     not null,
  source_type     varchar(32)    not null,
  source_uri      varchar(255)   null,
  type            varchar(32)    not null,
  `key`           varchar(255)   not null,
  name            varchar(64)    not null,
  layout          varchar(32)    not null,
  validate_type   varchar(32)    not null,
  regex           varchar(64)    null,
  `desc`          varchar(128)   null,
  `default`       varchar(10000) null,
  choice          longtext       not null,
  related_fields  longtext       null,
  category        varchar(128)   not null,
  custom_regex    varchar(128)   null,
  meta            longtext       not null,
  flow_type       varchar(64)    not null,
  api_instance_id int            null,
  is_tips         tinyint(1)     not null,
  kv_relation     varchar(64)    not null,
  show_conditions longtext       not null,
  show_type       int            not null,
  tips            varchar(128)   null,
  regex_config    varchar(255)   not null
);

create index workflow_defaultfield_is_deleted_2ae8e934
  on bk_itsm.workflow_defaultfield (is_deleted);

create table bk_itsm.workflow_globalvariable
(
  id         int auto_increment
    primary key,
  creator    varchar(64)  null,
  create_at  datetime(6)  not null,
  update_at  datetime(6)  not null,
  updated_by varchar(64)  null,
  end_at     datetime(6)  null,
  `key`      varchar(255) not null,
  name       varchar(64)  not null,
  type       varchar(32)  not null,
  state_id   int          null,
  flow_id    int          null,
  is_valid   tinyint(1)   not null,
  is_deleted tinyint(1)   not null,
  meta       longtext     not null
);

create table bk_itsm.workflow_notify
(
  id         int auto_increment
    primary key,
  name       varchar(64) not null,
  is_builtin tinyint(1)  not null,
  type       varchar(32) not null,
  template   longtext    null,
  constraint name
    unique (name)
);

create table bk_itsm.workflow_table
(
  id           int auto_increment
    primary key,
  creator      varchar(64)  null,
  create_at    datetime(6)  not null,
  update_at    datetime(6)  not null,
  updated_by   varchar(64)  null,
  end_at       datetime(6)  null,
  is_deleted   tinyint(1)   not null,
  name         varchar(255) not null,
  `desc`       varchar(255) null,
  fields_order longtext     not null,
  is_builtin   tinyint(1)   not null,
  version      varchar(64)  null
);

create index workflow_table_is_deleted_5f2de201
  on bk_itsm.workflow_table (is_deleted);

create table bk_itsm.workflow_taskschema
(
  id             int auto_increment
    primary key,
  creator        varchar(64)    null,
  create_at      datetime(6)    not null,
  update_at      datetime(6)    not null,
  updated_by     varchar(64)    null,
  end_at         datetime(6)    null,
  is_deleted     tinyint(1)     not null,
  name           varchar(128)   not null,
  component_type varchar(64)    not null,
  `desc`         varchar(1000)  not null,
  is_draft       tinyint(1)     not null,
  is_enabled     tinyint(1)     not null,
  inputs         longtext       not null,
  is_builtin     tinyint(1)     not null,
  can_edit       tinyint(1)     not null,
  owners         varchar(10000) not null
);

create table bk_itsm.workflow_taskfieldschema
(
  id              int auto_increment
    primary key,
  creator         varchar(64)    null,
  create_at       datetime(6)    not null,
  update_at       datetime(6)    not null,
  updated_by      varchar(64)    null,
  end_at          datetime(6)    null,
  is_deleted      tinyint(1)     not null,
  is_builtin      tinyint(1)     not null,
  is_readonly     tinyint(1)     not null,
  is_valid        tinyint(1)     not null,
  display         tinyint(1)     not null,
  source_type     varchar(32)    not null,
  source_uri      varchar(255)   null,
  api_instance_id int            null,
  kv_relation     varchar(64)    not null,
  type            varchar(32)    not null,
  `key`           varchar(255)   not null,
  name            varchar(64)    not null,
  layout          varchar(32)    not null,
  validate_type   varchar(32)    not null,
  show_type       int            not null,
  show_conditions longtext       not null,
  regex           varchar(64)    null,
  regex_config    varchar(255)   not null,
  custom_regex    varchar(128)   null,
  `desc`          varchar(128)   null,
  tips            varchar(128)   null,
  is_tips         tinyint(1)     not null,
  `default`       varchar(10000) null,
  choice          longtext       not null,
  related_fields  longtext       null,
  meta            longtext       not null,
  stage           varchar(64)    not null,
  sequence        int            not null,
  task_schema_id  int            not null,
  constraint workflow_taskfieldsc_task_schema_id_0b30729a_fk_workflow_
    foreign key (task_schema_id) references bk_itsm.workflow_taskschema (id)
);

create index workflow_taskfieldschema_is_deleted_d4cc0b3d
  on bk_itsm.workflow_taskfieldschema (is_deleted);

create index workflow_taskschema_is_deleted_52b0d85c
  on bk_itsm.workflow_taskschema (is_deleted);

create table bk_itsm.workflow_templatefield
(
  id              int auto_increment
    primary key,
  creator         varchar(64)    null,
  create_at       datetime(6)    not null,
  update_at       datetime(6)    not null,
  updated_by      varchar(64)    null,
  end_at          datetime(6)    null,
  is_deleted      tinyint(1)     not null,
  is_builtin      tinyint(1)     not null,
  is_readonly     tinyint(1)     not null,
  is_valid        tinyint(1)     not null,
  display         tinyint(1)     not null,
  source_type     varchar(32)    not null,
  source_uri      varchar(255)   null,
  api_instance_id int            null,
  kv_relation     varchar(64)    not null,
  type            varchar(32)    not null,
  `key`           varchar(255)   not null,
  name            varchar(64)    not null,
  layout          varchar(32)    not null,
  validate_type   varchar(32)    not null,
  show_type       int            not null,
  show_conditions longtext       not null,
  regex           varchar(64)    null,
  custom_regex    varchar(128)   null,
  `desc`          varchar(128)   null,
  tips            varchar(128)   null,
  is_tips         tinyint(1)     not null,
  `default`       varchar(10000) null,
  choice          longtext       not null,
  related_fields  longtext       null,
  meta            longtext       not null,
  flow_type       varchar(64)    not null,
  regex_config    varchar(255)   not null
);

create table bk_itsm.workflow_table_fields
(
  id               int auto_increment
    primary key,
  table_id         int not null,
  templatefield_id int not null,
  constraint workflow_table_fields_table_id_templatefield_id_143d2852_uniq
    unique (table_id, templatefield_id),
  constraint workflow_table_field_templatefield_id_e6d1b4cf_fk_workflow_
    foreign key (templatefield_id) references bk_itsm.workflow_templatefield (id),
  constraint workflow_table_fields_table_id_016406a1_fk_workflow_table_id
    foreign key (table_id) references bk_itsm.workflow_table (id)
);

create index workflow_templatefield_is_deleted_5aa88304
  on bk_itsm.workflow_templatefield (is_deleted);

create table bk_itsm.workflow_trigger
(
  id            int auto_increment
    primary key,
  creator       varchar(64)  null,
  create_at     datetime(6)  not null,
  update_at     datetime(6)  not null,
  updated_by    varchar(64)  null,
  end_at        datetime(6)  null,
  is_deleted    tinyint(1)   not null,
  name          varchar(64)  not null,
  component_key varchar(64)  not null,
  type          varchar(32)  not null,
  `condition`   varchar(255) not null,
  inputs        varchar(255) not null,
  state_id      int          null,
  workflow_id   int          null
);

create index workflow_trigger_is_deleted_5b9ee6fc
  on bk_itsm.workflow_trigger (is_deleted);

create table bk_itsm.workflow_workflow
(
  id                  int auto_increment
    primary key,
  creator             varchar(64)    null,
  create_at           datetime(6)    not null,
  update_at           datetime(6)    not null,
  updated_by          varchar(64)    null,
  end_at              datetime(6)    null,
  is_deleted          tinyint(1)     not null,
  name                varchar(128)   not null,
  `desc`              varchar(255)   null,
  is_enabled          tinyint(1)     not null,
  is_draft            tinyint(1)     not null,
  is_builtin          tinyint(1)     not null,
  notify_rule         varchar(32)    not null,
  notify_freq         int            not null,
  service             varchar(64)    null,
  service_property    longtext       null,
  is_biz_needed       tinyint(1)     not null,
  master              longtext       null,
  is_supervise_needed tinyint(1)     not null,
  supervise_type      varchar(32)    not null,
  supervisor          varchar(255)   null,
  extras              longtext       not null,
  flow_type           varchar(64)    not null,
  version_number      varchar(64)    not null,
  engine_version      varchar(64)    null,
  table_id            int            null,
  is_revocable        tinyint(1)     not null,
  is_task_needed      tinyint(1)     null,
  owners              varchar(10000) not null,
  is_iam_used         tinyint(1)     not null,
  revoke_config       longtext       null,
  constraint workflow_workflow_table_id_78e59943_fk_workflow_table_id
    foreign key (table_id) references bk_itsm.workflow_table (id)
);

create table bk_itsm.workflow_condition
(
  id          int auto_increment
    primary key,
  creator     varchar(64) null,
  create_at   datetime(6) not null,
  update_at   datetime(6) not null,
  updated_by  varchar(64) null,
  end_at      datetime(6) null,
  is_deleted  tinyint(1)  not null,
  name        varchar(64) not null,
  data        longtext    not null,
  workflow_id int         not null,
  constraint workflow_condition_workflow_id_9c15524e_fk_workflow_workflow_id
    foreign key (workflow_id) references bk_itsm.workflow_workflow (id)
);

create index workflow_condition_is_deleted_34903b35
  on bk_itsm.workflow_condition (is_deleted);

create table bk_itsm.workflow_state
(
  id               int auto_increment
    primary key,
  creator          varchar(64)    null,
  create_at        datetime(6)    not null,
  update_at        datetime(6)    not null,
  updated_by       varchar(64)    null,
  end_at           datetime(6)    null,
  is_deleted       tinyint(1)     not null,
  name             varchar(64)    not null,
  `desc`           varchar(64)    null,
  type             varchar(32)    not null,
  processors_type  varchar(32)    not null,
  processors       longtext       null,
  distribute_type  varchar(32)    not null,
  notify_rule      varchar(32)    not null,
  notify_freq      int            not null,
  fields           longtext       null,
  extras           varchar(20000) null,
  is_draft         tinyint(1)     not null,
  is_builtin       tinyint(1)     not null,
  workflow_id      int            not null,
  is_terminable    tinyint(1)     not null,
  followers        varchar(255)   null,
  followers_type   varchar(32)    not null,
  api_instance_id  int            null,
  assignors        longtext       null,
  assignors_type   varchar(32)    not null,
  axis             varchar(128)   not null,
  can_deliver      tinyint(1)     not null,
  delivers         longtext       null,
  delivers_type    varchar(32)    not null,
  label            varchar(255)   not null,
  variables        longtext       null,
  tag              varchar(255)   not null,
  read_only_fields longtext       null,
  finish_condition longtext       not null,
  is_sequential    tinyint(1)     not null,
  is_multi         tinyint(1)     not null,
  constraint workflow_state_workflow_id_ef53cea4_fk_workflow_workflow_id
    foreign key (workflow_id) references bk_itsm.workflow_workflow (id)
);

create table bk_itsm.workflow_field
(
  id              int auto_increment
    primary key,
  creator         varchar(64)    null,
  create_at       datetime(6)    not null,
  update_at       datetime(6)    not null,
  updated_by      varchar(64)    null,
  end_at          datetime(6)    null,
  is_deleted      tinyint(1)     not null,
  is_builtin      tinyint(1)     not null,
  is_readonly     tinyint(1)     not null,
  is_valid        tinyint(1)     not null,
  display         tinyint(1)     not null,
  source_type     varchar(32)    not null,
  source_uri      varchar(255)   null,
  type            varchar(32)    not null,
  `key`           varchar(255)   not null,
  name            varchar(64)    not null,
  layout          varchar(32)    not null,
  validate_type   varchar(32)    not null,
  regex           varchar(64)    null,
  `desc`          varchar(128)   null,
  `default`       varchar(10000) null,
  choice          longtext       not null,
  related_fields  longtext       null,
  state_id        int            null,
  workflow_id     int            not null,
  custom_regex    varchar(128)   null,
  meta            longtext       not null,
  api_instance_id int            null,
  is_tips         tinyint(1)     not null,
  kv_relation     varchar(64)    not null,
  show_conditions longtext       not null,
  show_type       int            not null,
  tips            varchar(128)   null,
  source          varchar(32)    not null,
  regex_config    varchar(255)   not null,
  constraint workflow_field_state_id_cbd85589_fk_workflow_state_id
    foreign key (state_id) references bk_itsm.workflow_state (id),
  constraint workflow_field_workflow_id_6658e57a_fk_workflow_workflow_id
    foreign key (workflow_id) references bk_itsm.workflow_workflow (id)
);

create index workflow_field_is_deleted_821260ac
  on bk_itsm.workflow_field (is_deleted);

create index workflow_state_is_deleted_37d5c517
  on bk_itsm.workflow_state (is_deleted);

create table bk_itsm.workflow_state_notify
(
  id        int auto_increment
    primary key,
  state_id  int not null,
  notify_id int not null,
  constraint workflow_state_notify_state_id_notify_id_bf20ee26_uniq
    unique (state_id, notify_id),
  constraint workflow_state_notify_notify_id_8f4b391f_fk_workflow_notify_id
    foreign key (notify_id) references bk_itsm.workflow_notify (id),
  constraint workflow_state_notify_state_id_fecd4505_fk_workflow_state_id
    foreign key (state_id) references bk_itsm.workflow_state (id)
);

create table bk_itsm.workflow_transition
(
  id             int auto_increment
    primary key,
  creator        varchar(64) null,
  create_at      datetime(6) not null,
  update_at      datetime(6) not null,
  updated_by     varchar(64) null,
  end_at         datetime(6) null,
  is_deleted     tinyint(1)  not null,
  name           varchar(64) not null,
  direction      varchar(32) not null,
  check_needed   tinyint(1)  not null,
  opt_needed     tinyint(1)  not null,
  is_builtin     tinyint(1)  not null,
  from_state_id  int         not null,
  to_state_id    int         not null,
  workflow_id    int         not null,
  axis           varchar(64) not null,
  `condition`    longtext    not null,
  condition_type varchar(32) not null,
  constraint workflow_transition_from_state_id_5c494844_fk_workflow_state_id
    foreign key (from_state_id) references bk_itsm.workflow_state (id),
  constraint workflow_transition_to_state_id_97410e71_fk_workflow_state_id
    foreign key (to_state_id) references bk_itsm.workflow_state (id),
  constraint workflow_transition_workflow_id_02ab2c30_fk_workflow_workflow_id
    foreign key (workflow_id) references bk_itsm.workflow_workflow (id)
);

create index workflow_transition_is_deleted_97ca3c4f
  on bk_itsm.workflow_transition (is_deleted);

create index workflow_workflow_is_deleted_c85d4a8c
  on bk_itsm.workflow_workflow (is_deleted);

create index workflow_workflow_is_enabled_6454d601
  on bk_itsm.workflow_workflow (is_enabled);

create table bk_itsm.workflow_workflow_notify
(
  id          int auto_increment
    primary key,
  workflow_id int not null,
  notify_id   int not null,
  constraint workflow_workflow_notify_workflow_id_notify_id_08d6b70b_uniq
    unique (workflow_id, notify_id),
  constraint workflow_workflow_no_notify_id_506a416b_fk_workflow_
    foreign key (notify_id) references bk_itsm.workflow_notify (id),
  constraint workflow_workflow_no_workflow_id_cb66c24c_fk_workflow_
    foreign key (workflow_id) references bk_itsm.workflow_workflow (id)
);

create table bk_itsm.workflow_workflowsnap
(
  id            int auto_increment
    primary key,
  workflow_id   int         not null,
  snapshot_time datetime(6) not null,
  fields        longtext    null,
  states        longtext    null,
  transitions   longtext    null,
  master        longtext    null,
  notify_rule   varchar(32) not null,
  notify_freq   int         not null
);

create table bk_itsm.workflow_workflowsnap_notify
(
  id              int auto_increment
    primary key,
  workflowsnap_id int not null,
  notify_id       int not null,
  constraint workflow_workflowsnap_no_workflowsnap_id_notify_i_9ba6ae1b_uniq
    unique (workflowsnap_id, notify_id),
  constraint workflow_workflowsna_notify_id_ce687693_fk_workflow_
    foreign key (notify_id) references bk_itsm.workflow_notify (id),
  constraint workflow_workflowsna_workflowsnap_id_d58c19d3_fk_workflow_
    foreign key (workflowsnap_id) references bk_itsm.workflow_workflowsnap (id)
);

create table bk_itsm.workflow_workflowversion
(
  id                  int auto_increment
    primary key,
  creator             varchar(64)    null,
  create_at           datetime(6)    not null,
  update_at           datetime(6)    not null,
  updated_by          varchar(64)    null,
  end_at              datetime(6)    null,
  is_deleted          tinyint(1)     not null,
  name                varchar(128)   not null,
  `desc`              varchar(255)   null,
  flow_type           varchar(64)    not null,
  is_enabled          tinyint(1)     not null,
  is_draft            tinyint(1)     not null,
  is_builtin          tinyint(1)     not null,
  notify_rule         varchar(32)    not null,
  notify_freq         int            not null,
  master              longtext       null,
  extras              longtext       not null,
  version_number      varchar(64)    not null,
  workflow_id         int            not null,
  fields              longtext       null,
  states              longtext       null,
  transitions         longtext       null,
  version_message     longtext       null,
  engine_version      varchar(64)    null,
  is_biz_needed       tinyint(1)     not null,
  is_supervise_needed tinyint(1)     not null,
  pipeline_data       longtext       null,
  supervise_type      varchar(32)    not null,
  supervisor          varchar(255)   null,
  `table`             longtext       null,
  is_revocable        tinyint(1)     not null,
  triggers            longtext       null,
  is_task_needed      tinyint(1)     null,
  owners              varchar(10000) not null,
  is_iam_used         tinyint(1)     not null,
  revoke_config       longtext       null
);

create table bk_itsm.service_service
(
  id                int auto_increment
    primary key,
  creator           varchar(64)  not null,
  create_at         datetime(6)  not null,
  update_at         datetime(6)  not null,
  updated_by        varchar(64)  not null,
  end_at            datetime(6)  null,
  is_deleted        tinyint(1)   not null,
  is_builtin        tinyint(1)   not null,
  `key`             varchar(64)  not null,
  name              varchar(255) not null,
  `desc`            varchar(255) not null,
  is_valid          tinyint(1)   not null,
  sla_id            int          null,
  workflow_id       int          not null,
  display_role      varchar(255) null,
  display_type      varchar(32)  not null,
  owners            longtext     not null,
  can_ticket_agency tinyint(1)   not null,
  constraint service_service_sla_id_8a174fea_fk_sla_sla_id
    foreign key (sla_id) references bk_itsm.sla_sla (id),
  constraint service_service_workflow_id_910c093b_fk_workflow_
    foreign key (workflow_id) references bk_itsm.workflow_workflowversion (id)
);

create table bk_itsm.service_catalogservice
(
  id         int auto_increment
    primary key,
  creator    varchar(64) not null,
  create_at  datetime(6) not null,
  update_at  datetime(6) not null,
  updated_by varchar(64) not null,
  end_at     datetime(6) null,
  is_deleted tinyint(1)  not null,
  is_builtin tinyint(1)  not null,
  catalog_id int         not null,
  service_id int         not null,
  `order`    int         not null,
  constraint service_catalogservi_catalog_id_f3ed7423_fk_service_s
    foreign key (catalog_id) references bk_itsm.service_servicecatalog (id),
  constraint service_catalogservice_service_id_fbeed007_fk_service_service_id
    foreign key (service_id) references bk_itsm.service_service (id)
);

create index workflow_workflowversion_is_deleted_5e864a1e
  on bk_itsm.workflow_workflowversion (is_deleted);

create index workflow_workflowversion_is_enabled_15fb10c2
  on bk_itsm.workflow_workflowversion (is_enabled);

create table bk_itsm.workflow_workflowversion_notify
(
  id                 int auto_increment
    primary key,
  workflowversion_id int not null,
  notify_id          int not null,
  constraint workflow_workflowversion_workflowversion_id_notif_3d6f03cc_uniq
    unique (workflowversion_id, notify_id),
  constraint workflow_workflowver_notify_id_e75f8c9a_fk_workflow_
    foreign key (notify_id) references bk_itsm.workflow_notify (id),
  constraint workflow_workflowver_workflowversion_id_b0df1488_fk_workflow_
    foreign key (workflowversion_id) references bk_itsm.workflow_workflowversion (id)
);

