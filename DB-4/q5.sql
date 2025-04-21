-- WITH RECURSIVE 를 이용하여 계층형 질의를 작성해보세요.

with recursive cte(mentee_id, mento_id, lvl) 
as (
	select mentee_id, mento_id, 0
	from member
	where mento_id is null

	union all

	select a.mentee_id, a.mento_id, b.lvl +1
	from member a
	join cte b
	on a.mento_id = b.mentee_id
)
select mentee_id, mento_id, lvl
from cte
order by mentee_id, lvl;