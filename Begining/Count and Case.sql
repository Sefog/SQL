SELECT
    store_id,
    COUNT(CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS  active,
    COUNT(CASE WHEN active = 0 THEN customer_id ELSE NULL END) AS  inactive
FROM customer
GROUP BY 
	store_id

