-- 4. How many customers have the last name ‘William’?
-- Answer: 0

SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';