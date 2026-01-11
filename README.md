# 🦠 COVID-19 Global Data Analysis using SQL

<img width="1911" height="974" alt="image" src="https://github.com/user-attachments/assets/1b73fcc3-dcc8-422b-a13b-595cf6c1629d" />


## 📌 Project Overview
This project explores global COVID-19 data to analyze trends in confirmed cases, deaths, and vaccinations across countries and over time.

The primary focus is on using **SQL-based data analysis** to:
- Understand large-scale public health trends
- Compare COVID-19 impact across regions
- Practice real-world SQL querying, aggregation, and analytical techniques

All analysis is performed directly in **Microsoft SQL Server**, simulating how analysts work with structured datasets in production databases.

---

## 🎯 Objectives
- Explore global COVID-19 trends over time  
- Compare infection and death rates across countries and continents  
- Analyze COVID-19 deaths relative to population size  
- Examine vaccination rollout and coverage  
- Strengthen SQL skills for data cleaning, joins, and analytical queries  

---

## 📊 Dataset
**Source:** Our World in Data  
https://ourworldindata.org/covid-deaths

**Dataset includes**
- Daily and cumulative COVID-19 cases and deaths  
- Population statistics  
- Vaccination data  
- Country- and continent-level breakdowns  
- Time-series records by date  

---

## 🛠️ Tools & Technologies
- **SQL** (Microsoft SQL Server)
- **SQL Server Management Studio (SSMS)**
- CSV datasets (COVID deaths & vaccinations)

---

## 🧹 Data Preparation & Cleaning
Before analysis, the following preprocessing steps were performed directly in SQL:

- Imported COVID-19 deaths and vaccination datasets into SQL Server  
- Filtered out aggregated rows (e.g., world-level totals, non-country entities)  
- Handled missing and null values in key metrics  
- Ensured correct data types for dates and numeric columns  
- Joined deaths and vaccination tables using location and date  

This step ensured that all downstream analysis was based on clean, consistent data.

---

## 📈 SQL Analysis Overview
The analysis focuses on answering business- and policy-relevant questions using SQL queries.

**Key analysis areas**
- Total cases and deaths by country and continent  
- Death rate analysis relative to population size  
- Countries with the highest infection and mortality rates  
- Vaccination progress over time  
- Combined analysis of deaths and vaccinations using table joins  

**SQL techniques used**
- `JOIN` operations across multiple datasets  
- Aggregate functions (`SUM`, `AVG`, `MAX`)  
- Filtering and conditional logic  
- Time-based analysis using date fields  
- Window functions for trend and ranking analysis  

The queries are structured to be readable, modular, and easy to extend.

---

## 🎯 Key Takeaways
This project demonstrates my ability to:
- Work with large, real-world datasets in SQL  
- Perform structured exploratory data analysis directly in a database  
- Translate raw data into meaningful insights  
- Write clean, analytical SQL queries suitable for production environments  
