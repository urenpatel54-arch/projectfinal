Photo of my dashbord :- https://www.photo-pick.com/online/lZHBNLbt.link

📊 WattWatch: Smart City Energy Analysis
An end-to-end data analytics project focused on monitoring energy consumption, cost efficiency, and renewable energy adoption across urban zones. This project combines SQL-based data engineering with Power BI visualizations to provide actionable insights for city grid management.

🚀 Project Overview
The goal of WattWatch is to identify high-consumption patterns, compare weekday vs. weekend energy loads, and track the transition to renewable energy sources.

Key Objectives:
Consumption Profiling: Analyze total and average energy usage per city zone.

Financial Impact: Estimate utility costs based on consumption rates.

Reliability Tracking: Identify zones with frequent outage approximations.

Sustainability: Calculate the percentage of renewable energy integration per zone.

🛠️ Tech Stack
Database: SQL (SQLite/PostgreSQL) for data transformation and aggregation.

Visualization: Power BI (Desktop/Service).

Data Modeling: Star Schema involving energy metrics and timestamps.

📈 Dashboard Preview
Below is the visual representation of the energy metrics analyzed in this project.

Note: Replace the URL above with the actual path to your exported image once you upload it to your repository.

🔍 SQL Analysis Highlights
The following insights were extracted using the included SmartCity_SQL.sql file:

Zone Efficiency: Ranked city zones by average usage to identify the least efficient areas.

Temporal Trends: Monthly consumption trends and peak usage hours.

Behavioral Analysis: Comparison between Weekday vs. Weekend energy consumption patterns.

Calculation: CASE WHEN strftime('%w', timestamp) IN ('0','6') THEN 'Weekend' ELSE 'Weekday' END

Renewable Mix: Percentage of total energy derived from renewable sources per zone.

📂 File Structure
SmartCity_SQL.sql: Contains the full analytical queries for energy, costs, and outages.

WattWatchDashboard.pbix: The Power BI project file containing the data model and interactive visuals.

/Assets: Folder containing dashboard screenshots and icons.

📖 How to Use
SQL: Run the scripts in SmartCity_SQL.sql against your SmartCityEnergy table to generate summary views.

Power BI: Open WattWatchDashboard.pbix to explore the interactive reports.

Filters available: City Zone, Time Period, and Energy Source Type.

💡 Key Insights from the Data
Top Consumers: Identifying the top 5 zones allows for targeted infrastructure upgrades.

Cost Management: Assuming a standard rate, cost approximations help in budget forecasting for city utilities.

Outage Patterns: Correlation between high-load zones and outage frequency.
