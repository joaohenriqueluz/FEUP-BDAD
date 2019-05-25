.mode	columns
.headers	on
.nullvalue	NULL
.width 2 10 15

-- number of volunteers per shelter
SELECT idAnimalShelter, animalType, COUNT(*) AS numOfVolunteers
      FROM AnimalShelterVolunteerWorkArea NATURAL JOIN animalShelter
      GROUP BY idAnimalShelter;