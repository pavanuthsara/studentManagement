### Database query

```create database mydb9;```

```use mydb9;```

```
create table complaintDemo(
	cid int auto_increment primary key,
    complaint varchar(255),
    status varchar(45)
);
```

```
create table student(
	sid int primary key auto_increment,
    name varchar(45) not null,
    password varchar(45) not null,
    email varchar(45),
    bdate date
)
```