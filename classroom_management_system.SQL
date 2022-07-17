/* 
NAME:MD.KAMRUZZAMAN
ID:201400059
*/

-- DROP AND CREATE TABLES --
@create_table\drop_all.sql --DROP ALL THE TABLES IF EXISTS
@01.create_table\create_student.sql
@02.create_table\create_teacher.sql        
@03.create_table\create_users.sql
@04.create_table\create_notice_board.sql
@05.create_table\create_newsfeed.sql
@06.create_table\create_newsfeed_comment.sql
@07.create_table\create_message.sql
@08.create_table\create_result.sql
@create_table\sequences_triggers.sql  -- ADDS SEQUENCES AND TRIGGERS
----------------------------------------
-- IMPORTING DATA ON TABLES --



EXIT;  --the script exits here--