create table admin_users
(
  id           int auto_increment
    primary key,
  account_name varchar(256) default '' not null,
  real_name    varchar(256) default '' not null,
  passwd       varchar(256) default '' not null,
  passwd_salt  varchar(256) default '' not null,
  mobile       varchar(256) default '' not null,
  role         varchar(256) default '' not null,
  user_status  varchar(256) default '' not null,
  created_by   varchar(256) default '' not null,
  updated_by   varchar(256) default '' not null,
  created_at   datetime                not null,
  updated_at   datetime                not null,
  deleted_at   datetime                null
)
  charset = utf8mb4;

create table files
(
  id            int auto_increment
    primary key,
  file_name     varchar(256) default '' not null,
  original_name varchar(256) default '' not null,
  file_hash     varchar(64)  default '' not null,
  file_path     tinytext     default '' not null,
  mimetype      varchar(256) default '' not null,
  file_type     varchar(256) default '' not null,
  ext           varchar(256) default '' not null,
  created_at    datetime                not null,
  updated_at    datetime                not null,
  deleted_at    datetime                null
)
  charset = utf8mb4;

create table permission_codes
(
  id              int auto_increment
    primary key,
  permission_code varchar(256) default '' not null,
  description     varchar(256) default '' not null,
  created_at      datetime                not null,
  updated_at      datetime                not null,
  deleted_at      datetime                null
)
  charset = utf8mb4;

create table permission_member_roles
(
  id              int auto_increment
    primary key,
  member_id       int      not null,
  permission_role int      not null,
  created_at      datetime not null,
  updated_at      datetime not null,
  deleted_at      datetime null
)
  charset = utf8mb4;

create table permission_role_codes
(
  id                 int auto_increment
    primary key,
  permission_role_id int      not null,
  permission_code_id int      null,
  created_at         datetime null,
  updated_at         datetime not null,
  deleted_at         datetime null
)
  charset = utf8mb4;

create table permission_roles
(
  id          int auto_increment
    primary key,
  role_code   varchar(256) default '' not null,
  name        varchar(256) default '' not null,
  description varchar(256) default '' not null,
  created_at  datetime                not null,
  updated_at  datetime                not null,
  deleted_at  datetime                null
)
  charset = utf8mb4;

create table torrent_file
(
  id             int auto_increment
    primary key,
  torrent_id     int        default 0                     not null,
  src            text       default ''                    not null,
  src_idx        int        default 0                     not null,
  name           text       default ''                    not null,
  path           text       default ''                    not null,
  file_order_idx int        default -1                    not null,
  file_size      bigint     default 0                     not null,
  file_offset    bigint(11) default 0                     not null,
  created_at     timestamp  default current_timestamp()   not null on update current_timestamp(),
  updated_at     timestamp  default '0000-00-00 00:00:00' not null,
  deleted_at     timestamp                                null
);

create index torrent_id_file_order_idx
  on torrent_file (torrent_id, file_order_idx);

create table workbench_projects
(
  id             int auto_increment
    primary key,
  view_id        varchar(50)             not null,
  edits_count    int          default 0  not null,
  name           varchar(256)            not null,
  project_type   varchar(50)  default '' not null,
  share_id       int          default 0  not null,
  shared         tinyint      default 1  not null,
  theme_id       varchar(64)  default '' not null,
  tutorial_id    int          default 0  not null,
  version        int          default 0  not null,
  type           varchar(256) default '' not null,
  description    tinytext     default '' not null,
  shared_by_me   tinyint      default 0  not null,
  shared_with_me tinyint      default 0  not null,
  thumbnail      longtext     default '' not null,
  locked         tinyint      default 0  not null,
  created_at     datetime                not null,
  updated_at     datetime                not null,
  deleted_at     datetime                null
)
  charset = utf8mb4;

create table workbench_templates
(
  id            int auto_increment
    primary key,
  name          varchar(256)            not null,
  preview       varchar(256)            not null,
  description   tinytext     default '' not null,
  availableFrom tinytext     default '' not null,
  tags          tinytext     default '' not null,
  previewLink   varchar(256) default '' not null,
  usages        varchar(256) default '' not null,
  priority      varchar(256) default '' not null,
  locked        tinyint      default 0  not null,
  model         text                    not null,
  created_at    datetime                not null,
  updated_at    datetime                not null,
  deleted_at    datetime                null
)
  charset = utf8mb4;

