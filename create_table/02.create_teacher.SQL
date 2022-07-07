CREATE TABLE teacher
(   t_id INT NOT NULL,
    t_name VARCHAR(30) NOT NULL UNIQUE,
    t_first_name VARCHAR(30),--user trigger
    t_last_name VARCHAR(30),--user trigger
    t_address VARCHAR(100),--user trigger
    t_role VARCHAR(30) DEFAULT 'junior',
    t_code NUMBER(6) NOT NULL,
    PRIMARY KEY (t_id)
);