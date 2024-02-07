https://www.interviewquery.com/questions/customer-orders


  
  
//step1) create column to identify given transaction is 2019 or 2020
//step 2) use group by to count number of transaction should be greater than 3

with cte as (
select u.id, u.name , t.id as transactions_id,
case 
    when year(t.created_at) = 2019 then "2019"
    else "2020"
End year_selected
from users u left join transactions t
on u.id = t.user_id
where year(t.created_at) = 2019 or year(t.created_at) = 2020
)
select distinct name as customer_name
from cte
group by id, year_selected
having count(transactions_id) >3
