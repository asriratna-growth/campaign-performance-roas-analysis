CREATE OR REPLACE TABLE roas_reporting.funnel_summary AS

SELECT
  SUM(Impressions) AS impressions,
  SUM(Clicks) AS clicks,
  SUM(Leads) AS leads,
  SUM(Conversions) AS conversions,

  ROUND(
    SUM(Clicks) * 100.0 /
    SUM(Impressions),
    2
  ) AS ctr_pct,

  ROUND(
    SUM(Leads) * 100.0 /
    SUM(Clicks),
    2
  ) AS lead_rate_pct,

  ROUND(
    SUM(Conversions) * 100.0 /
    SUM(Leads),
    2
  ) AS lead_to_conversion_pct,

  ROUND(
    SUM(Cost_USD) /
    SUM(Conversions),
    2
  ) AS cpa_usd

FROM campaign_roas_analysis_062026.marketing_campaigns_raw;