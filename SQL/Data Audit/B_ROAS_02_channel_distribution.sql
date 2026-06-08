SELECT
  Channel,
  COUNT(*) AS campaigns
FROM campaign_roas_analysis_062026.marketing_campaigns_raw
GROUP BY Channel
ORDER BY campaigns DESC;