CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL,
  distance VARCHAR(50) NOT NULL,
  stars INTEGER,
  category VARCHAR(50) NOT NULL,
  favorite_dish VARCHAR(50),
  takeout BOOLEAN,
  last_time_eaten VARCHAR(50) NOT NULL
);

-- restaurant data

INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_eaten) VALUES ('Champ Burger', '0.2 mi', 5, 'American', 'Champ Burger', True, '09-28-2017');
INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_eaten) VALUES ('Moon Tower Inn', '0.2 mi', 3, 'American, BBQ', 'brisket sandwich', True, '09-17-2017');
INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_eaten) VALUES ('McDonalds', '1.7 mi', 1, 'Fast food', 'Chicken McNuggets', True, '10-01-2017');
INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_eaten) VALUES ('Whataburger', '1.6 mi', 5, 'Fast food', 'Whataburger with cheese', True, '09-20-2017');
INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_eaten) VALUES ('99 Ranch Market', '10 mi', 5, 'Chinese', 'Beef Noodle Soup', True, '09-30-2017');
INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_eaten) VALUES ('Rudys', '20 mi', 5, 'BBQ', 'BBQ Ribs', True, '09-05-2017');

-- PostgreSQL exercises

--1. The names of the restaurants that you gave a 5 stars to

SELECT name FROM restaurant WHERE stars = 5;


--2. The favorite dishes of all 5-star restaurants

SELECT name, favorite_dish FROM restaurant WHERE stars = 5;


--3. The the id of a restaurant by a specific restaurant name, say 'Moon Tower'

SELECT id FROM restaurant WHERE name LIKE '%Moon Tower%';


--4. Restaurants in the category of 'BBQ'

SELECT name FROM restaurant WHERE category LIKE '%BBQ%';


--5. Restaurants that do take out

Select name FROM restaurant WHERE takeout = True;


--6. Restaurants that do take out and is in the category of 'BBQ'

SELECT name FROM restaurant WHERE takeout = True and category LIKE '%BBQ%';


--7. Restaurants within 2 miles

SELECT name FROM restaurant WHERE distance < '2 mi';



--8. Restaurants you haven't ate at in the last week

SELECT name FROM restaurant WHERE last_time_eaten < '09-26-2017';


--9. Restaurants you haven't ate at in the last week and has 5 stars

SELECT name FROM restaurant WHERE last_time_eaten < '09-26-2017' and stars = 5;



-- Aggregation and Sorting Queries
--
-- 1. list restaurants by the closest distance.

SELECT name FROM restaurant ORDER BY distance, name;


-- 2. list the top 2 restaurants by distance.

SELECT name From restaurant ORDER BY distance LIMIT 2;


-- 3. list the top 2 restaurants by stars.

SELECT name FROM restaurant ORDER BY stars DESC LIMIT 2;


-- 4. list the top 2 restaurants by stars where the distance is less than 2 miles.
SELECT name FROM restaurant WHERE distance < '2 mi' ORDER BY stars DESC LIMIT 2;


-- 5. count the number of restaurants in the db.
SELECT COUNT(*) FROM restaurant;


-- 6. count the number of restaurants by category.
SELECT category, COUNT(*) FROM restaurant GROUP BY category;


-- 7. get the average stars per restaurant by category.

SELECT category, AVG(stars) FROM restaurant GROUP BY category;


-- 8. get the max stars of a restaurant by category.

SELECT category, MAX(stars) FROM restaurant GROUP BY category;
