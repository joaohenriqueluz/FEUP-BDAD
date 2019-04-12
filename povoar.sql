PRAGMA foreign_keys = ON;

INSERT INTO Organization (
    idOrganization,
    name, 
    street, 
    postalCodeRegion, 
    postalCodeCity, 
    phone, 
    nif, 
    foundationDate )

VALUES
    (1, 
    'Senhores Bichinhos', 
    'Rua Pedro Magalhães', 
    4400, 
    120, 
    916667241, 
    122145466, 
    1980-10-09);


INSERT INTO Vet (
    idVet,
    name,
    street,
    postalCodeRegion,
    postalCodeCity,
    phone,
    prices,
    discounts )

VALUES
    (1,
    'Clínica Veterinária da Quinta das Rosas',
    'Rua das Searas',
    4430,
    280,
    965548877,
    20,
    20),

    (2,
    'Clinica D.PedroV',
    'Rua D. Pedro v',
    4400,
    560,
    935765546,
    15,
    20),

    (3,
    'Clínica Veterinária da Galiza',
    'Rua da Galiza',
    4000,
    290,
    916775489, 20,
    15);

INSERT INTO OrganizationVet (
    idOrganization,
    idVet )

VALUES
    (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO Person (
    idPerson,
    name,
    cc,
    gender,
    street,
    postalCodeRegion,
    postalCodeCity,
    phone,
    birthday )

VALUES
    (1,
    'Maria Albertina',
    67996675,
    'female',
    'Rua das Rosas',
    4400,
    178,
    915743355,
    1970-11-20),

    (2,
    'Mafalda Santos',
    678968725,
    'female',
    'Rua Antonio Gomes',
    4400,
    125,
    915613946,
    1999-11-07),

    (3,
    'João Luz',
    78943679,
    'male',
    'Rua Manuel Salgueiral',
    4400,
    120,
    935679546,
    1999-06-17),

    (4,
    'Diogo Silva',
    27958588,
    'male',
    'Rua de Sao Tome',
    4430,
    222,
    937247899,
    1999-04-19),

    (5,
    'Cristina Reis',
    87488579,
    'female',
    'Rua de Canide Sul',
    4440,
    111,
    919945551,
    1968-08-13),

    (6,
    'Joana carvalho',
    3685567832,
    'female',
    'Rua Aljubarrota',
    4400,
    231,
    915674433,
    1977-09-11),

    (7, 
    'Liliana Almeida',
    479055789,
    'female',
    'Rua Timor',
    4400,
    343,
    915787765,
    1999-06-01),

    (8,
    'Isabel Patricia',
    694455342,
    'female',
    'Rua do Alecrim Monteiro',
    4000,
    112,
    916578855,
    1988-11-07),

    (9,
    'Antonio Gabriel',
    8690066436,
    'male',
    'Rua Marques Pereira',
    4300,
    677,
    965788644,
    1970-01-02),
    
    (10,
    'José Gomes',
    92456621,
    'male',
    'Rua da Rasa',
    4000,
    127,
    916788865,
    1999-10-21),
    
    (11,
    'Luísa Maria',
    9275768908,
    'female',
    'Rua Famalicão de cima',
    4400,
    800,
    915675545,
    1980-07-18),
    
    (12,
    'Cesar Protetor',
    66522787,
    'male',
    'Rua de Malorca',
    4300,
    098,
    967874466,
    1960-09-15),

    (13,
    'David Dinis',
    12767382,
    'male',
    'Rua Fernando Madeira',
    4000,
    789,
    967077660,
    1999-10-31),

    (14,
    'Marta Gomes',
    19897382,
    'female',
    'Rua Diogo Cão',
    4600,
    019,
    917977660,
    1998-01-10),

    (15,
    'Alexandre Carqueja',
    98123382,
    'male',
    'Avenida da Boavista',
    4000,
    694,
    919055460,
    2000-01-06),

    (16,
    'Luís Fernandes',
    21467833,
    'male',
    'Rua Dr Alberto Seabra',
    4400,
    600,
    919099890,
    1999-11-16),

    (17,
    'Soraia Daniela',
    43326733,
    'female',
    'Rua Magalhães Silva',
    4450,
    760,
    916778690,
    1958-10-16),

    (18,
    'Baltazar Guimarães',
    91567733,
    'male',
    'Travessa do Outeiro',
    4455,
    090,
    967879921,
    1960-12-15);


INSERT INTO Contributor(
    idContributor,
    job,
    nif,
    associationDate,
    lastAnnuityPayment ) 
   
VALUES
   (1,
    'Nurse',
    244354065,
    2010-10-03,
    2018-11-07),
   
   (6,
    'Teacher',
    2306436145,
    2015-04-22,
    2018-01-22),

   (7,
    'Engineer',
    239832245,
    2015-04-22,
    2018-01-22);


INSERT INTO Volunteer (
    idVolunteer,
    weeklyHours )

VALUES
   (2, 10),
   (3, 4),
   (4, 7),
   (5, 21),
   (12, 15);


INSERT INTO WorkArea (
    idWorkArea,
    area )

VALUES
    (1,
    'Dog Walking'),
    (2,
    'Cleaning'),
    (3,
    'Peting'),
    (4,
    'Animal rescue');

INSERT INTO Adopter (
    idAdopter,
    nif )

VALUES
    (11,
    245343213),
    (8,
    254657678),
    (9,
    298765456),
    (10,
    234567745);
   
   
INSERT INTO OrganizationContributor (
    idOrganization,
    idContributor )

VALUES
    (1, 1),
    (1, 6),
    (1, 7);
    
    
INSERT INTO Donation (
    idDonation,
    type,
    amount,
    frequency,
    idOrganization,
    idPerson )

VALUES
    (1,
    'Food (kg)',
    15,
    2,
    1,
    13),

    (2,
    'Toys',
    5,
    1,
    1,
    14),

    (3,
    'dog shampoo',
    3,
    2,
    1,
    10),

    (4,
    'Money',
    100,
    1,
    1,
    15);


INSERT INTO AnimalShelter (
    idAnimalShelter,
    AnimalType,
    street,
    postalCodeRegion,
    postalCodeCity,
    phone,
    idOrganization )

VALUES
    (1,
    'cat',
    'Rua das Amoras',
    4400,
    143,
    916756687,
    1),

    (2,
    'dog',
    'Rua Martins Almada',
    4000,
    451,
    93900434,
    1);

INSERT INTO AnimalShelterVolunteerWorkArea (
    idAnimalShelter,
    idVolunteer,
    idWorkArea )

VALUES
    (1,2,2),
    (1,2,4),
    (2,3,1),
    (2,3,3),
    (1,4,2),
    (1,5,3),
    (2,12,4);


INSERT INTO Animal (
    idAnimal,
    name,
    arrivalDate,
    size,
    color,
    gender,
    bithDate,
    sterilized,
    health,
    idAnimalShelter )
    
VALUES
    (1,
    'Shakira',
    2018-09-01,
    'medium',
    'black',
    'female',
    2018-01-01,
    1,
    'FIV',
    1),

    (2,
    'Gulias',
    2019-04-01,
    'large',
    'black',
    'male',
    2018-07-01,
    1,
    '',
    1),
    
    (3,
    'Zeca',
    2018-09-01,
    'large',
    '',
    'female',
    2018-01-01,
    1,
    'FIV',
    1),

    (4,
    'Baunilha',
    2019-04-01,
    'medium',
    'yellow',
    'female',
    2018-05-01,
    1,
    '',
    1),

    (5,
    'Tininha',
    2015-05-15,
    'medium',
    'white',
    'female',
    2012-01-22,
    1,
    'leucemia',
    1),

    (6,
    'Maluma',
    2019-01-15,
    'medium',
    'white',
    'male',
    2018-09-22,
    1,
    '',
    1),
    
    (7,
    'Nina',
    2018-12-15,
    'small',
    'brown',
    'female',
    2018-05-21,
    1,
    '',
    1),

    (8,
    'Malaquias',
    2009-02-30,
    'medium',
    'yellow',
    'male',
    2007-06-10,
    1,
    'Kidney failure',
    1),

    (9,
    'Piper',
    2019-02-30,
    'small',
    'black',
    'female',
    2014-01-24,
    1,
    '',
    2),

    (10,
    'Ary',
    2019-03-14,
    'medium',
    'white',
    'male',
    2019-02-24,
    0,
    '',
    2),

    (11,
    'Mint',
    2019-03-14,
    'medium',
    'white',
    'female',
    2019-02-24,
    0,
    '',
    2),

    (12,
    'Marley',
    2019-03-26,
    'small',
    'yellow',
    'male',
    2016-11-12,
    1,
    '',
    2),

    (13,
    'Scott',
    2019-01-26,
    'large',
    'brown',
    'male',
    2013-06-17,
    0,
    '',
    2),

    (14,
    'Carlota',
    2018-12-30,
    'small',
    'brown',
    'female',
    2018-03-10,
    1,
    '',
    2),

    (15,
    'Silas',
    2009-11-22,
    'small',
    'brown',
    'female',
    2005-01-24,
    1,
    '',
    2);


INSERT INTO AnimalVet (
    idAnimal,
    idVet )

VALUES
    (1, 2),
    (2, 2),
    (3, 1),
    (4, 3),
    (3, 2),
    (5, 1),
    (6, 1),
    (7, 2),
    (8, 1),
    (9, 3),
    (10, 2),
    (11, 1),
    (12, 2),
    (13, 3),
    (14, 3),
    (15, 2);


INSERT INTO Guardian (
    idAnimal,
    idPerson,
    monthlyAllowance )

VALUES
    (2, 16, 15),
    (6, 17, 40),
    (10, 18, 20);