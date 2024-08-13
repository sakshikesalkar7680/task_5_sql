create table product(
	product_id serial primary key,
	productcategory varchar(50),
	price decimal(10, 2),
	quantity int,
	saledate date
)

select * from product

1--average price of products where price is greater than 50
	
select avg(price) as
average_price
from products
where price > 50

2--total quantity of products by category where quantity is more than 10

select productcategory as category, sum(quantity)
as total_quantity
from products
where quantity > 10
group by productcategory

3--maximum price of products where price is greater than 100

select max(price) as max_price
from products
where price > 100

4--average quantity of products by category where total price exceeds 500

select avg(quantity) as
average_quantity
from products
where quantity > 5

5--total price of products by category where total price exceeds 500

select category, sum(price * quantity) as total_price
from products
group by category
having sum(price * quantity) > 500

6--count of products where qunatity is more than 20

select count(*) as
product_count
from products
where quantity > 20

7--maximum quantity of products where quantity is more than 15

select max(quantity) as
max_quantity
from products
where quantity > 15

8-- total price of products sold in a specific month

select sum(price * quantity) as 
total_price
from product
where extract(month from saledate) = 8
and extract(year from saledate) = 2024

9--average price of products in a specific category

select category, avg(price) as
average_price
from products
group by category

10-- total quantity of products where quantity is less than 10

select sum(quantity) as
total_quantity
from products
where quantity < 10