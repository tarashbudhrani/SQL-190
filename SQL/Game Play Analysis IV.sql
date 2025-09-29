select a1.player_id  from Activity a1
join Activity a2 on
a1.player_id =a2.player_id 
and a1.event_date>a2.event_date
group by player_id 
having DATEDIFF(a1.event_date,a2.event_date)=1