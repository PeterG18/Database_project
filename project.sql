-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.

DROP TABLE IF EXISTS Students;
CREATE TABLE Students(
    StudentID int PRIMARY KEY,
    FirstName varchar(25) NOT NULL,
    LastName varchar(25)

);

DROP TABLE IF EXISTS Courses;
CREATE TABLE Courses(
    CourseID int PRIMARY KEY,
  Department varchar(25),
  CourseName varchar(25),
  CourseNumber int,
  Semester varchar(25),
  TheYear int

);

DROP TABLE IF EXISTS Registration;
CREATE TABLE Registration(
  StudentID int,
    CourseID int,
  PRIMARY KEY (StudentID, CourseID),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)

);

DROP TABLE IF EXISTS GRADE_WEIGHT;
CREATE TABLE GRADE_WEIGHT(
  GradeWeightID int PRIMARY KEY,
  CourseID int,
  Category varchar(25),
  Weight int,
  AssignNo int,
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
  
 

);

DROP TABLE IF EXISTS ASSIGNMENTS;
CREATE TABLE ASSIGNMENTS(
    AssignmentID int PRIMARY KEY,
  GradeWeightID int,
  FOREIGN KEY (GradeWeightID) REFERENCES GRADE_WEIGHT(GradeWeightID)

);

DROP TABLE IF EXISTS GRADES;
CREATE TABLE GRADES(
    StudentID int,
  AssignmentID int,
  CourseID int,
  Grade int,
  PRIMARY KEY (StudentID, AssignmentID),
  FOREIGN KEY (StudentID) REFERENCES STUDENTS(StudentID)
  FOREIGN KEY (AssignmentID) REFERENCES ASSIGNMENTS(AssignmentID)
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)

);





INSERT INTO STUDENTS VALUES(150, 'Peirre', 'Gonalz');
INSERT INTO STUDENTS VALUES(151, 'Ben', 'Hos');
INSERT INTO STUDENTS VALUES(152, 'Jack', 'Grealish');
INSERT INTO STUDENTS VALUES(153, 'Anthony', 'Martial');
INSERT INTO STUDENTS VALUES(154, 'David', 'DegeaQuintana');
INSERT INTO STUDENTS VALUES(155, 'Marc', 'Rashforq');

INSERT INTO Courses VALUES(85675, 'Math', 'Calculus II', 157, 'Fall', 2022);
INSERT INTO Courses VALUES(89119, 'Computer Science', 'Programming Languages', 350, 'Spring', 2023);
INSERT INTO Courses VALUES(56735, 'English', 'English I',101, 'Fall', 2022);
INSERT INTO Courses VALUES(90521, 'Computer Science', 'Robotics', 533, 'Spring', 2023);
INSERT INTO Courses VALUES(48305, 'Physics', 'Physics II', 102, 'Spring', 2023);

INSERT INTO Registration VALUES(150, 85675);
INSERT INTO Registration VALUES(151, 85675);
INSERT INTO Registration VALUES(152, 85675);
INSERT INTO Registration VALUES(153, 85675);
INSERT INTO Registration VALUES(154, 85675);
INSERT INTO Registration VALUES(155, 85675);
INSERT INTO Registration VALUES(150, 89119);
INSERT INTO Registration VALUES(151, 89119);
INSERT INTO Registration VALUES(152, 89119);
INSERT INTO Registration VALUES(153, 89119);
INSERT INTO Registration VALUES(154, 89119);
INSERT INTO Registration VALUES(155, 89119);
INSERT INTO Registration VALUES(150, 90521);
INSERT INTO Registration VALUES(151, 90521);
INSERT INTO Registration VALUES(152, 90521);
INSERT INTO Registration VALUES(153, 90521);
INSERT INTO Registration VALUES(154, 90521);
INSERT INTO Registration VALUES(155, 90521);
INSERT INTO Registration VALUES(150, 56735);
INSERT INTO Registration VALUES(151, 56735);
INSERT INTO Registration VALUES(150, 48305);
INSERT INTO Registration VALUES(153, 56735);
INSERT INTO Registration VALUES(151, 48305);
INSERT INTO Registration VALUES(155, 48305);

