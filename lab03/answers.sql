-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name ASC



-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26



-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 OR user_id = 12




-- Exercise 6
SELECT COUNT(id)
FROM posts



-- Exercise 7
SELECT user_id, COUNT(user_id)
FROM posts
GROUP BY user_id;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users



-- Exercise 9




-- Exercise 10





-- Exercise 11
INSERT INTO bookmarks (id, user_id, post_id)
VALUES (501, 26, 219),(502, 26, 220),(503, 26, 221)

-- Exercise 12
DELETE FROM bookmarks
WHERE id = 501;

DELETE FROM bookmarks
WHERE id = 502;

DELETE FROM bookmarks
WHERE id = 531;




-- Exercise 13

UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id = 26;



-- Exercise 14
