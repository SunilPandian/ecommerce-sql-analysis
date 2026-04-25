# 📊 E-Commerce Sales Analysis (SQL + Power BI)

## 🔍 Business Problem
E-commerce businesses generate large volumes of transactional data.  
The goal of this project is to analyze sales, customer behavior, and product performance to answer key business questions:

- What drives revenue growth?
- Who are the most valuable customers?
- Which products and categories perform best?
- How can business improve profitability?

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
- Top customers using window functions
- Spending behavior patterns

### 🔹 Product Performance
- Best-selling categories
- Revenue contribution by category

### 🔹 Order Metrics
- Total Orders
- Average Order Value (AOV)

---

## 📊 Key Business Insights

- A small percentage of customers contribute a large share of revenue  
- Certain product categories dominate revenue generation  
- Monthly revenue trends reveal growth patterns and seasonality  
- Average Order Value reflects customer purchasing behavior  

---

## 🛠️ Tools & Technologies

- SQL (MySQL)  
- Power BI  
- GitHub  

---

## 📁 Project Structure

  sql/
  ├── schema.sql
  ├── data_import.sql
  ├── data_cleaning.sql
  ├── kpi_queries.sql

  docs/
  ├── dashboard.png

  powerbi/
  ├── E-Commerce.pbix


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

This project demonstrates:

- Strong SQL skills (Joins, Window Functions)
- Data cleaning and transformation
- Business insight generation
- End-to-end data analysis workflow

---

## 🔮 Future Improvements

- Customer retention analysis  
- Cohort analysis  
- Predictive analytics  

---

## 🙌 Author

Sunil Pandian  
📧 harleykingsunil@gmail.com  
