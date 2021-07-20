-- 3. What film does the store have the most of? (search in inventory)
-- Answer: A lot where they are 8 of them?



SELECT film_ID, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
