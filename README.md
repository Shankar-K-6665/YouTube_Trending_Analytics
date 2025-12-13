# Youtube-Trending-Analytics (Main Project For Elevate Labs Internship)

A simple and clear analysis of YouTube Trending Videos using Python, SQL, and Power BI.
The project identifies trends in views, categories, sentiment, and regional performance across multiple countries.


# YouTube-Trending-Analytics/
│
├── data/
│   ├── raw/
|   |   ├── GB_category_id.json
|   |   ├── IN_category_id
|   |   ├── US_category_id
|   |   ├── GBvideos.csv
|   |   ├── INvideos.csv
|   |   ├── USvideos.csv
|   |
│   ├── cleaned/
|   |   ├── cleaned_youtube
|   |   ├── cleaned_youtube_with_sentiment.csv
|   |   ├── cleaned_sql_ready.csv
│
├── notebooks/
│   ├── 01_cleaning.ipynb        
│   ├── 02_sentiment.ipynb   
|   ├── 03_powerbi_preparation.ipynb
│
├── sql/
│   ├── create_tables.sql     
│   ├── analytics_queries.sql  
|   |   
|   ├── sql_output/
|   |   ├── category_avg_views.csv
|   |   ├── sentiment_distribution.csv
|   |   ├── time_series_views.csv
|   |   ├── top_channels.csv
|   |   ├── trending_duration.csv
|   |
|   ├── screenshots/
|   |   ├── 1_Database created.png
|   |   ├── 2_Table created.png
|   |   ├── 3_CSV import success.png
|   |   ├── 4_SQL queries.png
|   |   ├── 5_SQL queries.png
|   |   ├── 6_SQL queries.png
|   |   ├── 7_SQL queries.png
|   |   ├── 8_SQL queries.png
│
├── powerbi/
│   ├── YouTube_Dashboard.pbix 
│   ├── screenshots/
│   |   ├── 1_YouTube_Trending_Analytics_dashboard.png
│   |   ├── 2_map_visual.png
│   |   ├── 3_Trending views.png
│   |   ├── 4_Top YouTube channels.png
│   |   ├── 5_Sentiment distribution.png
│   |   ├── 6_Average Views by Category,png
│
├── docs/
│   ├── Youtube_Treanding_Dashboard.pdf    
│   ├── YouTube_Trending_Analytics_Report.pdf
|    
└── README.md


# What This Project Includes

- Cleaned & combined YouTube datasets (US, IN, GB, etc.)
- Python preprocessing (date cleaning, sentiment labeling, feature extraction)
- SQL analytics for category performance, top channels, sentiment, and time-series trends
- Power BI dashboard with interactive visuals and KPIs

# Files Included

- Cleaned datasets (cleaned_sql_ready.csv, cleaned_youtube.csv)
- SQL output files (time-series, top channels, categories, sentiment)
- Power BI dashboard (YouTube_Dashboard.pbix)
- Final report (YouTube_Trending_Analytics_Report.pdf)

# Dashboard Features

- KPI Cards (Views, Likes, Trending Videos, Sentiment %)
- Trending Views Over Time (Line Chart)
- Sentiment Distribution (Donut Chart)
- Average Views by Category (Bar Chart)
- Top Channels (Bar Chart)
- Country-wise Views Map
- Likes vs Views (Engagement Scatter Plot)

# Key Insights

- Music & Entertainment lead in global viewership
- India and USA produce the highest trending views
- Positive sentiment videos perform better
- Strong correlation between likes and views

# Tools Used

- Python (Pandas, NLTK)
- MySQL Workbench
- Power BI Desktop
- CSV & JSON datasets

# Result

A clean, interactive Power BI dashboard that highlights YouTube view trends, category performance, channel rankings, sentiment insights, and global engagement patterns — ready for real-world analytics and storytelling.
