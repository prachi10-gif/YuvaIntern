# YuvaIntern – Final Week: Live Weather Analytics

## Project
**Integrated Data Cleaning, Visualization, Statistical Analysis and Predictive Modeling Using R**

### Objective
This final-week project consolidates the internship workflow into one end-to-end analysis using fresh weather information for five Indian cities: Bhopal, Delhi, Mumbai, Bengaluru and Kolkata.

### Data freshness
The live snapshot and forecast panel were captured on **6 October 2026** from current weather pages. The repository contains the exact CSV files used in the report.

### Workflow
1. Live data collection
2. Data cleaning and duplicate/missing-value checks
3. Exploratory visualization
4. Pearson correlation
5. One-way ANOVA
6. Time-based train/test split
7. Multiple linear regression
8. MAE, RMSE and R² evaluation
9. Residual diagnostics
10. Business/public-planning interpretation

### Model
The model predicts daily maximum temperature using:
- Minimum temperature
- City

A time-based holdout (last two forecast observations per city) was used instead of a random split to reduce temporal leakage.

### Results
- Holdout MAE: **1.10 °C**
- Holdout RMSE: **1.33 °C**
- Holdout R²: **0.711**
- Minimum vs maximum temperature correlation: **r = 0.447**
- City-level maximum-temperature ANOVA: **p = 5.72e-16**

### Repository files
- `YuvaIntern_Final_Week_Report.docx` – final report
- `final_week_weather_analysis.R` – R analysis code
- `live_weather_current_snapshot.csv` – live current conditions
- `live_weather_forecast_panel.csv` – forecast panel
- `figures/` – charts and R code/output snapshots

## Data Sources
- Hindustan Times Weather city pages – current conditions, AQI and forecast values
- Open-Meteo documentation – API reference for reproducible live/current weather workflows

**Note:** Forecast values can change as providers update their models. Re-running the data-collection step on a later date will produce a different snapshot.
