CREATE TABLE u_users
(
    u_id INT NOT NULL,
    u_name VARCHAR(30) NOT NULL,
    u_type VARCHAR(10) NOT NULL,
    type_id INT NOT NULL,
    u_email VARCHAR(20) UNIQUE,
    u_status VARCHAR(10) DEFAULT 'PENDING',
    email_status VARCHAR(10) DEFAULT 'PENDING',
    u_gender VARCHAR(10) NOT NULL,
    PRIMARY KEY(u_id),
    FOREIGN KEY(type_id) REFERENCES student(s_id) ON DELETE CASCADE,
    FOREIGN KEY(type_id) REFERENCES teacher(t_id) ON DELETE CASCADE,
    FOREIGN KEY(u_name) REFERENCES student(s_name) ON DELETE CASCADE,
    FOREIGN KEY(u_name) REFERENCES teacher(t_name) ON DELETE CASCADE
);
