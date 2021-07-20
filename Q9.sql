-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
-- Answer: .99 had 269, 2.99 had 290, 4.99 had 281

SELECT DISTINCT(amount), COUNT(rental_id) AS number_of_times_purchased
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250
ORDER BY amount ASC



