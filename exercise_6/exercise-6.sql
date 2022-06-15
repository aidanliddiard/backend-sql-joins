-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT title
FROM film
LEFT JOIN 
WHERE customer.first_name='Roberta'