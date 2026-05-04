SELECT
  churn_risk,
  COUNT(*) AS number_of_customers
FROM CUSTOMER_INSIGHTS
GROUP BY churn_risk
ORDER BY number_of_customers DESC;

SELECT
  segment,
  SUM(monthly_revenue) AS total_revenue
FROM CUSTOMER_INSIGHTS
GROUP BY segment
ORDER BY total_revenue DESC;

SELECT
  customer_id,
  country,
  segment,
  monthly_revenue,
  total_events,
  churn_risk
FROM CUSTOMER_INSIGHTS
ORDER BY monthly_revenue DESC
LIMIT 10;