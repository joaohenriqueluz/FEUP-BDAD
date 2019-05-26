.mode	columns
.headers	on
.nullvalue	NULL
.width 14 15 15 16

-- total weekly hours by work area for each shelter 
SELECT idOrganization, idAnimalShelter, name, SUM(weeklyHours) AS totalWeeklyHours
FROM WorkArea NATURAL JOIN AnimalShelterVolunteerWorkArea NATURAL JOIN Volunteer NATURAL JOIN animalShelter
GROUP BY idWorkArea, idAnimalShelter
ORDER BY idAnimalShelter;
