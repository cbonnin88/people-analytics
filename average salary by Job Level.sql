WITH LatestSalaries AS (
  SELECT
    employee_id,
    salary_in_eur,
    ROW_NUMBER() OVER(PARTITION BY employee_id ORDER BY effective_date DESC) AS rn
  FROM
    `people-analytics-connectsphere.people_data.salaries`
)
SELECT
  emp.level,
  FORMAT('%.0f',AVG(ls.salary_in_eur)) AS avg_salary_eur
FROM
  `people-analytics-connectsphere.people_data.employees` AS emp
JOIN LatestSalaries AS ls
    ON emp.employee_id = ls.employee_id
WHERE
  emp.termination_date IS NULL
  AND ls.rn = 1 -- Only the lastest salary
GROUP BY
  emp.level
ORDER BY
  emp.level;