-- Write your query below
select s.name
from sales_person s
WHERE s.sales_id NOT IN (
    select s.sales_id
    from sales_person s
    JOIN orders o ON o.sales_id = s.sales_id
    JOIN company c ON c.com_id = o.com_id
    where c.name = 'CRIMSON'
)
