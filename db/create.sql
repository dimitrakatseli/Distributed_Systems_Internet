CREATE TABLE User (
	username VARCHAR(32),
	password VARCHAR(32),
	role     VARCHAR(32),
    CONSTRAINT pk_user PRIMARY KEY (username)
);

CREATE TABLE Internship (
	company         VARCHAR(128),
	repr_email 	    VARCHAR(2048),
	repr_fullname   VARCHAR(256),
	positions       TINYINT(2) UNSIGNED,
	sector 	        VARCHAR(128),
	approval        VARCHAR(32),
	CONSTRAINT pk_intership PRIMARY KEY (company)
);

CREATE TABLE Student (
	regnum          VARCHAR(32),
	firstname       VARCHAR(128),
	lastname        VARCHAR(128),
	mark            FLOAT(4,2),
	year            YEAR,
	courses_failed  TINYINT UNSIGNED,
	eligibility     VARCHAR(32),
	internship      VARCHAR(128),
	CONSTRAINT pk_student PRIMARY KEY (regnum),
	CONSTRAINT fk_internship_student FOREIGN KEY (internship)
    REFERENCES Internship(company)
);

CREATE TABLE Application (
    id              INT UNSIGNED AUTO_INCREMENT,
    student_regnum  VARCHAR(32),
    company         VARCHAR(128),
    approval        VARCHAR(32),
	CONSTRAINT pk_application PRIMARY KEY (id),
    CONSTRAINT fk_student_application FOREIGN KEY (student_regnum)
    REFERENCES Student(regnum)
);
