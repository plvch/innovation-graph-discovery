WITH country_flags AS (
    SELECT 'AU' AS iso2_code, '🇦🇺' AS emoji_flag, 'Australia' AS country_name UNION ALL
    SELECT 'AT', '🇦🇹', 'Austria' UNION ALL
    SELECT 'BE', '🇧🇪', 'Belgium' UNION ALL
    SELECT 'CA', '🇨🇦', 'Canada' UNION ALL
    SELECT 'CL', '🇨🇱', 'Chile' UNION ALL
    SELECT 'CO', '🇨🇴', 'Colombia' UNION ALL
    SELECT 'CR', '🇨🇷', 'Costa Rica' UNION ALL
    SELECT 'CZ', '🇨🇿', 'Czechia' UNION ALL
    SELECT 'DK', '🇩🇰', 'Denmark' UNION ALL
    SELECT 'EE', '🇪🇪', 'Estonia' UNION ALL
    SELECT 'FI', '🇫🇮', 'Finland' UNION ALL
    SELECT 'FR', '🇫🇷', 'France' UNION ALL
    SELECT 'DE', '🇩🇪', 'Germany' UNION ALL
    SELECT 'GR', '🇬🇷', 'Greece' UNION ALL
    SELECT 'HU', '🇭🇺', 'Hungary' UNION ALL
    SELECT 'IS', '🇮🇸', 'Iceland' UNION ALL
    SELECT 'IE', '🇮🇪', 'Ireland' UNION ALL
    SELECT 'IL', '🇮🇱', 'Israel' UNION ALL
    SELECT 'IT', '🇮🇹', 'Italy' UNION ALL
    SELECT 'JP', '🇯🇵', 'Japan' UNION ALL
    SELECT 'KR', '🇰🇷', 'Korea' UNION ALL
    SELECT 'LV', '🇱🇻', 'Latvia' UNION ALL
    SELECT 'LT', '🇱🇹', 'Lithuania' UNION ALL
    SELECT 'LU', '🇱🇺', 'Luxembourg' UNION ALL
    SELECT 'MX', '🇲🇽', 'Mexico' UNION ALL
    SELECT 'NL', '🇳🇱', 'Netherlands' UNION ALL
    SELECT 'NZ', '🇳🇿', 'New Zealand' UNION ALL
    SELECT 'NO', '🇳🇴', 'Norway' UNION ALL
    SELECT 'PL', '🇵🇱', 'Poland' UNION ALL
    SELECT 'PT', '🇵🇹', 'Portugal' UNION ALL
    SELECT 'SK', '🇸🇰', 'Slovak Republic' UNION ALL
    SELECT 'SI', '🇸🇮', 'Slovenia' UNION ALL
    SELECT 'ES', '🇪🇸', 'Spain' UNION ALL
    SELECT 'SE', '🇸🇪', 'Sweden' UNION ALL
    SELECT 'CH', '🇨🇭', 'Switzerland' UNION ALL
    SELECT 'TR', '🇹🇷', 'Türkiye' UNION ALL
    SELECT 'GB', '🇬🇧', 'United Kingdom' UNION ALL
    SELECT 'US', '🇺🇸', 'United States' UNION ALL
    SELECT 'EU', '🇪🇺', 'EU'
)
SELECT * FROM country_flags;
