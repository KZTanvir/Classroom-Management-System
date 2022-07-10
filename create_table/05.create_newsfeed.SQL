CREATE TABLE newsfeed
(
    feed_id INT NOT NULL,
    user_id INT NOT NULL,
    feed_subject VARCHAR2(30) NOT NULL,
    feed_post VARCHAR2(700) NOT NULL,
    feed_creator VARCHAR2(30) NOT NULL, -- FOREIGN  KEY OF USER  NAME
    feed_creation_date DATE NOT NULL,
    PRIMARY KEY(g_id)
);