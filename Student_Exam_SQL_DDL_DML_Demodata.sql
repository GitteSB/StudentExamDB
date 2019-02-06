DELETE FROM [dbo].[Exam]
GO
DELETE FROM [dbo].[Student]
GO
DROP TABLE Exam;
GO
DROP TABLE Student;
GO
CREATE TABLE Student(   
StudentId  INT  NOT NULL Identity(100,5) PRIMARY KEY,   
Name   VARCHAR(30)  NOT NULL,   
Mobilnr VARCHAR(12));
GO
CREATE TABLE Exam(
ExamId INT NOT NULL Identity(10,2) PRIMARY KEY,
ExamName VARCHAR(30)  NOT NULL,   
Grade INT,
StudentId INT, 
CONSTRAINT FK_Student_studentId FOREIGN KEY  (StudentId) REFERENCES Student (StudentId)  
    ON UPDATE CASCADE 
    ON DELETE NO ACTION

)
GO
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT INTO [dbo].[Student] ([StudentId], [Name], [Mobilnr]) VALUES (215, N'Karen', N'12345')
INSERT INTO [dbo].[Student] ([StudentId], [Name], [Mobilnr]) VALUES (220, N'Svend', N'23445')
INSERT INTO [dbo].[Student] ([StudentId], [Name], [Mobilnr]) VALUES (225, N'Kirsten', N'34562')
INSERT INTO [dbo].[Student] ([StudentId], [Name], [Mobilnr]) VALUES (230, N'Ib', N'98765')
INSERT INTO [dbo].[Student] ([StudentId], [Name], [Mobilnr]) VALUES (235, N'Viggo', N'45673')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Exam] ON
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (10, N'2.sem', 7, 215)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (12, N'3.sem', 10, 215)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (14, N'2.sem', 4, 220)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (16, N'3.sem', 7, 220)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (18, N'4.sem', 7, 220)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (20, N'2.sem', 12, 225)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (22, N'2.sem', 7, 230)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (24, N'3.sem', 7, 230)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (26, N'4.sem', 10, 230)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (28, N'Praktik', 10, 230)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (30, N'2.sem', 10, 235)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (32, N'3.sem', 12, 235)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (34, N'4.sem', 10, 235)
INSERT INTO [dbo].[Exam] ([ExamId], [ExamName], [Grade], [StudentId]) VALUES (36, N'Hovedopgave', 10, 235)
SET IDENTITY_INSERT [dbo].[Exam] OFF
