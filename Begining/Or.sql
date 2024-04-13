SELECT
	customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
WHERE amount > 5
	OR customer_id = 42
	OR customer_id = 53
    OR customer_id = 60
    OR customer_id = 75
