-- the average film length by category
-- include the category name and avg length

SELECT name, AVG(film.length)
from category
LEFT JOIN film_category on category.category_id = film_category.category_id
LEFT JOIN film on film_category.film_id = film.film_id
GROUP BY category.name