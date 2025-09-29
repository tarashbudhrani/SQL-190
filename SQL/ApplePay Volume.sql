select merchant_id,sum(case WHEN lower(payment_method)='apple pay'
THEN transaction_amount ELSE 0 END) as total_transaction
from transactions
group by merchant_id
order by total_transaction desc