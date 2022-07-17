CREATE TABLE student
(   student_id INT NOT NULL,--primary key
    student_name VARCHAR(30) NOT NULL UNIQUE,
    student_first_name VARCHAR(30),--user trigger
    student_last_name VARCHAR(30),--user trigger
    student_father_name VARCHAR(30),--user trigger
    student_mother_name VARCHAR(30),--user trigger
    student_address VARCHAR(100),--user trigger
    student_roll INT NOT NULL,
    student_class VARCHAR(30) NOT NULL,
    student_year INT NOT NULL,
    PRIMARY KEY(student_id) --primary key declaration--
);



    