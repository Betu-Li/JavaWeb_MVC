CREATE DATABASE studentManager;
USE studentManager;
create table login
(
    uid  int                        not null
        primary key,
    pwd  varchar(20)                not null,
    type varchar(20) default '学生' not null,
    check (`type` in ('管理员','学生'))
);

create table student
(
    sno    int            not null
        primary key,
    sname  varchar(20)    not null,
    sex    char(4)        null,
    age    int default 20 null,
    grades int            null,
    check (`grades` between 1 and 100)
);




INSERT INTO student VALUES(1001,'张三','男',20,'19875636161');
INSERT INTO student VALUES(1002,'李四','女',19,'18723357543');
INSERT INTO student VALUES(1003,'王五','男',21,'13445467823');
INSERT INTO student VALUES(1004,'赵六','男',19,'16456568900');
INSERT INTO student VALUES(1005,'刘二','男',19,'13453546666');

INSERT INTO student VALUES(1006,'小明','男',21,'12434569345');
INSERT INTO student VALUES(1007,'小王','男',20,'12192334572');
INSERT INTO student VALUES(1008,'小天','男',20,'15556468843');
INSERT INTO student VALUES(1009,'小美','女',20,'13454655679');
INSERT INTO student VALUES(1010,'小月','女',20,'14649087635');

INSERT INTO student VALUES(1011,'小汪','男',19,'13586739043');
INSERT INTO student VALUES(1012,'兔兔','女',19,'12445463506');
INSERT INTO student VALUES(1013,'小李','男',21,'13545467343');



INSERT INTO login VALUES(1, '1234','管理员');
INSERT INTO login(uid, pwd) VALUES(2, '2222');
INSERT INTO login(uid, pwd) VALUES(3, '6666');
