--2. How many payments were made between $3.99 and $5.99?
-- Answer: 5607 payments

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99