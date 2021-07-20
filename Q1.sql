--1. How many actors are there with the last name ‘Wahlberg’?
--Answer: 2 actors

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'