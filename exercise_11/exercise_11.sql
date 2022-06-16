-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10

SELECT COUNT(rental.rental_id), title
from film
LEFT JOIN inventory on film.film_id = inventory.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id
ORDER BY COUNT(rental.rental_id) DESC
LIMIT 10