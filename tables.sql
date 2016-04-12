CREATE TABLE IF NOT EXISTS student (
roll_num VARCHAR(20) PRIMARY KEY NOT NULL, 
pass  VARCHAR(20) NOT NULL,
first_name VARCHAR(40) NOT NULL, 
last_name VARCHAR(20) NOT NULL, 
branch VARCHAR(20) NOT NULL,
phone_num VARCHAR(20) NOT NULL,
email VARCHAR(40) NOT NULL,
reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );

CREATE TABLE IF NOT EXISTS teacher (
subject_code VARCHAR(20) PRIMARY KEY NOT NULL,
uname VARCHAR(20) NOT NULL,
pass VARCHAR(20) NOT NULL,
teacher_name VARCHAR(20) NOT NULL,
branch VARCHAR(20) NOT NULL);

CREATE TABLE IF NOT EXISTS course (
subject_code VARCHAR(20) PRIMARY KEY,
subject_name VARCHAR(20) UNIQUE NOT NULL,
theory INT NOT NULL,
practical INT NOT NULL);

CREATE TABLE IF NOT EXISTS marks (
roll_num VARCHAR(20) NOT NULL,
subject_code VARCHAR(20) NOT NULL,
marks_theory INT NOT NULL,
marks_practical INT NOT NULL,
CONSTRAINT fk_roll_num FOREIGN KEY (`roll_num`) REFERENCES `student`(`roll_num`),
CONSTRAINT fk_subject_code FOREIGN KEY (`subject_code`) REFERENCES `course`(`subject_code`));

