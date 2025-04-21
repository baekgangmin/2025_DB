-- 9번
select
	id,
	name,
	(kor + eng + math)/3 test_average
from students s
join test t
using(id);