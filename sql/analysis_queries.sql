-- Total Revenue
SELECT SUM(payment_value) AS total_revenue 
FROM cleaned_data;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders 
FROM cleaned_data;

-- Top 10 Customers by Spending
SELECT customer_id, SUM(payment_value) AS total_spent
FROM cleaned_data
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Revenue by Payment Type
SELECT payment_type, SUM(payment_value) AS revenue
FROM cleaned_data
GROUP BY payment_type;

-- Customer Churn Count
SELECT churn, COUNT(*) 
FROM churn_data
GROUP BY churn;