SELECT
    e.ID,
    m.Month,
    SUM(e.Salary) OVER (PARTITION BY e.ID ORDER BY m.Month DESC ROWS BETWEEN 2 PRECEDING AND 1 PRECEDING) AS CumulativeSalary
FROM
    (SELECT DISTINCT ID FROM Employee) e
CROSS JOIN
    (SELECT DISTINCT Month FROM SalaryTable ORDER BY Month DESC) m
LEFT JOIN
    SalaryTable s ON e.ID = s.ID AND m.Month = s.Month
ORDER BY
    e.ID ASC, m.Month DESC;
