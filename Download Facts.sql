// Question :https://www.interviewquery.com/questions/download-facts?solution=true&utm_medium=email&utm_source=weekly_question
select d.download_date , a.paying_customer , round(avg(d.downloads),2) average_downloads
from accounts a left join downloads d
on a.account_id = d.account_id
group by d.download_date , a.paying_customer
having count(d.downloads) >=1
order by d.download_date , a.paying_customer
