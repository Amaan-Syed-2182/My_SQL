-- Inner Join
SELECT t1.pid, t1.pname, t2.city
FROM product AS t1
JOIN orders AS t2 
    ON t1.pid = t2.productid;

-- Right Join
SELECT t1.pid, t1.pname, t2.city
FROM product AS t1
Right JOIN orders AS t2 
    ON t1.pid = t2.productid;
    
-- Left Join
SELECT t1.pid, t1.pname, t2.city
FROM product AS t1
Left JOIN orders AS t2 
    ON t1.pid = t2.productid;
    
-- Fetch the City where Iphones were sold...
SELECT t1.pid, t1.pname, t2.city
FROM product AS t1
JOIN orders AS t2 
    ON t1.pid = t2.productid
where t1.pname= 'Iphone';