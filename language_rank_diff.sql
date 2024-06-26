
WITH code_source AS 
(
    SELECT num_pushers
      , language
      , iso2_code
      , ROW_NUMBER() OVER (PARTITION BY iso2_code ORDER BY num_pushers DESC) AS l_r 
    FROM --'<YOUR_PROJECT>.languages.csv' 
    WHERE language_type = 'programming'
      -- Filtering out (semi-arbitratily) the config, script, library-specific files 
      AND language NOT IN ('Shell','Dockerfile','Makefile','PowerShell','Batchfile','CMake','HCL','Smarty','Procfile','Nix','Vim Script','GLSL', 'GLSL','XSLT','M4','HLSL','Emacs Lisp','Starlark','ShaderLab','Awk')
      AND year = 2023
      AND quarter = 4 
)

      SELECT us.*
        , de.l_r AS de_rank 
        , uk.l_r AS uk_rank
        , us.l_r-de.l_r AS rank_diff_us_de
      FROM code_source us
      LEFT JOIN code_source de on us.language = de.language
      LEFT JOIN code_source uk on us.language = uk.language
      WHERE us.iso2_code = 'US'
        AND de.iso2_code = 'DE'
        AND uk.iso2_code = 'GB'
        AND us.l_r <= 25