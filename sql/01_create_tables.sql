-- *** Creating table CUSTOMERS ***

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    region VARCHAR(50),
    signup_date DATE,
    segment VARCHAR(50)
);


-- *** Creating table PRODUCTS ***

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    brand VARCHAR(50),
    cost DECIMAL(10,2),
    price DECIMAL(10,2)
);


-- *** Creating tables ORDERS***

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    sales DECIMAL(10,2),
    profit DECIMAL(10,2)
);
