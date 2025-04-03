-- kickboard 테이블에 제약 조건을 정의하세요.
CREATE TABLE kickboard(
    member_id       VARCHAR(16) not null,
    member_name     VARCHAR(16) not null,
    member_birthday DATE check (member_birthday < '2000-01-01'),
    id              VARCHAR(16) unique not null,
    brand           VARCHAR(16) not null,   
    rental_location VARCHAR(32) not null,
    rental_time     TIME check (rental_time < '01:00:00'), 
    price           INT default 0
);

-- 제약 조건이 올바르게 설정되었는지 직접 데이터를 넣어보세요.
INSERT INTO kickboard(member_id, member_name, member_birthday, id, brand, rental_location, rental_time, price)
VALUES('kmax6', '김민준', '2000-01-01', '7YWC', 'boardkick', '서울시 관악구 신림동', '00:05:25', 4700);
INSERT INTO kickboard(member_id, member_name, member_birthday, id, brand, rental_location, rental_time, price)
VALUES('flykite', '이서연', '1999-01-01', 'JXAN', 'willgo', '서울시 동작구 대방동', '01:09:00', 7200);
