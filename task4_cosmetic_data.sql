
CREATE TABLE cosmetic (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    brand VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10, 2),
    expiry_date DATE
);
INSERT INTO cosmetic (product_name, brand, category, price, expiry_date)
VALUES ('Lipstick', 'Maybelline', 'Makeup', 499.99, '2026-12-31');

select * from cosmetic;

COPY cosmetic (product_id, product_name, brand, category, price, expiry_date)
FROM 'd:/Data Analytics/sql_task/cosmetic_data.csv'
DELIMITER ','
CSV
HEADER;

select * from cosmetic;