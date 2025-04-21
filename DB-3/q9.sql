-- salaries 테이블에서 직원 번호와 한 직원의 평균 급여를 중복없이 출력해보세요.

select 
distinct emp_no, 
(select avg(salary) from salaries s2 WHERE s1.emp_no = s2.emp_no) as avg_salary 
from salaries s1;