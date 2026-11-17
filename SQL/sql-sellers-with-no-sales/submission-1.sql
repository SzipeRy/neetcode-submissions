-- Write your query below
select DISTINCT s.seller_name
from seller s
where s.seller_id not in (
    select seller_id
    from orders
    where sale_date BETWEEN '2020-01-01' AND '2020-12-31'
)

ORDER BY s.seller_name asc