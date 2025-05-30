-- 아래는 STUDENT 테이블에 대한 구조를 보여줍니다. 테이블을 수정하실 필요는 없습니다.
DESC STUDENT;

-- 학생들의 수학, 물리, 화학 점수의 총합 내림차순 기준으로 3개의 그룹으로 나누어 조회하는 쿼리를 작성하세요.
SELECT 
	id,
	math,
	physics,
	chemistry,
	(math + physics + chemistry) as score_sum,
	NTILE(3) OVER (ORDER BY (math + physics + chemistry) DESC) AS quartile
FROM student;

