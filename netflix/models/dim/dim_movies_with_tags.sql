{{config(
    materialized='ephemeral'
)}}
With movies AS(
    select * from {{ ref('dim_movies') }}
),
tags AS(
    select * from {{ ref('dim_genome_tags') }}
),
scores AS(
    select * from {{ ref('fct_genome_scores') }}
)
SELECT m.movie_id, 
m.movie_title, 
m.genres,
t.tag_name, 
s.relevance_score
FROM movies m
LEFT JOIN scores s ON m.movie_id = s.movie_id
JOIN tags t ON s.tag_id = t.tag_id