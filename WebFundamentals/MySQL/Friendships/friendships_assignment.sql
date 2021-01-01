SELECT users.id, users.first_name, users.last_name, user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id;


/*
1. Return all users who are friends with Kermit. Make sure their names are displayed in results.
-----------------------------------------------------------------------------------------------------------------------
*/
SELECT users.first_name, users.last_name, user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id
WHERE user2.id = (
	SELECT users.id
    FROM users
    WHERE users.first_name = 'Kermit'
);


/*
2. Return the count of all friendships.
-----------------------------------------------------------------------------------------------------------------------
*/
SELECT COUNT(*) AS friendship_count
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id;


/*
3. Find out who has the most friends and return the count of their friends.
-----------------------------------------------------------------------------------------------------------------------
*/
SELECT pool.first_name, pool.last_name, MAX(pool.friendship_count) AS friendship_count
FROM (
	SELECT users.first_name, users.last_name, COUNT(*) AS friendship_count
	FROM users
	JOIN friendships ON users.id = friendships.user_id
	LEFT JOIN users AS user2 ON friendships.friend_id = user2.id
	GROUP BY users.id) pool;


/*
4. Create a new user and make them friends with Eli Byers, Kermit the Frog, and Marky Mark.
-----------------------------------------------------------------------------------------------------------------------
*/
INSERT INTO users(first_name, last_name, created_at, updated_at)
VALUES ('Will', 'Dutcher', now(), now());

INSERT INTO friendships(friendships.user_id, friendships.friend_id, created_at, updated_at)
VALUES (
			(SELECT users.id FROM users WHERE users.last_name = 'Dutcher'),
			(SELECT users.id FROM users WHERE users.last_name = 'Byers'),
			now(),
			now()
		),(
			(SELECT users.id FROM users WHERE users.last_name = 'Dutcher'),
			(SELECT users.id FROM users WHERE users.last_name = 'The Frog'),
			now(),
			now()
		),(
			(SELECT users.id FROM users WHERE users.last_name = 'Dutcher'),
			(SELECT users.id FROM users WHERE users.last_name = 'Mark'),
			now(),
			now()
		);

SELECT users.first_name, users.last_name, user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id
WHERE user_id = (
	SELECT users.id
    FROM users
    WHERE users.last_name = 'Dutcher');


/*
5. Return the friends of Eli in alphabetical order; *** I did this using last name because default is already proper.
-----------------------------------------------------------------------------------------------------------------------
*/
SELECT user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id
WHERE user_id = (
	SELECT users.id
    FROM users
    WHERE users.first_name = 'Eli')
ORDER BY friend_last_name ASC;


/*
6. Remove Marky Mark from Eli's friends.
-----------------------------------------------------------------------------------------------------------------------
*/
DELETE FROM friendships
WHERE friendships.user_id = (
	SELECT users.id
    FROM users
    WHERE users.first_name = 'Eli'
	) AND friendships.friend_id = (
    SELECT users.id
    FROM users
    WHERE users.first_name = 'Marky'
	);


/*
7. Return all friendships, displaying just the first and last name of both friends.
-----------------------------------------------------------------------------------------------------------------------
*/
SELECT users.first_name, users.last_name, GROUP_CONCAT(' ', user2.first_name, ' ', user2.last_name)
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id
GROUP BY users.id;