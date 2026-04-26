# 📊 E-Commerce Sales Analysis (SQL + Power BI)

## 🔍 Business Problem
E-commerce businesses generate large volumes of transactional data.  
The goal of this project is to analyze sales, customer behavior, and product performance to answer key business questions:

- What drives revenue growth?
- Who are the most valuable customers?
- Which products and categories perform best?
- How can business improve profitability?

This project simulates how a Data Analyst would analyze e-commerce data to support business decisions.

---

## 🧱 Dataset
This project uses the **Olist E-commerce Dataset** (Brazilian marketplace data).

### Tables Used:
- Customers  
- Orders  
- Order Items  
- Products  
- Payments  
- Reviews  

---

## ⚙️ Data Preparation & Modeling

- Cleaned missing values using `COALESCE` and `NULLIF`
- Standardized datetime formats
- Built a consolidated analytical view: `sales_data`
- Joined multiple tables to create a **single source of truth for analysis**

---

## 🧠 Key Analysis Performed

### 🔹 Revenue Analysis
- Total Revenue  
- Monthly Revenue Trends  
- Revenue by Product Category  

### 🔹 Customer Analysis
- Customer segmentation (High / Medium / Low value)  
- Customer Lifetime Value (CLTV)  
- Repeat customer identification  
- Revenue contribution analysis (Pareto principle)  

### 🔹 Product Performance
- Best-performing product categories  
- Revenue contribution by category  

### 🔹 Order Metrics
- Total Orders  
- Average Order Value (AOV)  
- Order frequency and purchase behavior  

---

## 📊 Key Business Insights

- Top customers contribute a significant share of total revenue (Pareto effect)  
- High-value customers are key drivers of profitability  
- Revenue is concentrated in a few product categories  
- Monthly trends indicate seasonality and growth opportunities  
- AOV highlights opportunities for upselling and cross-selling  

---

## 🛠️ Tools & Technologies

- **SQL (MySQL)** → Data cleaning, transformation, advanced analysis  
- **Power BI** → Dashboard & visualization  
- **GitHub** → Version control  

---

## 📁 Project Structure

```
sql/
├── schema.sql
├── data_import.sql
├── data_cleaning.sql
├── kpi_queries.sql
├── advanced_analysis.sql

docs/
├── dashboard.png

powerbi/
├── E-Commerce.pbix

README.md
insights.md

```

---

## 📈 Dashboard

The Power BI dashboard includes:

- KPI Cards (Revenue, Orders, AOV)  
- Monthly Revenue Trend  
- Sales by Category  
- Customer Segmentation  
- Regional Sales Distribution  

---

## 🚀 Outcome

- Built an end-to-end data analysis pipeline using SQL and Power BI  
- Applied advanced SQL techniques (Joins, Window Functions, Aggregations)  
- Transformed raw data into structured analytical datasets  
- Generated actionable business insights for decision-making  

---

## 🔮 Future Improvements

- Customer retention & churn analysis  
- Cohort analysis  
- Predictive analytics  
- Real-time dashboard integration  

---

## 🙌 Author

Sunil Pandian  
📧 harleykingsunil@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/sunil-pandian-80b97427b/  
💻 GitHub: https://github.com/SunilPandian  
