
 SELECT
        Department.[Name],
         sum(Salary) AS salary
       FROM Employee
       JOIN Department ON Department.ID = Employee.Department_ID
       GROUP BY Department.[Name]

 