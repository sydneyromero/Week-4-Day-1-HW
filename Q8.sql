-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 13 people with %es in last name

SELECT COUNT(last_name) AS number_of_peeps_with_es_last_name
FROM customer
WHERE store_id = '1' AND last_name LIKE '%es'