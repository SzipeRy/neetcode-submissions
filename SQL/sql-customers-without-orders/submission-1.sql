-- Write your query below
select customers.name 
from customers
full join orders on customers.id = orders.customer_id
where orders.id IS NULL
