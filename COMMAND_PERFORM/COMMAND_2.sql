Select * from amazon_sales_report ;
Select * from international_sales_report;
Select * from march_catalog;
Select * from may_catalog ;
Select * from sales_report;

/*Show all data from amazon_sales_report*/.
Select * from amazon_sales_report;
-- Show only SKU, category, and amount.
Select sku,category,amount from amazon_sales_report;
-- Show distinct categories.
Select distinct category as categories from amazon_sales_report;
-- Show top 10 rows.
Select * from amazon_sales_report order by amount desc limit 10;



-- Find all cancelled orders.
	Select * from amazon_sales_report where status = 'Cancelled';
-- Show products with size XL.
	Select order_id,size  from  amazon_sales_report where size = 'XL';
-- Find orders from Maharashtra.
	Select order_id,ship_state from amazon_sales_report where ship_state = 'MAHARASHTRA';
	Select count(order_id) from amazon_sales_report where ship_state = 'MAHARASHTRA';
-- Show products with amount > 1000.
	Select order_id from amazon_sales_report where amount>1000;

-- Sort products by highest amount.
	Select category,amount from amazon_sales_report order by amount desc ; --actual Query
	select distinct category,max(amount) from amazon_sales_report group by category order by max(amount) desc;
-- Sort stock from low to high.
	Select stock from sales_report where stock is not null order by stock desc   ;
-- Show latest orders first.
	Select * from amazon_sales_report;
	Select order_id,date from amazon_sales_report  order by date desc ;
	select order_id , date from amazon_sales_report 
	
-- Find total sales amount.
-- Find average order value.
-- Find maximum MRP.
-- Find minimum stock.
-- Count total orders.
-- Find sales by category.
-- Count orders by state.
-- Find average amount by size.
-- Find stock by color.
-- Show categories with sales > 50000.
-- Show states with more than 100 orders.
-- Convert size column to uppercase.
-- Find length of SKU codes.
-- Extract first 3 letters from SKU.
-- Find sales in April 2022.
-- Extract month from order date.
-- Count orders month-wise.
-- Find rows with NULL amount.
-- Replace NULL with 0 using COALESCE.
-- Count missing courier status.
-- Join inventory and product pricing table using SKU.
-- Show stock + MRP together.
-- Find products with amount above average.
-- Find highest selling category.
-- Rank products by sales amount.
-- Find running total of sales.
-- Convert M/m to same format.
-- Remove duplicate SKUs.
-- Replace #REF! with NULL.
-- Find invalid rows.
-- Which category sells most?
-- Which size has highest demand?
-- Which city generates highest revenue?
-- Which product has low stock but high sales?
-- Which fulfilment method performs better?