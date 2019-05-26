--Create Trigger Discounts
--After Insert On Contributor
--For Each Row
--When New.GPA> 3.3 AND New.GPA <= 3.6
--Begin
--    Insert into Vet values(New.sID, ‘Stanford’, ‘geology’, null);
--    Insert into Apply values(New.sID, ‘MIT’, ‘biology’, null);
--End;

CREATE TRIGGER cenasT
AFTER INSERT ON Adopter
WHEN NOT EXISTS(SELECT Contributor.idPerson FROM Adopter NATURAL JOIN Contributor WHERE Adopter.idPerson = NEW.idPerson)
BEGIN
DELETE FROM Adopter WHERE idPerson = NEW.idPerson;
END;