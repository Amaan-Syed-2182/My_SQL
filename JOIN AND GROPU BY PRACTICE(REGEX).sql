use tushardb;
select * from students;
select * from enrollments;
select * from courses;

-- 1.Count how many students are in each department.
select Department,count(StudentID) from students
group by department;

-- 2. Find how many courses each department offers.
select department,count(courseID) from courses
group by department;

-- 3. Find how many enrollments happened for each course.
select t2.coursename,count(t1.enrollmentID) from enrollments as t1
inner join courses as t2
on t1.courseid = t2.CourseID
group by T2.Coursename;

-- 4. List students with the courses they are enrolled in.

SELECT s.StudentName,c.CourseName FROM students AS s
INNER JOIN  Enrollments AS e
ON s.StudentID = e.StudentID
INNER JOIN courses AS c
ON e.courseID = c.CourseID;

-- 5. Show course name and student name together using a join.
SELECT C.COURSENAME, S.STUDENTNAME FROM COURSES AS C
INNER JOIN ENROLLMENTS AS E
ON C.COURSEID = E.COURSEID
INNER JOIN STUDENTS AS S
ON E.STUDENTID = S.STUDENTID
ORDER BY C.COURSENAME;

-- 6. Show all students and the courses they enrolled in (even if some didn’t enroll).
SELECT S.STUDENTNAME,C.COURSENAME FROM STUDENTS AS S
LEFT JOIN ENROLLMENTS AS E
ON S.STUDENTID = E.STUDENTID
LEFT JOIN COURSES AS C
ON E.COURSEID = C.COURSEID;

-- 7. Show all courses and the students enrolled (even if no one enrolled yet).
SELECT C.COURSENAME, S.STUDENTNAME FROM COURSES AS C
LEFT JOIN ENROLLMENTS AS E
ON C.COURSEID = E.COURSEID
LEFT JOIN STUDENTS AS S
ON E.STUDENTID = S.STUDENTID;