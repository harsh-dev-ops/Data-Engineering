SELECT * FROM daily_revenue;

SELECT dr.*,
sum(dr.order_revenue) OVER (PARTITION BY 1) AS order_revenue
FROM daily_revenue AS dr
ORDER BY 1;