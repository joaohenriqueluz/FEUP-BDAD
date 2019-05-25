.mode	columns
.headers	on
.nullvalue	NULL
.width auto auto auto

-- most frequent adopter
SELECT idPerson AS ID, name, MAX(n) AS numOfAdoptions
FROM (SELECT Person.idPerson, name, COUNT(*) as n
      FROM Person NATURAL JOIN Adoption
      GROUP BY Person.idPerson);