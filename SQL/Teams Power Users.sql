select sender_id,
count(message_id) as message_count from messages
where sent_date between '08/01/2022'and '09/01/2022'
group by sender_id
order by message_count DESC
limit 2
