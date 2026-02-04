
SELECT 
count(*) AS number_of_item
FROM menu_items;

SELECT *
FROM menu_items
ORDER BY price;

SELECT *
FROM menu_items
ORDER BY price DESC;

SELECT 
count(*)
FROM menu_items
WHERE category ='Italian';

SELECT *
FROM menu_items
WHERE category ='Italian'
ORDER BY price ;

SELECT *
FROM menu_items
WHERE category ='Italian'
ORDER BY price desc;

SELECT category, count(menu_item_id) as num_dishes
FROM menu_items
GROUP BY category;


SELECT category, avg(price) as avg_price
FROM menu_items
GROUP BY category;
