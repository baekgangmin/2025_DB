-- borrow 테이블을 정의하세요.
create table borrw(
	customer_number varchar(20) not null,
	rental_time datetime not null,
	rental_status enum('대여', '반납') not null,
	rental_location varchar(20) not null,
	kickboard_id varchar(10) null,
	primary key (customer_number, rental_time),
	foreign key (kickboard_id) references kickboard(id)
);


-- 정의한 테이블과 외래키 제약 조건을 확인하는 코드입니다. 아래 주석을 해제하여 결과를 확인하세요.
SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_TYPE = 'FOREIGN KEY';
DESC borrow;

-- 정의한 테이블에 데이터가 올바르게 삽입되는지 확인해보세요.
INSERT INTO customer
VALUES('0187642351', '김민준', 'kmax6', 'HASH-lui235dfi2', '08786173448', '1989-03-09');
INSERT INTO kickboard
VALUES('7YWC', 'boardkick', 2015, 100, 1000, 'elice');
INSERT INTO borrow
VALUES('0187642351', '2020-08-20 13:01:02', '대여', '서울시 강남구 역삼동', '7YWC');

