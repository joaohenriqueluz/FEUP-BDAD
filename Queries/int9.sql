.mode	columns
.headers	on
.nullvalue	NULL
.width 8 11 12

-- adopters that became contributors after the last adoption whose installment was not paid
SELECT Adoption.idPerson, lastPayment, adoptionDate
FROM Adoption NATURAL JOIN 
       (SELECT idContributor, idPerson, nif AS NIF, phone, lastAnnuityPayment AS lastPayment, associationDate
        FROM Person NATURAL JOIN Contributor
        WHERE lastAnnuityPayment < date("now", "-365 day")
        ORDER BY lastAnnuityPayment)
    WHERE adoptionDate < associationDate;
