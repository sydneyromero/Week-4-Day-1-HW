--1. How many actors are there with the last name ‘Wahlberg’?
--Answer: 2 actors

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'



--2. How many payments were made between $3.99 and $5.99?
-- Answer: 5607 payments

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

-- 3. What film does the store have the most of? (search in inventory)
-- Answer: A lot where they are 8 of them?



SELECT film_ID, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


-- 4. How many customers have the last name ‘William’?
-- Answer: 0

SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- 5 What store employee (get the id) sold the most rentals?
-- Answer: Employee 1 or Mike

SELECT staff_id, count(rental_date)
FROM rental
GROUP BY staff_id
ORDER BY count(rental_date) DESC;


-- 6 How many different district names are there?
-- Answer: IDK what this means as I couldnt find a district field

SELECT *
FROM store


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: film_id 508



SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY count(film_id) DESC;



-- 8.  From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 13 people with %es in last name

SELECT COUNT(last_name) AS number_of_peeps_with_es_last_name
FROM customer
WHERE store_id = '1' AND last_name LIKE '%es'


-- 9.  How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
-- Answer: .99 had 269, 2.99 had 290, 4.99 had 281

SELECT DISTINCT(amount), COUNT(rental_id) AS number_of_times_purchased
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250
ORDER BY amount ASC


-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: There are 5 rating categories and PG-13 has the highest with 223 movies


SELECT DISTINCT(rating), count(rating)
FROM film
GROUP BY rating
ORDER BY count(rating) DESC
;







