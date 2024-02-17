SELECT user_id , 
extract(
day from (MAX(post_date) - MIN(post_date))) days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
group by user_id
having count(post_id)>1
