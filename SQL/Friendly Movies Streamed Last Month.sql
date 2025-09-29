with final_table as (

select title, Kids_content ,program_date ,content_type from Content
join TVProgram
on TVProgram.content_id=Content. content_id

)

select distinct (title) from final_table 
where  Kids_content='Y' and (program_date BETWEEN '2020-06-01'AND '2020-06-30')
and content_type='Movies'