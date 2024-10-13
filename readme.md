### Database query

```create database mydb9;```

```use mydb9;```

```
create table complaintDemo(
	cid int auto_increment primary key,
    complaint varchar(255),
    status varchar(45),
    sid int,
    
    foreign key (sid) references student(sid)
);

create table student(
	sid int primary key auto_increment,
    name varchar(45) not null,
    password varchar(45) not null,
    email varchar(45),
    bdate date
)
```

```
insert into student values (0, 'Pavan Uthsara','pavan123', 'p.uthsara@email.com', '2003-08-29');
insert into complaintDemo values(0, 'test1', 'pending', 1);

```



