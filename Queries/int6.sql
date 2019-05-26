.mode	columns
.headers	on
.nullvalue	NULL
.width auto auto auto

-- total weekly hours by work area for each shelter 
SELECT *, SUM(weeklyHours) AS totalWeeklyHours
FROM WorkArea NATURAL JOIN AnimalShelterVolunteerWorkArea NATURAL JOIN Volunteer
GROUP BY idWorkArea;
--ORDER BY SUM(weeklyHours));
