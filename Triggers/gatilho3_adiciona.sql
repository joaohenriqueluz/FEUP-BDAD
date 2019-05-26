-- verifies if organization and vet do not have similar regional postal codes
CREATE TRIGGER IF NOT EXISTS X3
BEFORE INSERT ON OrganizationVet
WHEN (SELECT Organization.postalCodeRegion
      FROM Organization
      WHERE Organization.idOrganization = new.idOrganization) / 1000 !=
            (SELECT Vet.postalCodeRegion
             FROM Vet
             WHERE Vet.idVet= new.idVet) / 1000
BEGIN
    SELECT RAISE(ABORT, "The vet is too far from the organization!");
END;