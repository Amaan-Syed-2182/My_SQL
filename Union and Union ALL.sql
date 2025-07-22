-- Union
SELECT name from users
UNION
Select name from admin_users;

-- UNION ALL Displays only unique result set
SELECT id,name,email from users
UNION ALL
select id,name, email from admin_users;

select * from users;

-- Union with order by Displays Duplicates values as it is

SELECT name from users
UNION
Select name from admin_users
order by name;