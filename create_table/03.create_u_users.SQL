CREATE TABLE u_users
(
    u_id INT NOT NULL, --primary key--
    u_name VARCHAR(30) NOT NULL,--user name triggered from student and teachers table
    u_type VARCHAR(10) NOT NULL,--triggered from teacher or student(teacher,student)
    type_id INT NOT NULL,--teacher or student id based on the type
    u_status VARCHAR(10) DEFAULT 'PENDING',
    PRIMARY KEY(u_id)
);