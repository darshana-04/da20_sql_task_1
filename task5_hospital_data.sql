CREATE TABLE hospital (
    hospital_id SERIAL PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    phone_no VARCHAR(20),
    address VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(10)
);

INSERT INTO hospital (patient_name, phone_no, address, date_of_birth, gender)
VALUES ('Rahul Sharma', '9876543210', '45 Park Street, Mumbai', '1990-05-15', 'Male');

select * from hospital;

COPY hospital (hospital_id, patient_name, phone_no, address, date_of_birth, gender)
FROM 'd:/Data Analytics/sql_task/hospital_data.csv'
DELIMITER ','
CSV
HEADER;

select * from hospital;