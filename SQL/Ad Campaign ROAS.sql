select advertiser_id,ROUND((sum(revenue)::NUMERIC/sum(spend)),2) as 
ROAS  from ad_campaigns
group by advertiser_id
ORDER BY advertiser_id
