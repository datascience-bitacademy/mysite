desc user;
-- 조회
select * from user;

-- 회원가입
insert
  into user
values (null, '둘리', 'dooly@gmail.com', password('1234'), 'male', now()); 

-- login
select no, name
  from user
 where email='dooly@gmail.com'
   and password=password('12345');

-- 회원정보 수정
select name, email, gender
  from user
 where no=2;
 
update user
   set name='...', gender='...'
  where no=2;
  
update user
   set name='...', password=password('....'), gender='...'
  where no=2;


USE mysite;
SHOW TABLES;

DESC guestbook;

SELECT * FROM guestbook;

-- LIKE 검색
-- name 이 길동을 검색
SELECT * FROM guestbook
WHERE name = "길동";

SELECT * FROM guestbook
WHERE name LIKE "%길동%";   

