-- guarantees that every adopter added is a contributor
CREATE TRIGGER IF NOT EXISTS X1
BEFORE INSERT ON Adopter
WHEN NOT EXISTS
    (SELECT idPerson 
     FROM Contributor
     WHERE Contributor.idPerson = NEW.idPerson)
BEGIN
    SELECT RAISE(ABORT, "INCORRECT ID");
END;