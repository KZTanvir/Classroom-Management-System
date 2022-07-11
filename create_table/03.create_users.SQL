DROP TABLE all_users;
CREATE TABLE all_users
(
    user_id INT NOT NULL,              --primary key--
    user_name VARCHAR(30) NOT NULL UNIQUE,    --user name triggered from student and teachers table
    user_type VARCHAR(10) NOT NULL,    --triggered from teacher or student(teacher,student)
    user_email VARCHAR(30),            --teacher or student id based on the type
    user_status VARCHAR(10) DEFAULT 'PENDING',
    PRIMARY KEY(user_id)
);