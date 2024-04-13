SELECT
	inventory_id,
    store_id,
    film.title,
    film.description
FROM inventory
	INNER JOIN film 
		ON film.film_id = inventory.film_id