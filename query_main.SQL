SELECT 
    user_id,
    user_name,
    student_father_name,
    student_mother_name,
    user_type
FROM all_users,student
    WHERE 
    (user_type = 'STUDENT')
    AND
    (user_id = student_id);
    
SELECT 
    newsfeed.feed_creator,
    newsfeed.feed_subject,
    newsfeed.feed_post,
    all_users.USER_NAME as commenter,
    newsfeed_comment.comment_main as comments
FROM newsfeed,newsfeed_comment,all_users
    WHERE
    (newsfeed.feed_id = newsfeed_comment.feed_id)
    AND
    (newsfeed_comment.user_id = all_users.user_id);
