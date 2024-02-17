SELECT sender_id ,count(distinct message_id) as message_count
FROM messages
where extract(year from sent_date) = 2022 and extract(month from sent_date)=8
group by sender_id
order by count(message_id) DESC
Limit 2
