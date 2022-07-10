
/************************************ ALL THE SEQUENCES ************************************/

/********** SEQUENCE FOR ALL_USERS **********/
DROP SEQUENCE all_users_seq;
CREATE SEQUENCE all_users_seq
START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  CACHE 10;

/********** SEQUENCE FOR NOTICEBOARD **********/
DROP SEQUENCE notice_board_seq;
CREATE SEQUENCE notice_board_seq
START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  CACHE 10;

/********** SEQUENCE FOR NEWSFEED **********/
DROP SEQUENCE newsfeed_seq;
CREATE SEQUENCE newsfeed_seq
START WITH 1
    MINVALUE 1
    INCREMENT BY 1
    CACHE 10;

/********** SEQUENCE FOR NEWSFEED COMMENT **********/
DROP SEQUENCE newsfeed_comment_seq;
CREATE SEQUENCE newsfeed_comment_seq
START WITH 1
    MINVALUE 1
    INCREMENT BY 1
    CACHE 10;
/************************************ ALL THE TRIGGERS ************************************/

/****************** TRIGGERS FOR STUDENT TABLE ******************/
--trigger for table insert TANVIR.STUDENT
CREATE OR REPLACE TRIGGER student_insert
    AFTER
    INSERT
    ON student
    FOR EACH ROW
BEGIN
   INSERT INTO all_users
   VALUES(:NEW.student_id,:NEW.student_name, 'STUDENT', NULL, DEFAULT);
   INSERT INTO newsfeed
   VALUES(
    newsfeed_seq.NEXTVAL,
    :NEW.student_id,
    'NEW REGISTRATION',
    'Student Registered Successfully!',
    :NEW.student_name,
    SYSDATE
    );
END;

--trigger for table delete TANVIR.STUDENT
CREATE OR REPLACE TRIGGER student_delete
    BEFORE
    DELETE
    ON student
    FOR EACH ROW
BEGIN
    UPDATE all_users
    SET all_users.user_status = 'DELETED'
    WHERE
        :OLD.student_id = all_users.user_id;
END;

--trigger for table update TANVIR.STUDENT
CREATE OR REPLACE TRIGGER student_update
    AFTER
    UPDATE OF student_name
    ON student
    FOR EACH ROW
BEGIN
    UPDATE all_users
    SET all_users.user_name = :NEW.student_name, all_users.user_status = 'UPDATED'
    WHERE
        :OLD.student_name = all_users.user_name;
END;


/****************** TRIGGERS FOR TEACHER TABLE ******************/
--trigger for table insert TANVIR.TEACHER
CREATE OR REPLACE TRIGGER teacher_insert
    AFTER
    INSERT
    ON teacher
    FOR EACH ROW
BEGIN
   INSERT INTO all_users
   VALUES(:NEW.teacher_id,:NEW.teacher_name, 'TEACHER', NULL, DEFAULT);
END;
--trigger for table delete TANVIR.TEACHER
CREATE OR REPLACE TRIGGER teacher_delete
    BEFORE
    DELETE
    ON teacher
    FOR EACH ROW
BEGIN
   UPDATE all_users
    SET all_users.user_status = 'DELETED'
    WHERE
        :OLD.teacher_id = all_users.user_id;
END;
--trigger for table update TANVIR.TEACHER
CREATE OR REPLACE TRIGGER teacher_update
    AFTER
    UPDATE OF teacher_name
    ON teacher
    FOR EACH ROW
BEGIN
    UPDATE all_users
    SET all_users.user_name = :NEW.teacher_name
    WHERE
        :OLD.teacher_name = all_users.user_name;
END;
