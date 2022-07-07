
/************************************ALL THE SEQUENCES ************************************/
--SEQENCE FOR student
DROP SEQUENCE student_seq;
CREATE SEQUENCE student_seq
START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  CACHE 10;
--SEQUENCE FOR u_users
DROP SEQUENCE u_users_seq;
CREATE SEQUENCE u_users_seq
START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  CACHE 10;
--SEQUENCE FOR teacher
DROP SEQUENCE teacher_seq;
CREATE SEQUENCE teacher_seq
START WITH 1
  MINVALUE 1
  INCREMENT BY 1
  CACHE 10;
/************************************ ALL THE TRIGGERS ************************************/

/****************** TRIGGERS FOR STUDENT TABLE ******************/
--trigger for table insert TANVIR.STUDENT
CREATE OR REPLACE TRIGGER student_insert_trigger
    AFTER
    INSERT
    ON student --trigger activates to student data insert
    FOR EACH ROW
BEGIN
   INSERT INTO u_users
   VALUES(u_users_seq.nextval,:new.s_name, 'student', :new.s_id, DEFAULT);
END;

--trigger for table delete TANVIR.STUDENT
CREATE OR REPLACE TRIGGER student_delete_trigger
    BEFORE
    DELETE
    ON student --trigger activates to student data insert
    FOR EACH ROW
BEGIN
   DELETE FROM u_users
    WHERE
    :OLD.s_name = u_users.u_name AND :OLD.s_id = u_users.type_id AND :OLD.u_type = 'student';
END;
--trigger for table alter TANVIR.STUDENT



/****************** TRIGGERS FOR TEACHER TABLE ******************/
--trigger for table insert TANVIR.TEACHER
CREATE OR REPLACE TRIGGER teacher_insert_trigger
    AFTER
    INSERT
    ON teacher --trigger activates for teacher
    FOR EACH ROW
BEGIN
   INSERT INTO u_users
   VALUES(u_users_seq.nextval,:new.t_name, 'teacher', :new.t_id, DEFAULT);
END;
--trigger for table delete TANVIR.TEACHER
CREATE OR REPLACE TRIGGER teacher_delete_trigger
    BEFORE
    DELETE
    ON teacher
    FOR EACH ROW
BEGIN
   DELETE FROM u_users
    WHERE
    :OLD.t_name = u_users.u_name AND :OLD.t_id = u_users.type_id AND :OLD.u_type = 'teacher';
END;