REM   Script: lesson08
REM   Basic SQL

REM   Script: 3장 sql


REM   3장 SQL


REM   Script: 3장 SQL 기초


REM   3장 SQL 기초


CREATE TABLE Book ( 
  bookid      NUMBER(2) PRIMARY KEY, 
  bookname    VARCHAR2(40), 
  publisher   VARCHAR2(40), 
  price       NUMBER(8)  
);

CREATE TABLE  Customer ( 
  custid      NUMBER(2) PRIMARY KEY,   
  name        VARCHAR2(40), 
  address     VARCHAR2(50), 
  phone       VARCHAR2(20) 
);

CREATE TABLE Orders ( 
  orderid NUMBER(2) PRIMARY KEY, 
  custid  NUMBER(2) REFERENCES Customer(custid), 
  bookid  NUMBER(2) REFERENCES Book(bookid), 
  saleprice NUMBER(8) , 
  orderdate DATE 
);

INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);

INSERT INTO Book VALUES(2, '축구아는 여자', '나무수', 13000);

INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);

INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);

INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);

INSERT INTO Book VALUES(6, '역도 단계별기술', '굿스포츠', 6000);

INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);

INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);

INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);

INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');

INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');

INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');

INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');

INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);

INSERT INTO Orders VALUES (1, 1, 1, 6000, TO_DATE('2014-07-01','yyyy-mm-dd'));

INSERT INTO Orders VALUES (2, 1, 3, 21000, TO_DATE('2014-07-03','yyyy-mm-dd'));

INSERT INTO Orders VALUES (3, 2, 5, 8000, TO_DATE('2014-07-03','yyyy-mm-dd'));

INSERT INTO Orders VALUES (4, 3, 6, 6000, TO_DATE('2014-07-04','yyyy-mm-dd'));

INSERT INTO Orders VALUES (5, 4, 7, 20000, TO_DATE('2014-07-05','yyyy-mm-dd'));

INSERT INTO Orders VALUES (6, 1, 2, 12000, TO_DATE('2014-07-07','yyyy-mm-dd'));

INSERT INTO Orders VALUES (7, 4, 8, 13000, TO_DATE( '2014-07-07','yyyy-mm-dd'));

INSERT INTO Orders VALUES (8, 3, 10, 12000, TO_DATE('2014-07-08','yyyy-mm-dd'));

INSERT INTO Orders VALUES (9, 2, 10, 7000, TO_DATE('2014-07-09','yyyy-mm-dd'));

INSERT INTO Orders VALUES (10, 3, 8, 13000, TO_DATE('2014-07-10','yyyy-mm-dd'));

CREATE TABLE Imported_Book ( 
  bookid      NUMBER , 
  bookname    VARCHAR(40), 
  publisher   VARCHAR(40), 
  price       NUMBER(8)  
);

INSERT INTO Imported_Book VALUES(21, 'Zen Golf', 'Pearson', 12000);

INSERT INTO Imported_Book VALUES(22, 'Soccer Skills', 'Human Kinetics', 15000);

COMMIT








select * 
from book ;

select * 
from book ;

select phone 
from customer 
where name='김연아';

select phone 
from customer 
where name='김연아' 
 
 
# 18932040 배청명입니다 
# 교수님 저 사용하는 이메일이 보통 두개라 알려드려용 
# gilddongii@gmail.com 
# infanzia1012@naver.com 
;

select phone 
from customer 
where name='김연아' 
 
 
// 18932040 배청명입니다 
//교수님 저 사용하는 이메일이 보통 두개라 알려드려용 
//  gilddongii@gmail.com 
//  infanzia1012@naver.com 
;

select phone 
from customer 
where name='김연아' 
 
 
;

select phone 
from customer 
where price >= 10000;

select bookname, price 
from book;

select bookid,bookname, publisher,price 
from book;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select publisher 
from book;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select dispinct publisher 
from book;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select bookid 
from book;

where price < 20000


select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select bookname 
from book;

where price < 20000


select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select bookname 
from book;

where price > 20000


select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select bookname 
from book;

where price BETWEEN 10000 AND 20000


select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book;

where price BETWEEN 10000 AND 20000


select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid, bookname, orderdata 
from orders 
where [2014-07-04:2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid, bookname, orderdata 
from orders 
where [2014-07-04:2014-07-07];

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid, bookname, orderdata 
from orders 
where BETWEEN 2014-07-04 AND 2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid, bookname, orderdata 
from orders 
where orderdate BETWEEN 2014-07-04 AND 2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid, orderdata 
from orders 
where orderdate BETWEEN 2014-07-04 AND 2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid, orderdate 
from orders 
where orderdate BETWEEN 2014-07-04 AND 2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid 
from orders 
where orderdate BETWEEN 2014-07-04 AND 2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid 
from orders 
where orderdate >= 2014-07-04 AND orderdate <= 2014-07-07;

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid 
from orders 
where orderdate >= 2014-07-04 AND orderdate <= 2014-07-07;

select name, address 
from customer 
where '김%';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid 
from orders 
where orderdate >= 2014-07-04 AND orderdate <= 2014-07-07;

select name, address 
from customer 
where name LIKE '김%';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid 
from orders 
where orderdate >= 04-jul-14 AND orderdate <= 04-jul-14;

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select bookid 
from orders 
where orderdate BETWEEN '04-jul-14' AND '04-jul-14';

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select orderid 
from orders 
where orderdate BETWEEN '04-jul-14' AND '04-jul-14';

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select orderid 
from orders 
where orderdate BETWEEN '04-jul-14' AND '07-jul-14';

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select orderid 
from orders 
where orderdate BETWEEN '04-jul-14' AND '07-jul-14' 
 
select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select orderid 
from orders 
where orderdate BETWEEN '04-jul-14' AND '07-jul-14';

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select * 
from orders 
where orderdate BETWEEN '04-jul-14' AND '07-jul-14';

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer 
 
select * 
from orders 
where orderdate BETWEEN '04-jul-2014' AND '07-jul-2014';

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select bookid,bookname, publisher,price 
from book;

select * 
from book;

select DISTINCT publisher 
from book;

select * 
from book 
where price BETWEEN 10000 AND 20000;

SELECT * 
FROM book 
where publisher IN ('굿스포츠', '대한미디어');

select * 
from book 
where publisher NOT IN ('굿스포츠','대한미디어');

select bookname, publisher 
from book 
where bookname LIKE'%축구%';

select * 
from book 
where bookname LIKE '_구%';

select *from book 
where bookname LIKE '%축구%' AND price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher = '대한미디어';

select * 
from book 
where bookid = 1;

select bookname 
from book 
where bookid = 1;

select bookname 
from book 
where price >= 20000;

select custid, name 
from customer;
 ;

select name, address 
from customer 
where name LIKE '김%';

select name, address 
from customer 
where name LIKE '김%아';

select * 
from orders 
where orderdate BETWEEN '04-jul-2014' AND '07-jul-2014';


select orderid
from orders
where orderdate BETWEEN '04-jul-14' AND '07-jul-14';


select orderid
from orders
where orderdate NOT BETWEEN '04-jul-14' AND '07-jul-14';


