REM   Script: database_lesson10
REM   lesson10

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








SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING name = "박지성";

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT * 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT * 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT Customer.name, Book.bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Book.price LIKE '20000';

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT * 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT Customer.name, Book.bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Book.price LIKE '20000';

SELECT * 
FROM Customer LEFT OUTER JOIN 
Orders ON Customer.custid = Orders.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT * 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT Customer.name, Book.bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Book.price LIKE '20000';

SELECT * 
FROM Customer LEFT OUTER JOIN  -- JOIN에 실패했어도 왼쪽거는 살려라  
Orders ON Customer.custid = Orders.custid;

SELECT Customer.name, Book.price 
FROM Customer LEFT OUTER JOIN 
    Orders ON Customer.custid = Orders.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT * 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT Customer.name, Book.bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Book.price LIKE '20000';

SELECT * 
FROM Customer LEFT OUTER JOIN  -- JOIN에 실패했어도 왼쪽거는 살려라  
Orders ON Customer.custid = Orders.custid;

SELECT naem, saleprice 
FROM Customer LEFT OUTER JOIN 
    Orders ON Customer.custid = Orders.custid;

SELECT SUM(saleprice) 
FROM Orders;

SELECT SUM(saleprice) AS 총매출 
FROM Orders;

SELECT SUM(saleprice) AS 김연아고객 
FROM Orders 
WHERE custid=2;

SELECT SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Mininum, MAX(saleprice) AS Maximum 
FROM Orders;

SELECT count(*) AS 총도서판매건수 
FROM Orders;

select count(publisher) 
from Book;

select count(distinct publisher) 
from Book;

select custid, count(*) as 도서수량, sum(saleprice) as 총판매액 
from Orders 
group by(custid);

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
group by custid 
having count(*) >= 2;

select custid, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid;

select * 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select *, count(*) as 도서수량 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid 
from Orders 
where saleprice >= 8000 
group by custid 
having count(*) >= 2;

select custid, sum(saleprice) as 총구매액 
from Orders 
group by custid;

select sum(saleprice) as 박지성고객 
from Orders 
where custid = 1;

select custid, sum(saleprice) as 총구매액 
from Orders 
where custid = 1;

select count(*) as 박지성_총구매 
from Orders 
where custid = 1;

SELECT count(*) as 총도서량 
FROM Book;

SELECT count(distinct publisher) as 거래출판사수 
FROM Book;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT * 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
ORDER BY Customer.custid;

SELECT name, saleprice 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid;

SELECT name, SUM(saleprice) AS 총판매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
ORDER BY Customer.name;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid 
GROUP BY Customer.name 
HAVING custid = 1;

SELECT SUM(saleprice) AS 박지성총구매액 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT count(*) AS 총구매수량 
FROM Customer, Orders 
WHERE Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

SELECT name, bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT * 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

SELECT Customer.name, Book.bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Book.price LIKE '20000';

SELECT * 
FROM Customer LEFT OUTER JOIN  -- JOIN에 실패했어도 왼쪽거는 살려라  
Orders ON Customer.custid = Orders.custid;

SELECT name, saleprice 
FROM Customer LEFT OUTER JOIN 
    Orders ON Customer.custid = Orders.custid;

SELECT MAX(price) AS 가장비싼책 
FROM Book;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer, Orders 
WHERE custid IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid  
                    FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT MAX(price) 
-- FROM Book; -- 35000 (금액이 나옴);

SELECT MAX(price) 
-- FROM Book; -- 35000 (금액이 나옴);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders IN (Orders.bookid = Book.bookid AND Book.publisher LIKE '대한미디어'));

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders WHERE bookid IN (SELECT bookid FROM Book WHERE publisher = '대한미디어'));

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid  
                FROM Orders  
                WHERE bookid IN (SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT avg(b2.price) 
FROM Book b2 
WHERE b2.publisher;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
FROM Book b2 
WHERE b2.publisher=b1.publisher);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT bookname 
FROM Book 
WHERE price > (SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher));

SELECT bookname 
FROM Book 
WHERE price > (SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher));

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT bookname 
FROM Book 
WHERE price > (SELECT publisher, avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custin IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer 
WHERE Customer.custid = Orders.custid;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1;

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성');

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT count(distinct publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성'); --(x);

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT count(distinct publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT count(distinct publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT count(distinct publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname, price, (price - saleprice) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT COUNT(DISTINCT publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname, price, (price - saleprice) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT COUNT(DISTINCT publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname, price, (price - saleprice) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
MINUS 
SELECT bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT COUNT(DISTINCT publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname, price, (price - saleprice) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
MINUS 
SELECT bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book b1 
WHERE NOT EXISTS 
    (SELECT bookname 
    FROM Customer, Orders 
    WHERE Customer.custid = Orders.custid And Orders.bookid = b1.bookid AND Customer.name LIKE '박지성');

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT COUNT(DISTINCT publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname, price, (price - saleprice) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
MINUS 
SELECT bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
WHERE NOT EXISTS 
    (SELECT bookname 
    FROM Customer, Orders 
    WHERE Customer.custid = Orders.custid And Orders.bookid = Book.bookid AND Customer.name LIKE '박지성');

SELECT bookname 
FROM Book 
WHERE Book.price = (SELECT MAX(price) FROM Book);

SELECT MAX(price) 
FROM Book; -- 35000 (금액이 나옴) 
 
-- 질의 3-29 도서를 구매한 적이 있는 고객의 이름을 구하시오 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT name 
FROM Customer 
WHERE custid IN(SELECT custid  
                FROM Orders  
                WHERE bookid IN(SELECT bookid  
                                FROM Book  
                                WHERE publisher = '대한미디어'));

SELECT b1.bookname 
FROM Book b1 
WHERE b1.price > (SELECT avg(b2.price) 
                FROM Book b2 
                WHERE b2.publisher=b1.publisher);

SELECT publisher, avg(price) 
FROM Book 
GROUP BY publisher;

SELECT bookname 
FROM Book 
WHERE price > (SELECT avg(price) 
                FROM Book 
                GROUP BY publisher);

SELECT name 
FROM Customer 
MINUS 
SELECT name 
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);

SELECT * 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid = od.custid);

SELECT * 
FROM Customer 
WHERE Customer.custid = Orders.custid; -- 왜 안 되지 
 
-- 연습문제 
-- 1. 박지성이 구매한 도서의 출판사 수 
SELECT COUNT(distinct publisher) 
FROM Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND custid = 1; -- (x) 
 
SELECT count(distinct publisher) 
FROM Book 
WHERE bookid IN (SELECT bookid) 
FROM Orders 
WHERE Customer.custid = Orders.custid AND Customer LIKE '박지성'); --(x) 
 
SELECT COUNT(DISTINCT publisher) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname, price, (price - saleprice) 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book 
MINUS 
SELECT bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid = Orders.custid AND Orders.bookid = book.bookid AND Customer.name LIKE '박지성';

SELECT bookname 
FROM Book b1 
WHERE NOT EXISTS 
    (SELECT bookname 
    FROM Customer, Orders 
    WHERE Customer.custid = Orders.custid And Orders.bookid = b1.bookid AND Customer.name LIKE '박지성');

SELECT bookname 
FROM Book 
WHERE NOT EXISTS 
    (SELECT bookname 
    FROM Customer, Orders 
    WHERE Customer.custid = Orders.custid And Orders.bookid = Book.bookid AND Customer.name LIKE '박지성');

