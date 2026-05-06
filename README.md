# Tyrell Analytics – Customer Insights Platform

## Overview

This project simulates a modern SaaS analytics use case, showcasing how raw customer data can be transformed into actionable business insights using a cloud data platform.

It demonstrates a simplified modern data stack approach, inspired by platforms like Snowflake and Databricks.

## Business Objective

The goal is to answer key business questions:

Which customers are at risk of churn?
What are the most valuable customer segments?
Where are the revenue growth opportunities?

## Architecture

- Python: data generation
- Snowflake: cloud data warehouse
- SQL: transformation and business logic
- GitHub: version control

## Key Features

- Customer usage and revenue analysis
- Churn risk classification
- Business-ready view: CUSTOMER_INSIGHTS

## Data Pipeline

1. Generate realistic SaaS customer data (Python)
2. Load data into Snowflake tables
3. Transform data using SQL models
4. Create a business-ready analytical view: CUSTOMER_INSIGHTS

## Key Outputs

- Customer segmentation
- Revenue metrics (MRR, total revenue)
- Churn risk scoring

## Example Insights

- High churn risk concentrated in low-usage segments
- Top 20% customers generate majority of revenue (Pareto effect)
- Upsell opportunities identified in mid-tier segment

## Technologies

- Snowflake
- Python
- SQL
- Git / GitHub
