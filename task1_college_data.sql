CREATE TABLE college (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    email VARCHAR(100),
    contact_no VARCHAR(20),
    student_count INTEGER,
    establishment_date DATE,
    dept_count INTEGER,
    prof_count INTEGER
);

INSERT INTO college (name, address, email, contact_no, student_count, establishment_date, dept_count, prof_count)
VALUES (
    'Sunrise College',
    '123 Main St, Cityville',
    'info@sunrisecollege.edu',
    '123-456-7890',
    1200,
    '2001-08-15',
    8,
    60
);


select * from college;


COPY college(id, name, address, email, contact_no, student_count, establishment_date, dept_count, prof_count)
FROM 'd:/Data Analytics/sql/college_data.csv'
DELIMITER ','
CSV HEADER;

select * from college;

