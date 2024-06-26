      SELECT source
        , destination 
        , weight 
        , source_country_name
        , destination_country_name
        , ROUND(weight/total_source_weight, 3) AS source_weight_share
        , ROUND(weight/total_destination_weight, 3) AS destination_weight_share
      FROM ( SELECT source
               , destination
               , weight
               , source_country_name
               , destination_country_name   
               , SUM(weight) OVER (PARTITION BY source) as total_source_weight
               , SUM(weight) OVER (PARTITION BY destination) as total_destination_weight
             FROM `YOUR_PROJECT.collaborators_oecd.sql` 
            WHERE source not in ('EU')
              AND destination not in ('EU')
            ) t 
      -- connection exists only if for source it's >= 5% 
      -- same for destination if it's >= 2.5% 
      WHERE weight/total_source_weight >= 0.05
        AND weight/total_destination_weight >= 0.025