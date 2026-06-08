CREATE OR REPLACE TABLE roas_reporting.executive_summary AS

SELECT

    ROUND(SUM(Cost_USD),2) AS total_spend,

    ROUND(SUM(Revenue_USD),2) AS total_revenue,

    ROUND(
        SUM(Revenue_USD) /
        SUM(Cost_USD),
        2
    ) AS overall_roas,

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
        SUM(Conversions) * 100.0 /
        SUM(Clicks),
        2
    ) AS conversion_rate_pct

FROM campaign_roas_analysis_062026.marketing_campaigns_raw;