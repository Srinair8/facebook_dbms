SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*user table*/
CREATE TABLE `user` (
  `user_id` int(100) NOT NULL PRIMARY KEY,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `username2` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password2` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `cover_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    /*AUTO INCREMENT*/
    ALTER TABLE `user`
    MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

    /*INSERT VALUE*/
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    (8,   'RJ',  'Kim',   'rj0412','rj0412','1992-12-04','Male', '9384629026','rj@gmail.com','rj@gmail.com','admin0412','admin0412','upload/rj5.jfif','upload/rj1.jfif');
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 1 , 'Koya', 'Kim' , 'koya12' ,'koya12', '12/September/1994' , 'Male' , '98340127306', 'koya@gmail.com' ,'koya@gmail.com', 'admin1209' , 'admin1209' , 'upload/koya5.jfif' , 'upload/koya2.jfif'); 
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 2 , 'Shooky', 'Min' , 'shooky09' ,'shooky09', '9/March/1993' , 'Male' , '8460128718', 'shooky@gmail.com' , 'shooky@gmail.com' , 'admin0903' , 'admin0903' , 'upload/shooky2.jfif', 'upload/shooky10.jfif');
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 3 , 'Mang', 'Jung', 'mang1802' , 'mang1802','1994-02-18' , 'Male' ,'8374560918', 'mang@gmail.com', 'mang@gmail.com' , 'admin1802', 'admin1802' , 'upload/mang8.jfif', 'upload/mang7.jfif'); 
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 4, 'Chimmy', 'Park' , 'chimmy1310' ,'chimmy1310' , '13/October/1995' , 'Male' , '9675302193', 'chimmy@gmail.com' , 'chimmy@gmail.com' , 'admin131' , 'admin1310' , 'upload/chimmy6.jfif', 'upload/chimmy3.jfif');
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 5, 'Tata', 'Kim' , 'tae3012' ,'tae3012' , '30/December/1995' , 'Male' , '9465017359', 'tata@gmail.com' , 'tata@gmail.com' , 'admin3012' , 'admin3012' , 'upload/tata13.png', 'upload/tata6.jfif');
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 6, 'Cooky', 'Jeon' , 'cooky0109' ,'cooky0109' , '1/September/1997' , 'Male' , '7829054718', 'cooky@gmail.com' , 'cooky@gmail.com' , 'admin0109' , 'admin0109' , 'upload/kooky13.jfif', 'upload/kooky5.jfif');
    INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
    ( 7, 'BT21', 'Official' , 'bt21' ,'bt21' , '2017-12-16' , 'Male' , '9371043585', 'bt21@gmail.com' , 'bt21@gmail.com' , 'admin' , 'admin' , 'upload/bt21_8.jfif', 'upload/bt21_13.png');
   
    /*TRIGGERS*/
    CREATE TRIGGER inst 
    BEFORE INSERT ON user
    FOR EACH ROW
    SET NEW.username = LOWER(NEW.username);

    CREATE TRIGGER updt
    BEFORE UPDATE ON user
    FOR EACH ROW
    SET NEW.username = LOWER(NEW.username);

    CREATE TRIGGER inst2 
    BEFORE INSERT ON user
    FOR EACH ROW
    SET NEW.username = NEW.username2;

    CREATE TRIGGER updt2
    BEFORE UPDATE ON user
    FOR EACH ROW
    SET NEW.username = NEW.username2;



/*email trigger*/
    CREATE TRIGGER inst_email
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.email = LOWER(NEW.email);

    CREATE TRIGGER upd_email
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.email = LOWER(NEW.email);


    /*email2*/
    CREATE TRIGGER inst_email2
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.email2 = LOWER(NEW.email2);

    CREATE TRIGGER upd_email2
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.email2 = LOWER(NEW.email2) ;
    /*email12*/
    CREATE TRIGGER inst_email12
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.email = NEW.email2;

    CREATE TRIGGER upd_email12
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.email = NEW.email2;

    /*trigger pwd*/
    CREATE TRIGGER inst_pwd
    BEFORE INSERT ON user 
    FOR EACH ROW
    SET NEW.password = NEW.password2;

    CREATE TRIGGER upd_pwd
    BEFORE UPDATE ON user 
    FOR EACH ROW
    SET NEW.password = NEW.password2;

/*PHOTOS TABLE*/
CREATE TABLE `photos` (
  `photo_id` int(100) NOT NULL PRIMARY KEY,
  `location` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
   FOREIGN KEY(user_id) REFERENCES user(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  /*AUTO INCREMENT*/
  ALTER TABLE `photos`
  MODIFY `photo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

  /*INSERT*/
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES
  (1, 'upload/koya6.jfif', '1', '2022-01-13 10:38:02');
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES (2, 'upload/shooky1.png', '2', '2021-03-13 11:35:27'); 
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`)VALUES (3, 'upload/rj8.jfif', '8', '2020-02-15 10:23:51'); 
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`)VALUES (4, 'upload/friends5.jfif', '3', '2020-05-06 05:03:23'); 
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`)VALUES (5, 'upload/bt21_7.jfif', '4', '2022-09-09 12:03:47');
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES (7, 'upload/tata4.png', '5', '2021-07-13 05:09:01');
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES (8, 'upload/bt21_5.jfif', '7', '2023-01-13 01:45:32');
  INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES (6, 'upload/bt21_12.jfif', '6', '2021-10-04 07:09:15');

