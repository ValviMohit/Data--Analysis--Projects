## Spotify SQL Data Analysis 

This project showcases data analysis on a Spotify dataset using SQL. The queries are designed to extract insights from song metadata, streaming data, user interactions, and more.

## File
- **Spotify_Project_SQL_Code.sql**: Contains all the SQL queries used in the project.

## Key Analyses Performed

- Tracks with over 1 billion streams
- Most viewed tracks (using `OVER()` and `DENSE_RANK()`)
- Average danceability per album
- Artists with the most tracks
- Albums with highest energy difference
- Tracks with high energy-to-liveness ratio
- Videos with highest likes by views
- Tracks streamed most on Spotify

##  SQL Concepts Used

- `GROUP BY` and Aggregates (`SUM`, `AVG`, `MAX`, `MIN`)
- `DISTINCT` and `WHERE` filters
- `WINDOW FUNCTIONS` like `DENSE_RANK()` and `SUM() OVER`
- `WITH` Common Table Expressions (CTEs)
- Subqueries

##  Dataset Assumptions
The dataset is assumed to be in a table named `spotify`, containing fields like:
- `Track`, `Artist`, `Album`, `Views`, `Likes`, `Comments`, `Energy`, `Liveness`, `Stream`, `Dancebility`, etc.

---

## Contact
Feel free to reach out if you'd like to collaborate or give feedback!
