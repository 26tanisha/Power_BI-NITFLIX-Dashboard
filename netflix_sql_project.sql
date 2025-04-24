-- 1. Which movies and shows on Netflix ranked in the top 10 and bottom 10 based on their IMDB scores? 
# bottom 10 movie
select type,title,imdb_score 
from titles
where type = 'movie'
order by imdb_score
limit 10;

# bottom 10 shows 
select type,title,imdb_score
from titles
where type = 'SHOW'
order by imdb_score
limit 10;

# TOP 10 MOVIE
select type,title,imdb_score
from titles
where type = 'MOVIE' 
order by imdb_score DESC
limit 10;

#TOP 10 SHOWS
select type,title,imdb_score
from titles
where type = 'SHOW'
order by imdb_score DESC
limit 10;

-- 2. How many movies and shows fall in each decade in Netflix's library?
with cte as(
select *,floor(release_year/10 )*10 as hello # floor-> is basically change float value in integer
from titles
)
select  count(*),cte.hello
from cte
group by cte.hello
order by cte.hello;

-- 3. How did age-certifications impact the dataset?
-- The age certification influence the average IMDB score 
select age_certification,round(avg(imdb_score),2) as mean,round(avg(tmdb_score),2) as tmdb_mean
from titles
where age_certification is not null AND age_certification != ''
group by age_certification
order by mean desc;

select age_certification,count(*) as count_certification
from titles
where age_certification is not null AND age_certification != '' AND type = 'MOVIE'
group by age_certification
order by count_certification DESC;

SELECT age_certification, 
COUNT(*) AS certification_count
FROM titles
WHERE type = 'Movie' 
AND age_certification != ''
GROUP BY age_certification
ORDER BY certification_count DESC
LIMIT 5;

-- 4. Which genres are the most common 
-- top 10 movie  
select genres,count(*) as count_genre
from titles
where type = 'MOVIE'
group by genres
order by count_genre desc
limit 10 ;

-- top 10 shows
select genres,count(*) as count_genre
from titles
where type = 'SHOW'
group by genres
order by count_genre desc
limit 10 ;

-- top 3 overall
select genres,count(*) as count_genre
from titles
where type = 'SHOW' or type = 'MOVIE'
group by genres
order by count_genre desc
limit 3 ;

