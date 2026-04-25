# 📊 Project Setup & Execution Guide

## 1. Environment Setup

First, create and activate a virtual environment to manage dependencies.

```bash
# Create virtual environment
python -m venv venv

# Activate it
# On macOS/Linux:
source venv/bin/activate

# On Windows:
venv\Scripts\activate
```

Next, install the required packages:

```bash
pip install -r requirements.txt
```

If you encounter missing dependencies while running the notebooks, install them inside the virtual environment:

```bash
pip install <package_name>
```

---

## 2. Data Preparation (`clean_data.ipynb`)

### Step 1: Download Raw Data

Download the **11 CSV files (2013–2023)** from the CMS website:

https://data.cms.gov/provider-summary-by-type-of-service/medicare-physician-other-practitioners/medicare-physician-other-practitioners-by-geography-and-service

Place all downloaded CSV files into a single folder on your machine.

---

### Step 2: Configure Environment Variables

Create a `.env` file in the project root directory and specify the path to your data folder:

```env
DATA_PATH=/path/to/your/csv/folder
```

Example:

```env
DATA_PATH=/Users/yourname/data/medicare_csvs
```

---

### Step 3: Run Data Cleaning Notebook

Open and run:

```
clean_data.ipynb
```

This notebook will:

* Load all CSV files (2013–2023) name each file by its year, for example 2015.csv for the year 2015.
* Clean and preprocess the data
* Output a final cleaned dataset for model training

---

## 3. Model Training (`training_models.ipynb`)

### ⚠️ Important Requirement

This notebook must be run on the **University of Utah CHPC (Center for High Performance Computing)**.

---

### Step 1: Download Cleaned Dataset

Before running the training notebook, use:

```
downloaderCHPC.py
```

This script downloads the cleaned dataset generated from `clean_data.ipynb`.


---

### Step 2: Adjust Dataset Size (Optional)

Inside `training_models.ipynb`, you can control how much data is used:

* Default: **5% of dataset**
* Optional: Increase up to **100%** (depending on available resources)

---

### Step 3: Run Training Notebook

Execute:

```
training_models.ipynb
```

This will:

* Load the cleaned dataset
* Train machine learning models
* Output results and performance metrics

⏱️ Expected runtime: **15–20 minutes**
---

## 4. Notes

* Always activate your virtual environment before running the notebooks.
* Running the full dataset (100%) may require significant computational resources.
* Ensure all scripts (`downloaderCHPC.py`, notebooks, `.env`) are in the same project directory.
