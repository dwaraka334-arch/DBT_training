select 
    dc.state,
    dc.customer_tier,
    count(dc.customer_id)   as total_customers,
    sum(dc.lifetime_value)  as total_revenue,
    avg(dc.lifetime_value)  as avg_ltv,
    avg(dc.total_orders)    as avg_orders_per_customer,
    avg(days_since_last_order) as days_since_last_order
from {{ ref('dim_customers')}} dc
where customer_id is not null

