-- customer 테이블을 정의하세요.
create table customer(
	customer_number varchar(10) primary key,
	name 		    varchar(10) not null,
	id				varchar(15) unique not null,
	pw				varchar(20) not null,
	phone_number    varchar(11) null,
	birth_date      date
);

-- kickboard 테이블을 정의하세요.
CREATE TABLE kickboard(
    id              VARCHAR(10) PRIMARY KEY ,
    brand           VARCHAR(20)  NOT NULL,   
    model_year	    INT          NOT NULL,
    price_per_minute INT         NOT NULL,
    basic_price 	INT          NOT NULL,
    company          VARCHAR(20) NOT NULL
);

-- 정의한 두 테이블을 확인하는 코드입니다. 아래 주석을 해제하여 결과를 확인하세요.
DESC customer;
DESC kickboard;

-- 정의한 테이블에 데이터가 올바르게 삽입되는지 확인해보세요.
INSERT INTO customer
VALUES('0187642351', '김민준', 'kmax6', 'HASH-lui235dfi2', '08786173448', '1989-03-09');
INSERT INTO kickboard
VALUES('7YWC', 'boardkick', 2015, 100, 1000, 'elice');
