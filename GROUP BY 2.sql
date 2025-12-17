use sakila;

show tables;

select * from payment;

select amount, count(*) from payment
group by amount
order by amount;

select customer_id, sum(amount) from payment
where amount > 3
group by customer_id
order by customer_id;


select customer_id, count(amount), month(payment_date) from payment
where month(payment_date) = 5
group by customer_id,month(payment_date)
order by customer_id;

-- find out the maximum amount of transaction, average transaction amount and total transaction amount done through each staff

select staff_id, max(amount), avg(amount), sum(amount) from payment
group by staff_id
order by staff_id;

--  find out the maximum amount of transaction, average transaction amount and total transaction amount done through each staff


select staff_id, max(amount), avg(amount), sum(amount) from payment
where customer_id %2 =0
group by staff_id
order by staff_id;

-- GET THE AMOUNT AND THE TOTAL TRANSACTION DONE FOR EACH AMOUNT ONLY FOR THE PAYMENTS DONE THROUGH STAFF ID 1 AND TOTAL TRANSACTION SHOULD BE GREATER THAN 30

SELECT amount, COUNT(amount) from payment
WHERE STAFF_ID = 1
GROUP BY amount
HAVING COUNT(AMOUNT)>30
order by amount;

-- FIND OUT THE NUMBER OF CUSTOMER SERVED ALONG WITH THE AVERAGE AMOUNT AND TOTAL AMOUNT SPEND IN EACH MONTH FOR STAFF ID 1 OR 2.
-- FIND OUT THE NUMBER OF CUSTOMER SERVED ALONG WITH THE AVERAGE AMOUNT AND TOTAL AMOUNT SPEND IN EACH MONTH FOR STAFF ID 1 OR 2.

-- 1.FIND OUT THE NUMBER OF CUSTOMER SERVED ALONG WITH THE AVERAGE AMOUNT AND TOTAL AMOUNT SPEND IN EACH MONTH FOR STAFF ID 1 OR 2.

SELECT MONTH(PAYMENT_DATE),STAFF_ID,COUNT(CUSTOMER_ID), AVG(AMOUNT), SUM(AMOUNT) FROM PAYMENT
GROUP BY MONTH(PAYMENT_DATE),STAFF_ID
ORDER BY MONTH(PAYMENT_DATE);

-- 2. FIND OUT THE NUMBER OF CUSTOMER SERVED ALONG WITH THE AVERAGE AMOUNT AND TOTAL AMOUNT SPEND IN EACH MONTH FOR STAFF ID 1 OR 2.

SELECT YEAR(PAYMENT_DATE),MONTH(PAYMENT_DATE),STAFF_ID,COUNT(CUSTOMER_ID), AVG(AMOUNT), SUM(AMOUNT) FROM PAYMENT
GROUP BY YEAR(PAYMENT_DATE), MONTH(PAYMENT_DATE),STAFF_ID
ORDER BY  MONTH(PAYMENT_DATE)ASC,STAFF_ID ASC;


