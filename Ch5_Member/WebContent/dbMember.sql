select * from student;

select * from member;

-- drop table member;

CREATE TABLE member(
       id VARCHAR2(15),
       pass VARCHAR2(10),
       name VARCHAR2(15),
       age NUMBER,
       gender VARCHAR2(10),
       email VARCHAR2(30),
       status NUMBER default 0,
       PRIMARY Key(id)
   );

insert into member(id, pass, name, age, gender, email, status) 
   values('abcd','1111',＇KIM',44,'여자', 'aaa@aaa.com', 0);

insert into member(id, pass, name, age, gender, email, status) 
   values('admin','1111',＇LEE',23,'남자', 'bbb@bbb.com', 0);
