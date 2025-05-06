# 🛒 Amazon Sales Analysis with SQL

This project uses a sample Amazon sales dataset to practice and demonstrate foundational SQL skills for business data analysis. The goal is to extract meaningful insights related to sales performance, customer behavior, and order patterns.

## 📁 Dataset

The dataset includes 250 Amazon customer orders with the following fields:
- `Order ID`
- `Date`
- `Product`
- `Category`
- `Price`
- `Quantity`
- `Total Sales`
- `Customer Name`
- `Customer Location`
- `Payment Method`
- `Status`

## 🎯 Objectives

- Explore and clean the data
- Write SQL queries to answer key business questions
- Generate insights to understand customer behavior and sales trends

## 🔍 Key Analyses

- Total sales by product and category
- Monthly sales trends
- Most valuable customers
- Order status breakdown
- Payment method distribution
- Customers with multiple orders

## 🧰 Tools Used

- SQL (MySQL / SQLite syntax)
- Kaggle Data Set

## 📊 Sample SQL Query

```sql
-- Customers with more than one order
SELECT
  "Customer Name",
  COUNT(DISTINCT "Order ID") AS order_count
FROM
  sales
GROUP BY
  "Customer Name"
HAVING
  COUNT(DISTINCT "Order ID") > 1;
