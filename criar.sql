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
	idOrganization 		integer PRIMARY KEY,
	name		   		char(30),
	street		   		char(25),
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	nif				 	integer UNIQUE,
	foundationdate   	date
	);


CREATE TABLE Vet(
	idVet 				integer PRIMARY KEY,
	name		   		char(30),
	street		  	 	char(25),
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	prices			 	REAL,
	discounts   	 	REAL
	);


CREATE TABLE OrganizationVet(
	idOrganization 		integer REFERENCES Organization,
	idVet 				integer REFERENCES Vet
	);


CREATE TABLE Person(
	idPerson 			integer PRIMARY KEY,
	name		  	 	char(30),
	cc 			   		integer UNIQUE,
	street		   		char(25),
	postalCodeRegion 	integer,  
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	gender			 	text,
	birthday		 	date
	);


CREATE TABLE Contributor(
	idPerson 			integer REFERENCES Person,
	job 			   	text,
	nif				   	integer UNIQUE,
	associationdate    	date,
	lastAnnuityPayment 	date,
	);


CREATE TABLE Volunteer(
	idPerson 			integer REFERENCES Person,
	weeklyHours			integer,
	workArea			text
	);


CREATE TABLE Adopter(
	idPerson 			integer REFERENCES Person,
	adoptiondate		date,
	nif					integer UNIQUE
	);


CREATE TABLE OrganizationContributor(
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Contributor
	);


CREATE TABLE Donation(
	idDonation 			REAL PRIMARY KEY,
	type		    	text,
	amount				REAL,
	frequency			integer,
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Person
	);


CREATE TABLE AnimalShelter(
	idAnimalShelter	 	integer PRIMARY KEY,
	Animaltype			char(3),
	street				text,
	postalCodeRegion 	integer,
	postalCodeCity   	integer,
	phone				integer UNIQUE,
	idOrganization 		integer REFERENCES Organization
	);


CREATE TABLE AnimalShelter(
	idAnimal 			integer PRIMARY KEY,
	name 				text,
	arrivaldate 		date,
	size 				text,
	color 				text,
	gender 				char(1),
	age 				integer,
	sterilized			boolean,
	health				text,
	idAnimalShelter 	integer REFERENCES AnimalShelter,
	idPerson 			integer REFERENCES Person
	);
