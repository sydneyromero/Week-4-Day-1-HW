-- What store employee (get the id) sold the most rentals?
-- Answer: Employee 1 or Mike

SELECT staff_id, count(rental_date)
FROM rental
GROUP BY staff_id
ORDER BY count(rental_date) DESC;