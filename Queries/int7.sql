.mode	columns
.headers	on
.nullvalue	NULL
.width 14 11 17

-- total income from contributors' annuity payments in the current period (1-year)
SELECT idOrganization, SUM(annuityAmount) AS totalIncome, COUNT(*) AS totalContributors
FROM OrganizationContributor NATURAL JOIN Contributor
WHERE lastAnnuityPayment > date("now", "-365 day")
GROUP BY idOrganization;
