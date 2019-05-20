.mode	columns
.headers	on
.nullvalue	NULL
.width 2 10 16 11

-- handicap animals for adoption for over a year
SELECT idAnimal AS ID, name, health, arrivalDate 
FROM Animal 
WHERE arrivalDate < date("now", "-1 years") 
    and not exists(SELECT * FROM Adoption WHERE Animal.idAnimal = Adoption.idAnimal)
    and health != ''
ORDER BY arrivalDate;