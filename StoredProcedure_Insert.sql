
/*
Eksempel på storedprocedure som indsætter en række
i student tabellen.
Proceduren tager imod to parametre, @Name som er navnet på den studerende
og @MobileNr som er tlfnr.
proceduren returnerer værdien antal rækker, som er indsat i tabellen
*/
CREATE PROCEDURE AddPerson
@Name NVARCHAR(30),
@MobilNr NVARCHAR(12)
AS
INSERT INTO [dbo].[Student] ([Name], [Mobilnr]) 
VALUES (@Name, @MobilNr)
RETURN @@ROWCOUNT
--Udfør proceduren
EXECUTE dbo.AddPerson @Name = N'Kurt',   -- nvarchar(30)
                      @MobilNr = N'23421' -- nvarchar(12)

