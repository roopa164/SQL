SELECT campaign_name ,
round((0.3*(num_opens/num_users) + 0.7*(num_clicks/num_users)),2) weighted_avg
FROM email_campaigns
