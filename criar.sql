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
	discounts   	 	real CHECK(discounts >=0) //se a pessoa for contributer
	);


CREATE TABLE OrganizationVet (
	idOrganization 		integer REFERENCES Organization,
	idVet 				integer REFERENCES Vet
	);


CREATE TABLE Person (
	idPerson 			integer PRIMARY KEY,
	name		  	 	text NOT NULL,
	cc 			   		integer UNIQUE NOT NULL,
	gender			 	text CHECK(gender ='female' or gender = 'male'),
	street		   		text,
	postalCodeRegion 	integer,  
	postalCodeCity	 	integer,
	phone			 	integer UNIQUE,
	birthday		 	date
	);


CREATE TABLE Contributor (
	idPerson 			integer REFERENCES Person,
	job 			   	text,
	nif				   	integer UNIQUE,
	associationDate    	date,
	lastAnnuityPayment 	date,
	CHECK(lastAnnuityPayment  > associationDate) 
	);


CREATE TABLE Volunteer (
	idPerson 			integer REFERENCES Person,
	weeklyHours			integer CHECK(weeklyHours > 0)
	);

CREATE TABLE WorkArea (
	idWorkArea 			integer PRIMARY KEY,
	area 				text
	);



CREATE TABLE Adopter (
	idPerson 			integer REFERENCES Person,
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

CREATE TABLE AnimalShelterVolunteerWorkArea (
	idAnimalShelter		integer REFERENCES AnimalShelter,
	idPerson 			integer	REFERENCES Volunteer,
	idWorkArea			integer REFERENCES WorkArea
);

CREATE TABLE Animal (
	idAnimal 			integer PRIMARY KEY,
	name 				text,
	arrivaldate 		date,
	size 				text CHECK(size = 'large' or size = 'medium' or size = 'small'),
	color 				text,
	gender 				text CHECK(gender ='female' or gender = 'male'),
	bithDate 			date,
	sterilized			boolean,
	health				text,
	idAnimalShelter 	integer REFERENCES AnimalShelter,
	CHECK(arrivaldate > bithDate)
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