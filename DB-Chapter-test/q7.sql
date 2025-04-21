-- 7번
select user_id, date, country
from airplane a
join ticket t
on a.id = t.airplane_id
where a.country not in ('Korea', 'China', 'Japan')
order by user_id;