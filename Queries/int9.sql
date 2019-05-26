.mode	columns
.headers	on
.nullvalue	NULL
.width 5 10 8 10 16

-- number of adopters that became contributors just for the year of the adoption
SELECT *
FROM OrganizationContributor, Contributor, Adoption, Person, Animal
WHERE OrganizationContributor.idPerson = Contributor.idPerson
    --AND Adoption.idPerson = Person.idPerson
    AND Adoption.idPerson = Contributor.idPerson
    AND Adoption.idAnimal = Animal.idAnimal
    AND adoptionDate > date("now", "-1 year")
    --AND health != ''
--ORDER BY Vet.idVet;