

CREATE TABLE book (
	number		    decimal(4)		PRIMARY KEY,
	bkname		    varchar(30)		NOT NULL,
	bkprice		    decimal(10,2)	NOT NULL,
	bkquantity		decimal(10,2)	NOT NULL,
	bkwriter	    varchar(30)		NOT NULL,
);

INSERT INTO book
   VALUES (1001,  'Java8', 1200, 10 ,'Pam Pan');

INSERT INTO book
   VALUES (1002,  'HTML5', 1000, 9 , 'Lily Lee');
   
INSERT INTO book
   VALUES (1003, 'CSS3', 800, 21 ,'Stephen Hsu' );
   
INSERT INTO book
   VALUES (1004,  'JSP', 1000, 31 ,'May Wu' );
   
INSERT INTO book
   VALUES (1005,  'Spring',500, 5 ,'Tina Wang');
   
INSERT INTO book
   VALUES (1006,  'JavaEE', 600, 7 ,'Allen Hu');

