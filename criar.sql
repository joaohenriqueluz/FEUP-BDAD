DROP TABLE IF EXISTS Organization;
DROP TABLE IF EXISTS Vet;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Contributor;
DROP TABLE IF EXISTS Volunteer;
DROP TABLE IF EXISTS Adopter;
DROP TABLE IF EXISTS Donation;
DROP TABLE IF EXISTS Guardian;
DROP TABLE IF EXISTS AnimalShelter;
DROP TABLE IF EXISTS Animal;


CREATE TABLE Organization(
	idOrganization INTEGER PRIMARY KEY,
	name		   CHAR(30),
	street		   CHAR(25),
	postalCodeRegion INTEGER,
	postalCodeCity	 INTEGER,
	phone			 INTEGER UNIQUE,
	nif				 INTEGER UNIQUE,
	foundationDate   DATE
	);


CREATE TABLE Vet(
	idVet INTEGER PRIMARY KEY,
	name		   CHAR(30),
	street		   CHAR(25),
	postalCodeRegion INTEGER,
	postalCodeCity	 INTEGER,
	phone			 INTEGER UNIQUE,
	prices			 REAL,
	discounts   	 REAL
	);


CREATE TABLE OrganizationVet(
	idOrganization REFERENCES Organization(idOrganization),
	idVet REFERENCES Vet(idVet)
	);


CREATE TABLE Person(
	idPerson INTEGER PRIMARY KEY,
	name		   CHAR(30),
	cc 			   INTEGER UNIQUE,
	street		   CHAR(25),
	postalCodeRegion INTEGER,  
	postalCodeCity	 INTEGER,
	phone			 INTEGER UNIQUE,
	gender			 TEXT,
	birthday		 DATE
	);


CREATE TABLE Contributor(
	idPerson REFERENCES Person(idPerson),
	job 			   TEXT,
	nif				   INTEGER UNIQUE,
	associationDate    DATE,
	lastAnnuityPayment DATE,
	);


CREATE TABLE Volunteer(
	idPerson REFERENCES Person(idPerson),
	weeklyHours		INTEGER,
	workArea		TEXT
	);


CREATE TABLE Adopter(
	idPerson REFERENCES Person(idPerson),
	adoptionDate	DATE,
	nif		INTEGER UNIQUE
	);


CREATE TABLE OrganizationContributor(
	idOrganization REFERENCES Organization(idOrganization),
	idPerson REFERENCES Contributor(idPerson)
	);


CREATE TABLE Donation(
	idDonation 		REAL PRIMARY KEY,
	type		    TEXT,
	amount			REAL,
	frequency		INTEGER,
	idOrganization REFERENCES Organization(idOrganization),
	idPerson REFERENCES Person(idPerson)
	);


CREATE TABLE AnimalShelter(
	idAnimalShelter INTEGER PRIMARY KEY,
	Animaltype		CHAR(3),
	street			TEXT,
	postalCodeRegion INTEGER,
	postalCodeCity   INTEGER,
	phone		INTEGER UNIQUE,
	idOrganization REFERENCES Organization(idOrganization)
	);


CREATE TABLE AnimalShelter(
	idAnimal INTEGER PRIMARY KEY,
	name TEXT,
	arrivalDate DATE,
	size TEXT,
	color TEXT,
	gender CHAR(1),
	age INTEGER,
	
	idOrganization REFERENCES Organization(idOrganization)
	);




