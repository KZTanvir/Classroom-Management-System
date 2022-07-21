CREATE TABLE result
(
    result_id INT NOT NULL,
    teacher_id INT NOT NULL,
    student_id INT NOT NULL,
    teacher_name VARCHAR2(30) NOT NULL,
    result_subject VARCHAR2(300) NOT NULL,
    student_name VARCHAR2(30) NOT NULL,
    main_result INT NOT NULL,
    exam_type VARCHAR(10) NOT NULL,
    result_date DATE NOT NULL,
    exam_date VARCHAR(10) NOT NULL,
    PRIMARY KEY(result_id),
    FOREIGN KEY(student_id) REFERENCES student(student_id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(teacher_id)
)