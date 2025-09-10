DROP DATABASE IF EXISTS school;

CREATE DATABASE school;

USE school;

CREATE TABLE instructors(
	PRIMARY KEY (inst_id),
	inst_id INT,
	campus_phone CHAR(8),
	inst_first_name	VARCHAR(20),
	inst_last_name	VARCHAR(20)
);
INSERT INTO instructors (inst_id,inst_first_name, inst_last_name, campus_phone)
VALUES ('1','Kira', 'Bently', '363-9948'),
	('2','Timothy','Ennis','527-4992'),
	('3','Shannon','Black','322-5992'),
	('4','Estela','Rosales','322-6992');

	
SELECT * FROM instructors;


