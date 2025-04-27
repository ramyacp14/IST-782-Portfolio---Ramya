# Energy Consumption Analysis

## Project Overview
This project focuses on analyzing and predicting energy consumption patterns for an energy company (eSC) serving residential properties in South Carolina and a part of North Carolina. The goal is to understand key drivers of energy usage, explore strategies to reduce energy consumption, and predict future energy demands, particularly in light of potential temperature increases due to global warming.

## Team Members
- Ramya Chowdary Patchala
- Akshay Joshi
- Hemanth Chowdary Thammeneni
- Kishan
- Rithika Gurram

## Project Goals
1. Analyze energy consumption patterns, focusing on July (typically the highest energy usage month).
2. Build predictive models for energy usage.
3. Explore factors affecting energy consumption.
4. Propose strategies to manage peak demand.
5. Assess the impact of potential temperature increases on future energy consumption.

## Data Sources
- Static house data (attributes like size, number of floors, etc.)
- Energy usage data (hourly usage profiles for each house)
- Weather data

## Methodology
1. Data Import and Cleanup
2. Exploratory Data Analysis and Visualizations
3. Model Development:
   - Linear Regression
   - XGBoost
   - XGBoost with Hyperparameter Tuning
4. Future Energy Demand Prediction (with 5°C temperature increase)
5. Shiny App Development for Interactive Data Exploration

## Key Findings
- The XGBoost model with hyperparameter tuning achieved the highest accuracy of 88.58% in predicting energy consumption.
- Future energy consumption is predicted to increase with a 5°C rise in temperature.
- Weather factors (temperature, humidity, radiation, wind), appliances in buildings, and geographical factors significantly affect energy consumption.

## Shiny App
An interactive Shiny app was developed to visualize:
- Current and predicted energy consumption patterns
- Energy usage by county and city
- Impact of temperature increase on energy demand

The Shiny app is published at: https://rpatchal.shinyapps.io/EnergyConsumption/

## Recommendations
- Implement Demand Response (DR) programs to manage peak energy demand.
- Utilize time-variable pricing to encourage off-peak usage.
- Invest in smart grid technology and IoT devices for efficient energy management.
- Launch educational initiatives to raise awareness about energy-efficient practices.

## Future Work
- Continuous model monitoring and refinement based on new data.
- Explore additional factors that may influence energy consumption.
- Develop more sophisticated prediction models incorporating long-term climate trends.

## Tools and Technologies Used
- R (tidyverse, arrow, data.table, lubridate, caret, xgboost, shiny)
- Jupyter Notebook
