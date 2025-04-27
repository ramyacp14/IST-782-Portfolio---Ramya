# Tobacco Trends Analysis Project

## Project Overview
This project analyzes U.S. tobacco usage trends (2011-2019) and e-cigarette health impacts (2018-2023) using CDC and FDA datasets. The analysis covers:
- Health risks (seizures, respiratory issues)
- Demographic disparities
- Policy impacts (taxation effects)
- Forecasting future trends

## Files Included
- `tobacco_analysis.ipynb`: Main Jupyter Notebook containing all code and visualizations
- `/data/` directory containing:
  - `tobacco-problem-0001-of-0001.json`: FDA e-cigarette health reports
  - `Tobacco_dataset.csv`: CDC behavioral risk data
  - `tax.csv` and `sales.csv`: Policy and sales data

## Setup Instructions
1. **Requirements**:
   - Python 3.8+
   - Jupyter Notebook/Lab
   - Install dependencies:
     ```bash
     pip install pandas matplotlib seaborn plotly prophet wordcloud
     ```

2. **Running the Notebook**:
   ```bash
   jupyter notebook tobacco_analysis.ipynb


## Key Sections:
### 1. E-Cigarette Health Risks:

      Seizure case analysis (12.68% of reports)
      
      Product defect impacts on respiratory health

### 2. Demographic Trends:

      Smoking rates by race/gender (2011-2019)
      
      State-level cessation rates (CA highest at 75%)

### 3. Policy Analysis:

      Tax vs. sales correlation (-0.64)
      
      Education impact (college grads smoke 6.5% vs 17% for HS grads)

### 4. Forecasting:

      Prophet models for e-cigarette/cigarette demand
      
## Visualization Tools: 
      1. Interactive Plotly charts
      
      2. Seaborn/Matplotlib static visualizations
      
      3. Word clouds for health issues
