
CREATE DATABASE youtube_trending;

USE youtube_trending;

CREATE TABLE trending_videos (
    video_id VARCHAR(50),
    trending_date DATE,
    title TEXT,
    channel_title VARCHAR(255),
    category_id INT,
    publish_time DATETIME,
    tags TEXT,
    views BIGINT,
    likes BIGINT,
    dislikes BIGINT,
    comment_count BIGINT,
    thumbnail_link TEXT,
    comments_disabled VARCHAR(10),
    ratings_disabled VARCHAR(10),
    video_error_or_removed VARCHAR(10),
    description TEXT,
    country VARCHAR(10),
    title_length INT,
    tag_count INT,
    category_name VARCHAR(255),
    title_sentiment FLOAT,
    sentiment_label VARCHAR(20)
);

SHOW TABLES;

SHOW CREATE TABLE trending_videos;

DESCRIBE trending_videos;


LOAD DATA LOCAL INFILE 'C:/Users/Dell/OneDrive/Desktop/Youtube-Trending-Analytics/data/cleaned/cleaned_sql_ready.csv'
INTO TABLE trending_videos
CHARACTER SET latin1
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM trending_videos;


