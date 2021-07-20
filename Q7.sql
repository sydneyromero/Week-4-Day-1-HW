-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: film_id 508



SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY count(film_id) DESC;