SELECT
  CASE
    WHEN p.performance_score <= 2 THEN 'Low Performer (1-2)'
    WHEN p.performance_score = 3 THEN 'Average Performer'
    ELSE 'High Performer (4-5)'
  END AS performance_category,
  COUNT(emp.employee_id) AS total_employees,
  COUNTIF(emp.termination_date IS NOT NULL) AS churned_employees,
  ROUND((COUNTIF(emp.termination_date IS NOT NULL) / COUNT(emp.employee_id)) * 100,1) AS attrition_rate_percent
FROM
  `people-analytics-connectsphere.people_data.employees` AS emp
JOIN `people-analytics-connectsphere.people_data.performance` AS p
  ON emp.employee_id = p.employee_id
GROUP BY  
  performance_category
ORDER BY
  performance_category;