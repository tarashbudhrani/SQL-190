SELECT card_name ,issued_amount from(
select card_name, issued_amount , 
DENSE_RANK() OVER(PARTITION BY card_name ORDER BY issue_year,issue_month ) as ranked
from monthly_cards_issued
) as final_table
where ranked=1
order by issued_amount desc