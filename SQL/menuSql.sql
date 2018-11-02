

show databases ;
use project;

show tables ;


create database menuVoting;

DROP database menuVoting;
use menuVoting;


show tables;
drop table menu;

# Generate menu table
create table menu
(
  ID             int auto_increment,
  content        varchar(300)    not null,
  likeThis           int default '0' not null,
  stillWant      int default '0' not null,
  totalVoteTimes int default '0' not null,
  Date           datetime        not null,
  constraint menu_ID_uindex
  unique (ID)
);

alter table menu
  add primary key (ID);

# Generate user table
CREATE TABLE admin
(
    ID int PRIMARY KEY AUTO_INCREMENT,
    name varchar(138),
    passwd varchar(138)
);



# insert
# add new menu
# USE THOSE COMMANDS
#import java.sql.Timestamp;
#import java.text.SimpleDateFormat;
#import java.util.Date;
# Date date = new Date();
# Timestamp timeStamp = new Timestamp(date.getTime());
INSERT INTO menu (content , Date) VALUES ('JAVA STRING2' , '2010-03-01 12:00:00');

# ADD ADMIN INTO TABLE
INSERT INTO admin (name, passwd ) VALUES ('JAVA STRING NAME' , 'JAVA STRING PASSWD');




# SEARCH
# get menu by date
SELECT content FROM menu WHERE Date>= ('TimestampDate') and
Date<('TimestampDate');


# get amount of like
SELECT likeThis FROM menu WHERE Date>= ('TimestampDate') and
Date<('TimestampDate');

# get stillWant amount
 select stillWant From menu where Date>= ('TimestampDate') and
Date<('TimestampDate');




