INSERT INTO GRADE_WEIGHT VALUES(1, 85675, 'Quiz', 50,2);
INSERT INTO GRADE_WEIGHT VALUES(2, 85675, 'HW', 10,2);
INSERT INTO GRADE_WEIGHT VALUES(3, 85675, 'MidTerm', 20,2);
INSERT INTO GRADE_WEIGHT VALUES(4, 85675, 'Final', 20,2);
INSERT INTO GRADE_WEIGHT VALUES(5, 89119, 'Participation', 40,2);
INSERT INTO GRADE_WEIGHT VALUES(6, 89119, 'HW', 10,2);
INSERT INTO GRADE_WEIGHT VALUES(7, 89119, 'MidTerm', 25,2);
INSERT INTO GRADE_WEIGHT VALUES(8, 89119, 'Final', 25,2);
INSERT INTO GRADE_WEIGHT VALUES(9, 90521, 'Quiz', 40,2);
INSERT INTO GRADE_WEIGHT VALUES(10, 90521, 'HW', 15,2);
INSERT INTO GRADE_WEIGHT VALUES(11, 90521, 'MidTerm', 20,2);
INSERT INTO GRADE_WEIGHT VALUES(12, 90521, 'Final', 25,2);
INSERT INTO GRADE_WEIGHT VALUES(13, 56735, 'Quiz', 20,2);
INSERT INTO GRADE_WEIGHT VALUES(14, 56735, 'HW', 25,2);
INSERT INTO GRADE_WEIGHT VALUES(15, 56735, 'Project', 30,2);
INSERT INTO GRADE_WEIGHT VALUES(16, 56735, 'Final', 25,2);
INSERT INTO GRADE_WEIGHT VALUES(17, 48305, 'Quiz', 30,2);
INSERT INTO GRADE_WEIGHT VALUES(18, 48305, 'HW', 25,2);
INSERT INTO GRADE_WEIGHT VALUES(19, 48305, 'Project', 20,2);
INSERT INTO GRADE_WEIGHT VALUES(20, 48305, 'Final', 25,2);

INSERT INTO ASSIGNMENTS VALUES(1, 1);
INSERT INTO ASSIGNMENTS VALUES(2, 1);
INSERT INTO ASSIGNMENTS VALUES(3, 2);
INSERT INTO ASSIGNMENTS VALUES(4, 2);
INSERT INTO ASSIGNMENTS VALUES(5, 3);
INSERT INTO ASSIGNMENTS VALUES(6, 3);
INSERT INTO ASSIGNMENTS VALUES(7, 4);
INSERT INTO ASSIGNMENTS VALUES(8, 4);
INSERT INTO ASSIGNMENTS VALUES(9, 5);
INSERT INTO ASSIGNMENTS VALUES(10, 5);
INSERT INTO ASSIGNMENTS VALUES(11, 6);
INSERT INTO ASSIGNMENTS VALUES(12, 6);
INSERT INTO ASSIGNMENTS VALUES(13, 7);
INSERT INTO ASSIGNMENTS VALUES(14, 7);
INSERT INTO ASSIGNMENTS VALUES(15, 8);
INSERT INTO ASSIGNMENTS VALUES(16, 8);
INSERT INTO ASSIGNMENTS VALUES(17, 9);
INSERT INTO ASSIGNMENTS VALUES(18, 9);
INSERT INTO ASSIGNMENTS VALUES(19, 10);
INSERT INTO ASSIGNMENTS VALUES(20, 10);
INSERT INTO ASSIGNMENTS VALUES(21, 11);
INSERT INTO ASSIGNMENTS VALUES(22, 11);
INSERT INTO ASSIGNMENTS VALUES(23, 12);
INSERT INTO ASSIGNMENTS VALUES(24, 12);
INSERT INTO ASSIGNMENTS VALUES(25, 13);
INSERT INTO ASSIGNMENTS VALUES(26, 13);
INSERT INTO ASSIGNMENTS VALUES(27, 14);
INSERT INTO ASSIGNMENTS VALUES(28, 14);
INSERT INTO ASSIGNMENTS VALUES(29, 15);
INSERT INTO ASSIGNMENTS VALUES(30, 15);
INSERT INTO ASSIGNMENTS VALUES(31, 16);
INSERT INTO ASSIGNMENTS VALUES(32, 16);
INSERT INTO ASSIGNMENTS VALUES(33, 17);
INSERT INTO ASSIGNMENTS VALUES(34, 17);
INSERT INTO ASSIGNMENTS VALUES(35, 18);
INSERT INTO ASSIGNMENTS VALUES(36, 18);
INSERT INTO ASSIGNMENTS VALUES(37, 19);
INSERT INTO ASSIGNMENTS VALUES(38, 19);
INSERT INTO ASSIGNMENTS VALUES(39, 20);
INSERT INTO ASSIGNMENTS VALUES(40, 20);

