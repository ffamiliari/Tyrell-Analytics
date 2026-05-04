-- Purpose: Create a business-ready customer insights view with churn risk

CREATE OR REPLACE VIEW CUSTOMER_INSIGHTS AS
SELECT
  c.customer_id,
  c.country,
  c.segment,
  b.monthly_revenue,
  COALESCE(SUM(u.events), 0) AS total_events,
  CASE
    WHEN COALESCE(SUM(u.events), 0) = 0 THEN 'HIGH RISK'
    WHEN COALESCE(SUM(u.events), 0) < 1000 THEN 'MEDIUM RISK'
    ELSE 'LOW RISK'
  END AS churn_risk
FROM CUSTOMERS c
LEFT JOIN BILLING b
  ON c.customer_id = b.customer_id
LEFT JOIN USAGE u
  ON c.customer_id = u.customer_id
GROUP BY
  c.customer_id,
  c.country,
  c.segment,
  b.monthly_revenue;