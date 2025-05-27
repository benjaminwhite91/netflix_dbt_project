select CAST("country_name" as varchar(128)) as country_name
       ,CAST("country_iso2" as varchar(16)) as country_iso2
       ,CAST("week" as date) as week 
       ,CAST("category" as varchar(128)) as category 
       ,CAST("weekly_rank" as integer) as weekly_rank 
       ,CAST("show_title"	as varchar(128)) as show_title
       ,CAST("season_title" as varchar(128)) as season_title
       ,CAST("cumulative_weeks_in_top_10" as integer) as cumulative_weeks_in_top_10

from {{ source('raw', 'netflix_weekly') }}