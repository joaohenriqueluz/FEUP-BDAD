.mode	columns
.headers	on
.nullvalue	NULL
.width 14 15 10 15

-- number of volunteers per shelter
SELECT idOrganization, idAnimalShelter, animalType, COUNT(*) AS numOfVolunteers
FROM AnimalShelterVolunteerWorkArea NATURAL JOIN animalShelter
GROUP BY idAnimalShelter;