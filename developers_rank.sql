
    SELECT DATE_TRUNC(DATE(SAFE_CAST(year AS INT64),SAFE_CAST(quarter AS INT64)*3,1), QUARTER) AS date
      , r.year
      , r.quarter
      , r.iso2_code
      , e.country_name
      , e.emoji_flag 
      , r.developers 
      , RANK() OVER (PARTITION BY year, quarter ORDER BY SAFE_CAST(developers AS INT64) DESC) AS dev_rank
    FROM `<YOUR_PROJECT.developers.csv>` r
    INNER JOIN `<EMOJI dataset>` e USING(iso2_code)