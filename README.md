# U.S. Household Income — SQL Practice

A MySQL practice project focused on data cleaning and exploratory analysis using U.S. household income data.

## 📌 About the Project

This project was created to practice SQL by working with two related datasets:

- U.S. household/location data
- U.S. household income statistics

The project covers both **data cleaning** and **exploratory data analysis (EDA)**.

## 🧹 Data Cleaning

The cleaning process included:

- Renaming a corrupted column name
- Checking for duplicate IDs
- Removing duplicate records using `ROW_NUMBER()`
- Correcting spelling and capitalization errors
- Standardizing categorical values
- Filling a missing location value
- Checking land and water area fields for missing or zero values

## 📊 Exploratory Data Analysis

The analysis included:

- Comparing land and water area by state
- Finding the largest states by land area
- Finding states with the largest water area
- Joining the household and income statistics tables
- Filtering out records with missing income statistics
- Calculating average household income by state
- Comparing mean and median household income
- Analyzing income by location type
- Exploring income at the city level
- Using `HAVING` to filter groups with sufficient records

## 🛠️ SQL Concepts Practiced

- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`
- `INNER JOIN`
- `RIGHT JOIN`
- `UPDATE`
- `DELETE`
- `ALTER TABLE`
- `DISTINCT`
- `COUNT()`
- `SUM()`
- `AVG()`
- `ROUND()`
- Subqueries
- `ROW_NUMBER()`
- Window Functions

## 📂 Project Files

- `us_household_income_data_cleaning.sql` — SQL queries used for cleaning the dataset
- `us_household_income_EDA.sql` — SQL queries used for exploratory analysis
- `USHouseholdIncome.csv` — Household/location dataset
- `USHouseholdIncome_Statistics.csv` — Household income statistics dataset

## 🎯 Purpose

The main purpose of this project was to strengthen practical SQL skills by working with messy data, performing data cleaning, joining multiple tables, and exploring patterns using SQL.

## 💻 Tools

- MySQL
- SQL

## 👤 Author

**Guna Sampath**