/*POST TABLE*/
CREATE TABLE `post` (
  `post_id` int(100) NOT NULL PRIMARY KEY,
  `user_id` int(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `post`
MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES
(8, '8', 'upload/bt21_2.jfif', 'Night with friends, moon and stars and you *u*', '');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES (1, '1', 'upload/friends11.jfif', 'calm night with friends','1667859878');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`)  VALUES (2, '2','upload/shooky3.jfif', '>v<','1699410575');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`)  VALUES (3, '5', 'upload/friends10.jfif', 'Fun with Friends..','1646100998');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`)  VALUES (5, '4', 'upload/chimmy7.jfif', 'Memories', '1642201678');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`)  VALUES (7, '3', 'upload/mang10.jfif', 'Lots of Fun', '1642201678');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`)  VALUES (6, '6', 'upload/kooky9.jfif', 'Great Day', '1642264278');
INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`)  VALUES (4, '7', 'upload/tata11.jfif', 'Rainy Weather', '1642023778');


/*COMMENTS TABLE*/
CREATE TABLE `comments` (
  `comment_id` int(100) NOT NULL PRIMARY KEY,
  `post_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content_comment` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL,
   FOREIGN KEY(post_id) REFERENCES post(post_id),
   FOREIGN KEY(user_id) REFERENCES user(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES
(2, '1', '1', 'Koya Kim', 'snow... >v<', 'upload/koya5.jfif', '');
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`)VALUES (1, '8', '8', 'RJ Kim', 'Pretty Stars', 'upload/rj5.jfif',''); 
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`)VALUES (3, '5', '1', 'Koya Kim', 'Best time..', 'upload/friends5.jfif','1642221799');
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES (4, '6', '5', 'Tata Kim', 'What is this cooky..', 'upload/tata13.png','1642222426');
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES (5, '5', '3', 'Mang Jung', 'Baby chimmy >v<', 'upload/mang8.jfif','1642222472');
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`)VALUES (6, '1', '4', 'Chimmy Park', 'Sweet Koya', 'upload/chimmy6.jfif',''); 
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`)VALUES (7, '3', '7', 'BT21 Official', 'superr', 'upload/bt21_8.jfif',''); 
INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`)VALUES (8, '2', '6', 'Cooky Jeon', 'Great Fun', 'upload/kooky13.jfif',''); 


/*FORGOT_PASSWORD*/

CREATE TABLE IF NOT EXISTS `forgot_password` (
  `request_id` int(100) NOT NULL PRIMARY KEY,
   `user_id` int(100) NOT NULL,
 `email` varchar(100) NOT NULL,
  FOREIGN KEY(user_id) REFERENCES user(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* INSERT VALUES */

INSERT INTO `forgot_password`(`request_id`,`user_id`, `email`) VALUES (21, 8, 'rj@gmail.com');
INSERT INTO `forgot_password` (`request_id`,`user_id`, `email`) VALUES (22, 1, 'koya@gmail.com');
INSERT INTO `forgot_password`(`request_id`,`user_id`, `email`) VALUES (23, 2, 'shooky@gmail.com');
INSERT INTO `forgot_password` (`request_id`,`user_id`, `email`) VALUES (24, 3, 'mang@gmail.com');
INSERT INTO `forgot_password`(`request_id`,`user_id`, `email`) VALUES (25, 4, 'chimmy@gmail.com');
INSERT INTO `forgot_password`(`request_id`,`user_id`, `email`) VALUES (26, 5, 'tata@gmail.com');
INSERT INTO `forgot_password` (`request_id`,`user_id`,`email`) VALUES (27, 6, 'cooky@gmail.com');
INSERT INTO `forgot_password`(`request_id`,`user_id`, `email`) VALUES (28, 7, 'bt21@gmail.com');

/* AUTOINCREMENT*/

ALTER TABLE `forgot_password`
MODIFY  `request_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

/*LOGIN TABLE*/

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(200) NOT NULL PRIMARY KEY,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
 `password` varchar(100) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* INSERT VALUES */

INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (58,'rj@gmail.com','rj0412','admin0412');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (71,'koya@gmail.com','koya12','admin1209');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (42,'shooky@gmail.com','shooky09','admin0903');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (83,'mang@gmail.com','mang1802','admin1802');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (94,'chimmy@gmail.com', 'chimmy1310','admin1310');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (65,'tata@gmail.com','tae3012','admin3012');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (76,'cooky@gmail.com','cooky0109','admin0109');
INSERT INTO `login` (`login_id`, `email`,`username`,`password`) VALUES (57,'bt21@gmail.com','bt21','admin');

/* AUTOINCREMENT*/

ALTER TABLE `login`
MODIFY `login_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

/*ACCOUNT_INFO*/

CREATE TABLE IF NOT EXISTS `account_info` (
 `user_id` int(100) NOT NULL,
 `username` varchar(100) NOT NULL,
 `name` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
 FOREIGN KEY(user_id) REFERENCES user(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
/* INSERT VALUES */

INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (8,'rj0412','RJ Kim','upload/rj5.jfif','rj@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (1, 'koya12','Koya Kim','upload/koya5.jfif','koya@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (2,'shooky09','Shooky Min','upload/shooky2.jfif','shooky@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (3,'mang1802','Mang Jung','upload/mang8.jfif','mang@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (4,'chimmy1310','Chimmy Park','upload/chimmy6.jfif','chimmy@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (5,'tae3012','Tata Kim','upload/tata13.png','tata@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (6,'cooky0109','Cooky Jeon','uplaod/kooky13.jfif','cooky@gmail.com');
INSERT INTO `account_info` (`user_id`, `username`, `name`,`profile_picture`,`email` ) VALUES (7,'bt21','BT21','upload/bt21_8.jfif','bt21@gmail.com');
