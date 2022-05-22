REM   Script: db_lesson11_script
REM   db_lesson11

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid = Customer.custid);

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








SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

// 주석 이렇게? 


SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

# 주석 이렇게? 


SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice) 
from Orders;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select ;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid;

select ;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select ;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select orderid 
from Orders, Book 
where abs(Orders.saleprice - Book.price);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where (select avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid 
group by name) 
> (select avg(saleprice) 
from Orders);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid AND (select avg(saleprice) from Orders) 
group by name;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice)>(select avg(saleprice) from Orders) 
;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders) 
 
-- 
-- 연습문제2. 마당서점에서 다음의 심화된 질문에 대해 SQL문을 작성하시오 
 
/* 1) 박지성이 구매한 도서의 출판사와  
같은 출판사에서 도서를 구매한 고객의 이름 */ 
 
select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid and name="박지성";

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders) 
 
-- 
-- 연습문제2. 마당서점에서 다음의 심화된 질문에 대해 SQL문을 작성하시오 
 
/* 1) 박지성이 구매한 도서의 출판사와  
같은 출판사에서 도서를 구매한 고객의 이름 */ 
 
select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid and name like "박지성";

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders) 
 
-- 
-- 연습문제2. 마당서점에서 다음의 심화된 질문에 대해 SQL문을 작성하시오 
 
/* 1) 박지성이 구매한 도서의 출판사와  
같은 출판사에서 도서를 구매한 고객의 이름 */ 
 
select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid and name like '박지성';

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid and name like '박지성';

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where Book.publisher = (select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid and name like '박지성');

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid and Orders.bookid = Book.bookid) 
- (select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid and name like '박지성');

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid and Orders.bookid = Book.bookid and publisher)) 
= (select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid and Orders.bookid = Book.bookid and publisher)) 
= (select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid and Orders.bookid = Book.bookid and publisher) 
= (select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid and Orders.bookid = Book.bookid and publisher) 
= (select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select name 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Orders.bookid 
and publisher count 2;

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select name 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select name 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select bookname 
from Book b1 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid 
and Book.bookid=b1.bookid) >= 0.3*(select count(*) from customer) );

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select name 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

(select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid) >= 0.3 * (select count(*) from Customer) 
 
 
select bookname 
from Book b1 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid 
and Book.bookid=b1.bookid) >= 0.3*(select count(*) from customer) );

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select name 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select * 
from Book 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid) >= 0.3 * (select count(*) from Customer));

select bookname 
from Book b1 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid 
and Book.bookid=b1.bookid) >= 0.3*(select count(*) from customer) );

SELECT name 
FROM Customer 
WHERE name NOT IN(SELECT name 
FROM Orders, Customer 
WHERE Orders.custid=Customer.custid);

select * 
from Customer, Orders 
where Customer.custid = Orders.custid;

select sum(saleprice), avg(saleprice) 
from Orders;

select name, sum(saleprice) 
from Customer, Orders 
WHERE Customer.custid = Orders.custid 
group by Customer.name;

select name, bookname 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid;

select * 
from Orders, Book 
where Orders.bookid = Book.bookid and abs(price - saleprice) = (select max(price-saleprice) 
from Book, Orders 
where Book.bookid = Orders.bookid);

select name, avg(saleprice) 
from Customer, Orders 
where Customer.custid = Orders.custid  
group by name 
having avg(saleprice) > (select avg(saleprice) from Orders);

select name 
from Customer, Orders, Book 
where (Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name not like '박지성') 
and publisher in  
(select publisher 
from Customer, Orders, Book 
where Customer.custid = Orders.custid  
and Orders.bookid = Book.bookid  
and name like '박지성');

select * 
from Customer 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid);

select * 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select name 
from Customer c1 
where 2<=(select count(distinct publisher) 
from Customer, Orders, Book 
where Customer.custid = Orders.custid and Orders.bookid = Book.bookid 
and name like c1.name);

select * 
from Book 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid)  
>= 0.3 * (select count(*) from Customer));

select * 
from Book b1 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid 
and Book.bookid = b1.bookid)  
>= 0.3 * (select count(*) from Customer));

select bookname 
from Book b1 
where ((select count(Book.bookid) 
from Book, Orders 
where Book.bookid = Orders.bookid 
and Book.bookid=b1.bookid) >= 0.3*(select count(*) from customer) );

