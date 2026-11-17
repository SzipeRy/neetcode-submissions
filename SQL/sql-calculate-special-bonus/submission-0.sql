-- Write your query below
update employees
set salary = 0
where employee_id % 2 = 0 or name like 'M%';

select employee_id, salary as bonus
from employees
order by employee_id asc