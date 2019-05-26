.mode	columns
.headers	on
.nullvalue	NULL
.width 8 5 12 9

-- adopters living in the same region as the vet of the adopted pet
SELECT Adoption.idPerson, idVet, Person.postalCodeRegion AS regionPerson, Vet.postalCodeRegion AS regionVet
FROM ((AnimalVet NATURAL JOIN Vet) NATURAL JOIN Adoption) JOIN Person
WHERE (Person.postalCodeRegion / 1000) <= (Vet.postalCodeRegion / 1000)
    AND Person.idPerson = Adoption.idPerson
ORDER BY idVet;
