-- 4 https://leetcode.com/problems/employee-bonus/description/
select Employee.name,Bonus.bonus
from Employee 
left join Bonus
on Employee.empId=Bonus.empId
where Bonus.bonus<1000 or Bonus.bonus is null;
-- 5 https://leetcode.com/problems/employees-with-missing-information/description/
SELECT employee_id
FROM Employees
WHERE employee_id NOT IN (SELECT employee_id FROM Salaries WHERE salary IS NOT NULL)
UNION
SELECT employee_id
FROM Salaries
WHERE employee_id NOT IN (SELECT employee_id FROM Employees WHERE name IS NOT NULL)
ORDER BY employee_id;