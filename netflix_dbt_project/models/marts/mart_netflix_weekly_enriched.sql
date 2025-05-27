with weekly_staging_data as (
    select country_name
	,country_iso2
	,week
	,category
	,weekly_rank
	,show_title
	,season_title
	,cumulative_weeks_in_top_10  from {{ ref('stg_netflix_weekly') }}
)

select
    country_name
	,country_iso2
    ,week - interval 6 day as week_start
	,week as week_end
	,category
	,weekly_rank
	,show_title
	,season_title
	,cumulative_weeks_in_top_10 
    ,CASE WHEN 
                week = min(week) over (partition by show_title, season_title,country_name) THEN true
                ELSE false
          END AS first_appearance_this_week
from weekly_staging_data