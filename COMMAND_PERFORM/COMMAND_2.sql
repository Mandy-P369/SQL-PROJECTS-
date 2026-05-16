Select * from amazon_sales_report ;
Select * from sales_report;
-- Total Revenue and total orders . What's our total Net Revenue (excluding Cancelled) and number of distinct order id 
Select sum(amount) as Total_revenue,count(distinct order_id) as total_orders from amazon_sales_report
where status!='Cancelled';

--Top 10 states by revenue ,include % share of total 
Select sum(amount) as Total_revenue from amazon_sales_report;

Select distinct ship_state,sum(amount) as total_revenue  from amazon_sales_report
group by ship_state order by total_revenue desc limit 10 ;

Select distinct ship_state , sum(amount) as Total_revenue,0.1*sum(amount) as percent_share from amazon_sales_report
group by ship_state order by total_revenue desc limit 10;

Select distinct ship_state,sum(amount) as Total_revenue,0.1*sum(amount) as percent_share,sum(amount)+(0.1*sum(amount))
as Overall_revenue from amazon_sales_report where status!='Cancelled' group by ship_state order by total_revenue desc limit 10;

--Cancellation rate by Category,% of orders cancelled per category .
Select * from amazon_sales_report;
Select distinct category,count(status) from amazon_sales_report ; 

/* Daily Revenue Trend over the 91-day window .Identify highest and lowest revenue days */
-- Select * from amazon_sales_report;
-- Select distinct(date) from amazon_sales_report ;
-- alter table amazon_sales_report rename date to dates ;
Select  dates , sum(amount) as total_revenue, max(amount),min(amount) from amazon_sales_report  group by dates
order by  total_revenue desc;

-- Average order value by fullfilment channel (FBA vs Merchant) ....
Select *  from amazon_sales_report;
Select sum(amount) from amazon_sales_report;

Select fulfilment,sum(amount),count(distinct  order_id),sum(amount)/count(distinct order_id) 
from amazon_sales_report group by fulfilment;

--SALES REPORT QUESTIONS :
--Catalogue size by Category ,distinct SKUs per Category .
Select * from sales_report;
Select distinct sku_code from sales_report ;
alter table sales_report rename size to sz;
Select  category , count(*)  from sales_report group by category;

--Total Stock units across Catalogue .Top 10 SKUs per  Category . 
Select * from sales_report;
Select  sku_code , sum(stock) as Total_stock from  sales_report group by sku_code order by Total_stock desc limit 10 ;

-- Size distribution , SKU count + % per size ....   doubt
Select * from sales_report;
SELECT size,
       COUNT(DISTINCT sku) AS sku_count,
       ROUND(
           COUNT(DISTINCT sku) * 100.0 /
           SUM(COUNT(DISTINCT sku)) OVER (),
           2
       ) AS percentage_share
FROM amazon_sales_report
GROUP BY size
ORDER BY sku_count DESC;

Select  distinct sz from sales_report;
select sz , count(distinct sku_code) as total_sku from sales_report group by sz;

Select sz, count(distinct sku_code) as total_sku from sales_report group by sz ;


-- Top 10 designs by color variety (most distinct colors) : 
Select * from sales_report;
Select distinct design_no,count(distinct color) as top_count from sales_report group by design_no order by top_count desc limit 10; 

--Out of stocks,SKUs.How many ? Which Categories not affected.....
Select * from sales_report;
Select distinct category,count(distinct sku_code),sum(stock) from sales_report where stock = 0 group by category;

Select distinct category, case (
when stock=0 then 1
end
) as  c from sales_report group by category order by c desc limit 10;







