-- kickboard 테이블을 정의하세요.
create table kickboard(
member_id VARCHAR(16),
member_name	VARCHAR(16),
kickboard_id	VARCHAR(16),
kickboard_brand	VARCHAR(16),
rental_location	VARCHAR(32),
rental_date	DATETIME,
distance	INT,
price	INT	
);

-- 데이터베이스에 정의된 테이블 목록을 출력하세요.
show databases;

-- kickboard 테이블의 구조를 출력하세요.
desc kickboard