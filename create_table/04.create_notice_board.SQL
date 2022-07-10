CREATE TABLE notice_board
(
    notice_id INT NOT NULL,
    notice_main VARCHAR(100),
    notice_type VARCHAR(10) DEFAULT 'REGULAR',
    notice_date DATE,
    teacher_id INT NOT NULL,
    teacher_name VARCHAR(30) NOT NULL,
    notice_subject VARCHAR(10) DEFAULT 'ALL',
    PRIMARY KEY(notice_id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(teacher_id),
    FOREIGN KEY(teacher_name) REFERENCES teacher(teahcer_name)
);