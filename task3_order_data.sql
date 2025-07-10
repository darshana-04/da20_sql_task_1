CREATE TABLE "order" (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    order_date DATE NOT NULL,
    address TEXT,
    total_price NUMERIC(10,2) NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO "order" (customer_name, order_date, address, total_price, quantity)
VALUES ('Alice Johnson', '2025-07-09', '123 Main St, Cityville', 299.99, 3);

select * from "order";

COPY "order" (order_id, customer_name, order_date, address, total_price, quantity)
FROM 'd:/Data Analytics/sql_task/order_data.csv'
DELIMITER ','
CSV
HEADER;

select * from "order";