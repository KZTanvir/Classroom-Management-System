CREATE TABLE teacher
(   t_id INT NOT NULL,
    t_name VARCHAR(30) NOT NULL UNIQUE,
    t_role VARCHAR(30) DEFAULT 'junior',
    t_code number(6) NOT NULL,
    PRIMARY KEY (t_id)
);