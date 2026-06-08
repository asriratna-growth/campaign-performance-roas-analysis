CREATE OR REPLACE TABLE roas_reporting.campaign_summary AS

SELECT
    CampaignID,
    Channel,
    StartDate,
    EndDate,

    Impressions,
    Clicks,
    Leads,
    Conversions,

    Cost_USD,
    Revenue_USD,

    ROUND(
        Revenue_USD / Cost_USD,
        2
    ) AS roas,

    ROUND(
        Clicks * 100.0 / Impressions,
        2
    ) AS ctr_pct,

    ROUND(
        Conversions * 100.0 / Clicks,
        2
    ) AS conversion_rate_pct

FROM campaign_roas_analysis_062026.marketing_campaigns_raw;