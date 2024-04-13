SELECT
	customer_id, 
    rental_id,
    amount,
    payment_date
FROM payment 
WHERE customer_id < 101
	AND amount >= 5 
	AND payment_date >= '2006-01-01'