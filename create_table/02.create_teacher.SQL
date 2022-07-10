CREATE TABLE teacher
(   teacher_id INT NOT NULL,
    teacher_name VARCHAR(30) NOT NULL UNIQUE,
    teacher_first_name VARCHAR(30),--user trigger
    teacher_last_name VARCHAR(30),--user trigger
    teacher_address VARCHAR(100),--user trigger
    teacher_role VARCHAR(30) DEFAULT 'JUNIOR',
    teacher_sub VARCHAR(30) DEFAULT 'ALL',
    teacher_code NUMBER(6) NOT NULL,
    PRIMARY KEY (teacher_id)
);