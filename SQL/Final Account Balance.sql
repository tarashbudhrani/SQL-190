select account_id,(sum_deposit-sum_wihdrawal) as final_balance from(
select account_id , 
SUM(case when transaction_type='Deposit' then amount else 0 end) as sum_deposit,
SUM(case when transaction_type='Withdrawal' then amount else 0 end) as sum_wihdrawal
from transactions
group by account_id
) as ranked