CREATE TABLE student
(   s_id INT NOT NULL,
    s_name VARCHAR(30) NOT NULL,
    s_roll INT NOT NULL,
    s_class INT NOT NULL,
    s_year INT NOT NULL,
    PRIMARY KEY(s_id)
);
CREATE TABLE teacher
(   t_id INT NOT NULL,
    t_name VARCHAR(30) NOT NULL,
    t_role VARCHAR(30) DEFAULT 'junior',
    t_code number(6) NOT NULL,
    PRIMARY KEY (t_id)
);
CREATE TABLE notice_board
(
    n_id INT UNIQUE NOT NULL,
    teacher_id INT UNIQUE NOT NULL,
    notice VARCHAR(100),
    t_name VARCHAR(30) NOT NULL,
    n_date date,
    s_class VARCHAR(30) DEFAULT 'ALL',
    PRIMARY KEY(n_id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(t_id) ON DELETE CASCADE,
    FOREIGN KEY(t_name) REFERENCES teacher(teacher_id) ON DELETE CASCADE
);
CREATE TABLE u_users
(
    u_id INT NOT NULL,
    u_type VARCHAR(10) NOT NULL,
    type_id INT NOT NULL,
    u_email VARCHAR(20),
    u_status VARCHAR(10) DEFAULT 'PENDING',
    email_status VARCHAR(10) DEFAULT 'PENDING',
    PRIMARY KEY(u_id),
    FOREIGN KEY(type_id) REFERENCES student(s_id,t_id)
);



    