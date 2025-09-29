select manufacturer,
CONCAT('$',ROUND(sum(total_sales)/1000000) ,' ','million') as sale from pharmacy_sales
group by manufacturer
order by sum(total_sales)  desc, manufacturer