### Database query

create database mydb9;

use mydb9;

create table complaintDemo(
	cid int auto_increment primary key,
    complaint varchar(255),
    status varchar(45)
);