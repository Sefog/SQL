SELECT DISTINCT
	film.title,
    film.description
FROM film
	INNER JOIN inventory 
		ON inventory.film_id = film.film_id
        AND inventory.store_id = 2
	