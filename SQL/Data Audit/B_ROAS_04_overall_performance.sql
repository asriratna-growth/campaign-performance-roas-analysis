SELECT
  ROUND(SUM(Cost_USD),2) AS total_spend,
  ROUND(SUM(Revenue_USD),2) AS total_revenue,
  ROUND(
      SUM(Revenue_USD) / SUM(Cost_USD),
      2
  ) AS overall_roas
FROM campaign_roas_analysis_062026.marketing_campaigns_raw;