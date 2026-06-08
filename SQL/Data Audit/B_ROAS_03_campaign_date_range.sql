SELECT
  MIN(StartDate) AS first_campaign,
  MAX(EndDate) AS last_campaign
FROM campaign_roas_analysis_062026.marketing_campaigns_raw;