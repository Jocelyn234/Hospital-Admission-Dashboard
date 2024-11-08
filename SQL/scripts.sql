--Customers
select
	distinct
	customer_id,
	customer_name
from
	main.superstore;

--Location
select
	distinct
	postal_code,
	city,
	state,
	region,
	country 
from
	main.superstore;
	
--Orders
select
	distinct
	 order_id,
	 order_date,
	 ship_date,
	 ship_mode,
	 customer_id,
	 segment,
	 postal_code,
	 product_id,
	 sales,
	 quantity,
	 discount,
	 profit 
from
	main.superstore;
	
--Product
select
	distinct
	product_id,
	category,
	"sub-category",
	product_name 
from
	main.superstore;




