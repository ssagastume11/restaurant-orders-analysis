# 🍽️ Restaurant Orders Analysis

This project analyzes synthetic restaurant order data (500 records) to uncover customer preferences, category performance, and payment method trends. The analysis highlights top-selling items, category contributions to revenue, and the distribution of payment methods to guide actionable restaurant strategies.

---

## 📦 Dataset

**Source**: [Kaggle - Restaurant Orders](https://www.kaggle.com/datasets/haseebindata/restaurant-orders?select=restaurant_orders.csv)  
**Provider**: Muhammad Haseeb

**Filename**: `restaurant_orders.csv`

**Location**: Stored in the `data/` folder

**Fields include**:
- Order ID
- Customer Name
- Food Item
- Category (Main, Starter, Dessert, Beverage, etc.)
- Quality
- Price
- Payment Method (Cash, Credit Card, Debit Card, Online)
- Order Time

---

## 🔍 Business Task

The primary objective of this analysis is to evaluate restaurant order data to support business decisions by:

- Identify the top-selling foods
- Measuring category contributions to revenue
- Analysis of customer payment method preferences
- Translate insights into recommendations for menu, operations, and payment strategy

---

## 📊 Tools & Technology

- **Google BigQuery** for SQL-based data preparation and analysis
- **Google Sheets & Looker Studio** for data visualization and storytelling
- **PowerPoint / Google Slides** for stakeholder presentation
- **Git & GitHub** for version control and collaboration

---

## 📁 Project Structure

```plaintext
restaurant-order-analysis/
├── data/                   
│   └── restaurant_orders.csv
├── queries/                
│   ├── payment_methods.sql
│   ├── sales_by_category.sql
│   ├── top_selling_items.sql
├── charts/                
│   ├── Total_Orders, Percentage by Payment_Method.png
│   └── Total_Quantity_Sold by Food_Item.png
│   └── total_orders_by_payment_method.png
├── presentation/           
│   └── Restaurant_Orders_Presentations_Link.md
└── README.md
```

---

## 🧮 SQL Query (Top-Selling Food Items)

```sql
SELECT 
  Food_Item,
  SUM(Quantity) AS Total_Quantity_Sold
FROM `plenary-ability-463920-b3.restaurant_dataset.restaurant_orders_cleaned`
GROUP BY Food_Item
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;
```

---

## 📈 Analysis Output
The final visualizations, saved in the `charts/` folder, include:
- 🍕 Top-Selling Items: highlighting the most frequently purchased foods
- 🍲 Sales by Category: shows which menu sections generate revenue
- 💳 Payment Methods: distribution of customer preferences for transactions

---

## 🧾 Presentation
The final presentation (in the `presentation/` folder) summarizes:
- Project purpose and scope
- Data preparation steps
- Key findings with visuals
- Actionable recommendations

---

## ✅ Next Steps
- Extend analysis with peak order times using timestamp data
- Introduce customer segmentation to understand repeat order behavior
- Create a dashboard version in Looker Studio for real-time tracking

---

## 🙌 Acknowledgments
- Dataset courtesy of [Haseeb In Data on Kaggle](https://www.kaggle.com/datasets/haseebindata/restaurant-orders?select=restaurant_orders.csv)
- Tools powered by Google Cloud, BigQuery, SQL, Google Slides, and open source communities.
