/* SQL "Sakila" database query exercises - phase 1 */

-- Database context
USE sakila;

-- Your solutions...
--Phase 1:
--1. Which actors have the first name ‘Scarlett’
SELECT * FROM actor
WHERE first_name = 'Scarlett';


--2. Which actors have the last name ‘Johansson’
SELECT * FROM actor
WHERE last_name = 'Johansson';


--3. How many distinct actors last names are there?
SELECT COUNT(DISTINCT last_name) FROM actor;


--4.Which last names are not repeated?
SELECT last_name FROM actor
GROUP BY last_name
HAVING count(last_name)=1;


--5. Which last names appear more than once?
SELECT last_name FROM actor
GROUP BY last_name
HAVING count(last_name)>1;


--6. Which actor has appeared in the most films?
SELECT count(fa.actor_id) as NoOfMovies, a.first_name, a.last_name
FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id
GROUP BY fa.actor_id
ORDER BY count(fa.actor_id) DESC LIMIT 1;


--7.Is ‘Academy Dinosaur’ available for rent from Store 1?

--8.Insert a record to represent Mary Smith renting ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today .

--9.When is ‘Academy Dinosaur’ due?

--10.What is that average running time of all the films in the sakila DB?

--11.What is the average running time of films by category?

--12. Why does this query return the empty set?
