create table book(
	id int,
	title varchar(10),
	author varchar(10),
	publisher varchar(10),
	date_recieved date
);

INSERT INTO book (id, title, author, publisher)
VALUES (1, '어린왕자', '생텍쥐페리', '엘리스 출판');

INSERT INTO book (id, title, author, publisher)
VALUES (2, '돈키호테', '키겔 더 세르반테스', '엘리스 출판');

-- book 테이블의 구조를 조회하는 쿼리입니다. 수정하실 필요는 없습니다.
DESC book;

-- 책의 제목과 저자만 골라서 조회하는 쿼리를 작성해주세요.
select title, author from book;