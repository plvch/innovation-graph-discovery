      SELECT `weight`
        , `source`
        , `destination`
        , e.emoji_flag AS source_emoji
        , e_e.emoji_flag AS destination_emoji
        , e.country_name AS source_country_name
        , e_e.country_name AS destination_country_name 
      FROM `YOUR_PROJECT.economy_collaborators.csv` c --filtered for 2023 Q4
      INNER JOIN `<EMOJI dataset>` e ON c.source = e.iso2_code
      INNER JOIN `<EMOJI dataset>` e_e ON c.destination = e_e.iso2_code
      