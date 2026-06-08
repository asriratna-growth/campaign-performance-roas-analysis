CREATE OR REPLACE TABLE roas_reporting.funnel_stage_summary AS

SELECT
  'Impressions' AS funnel_stage,
  SUM(Impressions) AS volume
FROM campaign_roas_analysis_062026.marketing_campaigns_raw

UNION ALL

SELECT
  'Clicks',
  SUM(Clicks)
FROM campaign_roas_analysis_062026.marketing_campaigns_raw

UNION ALL

SELECT
  'Leads',
  SUM(Leads)
FROM campaign_roas_analysis_062026.marketing_campaigns_raw

UNION ALL

SELECT
  'Conversions',
  SUM(Conversions)
FROM campaign_roas_analysis_062026.marketing_campaigns_raw;