SELECT 
  Food_Item,
  SUM(Quantity) AS Total_Quantity_Sold
FROM `plenary-ability-463920-b3.restaurant_dataset.restaurant_orders_cleaned`
GROUP BY Food_Item
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;
