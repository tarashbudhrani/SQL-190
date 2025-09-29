select ROUND(sum(item_count*order_occurrences)::NUMERIC/sum(order_occurrences),1)
from items_per_order
