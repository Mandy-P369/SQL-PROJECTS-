CREATE TABLE amazon_sales_report(
    idx INTEGER,
    order_id VARCHAR(30),
    date DATE,
    status VARCHAR(50),
    fulfilment VARCHAR(20),
    sales_channel VARCHAR(20),
    ship_service_level VARCHAR(20),
    style VARCHAR(20),
    sku VARCHAR(35),
    category VARCHAR(30),
    size VARCHAR(10),
    asin VARCHAR(20),
    courier_status VARCHAR(30),
    qty INTEGER,
    currency VARCHAR(10),
    amount NUMERIC(10,2),
    ship_city VARCHAR(50),
    ship_state VARCHAR(50),
    ship_postal_code VARCHAR(15),
    ship_country VARCHAR(10),
    promotion_ids TEXT,
    b2b BOOLEAN,
    fulfilled_by VARCHAR(30),
    unnamed_22 TEXT
);

Select * from amazon_Sales_report;


CREATE TABLE customer_sales (
    idx INTEGER,
    date DATE,
    months VARCHAR(10),
    customer VARCHAR(100),
    style VARCHAR(20),
    sku VARCHAR(30),
    size VARCHAR(10),
    pcs INTEGER,
    rate NUMERIC(10,2),
    gross_amt INTEGER
);

Select * from customer_sales;

CREATE TABLE product_price_list (
    idx INTEGER,
    sku VARCHAR(60),
    style_id VARCHAR(50),
    catalog VARCHAR(50),
    category VARCHAR(30),
    weight NUMERIC(5,2),
    tp numeric(10,2),
    mrp_old numeric(10,2),
    final_mrp_old numeric(10,2),
    ajio_mrp numeric(10,2),
    amazon_mrp numeric(10,2),
    amazon_fba_mrp numeric(10,2),
    flipkart_mrp numeric(10,2),
    limeroad_mrp numeric(10,2),
    myntra_mrp numeric(10,2),
    paytm_mrp numeric(10,2),
    snapdeal_mrp numeric(10,2)
);

Select * from product_price_list ;
drop table product_price_list;

Select * from product_price_list;


CREATE TABLE may_catalog (
    idx INTEGER,
    sku VARCHAR(50),
    style_id VARCHAR(50),
    catalog VARCHAR(100),
    category VARCHAR(100),
    weight NUMERIC(5,2),

    tp_1 NUMERIC(10,2),
    tp_2 NUMERIC(10,2),

    mrp_old NUMERIC(10,2),
    final_mrp_old NUMERIC(10,2),

    ajio_mrp NUMERIC(10,2),
    amazon_mrp NUMERIC(10,2),
    amazon_fba_mrp NUMERIC(10,2),
    flipkart_mrp NUMERIC(10,2),
    limeroad_mrp NUMERIC(10,2),
    myntra_mrp NUMERIC(10,2),
    paytm_mrp NUMERIC(10,2),
    snapdeal_mrp NUMERIC(10,2)
);

drop table product_catalog ;

Select * from product_catalog ;

CREATE TABLE inventory_stock(
    idx INTEGER,
    sku_code VARCHAR(30),
    design_no VARCHAR(20),
    stock numeric(10,2),
    category VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(100)
);

Select * from inventory_stock ;


Select distinct(order_id) from amazon_Sales_report;
Select distinct(idx) from amazon_Sales_report;

alter table inventory_stock rename to Sales_report ;
Select * from  Sales_report;
Select * from customer_sales;
Select * from product_price_list;
alter table product_price_list rename to march_catalog ;
Select * from march_catalog;
alter table customer_sales rename to international_Sales_report;
Select * from international_Sales_report;


Select * from amazon_Sales_report;
Select * from international_sales_report;
Select * from march_catalog;
Select * from may_catalog;
Select * from sales_report;
