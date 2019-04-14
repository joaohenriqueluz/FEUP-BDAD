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
	name		   		text NOT NULL,
	street		   		text NOT NULL,
	addressDetails		text NOT NULL,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity	 	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone			 	text UNIQUE NOT NULL CHECK(length(phone) = 9),
	nif				 	text UNIQUE NOT NULL CHECK(length(nif)= 9),
	foundationDate   	date NOT NULL
);


CREATE TABLE Vet (
	idVet 				integer PRIMARY KEY,
	name		   		text NOT NULL,
	street		  	 	text NOT NULL,
	addressDetails		text NOT NULL,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity	 	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone			 	text UNIQUE NOT NULL CHECK(length(phone) = 9),
	prices			 	real NOT NULL CHECK(prices > 0),
	discounts   	 	real NOT NULL CHECK(discounts >= 0) --applicable to contributors
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
	street		   		text NOT NULL,
	addressDetails		text NOT NULL,
	postalCodeRegion 	text NOT NULL CHECK(length(postalCodeRegion)= 4),
	postalCodeCity	 	text NOT NULL CHECK(length(postalCodeCity)= 3),
	phone			 	text UNIQUE NOT NULL CHECK(length(phone) = 9),
	birthday		 	date
);


CREATE TABLE Contributor (
	idPerson			integer REFERENCES Person,
	idContributor		integer UNIQUE NOT NULL,
	job 			   	text,
	nif				   	text UNIQUE NOT NULL CHECK(length(nif)= 9),
	associationDate    	date NOT NULL,
	lastAnnuityPayment 	date NOT NULL,
	annuityAmount		real NOT NULL CHECK(annuityAmount > 0),
	CHECK(lastAnnuityPayment >= associationDate)
);


CREATE TABLE Volunteer (
	idPerson 			integer REFERENCES Person,
	weeklyHours			integer CHECK(weeklyHours > 0)
);


CREATE TABLE WorkArea (
	idWorkArea 			integer PRIMARY KEY,
	name 				text NOT NULL
);


CREATE TABLE Adopter (
	idPerson 			integer REFERENCES Person,
	nif					text UNIQUE NOT NULL CHECK(length(nif)= 9)
);

CREATE TABLE Adoption (
	idPerson 			integer REFERENCES Person,
	idAnimal 			integer REFERENCES Animal,
	adoptionDate		date NOT NULL
);

CREATE TABLE OrganizationContributor (
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Person
	);


CREATE TABLE Donation (
	idDonation 			real PRIMARY KEY,
	type		    	text,
	amount				real NOT NULL,
	frequency			integer,
	idOrganization 		integer REFERENCES Organization,
	idPerson 			integer REFERENCES Person,
	CHECK(type = 'food' or type = 'money' or type = 'toys' or type = 'accessories' or type = 'other')
);


CREATE TABLE AnimalShelter (
	idAnimalShelter	 	integer PRIMARY KEY,
	Animaltype			text NOT NULL,
	street				text NOT NULL,
	addressDetails		text NOT NULL,
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
	name 				text NOT NULL,
	arrivaldate 		date NOT NULL,
	size 				text CHECK(size = 'large' or size = 'medium' or size = 'small'),
	color 				text,
	gender 				text CHECK(gender = 'female' or gender = 'male'),
	birthDate 			date,
	sterilized			boolean NOT NULL,
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
	monthlyAllowance	real NOT NULL CHECK (monthlyAllowance > 0)
);