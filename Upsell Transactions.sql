

select count(distinct t1.user_id) num_of_upsold_customers
from transactions t1 inner join transactions t2
where t1.user_id = t2.user_id and
t1.created_at < t2.created_at
and t1.id != t2.id
