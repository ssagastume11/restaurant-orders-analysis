SELECT
  Category,
  ROUND(SUM(Quantity * Price), 2) AS Total_Sales
FROM `plenary-ability-463920-b3.restaurant_dataset.restaurant_orders_cleaned`
GROUP BY Category
ORDER BY Total_Sales DESC;
