-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country, AVG(payment.amount)
FROM country
LEFT JOIN city on country.country_id = city.country_id
LEFT JOIN address on city.city_id = address.city_id
LEFT JOIN customer on address.address_id = customer.address_id
LEFT JOIN payment on customer.customer_id = payment.customer_id
GROUP BY country.country_id
HAVING AVG(payment.amount) > 0
ORDER BY AVG(payment.amount) DESC
LIMIT 10