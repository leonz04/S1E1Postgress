CREATE TABLE users (
  id serial PRIMARY KEY,
  frist_name varchar(50),
  last_name varchar(50),
  email varchar(50)
);

INSERT INTO users (frist_name,last_name,email) values 
('andres','leon','andresleon@correo.com'),
('jonathan','rodriguez','jonathan@correo.com'),
('luis','catalan','luis@correo.com'),
('jimmy','sossa','jimmi@correo.com');


CREATE TABLE posts (
  id serial PRIMARY KEY,
  creator_id int,
  title varchar(50),
  text varchar(50)
);

INSERT INTO posts (creator_id,title,text) values 
(2,'Post5','Lorem Ipsum es simplemente el texto de'),
(3,'Post6','Lorem Ipsum es simplemente el texto de');
(3,'Post3','Lorem Ipsum es simplemente el texto de'),
(4,'Post4','Lorem Ipsum es simplemente el texto de');


CREATE TABLE likes (
  id serial PRIMARY KEY,
  user_id int,
  post_id int
);

INSERT INTO likes(user_id,post_id) values
(1,4);
(2,4),
(1,1),
(2,6),
(3,2),
(4,3);
--
ALTER TABLE likes ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE posts ADD FOREIGN KEY (creator_id) REFERENCES users (id);

ALTER TABLE likes ADD FOREIGN KEY (post_id) REFERENCES posts(id);

select * from 
	posts 
INNER JOIN 
	users ON users.id = posts.creator_id;
	
	
SELECT * FROM
	posts
INNER JOIN 
	likes ON posts.id=likes.post_id
INNER JOIN 
	users ON users.id=likes.user_id






