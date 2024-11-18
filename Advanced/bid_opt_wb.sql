USE mavenfuzzyfactory ;

SELECT 
	primary_product_id,
    -- order_id,
    -- items_purchased,
    COUNT(DISTINCT CASE WHEN items_purchased = 1 THEN order_id ELSE NULL END) AS count_single_item_orders,
    COUNT(DISTINCT CASE WHEN items_purchased = 2 THEN order_id ELSE NULL END) AS count_two_item_orders
FROM orders
WHERE order_id BETWEEN 31000 AND 32000
GROUP BY 1

;

--

SELECT 
	-- YEAR(created_at) AS yr, 
    -- WEEK(created_at) AS wk,
    MIN(DATE(created_at)) AS week_started_at,
    COUNT(DISTINCT website_session_id) AS sessions
FROM website_sessions
WHERE created_at < '2012-05-12'
	AND utm_source = 'gsearch'
    AND utm_campaign = 'nonbrand'
GROUP BY 
	YEAR(created_at), 
    WEEK(created_at)
    
    ;
    
    --
    SELECT 
		website_sessions.device_type,
        COUNT(DISTINCT website_sessions.website_session_id) AS sessions ,
        COUNT(DISTINCT orders.order_id) AS orders ,
        COUNT(DISTINCT orders.order_id) / COUNT(DISTINCT website_sessions.website_session_id) AS conv_rate
    FROM website_sessions
		LEFT JOIN orders
			ON orders.website_session_id = website_sessions.website_session_id
    WHERE website_sessions.created_at < '2012-05-12'
		AND utm_source = 'gsearch'
		AND utm_campaign = 'nonbrand'
    GROUP BY 1
    
    ;
    
    --
    
    SELECT 
		-- YEAR(created_at) AS yr, 
		-- WEEK(created_at) AS wk,
        MIN(DATE(created_at)) AS week_start_date,
        COUNT(DISTINCT CASE WHEN device_type = 'desktop' THEN website_session_id ELSE NULL END) AS desktop_sessions ,
        COUNT(DISTINCT CASE WHEN device_type = 'mobile' THEN website_session_id ELSE NULL END) AS mobile_sessions 
        -- COUNT(DISTINCT website_session_id) AS total_sessions
    FROM website_sessions
    WHERE website_sessions. created_at < '2012-06-09'
		AND website_sessions.created_at > '2012-04-15'
        AND utm_source = 'gsearch'
		AND utm_campaign = 'nonbrand'
	GROUP BY
		YEAR(created_at), 
		WEEK(created_at)
    
    
    
    
    
    
