# Netflix Weekly Top 10 - dbt + DuckDB Project

This project demonstrates a lightweight analytics pipeline using [dbt](https://www.getdbt.com/) and [DuckDB](https://duckdb.org/) to clean, enrich, and test Netflix's Top 10 weekly TSV data.

 The data is available here! [Netflix Top 10 Portal](https://www.netflix.com/tudum/top10) Scroll across the the Global \ Movies|English buttons and click the second button that's a down arrow. From there, click Lists in the pop-up and click the Country List TSV. 
 

It’s designed to highlight:
- Data modeling with dbt (staging + mart layers)
- Lightweight local warehousing using DuckDB
- Analytics engineering best practices (testing, documentation, naming, lineage)

---

## 📊 Project Overview

I ingest and transform Netflix's global Top 10 weekly data, enriching it with derived features like:

- `first_appeared_this_week`: A boolean flag indicating whether a show appeared in the rankings for the first time in that region.
- `week_start`: The derived start date of the 7-day tracking period.

---

## 🔧 Stack

- **dbt-core** (v1.9+)
- **dbt-duckdb**
- **DuckDB** as the local warehouse
- **Python (optional)**: to load TSV data into DuckDB

---

## 🗂️ Project Structure
netflix_dbt_project/

├── dbt_project.yml

├── load_netflix_to_duckdb.py

├── models/

│   ├── staging/
│   │   ├── stg_netflix_weekly.sql
│   │   └── stg_netflix_weekly.yml

│   ├── marts/
│   │   ├── mart_netflix_weekly_enriched.sql
│   │   └── mart_netflix_weekly_enriched.yml

│   └── src/
│       └── netflix_sources.yml

└── README.md


