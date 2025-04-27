# Vision Framework

## Project Overview

The Vision Framework is a comprehensive integration initiative designed to unify four distinct business entities—Vision Books, Vision Flicks, Vision Music, and Vision Mart—into a single, cohesive platform. This project leverages data aggregation, transformation, and analytics to enhance business operations and elevate customer experience across multiple domains.

## Key Components

1. **Data Integration and Source Tables**: Consolidation of relevant source tables for each business entity, covering sales, customer engagement, membership, billing, and product details.

2. **Data Processing and Transformation**: Implementation of robust data processing and transformation pipelines using Snowflake and DBT.

3. **Business Analytics and Visualization**: Creation of Power BI dashboards for intuitive business analytics and visualization.

## Technology Stack

- Snowflake: Data warehousing
- DBT: Data transformation
- Power BI: Data visualization and dashboards

## Project Structure

```
vision-framework/
├── data/
│   ├── source/
│   ├── staging/
│   └── transformed/
├── scripts/
│   ├── data_generation/
│   └── data_migration/
├── dbt/
│   ├── models/
│   └── transformations/
├── powerbi/
│   └── dashboards/
└── docs/
    └── README.md
```

## Detailed Project Components

1. Creation of Source Pipeline in Snowflake
2. Creation of dimension and fact tables
3. Bus Matrix
4. Detailed Dimensional Modelling
5. Logical Diagram and Star Schema
6. Layout Planning analysis for Whole Datawarehouse functioning
7. Overall Git Integration
9. Power BI Navigation and Dashboard Publishing


## Data Modeling and Architecture

- Comprehensive bus matrices have been developed for each business entity, outlining the relationships between various dimensions and fact tables.
- Detailed dimensional modeling has been performed to ensure efficient data organization and retrieval across all entities.
- Logical diagrams and star schemas have been developed to represent the data warehouse structure for each business unit.
- Layout planning analysis has been conducted to optimize the overall data warehouse functioning, particularly for Vision Music.

## Source Pipelines and Tables

- Dedicated source pipelines have been created in Snowflake for Vision Mart, Vision Flix, Vision Music, and Vision Books.
- Dimension and fact tables specific to each business entity's operations have been established.
- An overall fact table consolidates key metrics across all business entities.

## Business Intelligence and Analytics

- Power BI dashboards have been created for Vision Mart and Vision Books, providing intuitive visualization of key business metrics.
- Power BI Navigation and Dashboard Publishing has been implemented for easy access to insights.
- Comprehensive Power BI Business Analysis has been conducted for Vision Books.

## Documentation and Presentation

- Extensive project documentation has been created, including documentation for data pipelines.
- A presentation has been prepared to showcase the Vision Books component of the project.

## Version Control and Collaboration

- The project utilizes Git for version control and collaboration.
- All components, including data models, transformation scripts, and documentation, are managed through Git.

## Dashboard Highlights

1. **Overall Sales Split by Category**: Insights into the contribution of each business entity to overall sales.
2. **Customer Spending Analysis**: Visualization of customer spending patterns across categories and months.
3. **Geographical Analysis**: Interactive maps showing geographical distribution of customers and product sales.
4. **Product Performance and Reviews**: Evaluation of product performance based on sales volume and average reviews.
5. **Content Recommendation and Engagement**: Recommendations for popular artists, movies, and genres to enhance customer engagement.
