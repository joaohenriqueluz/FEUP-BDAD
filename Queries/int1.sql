.mode	columns
.headers	on
.nullvalue	NULL
.width 8 10 8 17 12

-- animals and respectives adopters 
SELECT Animal.idAnimal, Animal.name AS animalName, Person.idPerson, Person.name AS personName, adoptionDate 
FROM Animal, Person, Adoption
WHERE Adoption.idAnimal = Animal.idAnimal AND Adoption.idPerson = Person.idPerson
ORDER BY Animal.idAnimal;