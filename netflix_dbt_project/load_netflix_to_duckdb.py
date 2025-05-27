import duckdb
import pandas as pd

# Update paths accordingly
TSV_PATH = "YOUR GLOBAL DATA TSV HERE"
DB_PATH = "YOUR DUCK DB HERE"

# Load TSV & connect to DB
df = pd.read_csv(TSV_PATH, sep="\t")

con = duckdb.connect(DB_PATH)
con.execute("CREATE SCHEMA IF NOT EXISTS raw;")

# Register the DataFrame
con.register("df", df)

# Create or replace the table
con.execute("CREATE OR REPLACE TABLE raw.netflix_weekly AS 
SELECT country_name
	,country_iso2
	,week
	,category
	,weekly_rank
	,show_title
	,season_title
	,cumulative_weeks_in_top_10 
FROM df")

print("✅ Weekly data loaded into DuckDB.")