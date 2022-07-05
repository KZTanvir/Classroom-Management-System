CREATE TABLE student
(   s_id INT NOT NULL,
    s_name VARCHAR(30) NOT NULL UNIQUE,
    father_name VARCHAR(30),
    mother_name VARCHAR(30),
    address VARCHAR(100),
    s_roll INT NOT NULL,
    s_class INT NOT NULL,
    s_year INT NOT NULL,
    PRIMARY KEY(s_id)
);



    