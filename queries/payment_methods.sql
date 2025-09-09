SELECT
  Payment_Method,
  COUNT(Order_ID) AS Total_Orders,
  ROUND(COUNT(Order_ID) * 100.0 / SUM(COUNT(Order_ID)) OVER(), 2) AS Percentage
FROM `plenary-ability-463920-b3.restaurant_dataset.restaurant_orders_cleaned`
GROUP BY Payment_Method
ORDER BY Total_Orders DESC;
