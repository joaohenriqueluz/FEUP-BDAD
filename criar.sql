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


CREATE TABLE Organization (
	idOrganization 		integer PRIMARY KEY,
	name		   		text,
	street		   		text,
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	nif				 	integer UNIQUE,
	foundationdate   	date
	);


CREATE TABLE Vet (
	idVet 				integer PRIMARY KEY,
	name		   		text NOT NULL,
	street		  	 	text,
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	prices			 	real CHECK(prices > 0),
	discounts   	 	real CHECK(discounts >=0)
	);


CREATE TABLE OrganizationVet (
	idOrganization 		integer REFERENCES Organization,
	idVet 				integer REFERENCES Vet
	);


CREATE TABLE Person (
	idPerson 			integer PRIMARY KEY,
	name		  	 	text NOT NULL,
	cc 			   		integer UNIQUE NOT NULL,
	street		   		text,
	postalCodeRegion 	integer,  
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	gender			 	text CHECK(gender ='female' or gender = 'male'),
	birthday		 	date
	);


CREATE TABLE Contributor (
	idPerson 			integer REFERENCES Person,
	job 			   	text,
	nif				   	integer UNIQUE,
	associationdate    	date,
	lastAnnuityPayment 	date,
	CHECK(lastAnnuityPayment  > associationdate) 
	);


CREATE TABLE Volunteer (
	idPerson 			integer REFERENCES Person,
	weeklyHours			integer CHECK(weeklyHours > 0),
	workArea			text
	);


CREATE TABLE Adopter (
	idPerson 			integer REFERENCES Person,
	adoptiondate		date,
	nif					integer UNIQUE
	);


CREATE TABLE OrganizationContributor (
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Contributor
	);


CREATE TABLE Donation (
	idDonation 			REAL PRIMARY KEY,
	type		    	text,
	amount				REAL,
	frequency			integer,
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Person
	);


CREATE TABLE AnimalShelter (
	idAnimalShelter	 	integer PRIMARY KEY,
	Animaltype			text,
	street				text,
	postalCodeRegion 	integer,
	postalCodeCity   	integer,
	phone				integer UNIQUE,
	idOrganization 		integer REFERENCES Organization
	);


CREATE TABLE Animal (
	idAnimal 			integer PRIMARY KEY,
	name 				text,
	arrivaldate 		date,
	size 				text,
	color 				text,
	gender 				text,
	age 				integer,
	sterilized			boolean,
	health				text,
	idAnimalShelter 	integer REFERENCES AnimalShelter,
	idPerson 			integer REFERENCES Person
	);

