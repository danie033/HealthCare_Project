
# 🏥 Medicare Part B Charge Prediction (2013–2023)

## 📌 Overview

This project aims to build a machine learning model to predict **Average Submitted Charge (`Avg_Sbmtd_Chrg`)** using Medicare Part B datasets (2013–2023) from CMS.

These datasets contain provider-level service and billing information across the United States. The model helps estimate expected charges for procedures across regions, supporting:

* Cost analysis
* Anomaly detection (over/under charging)
* Healthcare policy insights

---

## 🎯 Objectives

* Build a scalable data pipeline for large healthcare datasets
* Develop and evaluate machine learning models
* Analyze key drivers of healthcare costs
* Enable predictions such as:

  > *“What is the expected average submitted charge for a given year, state, HCPCS code, etc..?”*

---

## 📊 Dataset

**Source:** CMS Medicare Physician & Other Practitioners Dataset
🔗 [https://data.cms.gov/provider-summary-by-type-of-service/medicare-physician-other-practitioners/medicare-physician-other-practitioners-by-geography-and-service/data](https://data.cms.gov/provider-summary-by-type-of-service/medicare-physician-other-practitioners/medicare-physician-other-practitioners-by-geography-and-service/data)

### Dataset Characteristics

* 200,000+ rows per year
* Provider-level aggregated data
* Covers years 2013–2023

### Features Used

* `Rndrng_Prvdr_Geo_Cd` – Geographic code
* `HCPCS_Cd` – Procedure code
* `HCPCS_Drug_Ind` – Drug indicator
* `Place_Of_Srvc` – Service location
* `Tot_Rndrng_Prvdrs` – Total providers
* `Tot_Benes` – Total beneficiaries
* `Tot_Srvcs` – Total services
* `Tot_Bene_Day_Srvcs` – Beneficiary-day services

### 🎯 Target Variable

* `Avg_Sbmtd_Chrg` – Average submitted charge

---

## 🏗️ Project Architecture

```
Raw CSV Data (CMS)
        ↓
PySpark Data Ingestion & Cleaning
        ↓
Storage (PostgreSQL / Parquet)
        ↓
Feature Engineering Pipeline
        ↓
Machine Learning Models
        ↓
Evaluation & Visualization
```

---

## ⚙️ Tech Stack

* **Data Processing:** PySpark
* **Storage:** PostgreSQL / Parquet
* **ML Libraries:** Scikit-learn, XGBoost, LightGBM
* **Visualization:** Matplotlib, Seaborn
* **Languages:** Python

---

## 🔄 Methodology

### 1. Data Engineering

* Load CSVs into PySpark
* Standardize schema across years
* Handle missing/invalid data
* Add `year` column
* Store cleaned data

### 2. Data Storage

* Normalize schema (fact + dimension tables)
* Create unified analytical view
* Optimize for scalability

### 3. Feature Engineering

* Encode categorical variables (One-hot / Target encoding)
* Scale numerical features (if needed)
* Optional: log-transform target
* Remove redundant features

### 4. Modeling

Models evaluated:

* Linear Models (Ridge, Lasso)
* Decision Tree
* Random Forest
* Gradient Boosting (XGBoost, LightGBM)

### 5. Evaluation

Metrics:

* RMSE
* MAE
* R² Score

Validation:

* Time-based split (train on past, test on future)
* Cross-validation

### 6. Analysis & Visualization

* Distribution plots
* Correlation analysis
* Feature importance
* Residual/error analysis
* PCA visualization

---

## 👥 Team Responsibilities

### 🔧 Data Engineering (Person 1)

* Data ingestion & preprocessing
* Schema design
* Pipeline development

### 🤖 ML Engineering (Person 2)

* Feature engineering
* Model training & tuning
* Evaluation

### 📈 Data Analysis (Person 3)

* EDA & visualization
* Error analysis
* Reporting insights

---

## 🚀 Expected Outcomes

* Accurate model for predicting healthcare charges
* Insights into cost drivers (procedures, geography, services)
* Scalable and reusable data pipeline

---

## 🔮 Future Improvements

* Add provider-level or demographic datasets
* Deploy model as API (Flask/FastAPI)
* Implement anomaly detection system
* Explore deep learning approaches

---

## 📌 Key Insight

Healthcare charge data is often:

* Highly skewed
* Strongly influenced by procedure codes
* Variable across time

➡️ Best performance is expected from:

* Log-transformed targets
* Gradient boosting models
* Time-aware validation

---

## 📄 License

This project uses publicly available CMS data. Please follow CMS data usage guidelines.