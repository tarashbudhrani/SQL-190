select  store_id , sum(payout_amount) as payout_total from 
trade_in_transactions
join trade_in_payouts
on trade_in_transactions.model_id=trade_in_payouts.model_id
group by store_id
order by payout_total  desc