INSERT INTO GRADES VALUES(150, 1, 85675,85);
INSERT INTO GRADES VALUES(151, 1, 85675, 80);
INSERT INTO GRADES VALUES(152, 1, 85675, 95);
INSERT INTO GRADES VALUES(153, 1, 85675, 65);
INSERT INTO GRADES VALUES(154, 1, 85675, 100);
INSERT INTO GRADES VALUES(155, 1, 85675, 93);
INSERT INTO GRADES VALUES(150, 2,85675, 81);
INSERT INTO GRADES VALUES(151, 2, 85675, 84);
INSERT INTO GRADES VALUES(152, 2, 85675, 95);
INSERT INTO GRADES VALUES(153, 2, 85675, 62);
INSERT INTO GRADES VALUES(154, 2,85675, 90);
INSERT INTO GRADES VALUES(155, 2, 85675, 93);
INSERT INTO GRADES VALUES(150, 18,90521, 87);
INSERT INTO GRADES VALUES(151, 18, 90521, 94);
INSERT INTO GRADES VALUES(152, 18, 90521, 55);
INSERT INTO GRADES VALUES(153, 18, 90521, 72);
INSERT INTO GRADES VALUES(154, 18, 90521, 0);
INSERT INTO GRADES VALUES(155, 18, 90521, 99);
INSERT INTO GRADES VALUES(151, 16, 89119, 80);
INSERT INTO GRADES VALUES(150, 30, 56735, 85);
INSERT INTO GRADES VALUES(151, 40, 48305, 95);
INSERT INTO GRADES VALUES(153, 26, 56735, 78);
INSERT INTO GRADES VALUES(150, 3, 85675, 81);
INSERT INTO GRADES VALUES(151, 3, 85675, 84);
INSERT INTO GRADES VALUES(152, 3, 85675, 95);
INSERT INTO GRADES VALUES(153, 3, 85675, 62);
INSERT INTO GRADES VALUES(154, 3, 85675, 90);
INSERT INTO GRADES VALUES(155, 3, 85675, 93);
INSERT INTO GRADES VALUES(150, 4, 85675, 81);
INSERT INTO GRADES VALUES(151, 4, 85675, 84);
INSERT INTO GRADES VALUES(152, 4, 85675, 95);
INSERT INTO GRADES VALUES(153, 4, 85675, 62);
INSERT INTO GRADES VALUES(154, 4, 85675, 90);
INSERT INTO GRADES VALUES(155, 4, 85675, 93);
INSERT INTO GRADES VALUES(150, 5, 85675, 81);
INSERT INTO GRADES VALUES(151, 5, 85675, 84);
INSERT INTO GRADES VALUES(152, 5, 85675, 95);
INSERT INTO GRADES VALUES(153, 5, 85675, 62);
INSERT INTO GRADES VALUES(154, 5, 85675, 90);
INSERT INTO GRADES VALUES(155, 5, 85675, 93);
INSERT INTO GRADES VALUES(155, 6, 85675, 81);
INSERT INTO GRADES VALUES(154, 6, 85675, 84);
INSERT INTO GRADES VALUES(150, 6,85675, 95);
INSERT INTO GRADES VALUES(152, 6, 85675, 62);
INSERT INTO GRADES VALUES(153, 6, 85675, 90);
INSERT INTO GRADES VALUES(151, 6, 85675, 93);
INSERT INTO GRADES VALUES(154, 7, 85675, 81);
INSERT INTO GRADES VALUES(155, 7, 85675, 84);
INSERT INTO GRADES VALUES(151, 7, 85675, 95);
INSERT INTO GRADES VALUES(153, 7, 85675, 62);
INSERT INTO GRADES VALUES(152, 7, 85675,  90);
INSERT INTO GRADES VALUES(150, 7, 85675, 93);
INSERT INTO GRADES VALUES(155, 8, 85675, 81);
INSERT INTO GRADES VALUES(154, 8, 85675, 84);
INSERT INTO GRADES VALUES(153, 8, 85675, 95);
INSERT INTO GRADES VALUES(152, 8,85675, 62);
INSERT INTO GRADES VALUES(151, 8,85675, 90);
INSERT INTO GRADES VALUES(150, 8,85675, 93);
INSERT INTO GRADES VALUES(155, 9,85675, 81);
INSERT INTO GRADES VALUES(154, 9,85675, 84);
INSERT INTO GRADES VALUES(153, 9,85675, 95);
INSERT INTO GRADES VALUES(152, 9,85675, 62);
INSERT INTO GRADES VALUES(151, 9,85675, 90);
INSERT INTO GRADES VALUES(150, 9,85675, 93);
INSERT INTO GRADES VALUES(150, 10,89119, 81);
INSERT INTO GRADES VALUES(151, 10,89119, 84);
INSERT INTO GRADES VALUES(152, 10,89119, 95);
INSERT INTO GRADES VALUES(153, 10,89119, 62);
INSERT INTO GRADES VALUES(154, 10,89119, 90);
INSERT INTO GRADES VALUES(155, 10,89119, 93);
INSERT INTO GRADES VALUES(151, 12,89119, 87);
INSERT INTO GRADES VALUES(150, 12,89119, 94);
INSERT INTO GRADES VALUES(152, 12,89119, 55);
INSERT INTO GRADES VALUES(153, 12,89119, 72);
INSERT INTO GRADES VALUES(154, 12,89119, 0);
INSERT INTO GRADES VALUES(155, 12,89119, 99);
INSERT INTO GRADES VALUES(150, 13,89119, 87);
INSERT INTO GRADES VALUES(151, 13,89119, 94);
INSERT INTO GRADES VALUES(153, 13,89119, 55);
INSERT INTO GRADES VALUES(152, 13,89119, 72);
INSERT INTO GRADES VALUES(154, 13,89119, 0);
INSERT INTO GRADES VALUES(155, 13,89119, 99);
INSERT INTO GRADES VALUES(151, 26,56735,78);
INSERT INTO GRADES VALUES(150, 28,56735, 78);

