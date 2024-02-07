select user_id, spend, transaction_date
FROM
(SELECT *,
dense_rank() over(partition by user_id order by transaction_date) ranking
from transactions) tran
where tran.ranking =3
