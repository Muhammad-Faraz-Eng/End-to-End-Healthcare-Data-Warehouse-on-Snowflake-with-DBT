# End-to-End Healthcare Data Warehouse on Snowflake with DBT

This repository demonstrates a complete **Healthcare Data Engineering project**, built from scratch to showcase modern data warehouse architecture using **dbt**, **Snowflake**, and **data transformation best practices**.

---

## 🏗 Project Overview

The project simulates a healthcare environment and includes:

- **Raw data ingestion (Bronze Layer)**: Patients, Doctors, Hospitals, Visits, Treatments, Billing, Departments, Insurance Plans.
- **Silver Layer (Staging)**: Cleaned, standardized, and validated data tables with:
  - Null handling in mandatory fields
  - Type conversions (string → date, numeric → int)
  - Text cleaning, formatting standardization
  - Slowly Changing Dimension (SCD2) logic for historical tracking
  - Foreign key validation for referential integrity

- **Gold Layer (Analytics-ready Fact & Dimension tables)**:
  - Dimension Tables: `dim_patients`, `dim_doctors`, `dim_hospitals`, `dim_departments`, `dim_insurance_plans`
  - Fact Tables: `fact_visits`, `fact_treatments`, `fact_billing`
  - Designed for analytics and BI consumption

- **Data Marts / Aggregates**:
  - Patient visit summary
  - Hospital utilization
  - Revenue & billing summaries
  - Aggregated and denormalized for fast reporting

- **Testing & Validation with dbt**:
  - `not_null` tests for mandatory fields
  - `unique` tests for primary keys
  - `relationships` tests for foreign key integrity
  - CI/CD readiness

- **Documentation & Lineage**:
  - dbt docs with lineage visualization for table relationships

---

## 🧰 Tools & Technologies Used

- **Snowflake** - Cloud Data Warehouse
- **DBT** - Data Transformation, Modeling, and Testing
- **Python / Macros** - Custom macros for cleaning, type conversion, and SCD2 logic
- **SQL** - Querying, transformations, and data modeling
- **GitHub** - Version control

---

## 💡 Key Learnings from this Project

### **Data Engineering Fundamentals**
- Raw data ingestion and handling inconsistent, incomplete, or messy datasets
- Understanding Bronze, Silver, and Gold layers in modern data architecture
- Incremental loading strategies

### **Data Cleaning & Transformation**
- Handling nulls in mandatory fields
- Type conversions: string → date, string → numeric, etc.
- Text cleaning: trimming, upper/lower casing, formatting
- Phone number and email standardization
- Slowly Changing Dimension (SCD2) for historical data tracking

### **Data Modeling**
- Fact and dimension table creation
- Star schema design
- Defining surrogate keys and primary keys
- Maintaining referential integrity using foreign keys

### **DBT Mastery**
- Model creation (`stg_` for staging, `dim_` and `fact_` for gold)
- Configuring materializations: table vs incremental
- Using custom macros for reusable transformations
- Writing tests (`not_null`, `unique`, `relationships`)
- Generating documentation with `dbt docs`
- Running partial and full parses
- Debugging dbt model compilation errors

### **Data Validation & Testing**
- Ensuring clean data through SCD2 row selection
- Testing for duplicate or missing references
- Building confidence in downstream analytics

### **Analytics Preparation**
- Aggregating data for dashboards
- Creating data marts for BI tools
- Preparing KPI-ready datasets (patient visits, hospital utilization, revenue)

### **Project Organization & Version Control**
- Structuring dbt projects with raw, staging, marts folders
- Maintaining consistent naming conventions
- Version controlling code in GitHub

---

## 📁 Project Structure

dbt_snowflake_project/
├── models/
│ ├── raw_staging/ # Bronze → raw data ingestion
│ ├── staging/ # Silver → cleaned & validated tables
│ ├── marts/ # Gold → fact & dimension tables
├── macros/ # Custom macros for cleaning, SCD2, type conversions
├── seeds/ # Optional static reference data
├── dbt_project.yml # DBT project configuration
├── README.md # Project documentation

---

## 🚀 Next Steps

1. Connect **gold layer tables** to BI tools (Power BI, Tableau, Looker)
2. Build **visualizations and dashboards**
3. Automate **daily ETL pipelines** with Airflow / Azure Data Factory / Prefect
4. Expand project for **predictive analytics / machine learning** using cleaned datasets

---

## 📜 References

- [dbt Documentation](https://docs.getdbt.com/)
- [Snowflake Documentation](https://docs.snowflake.com/)
- Best practices for **data modeling and SCD2**

---

## ✅ Conclusion

This project showcases a **production-ready data engineering pipeline**, demonstrating everything from **raw ingestion to analytics-ready gold tables**, including **data cleaning, transformation, testing, and validation**.  

It’s a great showcase of modern data engineering skills suitable for **portfolio, interviews, or learning purposes**.
