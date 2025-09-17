-- FOND ALL THE MOVIES THAT HAVE RATING HIGHER THAN THE AVREAGE RATING OF MOIES IN SAME GENRE
SELECT * FROM MOVIES AS M1
WHERE SCORE > (SELECT AVG(SCORE) FROM MOVIES AS M2
				WHERE M2.GENRE = M1.GENRE);
                
-- FIND FAVOURITE FOOD OF EACH CUSTOMER

WITH fav_food AS (
    SELECT 
        t2.user_id,
        t1.name,
        t4.f_name,
        COUNT(*) AS frequency
    FROM users t1
    JOIN orders t2       ON t1.user_id = t2.user_id
    JOIN order_details t3 ON t2.order_id = t3.order_id
    JOIN food t4          ON t3.f_id = t4.f_id
    GROUP BY t2.user_id, t1.name, t4.f_name
)
SELECT *
FROM fav_food f1
WHERE frequency = (
    SELECT MAX(frequency)
    FROM fav_food f2
    WHERE f2.user_id = f1.user_id
);

