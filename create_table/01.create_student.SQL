CREATE TABLE student
(   student_id INT NOT NULL,--primary key
    student_name VARCHAR(30) NOT NULL UNIQUE,
/*  student_first_name VARCHAR(30),
    student_last_name VARCHAR(30), */
    student_father_name VARCHAR(30),
    student_mother_name VARCHAR(30),
    student_address VARCHAR(100),
    student_roll INT NOT NULL,
    student_class NUMBER(2) NOT NULL,
    student_year NUMBER(4) NOT NULL,
    PRIMARY KEY(student_id), --primary key declaration--
    UNIQUE (student_roll,student_class)
);



    