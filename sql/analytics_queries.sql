SELECT 
    country,
    category_name,
    AVG(views) AS avg_views
FROM trending_videos
GROUP BY country, category_name
ORDER BY avg_views DESC;

SELECT 
    video_id,
    ANY_VALUE(title) AS title,
    country,
    COUNT(*) AS days_trending
FROM trending_videos
GROUP BY video_id, country
ORDER BY days_trending DESC
LIMIT 20;

SELECT 
    country,
    sentiment_label,
    COUNT(*) AS total_videos
FROM trending_videos
GROUP BY country, sentiment_label
ORDER BY country, total_videos DESC;

SELECT 
    country,
    channel_title,
    ROUND(AVG(views)) AS avg_views,
    COUNT(DISTINCT video_id) AS total_videos
FROM trending_videos
GROUP BY country, channel_title
HAVING total_videos >= 2
ORDER BY avg_views DESC
LIMIT 30;

SELECT
    dt.trending_date,
    dt.country,
    SUM(dt.views) AS total_views
FROM (
    SELECT
        CASE
            WHEN trending_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
                THEN STR_TO_DATE(trending_date, '%Y-%m-%d')
            WHEN trending_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$'
                THEN STR_TO_DATE(trending_date, '%Y-%m-%d %H:%i:%s')
            ELSE NULL
        END AS trending_date,
        country,
        views
    FROM trending_videos
) AS dt
WHERE dt.trending_date IS NOT NULL
GROUP BY dt.trending_date, dt.country
ORDER BY dt.trending_date, dt.country;



