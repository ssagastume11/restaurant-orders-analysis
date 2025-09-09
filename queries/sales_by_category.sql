SELECT
  Category,
  SUM(Quantity) AS Total_Quantity_Sold
FROM `plenary-ability-463920-b3.restaurant_dataset.restaurant_orders_cleaned`
GROUP BY Category
ORDER BY Total_Quantity_Sold DESC;
