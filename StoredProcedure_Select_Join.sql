/*Eksempel på en stored procedure som
  er en join mellem de to tabeller Exam og Student.
  Der retureners name, studentid og grade
*/
DROP PROCEDURE GetAllStudentGrade
GO
DROP PROCEDURE GetSpecificStudentGrade
GO
CREATE PROCEDURE GetAllStudentGrade AS
   SELECT s.Name, s.studentid, e.grade
   FROM student  s
   INNER JOIN exam e ON s.StudentId = e.StudentId  
  GO
  --Udfør proceduren dbo.GetAllStudentGrade
  EXEC dbo.GetAllStudentGrade
  GO
 
 /*Eksempel på en stored procedure som
  er en join mellem de to tabeller Exam og Student, 
  hvor der er defineret en parameter @StudentId, som bruges
  I Where sætningen.
  Der returneres name, studentid og grade
*/
 CREATE PROCEDURE GetSpecificStudentGrade
   @StudentId INT
  AS
   SELECT s.Name, s.studentid, e.grade
   FROM student  s
   INNER JOIN exam e ON s.StudentId = e.StudentId  
    WHERE s.StudentId = @StudentId
  GO
  --udfør proceduren GetSpecificStudentGrade med paramteren @StudentId sat til 230
  EXEC dbo.GetSpecificStudentGrade @StudentId = 230 -- int
  
