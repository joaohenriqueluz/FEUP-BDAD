DROP TABLE IF EXISTS Organization;
DROP TABLE IF EXISTS Vet;
DROP TABLE IF EXISTS OrganizationVet;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Contributor;
DROP TABLE IF EXISTS OrganizationContributor;
DROP TABLE IF EXISTS Volunteer;
DROP TABLE IF EXISTS WorkArea;
DROP TABLE IF EXISTS Adopter;
DROP TABLE IF EXISTS Adoption;
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
	addressDetails		text,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity	 	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone			 	text UNIQUE NOT NULL CHECK(length(phone) = 9),
	nif				 	text UNIQUE NOT NULL CHECK(length(nif)= 9),
	foundationDate   	date
);


CREATE TABLE Vet (
	idVet 				integer PRIMARY KEY,
	name		   		text NOT NULL,
	street		  	 	text,
	addressDetails		text,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity	 	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone			 	text UNIQUE NOT NULL CHECK(length(phone) = 9),
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
	cc 			   		text UNIQUE NOT NULL CHECK(length(cc)= 12),
	gender			 	text CHECK(gender = 'female' or gender = 'male'),
	street		   		text,
	addressDetails		text,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity	 	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone			 	text UNIQUE NOT NULL CHECK(length(phone) = 9),
	birthday		 	date
);


CREATE TABLE Contributor (
	idPerson			integer REFERENCES Person,
	idContributor		integer UNIQUE,
	job 			   	text,
	nif				   	text UNIQUE NOT NULL CHECK(length(nif)= 9),
	associationDate    	date,
	lastAnnuityPayment 	date,
	CHECK(lastAnnuityPayment >= associationDate)
);


CREATE TABLE Volunteer (
	idPerson 			integer REFERENCES Person,
	weeklyHours			integer CHECK(weeklyHours > 0)
);


CREATE TABLE WorkArea (
	idWorkArea 			integer PRIMARY KEY,
	name 				text
);


CREATE TABLE Adopter (
	idPerson 			integer REFERENCES Person,
	nif					text UNIQUE NOT NULL CHECK(length(nif)= 9)
);

CREATE TABLE Adoption (
	idPerson 			integer REFERENCES Person,
	idAnimal 			integer REFERENCES Animal,
	adoptionDate		date
);

CREATE TABLE OrganizationContributor (
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Person
	);


CREATE TABLE Donation (
	idDonation 			real PRIMARY KEY,
	type		    	text,
	amount				real,
	frequency			integer,
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Person,
	CHECK(type = 'food' or type = 'money' or type = 'toys' or type = 'accessories' or type = 'other')
);


CREATE TABLE AnimalShelter (
	idAnimalShelter	 	integer PRIMARY KEY,
	Animaltype			text,
	street				text,
	addressDetails		text,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity   	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone				text UNIQUE NOT NULL CHECK(length(phone) = 9),
	idOrganization 		integer REFERENCES Organization
);


CREATE TABLE AnimalShelterVolunteerWorkArea (
	idAnimalShelter		integer REFERENCES AnimalShelter,
	idPerson			integer	REFERENCES Person,
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