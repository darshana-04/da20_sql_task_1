CREATE TABLE employee_all_data (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mobile_no VARCHAR(15),
    department VARCHAR(50),
    salary NUMERIC(12, 2)
);

INSERT INTO employee_all_data (emp_name, email, mobile_no, department, salary)
VALUES ('John Doe', 'john.doe@example.com', '1234567890', 'HR', 55000.00);

select * from employee_all_data;

COPY employee_all_data (emp_id, emp_name, email, mobile_no, department, salary)
FROM 'd:/Data Analytics/sql_task/employee_data.csv'
DELIMITER ','
CSV
HEADER;

select * from employee_all_data;
