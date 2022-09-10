SELECT
    Department.[Name] AS 'Department',
    Employee.[Name] AS 'Employee',
    Salary
FROM Employee
INNER JOIN Department ON Employee.Department_ID = Department.ID
WHERE (Department_ID , Salary) 
    IN
    (   SELECT
           Department_ID, MAX(Salary)
        FROM
            Employee
        GROUP BY Department_ID
 )