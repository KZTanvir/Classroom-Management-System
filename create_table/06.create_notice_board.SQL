CREATE TABLE notice_board
(
    n_id INT NOT NULL,
    teacher_id INT NOT NULL,
    notice VARCHAR(100),
    teacher_name VARCHAR(30) NOT NULL,
    n_date date,
    s_class VARCHAR(4) DEFAULT 'ALL',
    PRIMARY KEY(n_id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(t_id)
);