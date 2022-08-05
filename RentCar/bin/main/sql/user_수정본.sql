use rentcar;
drop table user;

truncate table user;

create table user(
	id		varchar(10)	not null primary key,
    passwd	varchar(24) not null,
	mname	varchar(20) not null,
	phone   varchar(14) not null,
	email 	varchar(50) not null,
    jumin  varchar(20) NOT NULL,
    license  varchar(50) NOT NULL,
	grade VARCHAR(10) NOT NULL DEFAULT 'H', -- 관리자 권한, 멤버쉽 등급
	pnt varchar(10000) not null DEFAULT '0',
    fname VARCHAR(50) NULL,
	zipcode VARCHAR(7) NULL,
	address1 VARCHAR(150) NULL,
	address2 VARCHAR(50) NULL,
	mdate DATE NOT NULL
    );

insert into user (id, passwd, mname, phone, email, jumin, license, grade, pnt, fname, zipcode, address1,address2, mdate)
values ('user1', '1234','김길동','010-0000-0001', 'mail1@mail.com','0000000000000', '13-11-123456-78', 'H', '0', 'license.jpg',  
'123-123','서울시','강남구', sysdate());
insert into user (id, passwd, mname, phone, email, jumin, license, grade, pnt, fname, zipcode, address1,address2, mdate)
values ('user2', '1234','홍길동','010-0000-0002', 'mail2@mail.com', '0000000000000', '13-11-123456-79', 'H', '0', 'license.jpg',  
'123-123','서울시','용산구', sysdate());
insert into user (id, passwd, mname, phone, email, jumin, license, grade, pnt, fname, zipcode, address1,address2, mdate)
values ('user3', '1234','박길동','010-0000-0003', 'mail3@mail.com', '0000000000000', '13-11-123456-80', 'H', '0', 'license.jpg',  
'123-123','서울시','동작구', sysdate());

insert into user (id, passwd, mname, phone, email, jumin, license, grade, pnt, fname, zipcode, address1,address2, mdate)
VALUES('admin', '1234', '관리자', '02-1234-1234', 'admin@mail.com','0000000000000', '0', 'A','0', 'license.jpg',
'123-123','서울시','서초구', sysdate()); 

select * from user;

select id, passwd, mname
from user
where grade = 'A'
order by id desc;

update user
set phone = '010-1234-1234'
where id = 'test1';

delete
from user
where id = "test11";