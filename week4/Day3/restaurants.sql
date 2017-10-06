CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(100),
  category VARCHAR(50) NOT NULL
  );

CREATE TABLE reviewer (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100),
  karma INTEGER DEFAULT 0 CHECK(karma < 8)
  );

CREATE TABLE review (
  id SERIAL NOT NULL PRIMARY KEY,
  reviewer_id INTEGER REFERENCES reviewer (id),
  stars INTEGER DEFAULT 1 CHECK(stars < 6),
  title VARCHAR(50) NOT NULL,
  review VARCHAR,
  restaurant_id INTEGER REFERENCES restaurant (id)
  );

INSERT INTO restaurant (name, address, category) VALUES ('Chilis Grill & Bar', '2425 Katy Fwy', 'American');
INSERT INTO restaurant (name, address, category) VALUES ('MKT Bar', '1001 Austin St', 'American');
INSERT INTO restaurant (name, address, category) VALUES ('Merida Mexican Restaurant', '2509 Navigation Blvd', 'Tex-Mex');
INSERT INTO restaurant (name, address, category) VALUES ('Rudys', '3600 I-45', 'BBQ');
INSERT INTO restaurant (name, address, category) VALUES ('Carlitos', '600 Spanish Way', 'Tex-Mex');
INSERT INTO restaurant (name, address, category) VALUES ('The Olive Garden', '1200 W Sam Houston PKWY', 'Italian');
INSERT INTO restaurant (name, address, category) VALUES ('Pizza Hut', '3402 Airport Blvd', 'Pizza');
INSERT INTO restaurant (name, address, category) VALUES ('Jack in the Box', '2400 Louetta Rd', 'Fast Food');
INSERT INTO restaurant (name, address, category) VALUES ('Sloppy Joes', '1234 Street', 'American');
INSERT INTO restaurant (name, address, category) VALUES ('Jack in the Box', '2400 Louetta Rd', 'Fast Food');
INSERT INTO restaurant (name, address, category) VALUES ('Hamburger Hut', 'La Grange Blvd', 'American');
INSERT INTO restaurant (name, address, category) VALUES ('Little Italy', '8300 Sicilian Dr', 'Italian');

INSERT INTO reviewer (name, email, karma) VALUES ('Steve-O', 'the_stever@gmail.com', 5);
INSERT INTO reviewer (name, email, karma) VALUES ('Michelangelo', 'cowabunga@gmail.com', 7);
INSERT INTO reviewer (name, email, karma) VALUES ('Raphael', 'deadlysai@gmail.com', 1);
INSERT INTO reviewer (name, email, karma) VALUES ('Donatello', 'shell_shocked@gmail.com', 6);
INSERT INTO reviewer (name, email, karma) VALUES ('Leonardo', 'the_leader@gmail.com', 3);
INSERT INTO reviewer (name, email, karma) VALUES ('BigAl', 'soTall@gmail.com', 2);
INSERT INTO reviewer (name, email, karma) VALUES ('Rocky', 'southpaw@gmail.com', 3);
INSERT INTO reviewer (name, email, karma) VALUES ('Heffer', 'is_wolf@gmail.com', 5);
INSERT INTO reviewer (name, email, karma) VALUES ('Logan', 'Wolverine@gmail.com', 6);
INSERT INTO reviewer (name, email, karma) VALUES ('Ruby', 'cute_chic@gmail.com', 7);
INSERT INTO reviewer (name, email, karma) VALUES ('Poppie', 'woof@gmail.com', 7);
INSERT INTO reviewer (name, email, karma) VALUES ('Punkie', 'meow@gmail.com', 7);

INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (1, 5, 'Best Meal Ever!', 'The food was amazing, try the brisket!', 4);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (2, 5, 'OMG!', 'The food was terrific, try the tacos!', 5);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (3, 3, 'Not Bad', 'It was okay', 2);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (4, 1, 'REALLY?', 'I wouldnt feed it to my dog!', 1);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (5, 2, 'Horrible Service', 'I had to wait two hours just to get my order taken!', 9);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (6, 4, 'Cool Place', 'I liked it, good atmosphere.', 12);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (7, 5, 'GO HERE NOW!', 'This place will change your life!', 8);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (8, 1, 'Yuck!', 'I found a cockroach in my salad!', 1);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (9, 2, 'Nice Try', 'They brought me the wrong order, and didnt offer me a free dessert!', 7);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (10, 3, 'Good prices', 'This place has great prices, but they are always out of brandy.', 6);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (1, 5, 'To Die For', 'The food here is ridiculously, you cant go wrong with anything!', 5);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (12, 4, 'One of my fave spots', 'I come here at least twice a week and love it!', 3);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (11, 3, 'Good Service', 'The service is good, but the food average.', 4);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (8, 3, 'Decent', 'There are worse places to eat.', 10);
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id) VALUES (2, 4, 'Interesting Menu', 'They have all kinds of creative dishes, try the octopus pancakes!', 11);

-- Answer These Questions With a Query


-- List all the reviews for a given restaurant given a specific restaurant ID.

SELECT review.review, restaurant.id FROM restaurant
	LEFT OUTER JOIN review ON review.restaurant_id = restaurant.id
	WHERE restaurant.id = 1
	GROUP BY review.review, restaurant.id;

-- List all the reviews for a given restaurant, given a specific restaurant name.

SELECT review.review, restaurant.name FROM restaurant
	INNER JOIN review ON review.restaurant_id = restaurant.id
	WHERE restaurant.name = 'Rudys'
	GROUP BY review.review, restaurant.name;

-- List all the reviews for a given reviewer, given a specific author name.

SELECT review.review, reviewer.name FROM reviewer
	INNER JOIN review ON review.reviewer_id = reviewer.id
	WHERE reviewer.name = 'Michelangelo'
	GROUP BY review.review, reviewer.name;

-- List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.

SELECT review.review, restaurant.name FROM restaurant
	INNER JOIN review ON review.restaurant_id = restaurant.id
	GROUP BY review.review, restaurant.name;

-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating.

SELECT avg_stars.name, AVG(avg_stars.the_stars) FROM (SELECT restaurant.name, review.stars AS the_stars FROM restaurant
	INNER JOIN review ON review.restaurant_id = restaurant.id) AS avg_stars
	GROUP BY avg_stars.name;

-- Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.

SELECT restaurant.name, COUNT(review.id) AS review_num FROM restaurant
	LEFT OUTER JOIN review ON review.restaurant_id = restaurant.id
	GROUP BY restaurant.name
	ORDER BY review_num DESC;

-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.

SELECT restaurant.name, review.review, reviewer.name FROM restaurant
	LEFT OUTER JOIN review ON review.restaurant_id = restaurant.id
	LEFT OUTER JOIN reviewer ON review.reviewer_id = reviewer.id
	GROUP BY restaurant.name, review.review, reviewer.name;

-- Get the average stars given by each reviewer. (reviewer name, average star rating)

SELECT avg_stars.name, AVG(avg_stars.the_stars) FROM (SELECT reviewer.name, review.stars AS the_stars FROM reviewer
	INNER JOIN review ON review.reviewer_id = reviewer.id) AS avg_stars
	GROUP BY avg_stars.name;

-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)

SELECT min_stars.name, MIN(min_stars.the_stars) FROM (SELECT reviewer.name, review.stars AS the_stars FROM reviewer
	INNER JOIN review ON review.reviewer_id = reviewer.id) AS min_stars
	GROUP BY min_stars.name;

-- Get the number of restaurants in each category. (category name, restaurant count)

SELECT restaurant.category, COUNT(restaurant.name) AS restaurant_count FROM restaurant
	GROUP BY restaurant.category ORDER BY restaurant_count DESC;

-- Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)

SELECT five_stars.name, COUNT(five_stars.five_star) FROM(SELECT restaurant.name, review.stars AS five_star FROM restaurant
	LEFT OUTER JOIN review ON review.restaurant_id = restaurant.id
	WHERE review.stars = 5) AS five_stars
	GROUP BY five_stars.name;

-- Get the average star rating for a food category. (category name, average star rating)

SELECT avg_stars.category, AVG(avg_stars.the_stars) FROM (SELECT restaurant.category, review.stars as the_stars FROM restaurant
	INNER JOIN review ON review.restaurant_id = restaurant.id) AS avg_stars
	GROUP BY avg_stars.category;
