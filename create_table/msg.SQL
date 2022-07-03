CREATE TABLE message
(
    msg_id INT NOT NULL,
    u_id INT NOT NULL,
    message VARCHAR(560),
    g_id INT NOT NULL,
    msg_date DATE NOT NULL,
    u_role varchar(10) DEFAULT 'student',
    PRIMARY KEY(msg_id),
    FOREIGN KEY (g_id) REFERENCES msg_groups(g_id),
    FOREIGN KEY (u_id) REFERENCES u_users(u_id)
)