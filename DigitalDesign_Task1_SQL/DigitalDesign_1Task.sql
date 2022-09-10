use Dising_Digita_Test
select  [Name], Max(Salary) as Salarymax from Employee   group by [Name] ,Salary HAVING Salary = (Select MAX(Salary)from Employee )
