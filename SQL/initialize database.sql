-- auto-generated definition
create table userinfo
(
  username tinytext     null,
  passwd   varchar(300) null,
  email    tinytext     null,
  type     tinytext     null
);

-- auto-generated definition
create table menu
(
  ID       int auto_increment,
  content  varchar(300)                        null,
  add_date timestamp default CURRENT_TIMESTAMP not null
  on update CURRENT_TIMESTAMP,
  Day      tinytext                            null,
  constraint menu_ID_uindex
  unique (ID)
);

alter table menu
  add primary key (ID);

-- auto-generated definition
create table feedback
(
  user_email tinytext                            null,
  fb_content varchar(21845)                      null,
  fb_time    timestamp default CURRENT_TIMESTAMP not null
  on update CURRENT_TIMESTAMP
);

-- auto-generated definition
create table feedback
(
  user_email tinytext                            null,
  fb_content varchar(21845)                      null,
  fb_time    timestamp default CURRENT_TIMESTAMP not null
  on update CURRENT_TIMESTAMP
);
