
WITH t1 AS (SELECT
        Department.[Name],
         sum(Salary) AS salary
       FROM Employee
       JOIN Department ON Department.ID = Employee.Department_ID
       GROUP BY Department.[Name]
)
SELECT [Name], salary FROM t1
where t1.salary = (SELECT max(salary) FROM t1);  