Create Table sihyeomMunje
(
  munje_num int  primary key,
  munje varchar2(200) ,  -- 문제
  munje_type varchar2(5) ,   
     -- TT (문제 T 보기 T ) , TI (문제 T 보기 I )  , IT (문제 I 보기 T )
  munje_image varchar2(50) , 
  bogi1 varchar2(100) ,   --  보기 1
  bogi2 varchar2(100) ,    --  보기 2
  bogi3 varchar2(100) ,   --  보기 3
  bogi4 varchar2(100) ,   --  보기 4
  dap varchar2(100)    --  정답
); 

select * from sihyeomMunje  

 Insert  into sihyeomMunje(munje_num, munje, munje_type, bogi1, bogi2, bogi3, bogi4, dap) Values
(1, '다음 중 1 + 1은   ?', 'TT', '일<br>', '이<br>', '삼<br>','사<br>','이<br>');
Insert  into sihyeomMunje(munje_num, munje, munje_type, bogi1, bogi2, bogi3, bogi4, dap) Values
(2, '다음 중 1 + 2은   ?', 'TT', '일<br>', '이<br>', '삼<br>','사<br>','삼<br>');
Insert  into sihyeomMunje(munje_num, munje, munje_type, bogi1, bogi2, bogi3, bogi4, dap) Values
(3, '다음 중 1 + 3은 ?', 'TT', '일<br>', '이<br>', '삼<br>','사<br>','사<br>');
Insert  into sihyeomMunje(munje_num, munje, munje_type, bogi1, bogi2, bogi3, bogi4, dap) Values
(4, '다음 중 1 + 4은 ?', 'TT', '삼<br>', '사<br>', '오<br>','육<br>','오<br>');
Insert  into sihyeomMunje(munje_num, munje, munje_type, bogi1, bogi2, bogi3, bogi4, dap) Values
(5, '다음 중 1 + 5은 ?', 'TT', '삼<br>', '사<br>', '오<br>','육<br>','육<br>');