Create Table QUIZ
(
  Q_NUM int  primary key,        -- ���� ��ȣ
  Q_QUESTION varchar2(200) ,  -- ����
  Q_TYPE varchar2(5) ,   
     -- TT (���� T ���� T ) , TI (���� T ���� I )  , IT (���� I ���� T )
  Q_IMAGE varchar2(50) , 
  Q_EX1 varchar2(100) ,   --  ���� 1
  Q_EX2 varchar2(100) ,    --  ���� 2
  Q_EX3 varchar2(100) ,   --  ���� 3
  Q_EX4 varchar2(100) ,   --  ���� 4
  Q_ANSWER varchar2(100)    --  ����
 );
 
select * from QUIZ
Drop table QUIZ

Create Table SCORE
(
  S_Hakbun varchar2(10)  primary key,   --  �й�
  S_Name varchar2(10) ,                  --  �̸�
  S_GRADE varchar2(10) ,                  --  ����
  Q_INDATE   date default sysdate    -- ���賯¥
);

select * from SCORE
Drop table SCORE

select * from member

Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(1, '1+1= ? ', 'TT', '1', '2', '3', '4', '2');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(2, '1+2= ? ', 'TT', '1', '2', '3', '4', '3');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(3, '1+3= ? ', 'TT', '1', '2', '3', '4', '4');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(4, '1+4= ? ', 'TT', '5', '6', '7', '8', '5');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(5, '1+5= ? ', 'TT', '5', '6', '7', '8', '6');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(6, '1+6= ? ', 'TT', '5', '6', '7', '8', '7');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(7, '1+7= ? ', 'TT', '5', '6', '7', '8', '8');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(8, '1+8= ? ', 'TT', '6', '7', '8', '9', '9');
Insert into QUIZ(Q_NUM, Q_QUESTION, Q_TYPE, Q_EX1, Q_EX2, Q_EX3, Q_EX4, Q_ANSWER) Values(9, '������ �ڸ���� ?', 'TI', '<img src="img/ca.jpg"','<img src="img/iu.jpg"', '<img src="img/pa.jpg"', '<img src="img/yu.jpg" ', '<img src="img/pa.jpg" ');
Insert into QUIZ Values(10, '���� ������ �׸��� ��� �߿��� ��� ���� ��Ÿ���°� ?  <br> <img src="img/while.jpg" ', 'IT',NULL, 'for ��', 'do - while ��', 'while ��', 'if ��', 'while ��');