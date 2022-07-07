CREATE TABLE student
(   s_id INT NOT NULL,--primary key
    s_name VARCHAR(30) NOT NULL UNIQUE,--foreign key
    s_first_name VARCHAR(30),--user trigger
    s_last_name VARCHAR(30),--user trigger
    s_father_name VARCHAR(30),--user trigger
    s_mother_name VARCHAR(30),--user trigger
    s_address VARCHAR(100),--user trigger
    s_roll INT NOT NULL,
    s_class VARCHAR(30) NOT NULL,
    s_year INT NOT NULL,
    PRIMARY KEY(s_id) --primary key declaretion--
);



    