# PowerBI-NITFLIX-Dashboard

<img src="nitflix_logo.png" alt="Dashboard" width="600">
Netflix-Project



## 🔗 Project Files & Resources

 -[Dataset - Netflix Shows (CSV)](https://github.com/26tanisha/Power_BI-NITFLIX-Dashboard/blob/main/titles.csv)
 -[MySQL Queries (netflix_sql_project.sql)](https://github.com/26tanisha/Power_BI-NITFLIX-Dashboard/blob/main/netflix_sql_project.sql)
  [Download the Netflix Power BI Dashboard](https://github.com/your-username/netflix-project/raw/main/netflix_project.pbix)

 -[Pandas Data Analysis (Jupyter Notebook)](https://github.com/26tanisha/Power_BI-NITFLIX-Dashboard/blob/main/netflix_project.ipynb)

Tools Used: Pandas, MySQL, Power Bi
Business Problem
Netflix wants to extract meaningful insights from a large dataset (~82K rows) of movies and shows but struggles with analyzing it effectively due to its size and complexity.

Proposed Solution
To solve this, I’ll use SQL for extracting key metrics like viewer ratings, genre trends, and popularity patterns. Then, I’ll use Tableau to build an interactive dashboard for visualizing insights. This will help Netflix explore data by genre, region, and demographics, enabling data-driven content and strategy decisions.


1. Which movies and shows on Netflix ranked in the top 10 and bottom 10 based on their IMDB scores?

# bottom 10 movie
select type,title,imdb_score 
from titles
where type = 'movie'
order by imdb_score
limit 10;

type  title   imdb_score    
MOVIE	Dostana	2.1
MOVIE	Bandie	4.4
MOVIE	Chadi Jawani Budhe Nu	4.6
MOVIE	Endless Love	4.9
MOVIE	Khoon Khoon	5.1
MOVIE	Aakhri Adaalat	5.1
MOVIE	Mujrim	5.4
MOVIE	In Defense of a Married Man	5.6
MOVIE	The Blue Lagoon	5.8
