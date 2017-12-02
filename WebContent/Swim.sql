create database swimming;
use swimming;
create table user(
uid int primary key  Auto_Increment,
userid varchar(255),
username varchar(255),
userpassword varchar(255),
usersex varchar(4),
userage int,
img varchar(255),
content longtext,
education varchar(255),
tele varchar(255),
email varchar(255)
);

create table coursetotal(
ctid int primary key  Auto_Increment,
ctname varchar(255),
tid int,
studentnumber int default 0,
ctbrief varchar(255),
img varchar(255)
);

create table course(
ctid int,
chid int,
ctname varchar(255),
ctbrief varchar(255),
cttime varchar(255),
videourl varchar(255),
primary key(ctid,chid)
);

create table subscribeCourse(
uid int,
ctid int,
ctname varchar(255);
sdate datetime,
primary key(uid,ctid),
foreign key(uid) references user(uid),
foreign key(ctid) references coursetotal(ctid)
);

create table coursecomment(
ccid int primary key  Auto_Increment,
content longtext,
cdate datetime,
uid int,
ctid int,
goodnumber int default 0,
badnumber int default 0,
foreign key(uid) references user(uid),
foreign key(ctid) references coursetotal(ctid)
);

create table dianzanorfandui(
ccid int,
uid int,
judge int not null check(judge=1 or judge=0),
primary key(ccid,uid),
foreign key(ccid) references coursecomment(ccid),
foreign key(uid) references user(uid)
);

create table courseprocess(
uid int,
ctid int,
chid int,
pdate datetime,
lastlearn varchar(255),
primary key(uid,ctid),
foreign key(uid) references user(uid),
foreign key(ctid) references coursetotal(ctid)
);


create table article(
aid int primary key  Auto_Increment,
adate datetime,
author varchar(255),
Clicknum int default 0,
content longtext
);

create table Teacher(
tid int primary key  Auto_Increment,
teachername varchar(255),
teacherbrief longtext,
teacherpassword varchar(255),
img varchar(255)
)

