USE hackerrank;

CREATE TABLE Occupations 
(
    [Name] NVARCHAR(50),
    Occupation NVARCHAR(50)
)


INSERT INTO [dbo].[Occupations]
( 
 [Name], [Occupation]
)
VALUES
( 
 'Sarah', 'doctor'
),
( 
 'Jim', 'professor'
),
( 
 'Dehaka', 'professor'
)
GO


UPDATE [dbo].[Occupations]
SET
    [Occupation] = 'Professor'
WHERE
     [Occupation] = 'professor'
GO

UPDATE [dbo].[Occupations]
SET
    [Occupation] = 'Doctor'
WHERE
     [Occupation] = 'doctor'
GO


SELECT * FROM [dbo].[Occupations]
GO;

SELECT CONCAT(Name, '(', LEFT(Occupation,1), ')') 
FROM [dbo].[Occupations]
ORDER BY Name

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') 
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation


