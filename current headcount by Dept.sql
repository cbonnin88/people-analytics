SELECT 
  emp.department,
  COUNT(emp.employee_id) AS current_headcount
FROM 
  `people-analytics-connectsphere.people_data.employees` AS emp
WHERE
  emp.termination_date IS NULL
GROUP BY  
  emp.department
ORDER BY
  current_headcount DESC;