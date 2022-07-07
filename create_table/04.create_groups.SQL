CREATE TABLE message_groups
(
    g_id INT NOT NULL,
    g_name VARCHAR2(30) NOT NULL,
    s_year INT NOT NULL,
    s_class INT NOT NULL CHECK(s_class>0 AND s_class<=10),
    g_admin VARCHAR2(30) NOT NULL, --key with teachers id or user id where user type is the teacher
    g_creation_date DATE NOT NULL,
    PRIMARY KEY(g_id)
);