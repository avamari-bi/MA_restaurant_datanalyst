-- 1. Combine the menu_items and order_details tables into a single table
select *
from menu_items;

select *
from order_details;

select * 
from order_details as OD  -- (((((we need to keep alll our transactions in order details and take off menu items in this account))))
left join menu_items as MI
 on OD.item_id = MI.menu_item_id;

-- 2. What were the least and most ordered items? What categories were they in?
select 
item_name, category,
count(order_details_id) AS num_purchases
from order_details as OD  
left join menu_items as MI
 on OD.item_id = MI.menu_item_id
 group by item_name,category
 order by num_purchases desc;

-- 3. What were the top 5 orders that spent the most money?
select 
order_id,
sum(price) as total_spent
from order_details as OD  
left join menu_items as MI
 on OD.item_id = MI.menu_item_id
group by order_id
order by total_spent desc
limit 5;

-- 1. View the details of the highest spend order. Which specific items were purchased?
select category, count(item_id) as num_items
from order_details as OD  
left join menu_items as MI
 on OD.item_id = MI.menu_item_id
 where order_id= 440
 group by category; -- ((( based on our category we want to know how many items have been ordered in this cat))
 
-- 5.BONUS: View the details of the top 5 highest spend orders
select order_id, category, count(item_id) as num_items
from order_details as OD  
left join menu_items as MI
 on OD.item_id = MI.menu_item_id
 where order_id in(440,2075,1957,330,2675) 
 group by order_id, category; -- alot on italian food
 
/*440, 192.15
2075, 191.05
1957, 190.10
330, 189.70
2675, 185.10
"/
