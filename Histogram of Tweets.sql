with CTE as (SELECT user_id , count(tweet_id) 
FROM tweets
where tweet_date >= '01-01-2022' and tweet_date <='12-31-2022'
group by user_id)
select count as tweet_bucket , count(user_id) as users_num
from CTE
group by count
