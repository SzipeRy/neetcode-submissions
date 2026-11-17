-- Write your query below
WITH product_a_b AS (
    select customer_id
    from orders
    where product_name = 'A'
    INTERSECT
    select customer_id
    from orders
    where product_name = 'B'
),
product_c AS
(
    select order_id, customer_id, product_name
    from orders
    where product_name = 'C'
)

Select DISTINCT c.customer_id, c.customer_name
FROM customers c
JOIN product_a_b pab on c.customer_id = pab.customer_id
LEFT JOIN product_c pc on c.customer_id = pc.customer_id
where pc.customer_id IS NULL
ORDER BY c.customer_name asc;