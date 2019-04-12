DROP TABLE IF EXISTS Organization;
DROP TABLE IF EXISTS Vet;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Contributor;
DROP TABLE IF EXISTS Volunteer;
DROP TABLE IF EXISTS WorkArea;
DROP TABLE IF EXISTS Adopter;
DROP TABLE IF EXISTS Donation;
DROP TABLE IF EXISTS AnimalShelter;
DROP TABLE IF EXISTS AnimalShelterVolunteerWorkArea;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS AnimalVet;
DROP TABLE IF EXISTS Guardian; 


CREATE TABLE Organization (
	idOrganization 		integer PRIMARY KEY,
	name		   		text,
	street		   		text,
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	nif				 	integer UNIQUE,
	foundationDate   	date
);


CREATE TABLE Vet (
	idVet 				integer PRIMARY KEY,
	name		   		text NOT NULL,
	street		  	 	text,
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	prices			 	real CHECK(prices > 0),
	discounts   	 	real CHECK(discounts >= 0) --applicable to contributors
);


CREATE TABLE OrganizationVet (
	idOrganization 		integer REFERENCES Organization,
	idVet 				integer REFERENCES Vet
);


CREATE TABLE Person (
	idPerson 			integer PRIMARY KEY,
	name		  	 	text NOT NULL,
	cc 			   		integer UNIQUE NOT NULL,
	gender			 	text CHECK(gender = 'female' or gender = 'male'),
	street		   		text,
	postalCodeRegion 	integer,
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	birthday		 	date
);


CREATE TABLE Contributor (
	idContributor		integer REFERENCES Person,
	id					integer UNIQUE,
	job 			   	text,
	nif				   	integer UNIQUE,
	associationDate    	date,
	lastAnnuityPayment 	date,
	CHECK(lastAnnuityPayment >= associationDate)
);


CREATE TABLE Volunteer (
	idVolunteer 		integer REFERENCES Person,
	weeklyHours			integer CHECK(weeklyHours > 0)
);


CREATE TABLE WorkArea (
	idWorkArea 			integer PRIMARY KEY,
	area 				text
);


CREATE TABLE Adopter (
	idAdopter 			integer REFERENCES Person,
	nif					integer UNIQUE
);

CREATE TABLE Adoption (
	idAdopter 			integer REFERENCES Person,
	idAnimal 			integer REFERENCES Animal,
	adoptionDate		date
);

CREATE TABLE OrganizationContributor (
	idOrganization 		integer REFERENCES Organization,
	idContributor 			integer REFERENCES Person
	);


CREATE TABLE Donation (
	idDonation 			real PRIMARY KEY,
	type		    	text,
	amount				real,
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


CREATE TABLE AnimalShelterVolunteerWorkArea (
	idAnimalShelter		integer REFERENCES AnimalShelter,
	idVolunteer			integer	REFERENCES Person,
	idWorkArea			integer REFERENCES WorkArea
);


CREATE TABLE Animal (
	idAnimal 			integer PRIMARY KEY,
	name 				text,
	arrivaldate 		date,
	size 				text CHECK(size = 'large' or size = 'medium' or size = 'small'),
	color 				text,
	gender 				text CHECK(gender = 'female' or gender = 'male'),
	birthDate 			date,
	sterilized			boolean,
	health				text,
	idAnimalShelter 	integer REFERENCES AnimalShelter
	);

CREATE TABLE AnimalVet (
	idAnimal 			integer	REFERENCES Animal,
	idVet				integer REFERENCES Vet
);


CREATE TABLE Guardian (
	idAnimal 			integer	REFERENCES Animal,
	idPerson			integer REFERENCES Person,
	monthlyAllowance	real CHECK (monthlyAllowance > 0)
);