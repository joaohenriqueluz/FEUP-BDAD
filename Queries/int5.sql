.mode	columns
.headers	on
.nullvalue	NULL
.width 2 10 16 11

--number of people per type of shelter
SELECT idAnimalShelter AS ID, animalType, COUNT(*) AS numOfVolunteers
FROM (SELECT idPerson
      FROM AnimalShelterVolunteerWorkArea NATURAL JOIN Person)
      NATURAL JOIN AnimalShelter
      GROUP BY animalType;