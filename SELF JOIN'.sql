-- SELF JOIN
SELECT * FROM users1 AS T1
INNER JOIN users1 AS T2
ON T1.emergency_contact = T2.user_id;