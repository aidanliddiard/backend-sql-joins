-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT title
FROM film
LEFT JOIN inventory on inventory.film_id = film.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
LEFT JOIN customer on rental.customer_id = customer.customer_id
WHERE customer.first_name='Roberta'