-- Task 4, Compute the average/highest/lowest score of an assignment;
SELECT AssignmentID, AVG(Grade) as AvgGrade
FROM GRADES
GROUP BY AssignmentID;

SELECT AssignmentID, MAX(Grade) AS HighestGrade
FROM GRADES
GROUP BY AssignmentID;

SELECT AssignmentID, MIN(Grade) as LowestGrade
FROM GRADES
GROUP BY AssignmentID;

-- Task 5
SELECT StudentID FROM Registration WHERE CourseID = '85675';

-- Task 6
SELECT StudentID,Grade FROM GRADES WHERE StudentID IN ('150','151','152','153','154','155');

-- Task 7
INSERT INTO ASSIGNMENTS VALUES(41, 7);

-- Task 8
UPDATE GRADE_WEIGHT
SET Weight = 30
WHERE Category = 'Final' AND CourseID = 85675;

UPDATE GRADE_WEIGHT
SET Weight = 40
WHERE Category = 'Quiz' AND CourseID = 85675;

-- Task 9
UPDATE GRADES
Set Grade = Grade + 2
WHERE AssignmentID = 2;

-- Task 10
UPDATE GRADES
Set Grade = Grade + 2
WHERE StudentID IN (
  SELECT StudentID
  FROM Students
  WHERE LastName LIKE '%Q%'
 );
 
  --Task 11
 SELECT StudentID, SUM(GRADE * Weight / AssignNo / 100.0) AS FinalGrade
 FROM GRADES
 JOIN ASSIGNMENTS ON ASSIGNMENTS.AssignmentID = GRADES.AssignmentID
 JOIN GRADE_WEIGHT ON GRADE_WEIGHT.GradeWeightID = ASSIGNMENTS.GradeWeightID
 JOIN COURSES ON COURSES.CourseID = GRADE_WEIGHT.CourseID
 WHERE GRADES.StudentID = 150 AND COURSES.CourseID = 85675;

 
 

