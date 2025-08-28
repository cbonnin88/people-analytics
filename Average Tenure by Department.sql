SELECT
  emp.department,
  ROUND(AVG(
    DATE_DIFF(DATE('2025-08-28'),emp.hire_date, DAY) / 365.25
  ),0) AS avg_tenure_years
FROM
  `people-analytics-connectsphere.people_data.employees` AS emp
WHERE
  emp.termination_date IS NULL
GROUP BY
  emp.department
ORDER BY
  avg_tenure_years DESC;