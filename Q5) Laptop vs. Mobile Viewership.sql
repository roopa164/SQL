select 
  sum(case when device_type ='laptop' then 1 else 0 End) as laptop_views,
  sum(case when device_type in('tablet','phone') then 1 else 0 End) as mobile_views
from viewership;
