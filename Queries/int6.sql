.mode	columns
.headers	on
.nullvalue	NULL
.width auto auto auto

-- shelters in which weekly hours spent 

SELECT name,COUNT(*)
      FROM WorkArea NATURAL JOIN AnimalShelterVolunteerWorkArea NATURAL JOIN Volunteer
      GROUP BY idWorkArea
      ORDER BY weeklyHours; 
