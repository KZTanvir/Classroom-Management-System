CREATE TABLE newsfeed_comment
(
    comment_id INT NOT NULL,
    user_id INT NOT NULL,
    user_name VARCHAR2(30) NOT NULL,
    comment_main VARCHAR2(200) NOT NULL,
    comment_date DATE NOT NULL,
    comment_status VARCHAR2(30) DEFAULT NULL,
    PRIMARY KEY(g_id)
);