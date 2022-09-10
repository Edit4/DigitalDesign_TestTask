select
    Department.[Name] as Department,
    Employee.[Name] as Employee,
    MAX(Salary) as SalaryMax
from Employee
 JOIN Department on Employee.Department_ID = Department.ID 
group by Department_ID,Department.[Name], Employee.[Name], Employee.Salary
HAVING Salary in (select MAX(Salary) from Employee)