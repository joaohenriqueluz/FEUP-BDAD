.mode	columns
.headers	on
.nullvalue	NULL
.width 13 8 9 9 11

-- contributors with unpaid annuities (paid more than a year ago)
SELECT idContributor, idPerson, nif AS NIF, phone, lastAnnuityPayment AS lastPayment
FROM Person NATURAL JOIN Contributor 
WHERE lastAnnuityPayment < date("now", "-365 day")
ORDER BY lastAnnuityPayment;