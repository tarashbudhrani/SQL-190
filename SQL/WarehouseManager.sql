# Write your MySQL query statement below
with final_table as (

    select product_id,product_name,(Width*Length*Height) as volume
    from Products
)

select name as warehouse_name,sum(units*volume) as volume   from Warehouse
join final_table
on Warehouse.product_id=final_table.product_id
group by name
