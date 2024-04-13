SELECT
	first_name,
    last_name,
    CASE
		WHEN store_id = 1 AND active = 1 THEN 'Store 1 active'
		WHEN store_id = 1 AND active = 0 THEN 'Store 1 inactive'
		WHEN store_id = 2 AND active = 1 THEN 'Store 2 active'
		WHEN store_id = 2 and active = 0 THEN 'Store 2 inactive'
		ELSE 'Uh oh Check Logic'
    END AS store_and_status
FROM customer
	
