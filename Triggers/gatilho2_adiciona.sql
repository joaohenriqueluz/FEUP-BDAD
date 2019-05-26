CREATE TRIGGER IF NOT EXISTS X2
BEFORE INSERT ON Guardian
WHEN EXISTS (SELECT idAnimal
             FROM Adoption
             WHERE Adoption.idAnimal = new.idAnimal)
  OR EXISTS (SELECT idAnimal
             FROM Guardian
             WHERE Guardian.idAnimal = new.idAnimal)
BEGIN
    SELECT RAISE(ABORT, "The animal was either adopted or already has a guardian!");
END;