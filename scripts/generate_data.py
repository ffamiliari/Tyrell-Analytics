import pandas as pd
import random

# Generate customers
customers = []
for i in range(100):
    customers.append({
        "customer_id": i,
        "country": random.choice(["FR", "DE", "US"]),
        "segment": random.choice(["SMB", "Enterprise"])
    })

df_customers = pd.DataFrame(customers)
df_customers.to_csv("data/customers.csv", index=False)

# Generate usage
usage = []
for i in range(500):
    usage.append({
        "customer_id": random.randint(0, 99),
        "events": random.randint(10, 1000)
    })

df_usage = pd.DataFrame(usage)
df_usage.to_csv("data/usage.csv", index=False)

# Generate billing
billing = []
for i in range(100):
    billing.append({
        "customer_id": i,
        "monthly_revenue": random.randint(100, 10000)
    })

df_billing = pd.DataFrame(billing)
df_billing.to_csv("data/billing.csv", index=False)

print("Data generated successfully!")