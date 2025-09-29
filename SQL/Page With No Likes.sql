select page_id from (
select pages.page_id ,liked_date from pages left join 
page_likes
on pages.page_id=page_likes.page_id
where liked_date is NULL
) as ranked