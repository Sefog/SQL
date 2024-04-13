SELECT
	film.title,
    COUNT(film_actor.actor_id) AS count_of_actors 
FROM film
	LEFT JOIN film_actor
		ON film_actor.film_id = film.film_id
GROUP BY 
	film.title
        