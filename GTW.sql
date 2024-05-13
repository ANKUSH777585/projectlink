USE GTTW;
SELECT * FROM GTW ;
### Write a SQL query that gives the below 3 points together:
Unique users, who have made a purchase?
What is the average amount of items these users bought?
What is the average price of each bought by these users?###

SELECT id, COUNT(id) AS "UNIQUE USER" FROM GTW group by id;

SELECT item_name, COUNT(item_name) AS "UNIQUE ITEM " 
FROM GTW GROUP BY item_name;

SELECT id, AVG( iap_price) as "AVG_PRICE"  FROM GTW GROUP BY id

SELECT item_name, COUNT(item_name) AS "UNIQUE ITEM",
id, AVG(iap_price) AS "AVG_PRICE" FROM GTW 
WHERE id IN (SELECT DISTINCT id FROM GTW) GROUP BY item_name, id;

### Total amount of items sold
Average revenue per item overall ###

SELECT item_name,COUNT(item_name) AS "TOTAL AMOUNT",
AVG(iap_price) "AVG REVENUE" FROM GTW GROUP BY item_name

### Write a SQL query that gives the top 3 items 
as per revenue grouped on a daily basis ###

SELECT COUNT(iap_price) AS TOTAL_REVENUE, DATE AS revenue_date
FROM GTW 
GROUP BY DATE
HAVING COUNT(iap_price) > 3
ORDER BY TOTAL_REVENUE DESC;

###Write a SQL query that gives the total revenue for 
each item broken down by country and date###


SELECT COUNT(iap_price) AS TOTAL_REVENUE, DATE AS revenue_date,country
FROM GTW GROUP BY DATE, country ORDER BY TOTAL_REVENUE DESC;


SELECT country, count(iap_price) as "MAX REVENUE"
FROM GTW GROUP BY country

 








