select category,product,total_spend from (
select category,product,sum(spend) as total_spend,
DENSE_RANK() OVER(PARTITION BY category ORDER BY sum(spend) DESC) as ranking
FROM product_spend
WHERE YEAR(transaction_date)='2022'
group by category,product
)as final
WHERE ranking<3