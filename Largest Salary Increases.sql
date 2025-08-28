WITH SalaryProgression AS (
  SELECT
    employee_id,
    salary_in_eur,
    effective_date,
    LAG(salary_in_eur,1) OVER(
      PARTITION BY employee_id
      ORDER BY effective_date
    ) AS previous_salary
  FROM `people-analytics-connectsphere.people_data.salaries`
)
SELECT
  emp.first_name,
  emp.last_name,
  sp.previous_salary,
  sp.salary_in_eur AS new_salary,
  ROUND(((sp.salary_in_eur - sp.previous_salary) / sp.previous_salary) * 100,1) AS percentage_increase
FROM
  SalaryProgression AS sp
JOIN
  `people-analytics-connectsphere.people_data.employees` AS emp
    ON sp.employee_id = emp.employee_id
WHERE
  SP.previous_salary IS NOT NULL
ORDER BY
  percentage_increase DESC
LIMIT 5;