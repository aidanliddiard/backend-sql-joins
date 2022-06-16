-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

SELECT name
from category
LEFT JOIN film_category on category.category_id = film_category.category_id
LEFT JOIN film on film_category.film_id = film.film_id
LEFT JOIN inventory on film.film_id = inventory.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
WHERE rental.rental_id IS NULL