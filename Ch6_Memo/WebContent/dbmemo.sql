create table memo_Test (
  num number,
  name varchar2(15),
  title varchar2(100),
  pass varchar2(10),
  indate date default sysdate,
  primary key(num)
  );
  
  CREATE SEQUENCE AUTO_SEQ_NUMBER
         INCREMENT BY 1
         START WITH 1
         MAXVALUE  1000
         NOCACHE
         NOCYCLE;
         
         INSERT INTO memo_Test(num, name, title, pass) VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'aaaa', 'TEST','1111');	
         select * from memo_Test;
         select * from member;
         delete from memo_Test;
         drop table memo_Test;
         drop SEQUENCE AUTO_SEQ_NUMBER;