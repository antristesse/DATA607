# Alcohol Consumption and Household Income: Trends Across U.S. States

## Project Overview

This project was developed for the DATA 607 – Data Acquisition and Management course at CUNY School of Professional Studies.

The analysis explores alcohol consumption trends across the 50 U.S. states from 2015 to 2024, geographic differences, and the relationship between household income and beverage consumption patterns.

## Data Sources

- NIAAA: Apparent per-capita alcohol consumption data in fixed-width text format.
- U.S. Census Bureau: American Community Survey (ACS) 1-Year Estimates, retrieved through the Census API in JSON format.

## Project Files

- `Final_project.qmd` — Quarto source file containing the complete analysis.
- `Final_project.html` — Rendered HTML report.
- `alcohol.txt` — Original NIAAA dataset.
- `income_data.csv` — Saved Census household income data.
- `README.md` — Project documentation and reproducibility instructions.

## Required R Packages

```r
install.packages(c(
  "tidyverse",
  "httr",
  "httr2",
  "jsonlite",
  "lubridate",
  "ggrepel",
  "plotly"
))
```

## Reproducibility

1. Download or clone the repository.
2. Keep the project files in the same folder.
3. Install the required R packages.
4. Open `Final_project.qmd` in RStudio with Quarto installed.
5. Click Render to generate the HTML report.

A Census API key is optional. If the `CENSUS_API_KEY` environment variable is configured, the income data is retrieved directly from the Census API. Otherwise, the included `income_data.csv` file is used.

## Methods

- Fixed-width file parsing
- API data acquisition and JSON processing
- Data cleaning, transformation, and integration
- Exploratory data analysis
- Pearson correlation and linear regression
- Interactive geographic visualization using Plotly

## Author

Anastasiia Gmyrina  
CUNY School of Professional Studies  
DATA 607 — Fall 2026