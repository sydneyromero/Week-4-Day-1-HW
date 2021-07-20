-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: There are 5 rating categories and PG-13 has the highest with 223 movies


SELECT DISTINCT(rating), count(rating)
FROM film
GROUP BY rating
ORDER BY count(rating) DESC
;