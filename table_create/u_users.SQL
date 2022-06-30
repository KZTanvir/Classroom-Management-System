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
