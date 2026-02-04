
select 
count(*) AS number_of_item
from menu_items;

select *
from menu_items
order by price;

select *
from menu_items
order by price desc;

select 
count(*)
from menu_items
where category ='Italian';

select *
from menu_items
where category ='Italian'
order by price ;

select *
from menu_items
where category ='Italian'
order by price desc;

select category, count(menu_item_id) as num_dishes
from menu_items
group by category;


select category, avg(price) as avg_price
from menu_items
group by category;