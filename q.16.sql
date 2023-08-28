SELECT
    Company,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Salary) OVER (PARTITION BY Company) AS MedianSalary
FROM Employee;