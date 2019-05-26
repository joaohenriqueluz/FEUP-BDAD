.mode	columns
.headers	on
.nullvalue	NULL
.width 5 36 8 10 16

-- handicap animals per vet 
SELECT Vet.idVet, Vet.name AS nameVet, Animal.idAnimal, Animal.name AS nameAnimal, health
FROM AnimalVet, Vet, Animal
WHERE Animal.idAnimal = AnimalVet.idAnimal
    AND Vet.idVet = AnimalVet.idVet
    AND health != ''
ORDER BY Vet.idVet;