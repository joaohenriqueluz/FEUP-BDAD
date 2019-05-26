
CREATE TRIGGER IF NOT EXISTS X3
BEFORE INSERT ON OrganizationVet
WHEN (SELECT Organization.postalCodeRegion  
FROM Organization 
Where Organization.idOrganization = new.idOrganization) / 1000 !=
(SELECT Vet.postalCodeRegion
FROM Vet
Where Vet.idVet= new.idVet) / 1000
BEGIN
SELECT RAISE(ABORT, "The vet can't be added to the organization");
END;