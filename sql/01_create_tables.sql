-- Purpose: Create raw tables for the Tyrell Analytics project

CREATE TABLE CUSTOMERS (
  customer_id INTEGER,
  country STRING,
  segment STRING
);

CREATE TABLE USAGE (
  customer_id INTEGER,
  events INTEGER
);

CREATE TABLE BILLING (
  customer_id INTEGER,
  monthly_revenue INTEGER
);