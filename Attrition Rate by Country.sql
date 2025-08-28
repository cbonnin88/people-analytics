WITH AttritionCounts AS (
  SELECT
    country,
    COUNT(employee_id) AS total_employees,
    COUNTIF(termination_date IS NOT NULL) AS churned_employees
  FROM
    `people-analytics-connectsphere.people_data.employees`
  GROUP BY
    country
)
SELECT
  country,
  AttritionCounts.churned_employees,
  AttritionCounts.total_employees,
  ROUND((AttritionCounts.churned_employees / AttritionCounts.total_employees) * 100,0) AS attrition_rate_percent
FROM
  AttritionCounts
ORDER BY
  attrition_rate_percent DESC;