with final_table as (
select artist_name,global_song_rank.song_id,rank from global_song_rank
join songs
on global_song_rank.song_id=songs.song_id
join artists
on artists.artist_id=songs.artist_id
)

select artist_name ,artist_rank from (
select artist_name , count(song_id) as number_of_times ,
DENSE_RANK() OVER( ORDER BY count( song_id) DESC) AS artist_rank
from final_table
where rank<=10
group by artist_name
order by number_of_times desc ) as ranked 
where artist_rank<=5
