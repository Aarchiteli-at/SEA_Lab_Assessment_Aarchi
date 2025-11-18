# SEA_Lab_Assessment_Aarchi

# SEA Lab Assessment - Data Science Toolkit

## Student
**Name:** Aarchi Teli  
**Course:** IMC503 Data Science Toolkit  
**Date:** 18/11/2025  

---

## Project Overview
This project analyzes the dataset provided (`country_wise_latest.csv`) using R.  
The analysis includes exploratory data analysis (EDA), visualizations, and insights into the data.  

---

## Folder Structure
- `code/` → Contains R scripts for analysis (e.g., `2318_Q1_DS Toolkit.R`)  
- `data/` → Contains the dataset CSV file (`country_wise_latest.csv`)  
- `output/` → Contains all generated plots and PDFs  

---

## Dataset
The dataset includes the following variables:  

- `Country.Region` → Name of the country or region  
- `Confirmed` → Total confirmed cases  
- `Deaths` → Total deaths  
- `Recovered` → Total recovered  
- `Active` → Active cases  
- `New.cases` → New cases reported  
- `New.deaths` → New deaths reported  
- `New.recovered` → New recovered cases  
- `WHO.Region` → Region classification  

---

## Visualizations
1. **Histogram of Confirmed Cases**  
   - Shows the distribution of confirmed cases across countries.  
   - Most countries have fewer cases; few countries show very high numbers.  

2. **Histogram of Deaths**  
   - Illustrates how deaths are distributed across countries.  

3. **Top 20 Countries by Confirmed Cases**  
   - Bar plot showing countries with the highest confirmed cases.  

4. **Scatter Plot: Confirmed vs Deaths**  
   - Shows a positive correlation: as confirmed cases increase, deaths generally increase.  

5. **Boxplot by WHO Region**  
   - Compares confirmed cases across WHO regions.  

---

## Key Insights
- Countries with higher confirmed cases tend to have higher deaths.  
- Certain regions (like Europe and Americas) have higher case numbers compared to Africa.  
- Most countries have relatively low confirmed and death counts, showing a skewed distribution.  

---

## How to Run the Code
1. Open R or RStudio.  
2. Set the working directory to the project folder:

```r
setwd("C:/Users/aarch/OneDrive/Desktop/SEA DS Lab/SEA_Lab_Assessment_Aarchi")
