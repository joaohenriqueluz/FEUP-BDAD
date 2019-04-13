PRAGMA foreign_keys = ON;

INSERT INTO Organization (
    idOrganization,
    name, 
    street,
    addressDetails,
    postalCodeRegion, 
    postalCodeCity, 
    phone, 
    nif, 
    foundationDate )

VALUES
    (1, 
    'Senhores Bichinhos', 
    'Rua Pedro Magalhães', 
    '402 - R/C',
    4400,
    120,
    '916667241', 
    '522145466',
    '1980-09-10'
);


INSERT INTO Vet (
    name,
    street,
    addressDetails,
    postalCodeRegion,
    postalCodeCity,
    phone,
    prices,
    discounts )

VALUES
    (
    'Clínica Veterinária Quinta das Rosas',
    'Rua das Searas',
    '100 - R/C',
    4430,
    280,
    '965548877',
    20,
    20),

    (
    'Clinica D.Pedro V',
    'Rua D. Pedro V',
    '10 - R/C',
    4400,
    560,
    '935765546',
    15,
    20),

    (
    'Clínica Veterinária da Galiza',
    'Rua da Galiza',
    '342 - R/C',
    4000,
    290,
    '916775489',
    20,
    15
);


INSERT INTO OrganizationVet (
    idOrganization,
    idVet )

VALUES
    (1, 1),
    (1, 2),
    (1, 3
);


INSERT INTO Person (
    idPerson,
    name,
    cc,
    gender,
    street,
    addressDetails,
    postalCodeRegion,
    postalCodeCity,
    phone,
    birthday )

VALUES
    (1, -- C, G
    'Maria Albertina',
    '167966756Z39',
    'female',
    'Rua das Rosas',
    '39 - 3º B',
    '4400',
    '178',
    '915743355',
    '1970-11-20'),

    (2, -- V
    'Mafalda Santos',
    '167896725Y43',
    'female',
    'Rua Antonio Gomes',
    '99 - 2º Esq.',
    '4400',
    '125',
    '915613946',
    '1999-11-07'),

    (3, -- V
    'João Luz',
    '178943679Y23',
    'male',
    'Rua Manuel Salgueiral',
    '23 - 2º Frente',
    '4400',
    '120',
    '935679546',
    '1999-06-17'),

    (4, -- V
    'Diogo Silva',
    '127958586X65',
    'male',
    'Rua de São Tomé e Príncipe',
    '11 - 4º Post.',
    '4430',
    '222',
    '937247899',
    '1999-01-22'),

    (5, -- V
    'Cristina Reis',
    '187488579X35',
    'female',
    'Rua de Canide Sul',
    '32 - 10º C',
    '4440',
    '111',
    '919945551',
    '1968-08-13'),

    (6, -- C
    'Joana Carvalho',
    '368556783Y23',
    'female',
    'Rua Aljubarrota',
    '134 - 10º Esq. Frente',
    '4400',
    '231',
    '915674433',
    '1977-09-11'),

    (7, -- C
    'Liliana Almeida',
    '147905579Z23',
    'female',
    'Rua Timor',
    '49 - 1º Dir. Frente',
    '4400',
    '343',
    '915787765',
    '1999-06-01'),

    (8, -- A, G, C
    'Isabel Patricia',
    '294455342X32',
    'female',
    'Rua do Alecrim Monteiro',
    '83 - 3º Dir. Post.',
    '4000',
    '112',
    '916578855',
    '1988-11-07'),

    (9, -- A
    'Antonio Gabriel',
    '186900663Y36',
    'male',
    'Rua Marques Pereira',
    '82 - 7º Post.',
    '4300',
    '677',
    '965788644',
    '1970-01-02'),
    
    (10, -- A, D
    'José Gomes',
    '124566218X87',
    'male',
    'Rua da Rasa',
    '932 - R/C Frente',
    '4000',
    '127',
    '916788865',
    '1999-10-21'),
    
    (11, -- A, C
    'Luísa Maria',
    '192757690W21',
    'female',
    'Rua Famalicão de Cima',
    '33 - 1º C',
    '4400',
    '800',
    '915675545',
    '1980-07-18'),
    
    (12, -- V
    'Cesar Protetor',
    '165227877Z37',
    'male',
    'Rua de Malorca',
    '99 - 5º A',
    '4300',
    '098',
    '967874466',
    '1960-09-15'),

    (13, -- D
    'David Dinis',
    '131767382X23',
    'male',
    'Rua Fernando Madeira',
    '854 - 4º A',
    '4000',
    '789',
    '967077660',
    '1999-10-31'),

    (14, -- D, C
    'Marta Gomes',
    '198973229Z78',
    'female',
    'Rua Diogo Cão',
    '743 - 3º B',
    '4600',
    '019',
    '917977660',
    '1998-01-10'),

    (15, -- D
    'Alexandre Carqueja',
    '181233329X76',
    'male',
    'Avenida da Boavista',
    '832',
    '4000',
    '694',
    '919055460',
    '2000-01-06'),

    (16, -- G
    'Luís Fernandes',
    '214674339Y76',
    'male',
    'Rua Dr. Alberto Seabra', 
    '54 - 3º A',
    '4400',
    '600',
    '919099890',
    '1999-11-16'),

    (17, -- G, C
    'Soraia Daniela',
    '233267536Y54',
    'female',
    'Rua Magalhães Silva',
    '85',
    '4450',
    '760',
    '916778690',
    '1958-10-16'),

    (18, -- G
    'Lina Magalhães',
    '265227601Z37',
    'female',
    'Rua de cima',
    '909 - 2º A',
    '4000',
    '098',
    '917874460',
    '1966-02-12'),

    (19, -- V
    'José Dinis',
    '232976382X27',
    'male',
    'Rua Orlando Madeira',
    '098 - 1º B',
    '4500',
    '089',
    '916077620',
    '1980-11-30'),

    (20, -- A, G
    'Marília Gomes',
    '210973829Z79',
    'female',
    'Rua Joaquim Cão',
    '090 - 3º C',
    '4000',
    '879',
    '967977661',
    '1970-05-18'),

    (21, -- V
    'Alberto Félix',
    '180893829Y78',
    'male',
    'Avenida de Braga',
    '456',
    '4900',
    '094',
    '967055887',
    '1958-05-16'),

    (22, -- C
    'Sebastião Moreno',
    '127834339Y71',
    'male',
    'Rua das Nêsperas', 
    '42 - 1º Esq.',
    '4400',
    '660',
    '919632890',
    '1996-10-16'),

    (23, -- D
    'Silvina Daniela',
    '188267336Y51',
    'female',
    'Rua Magalhães Lemos',
    '20',
    '4950',
    '001',
    '966778698',
    '1970-11-06'),
    
    (24, -- C
    'Jean Valjean',
    '145927733Y42',
    'male',
    'Largo dos Lóios',
    '32 - 1º Dir.',
    '4042',
    '430',
    '965423221',
    '1961-11-15'),

    (25, -- C, V
    'Joaquina Simões',
    '158273382X24',
    'female',
    'Rua das Toranjas',
    '195 - 3º Frente',
    '4500',
    '121',
    '968492660',
    '1960-11-23'),

    (26, -- A, V
    'Manuel Leão',
    '184927229Z73',
    'male',
    'Rua dos Domadores',
    '13 - 3º F',
    '4500',
    '001',
    '914920660',
    '1970-05-10'),

    (27, -- C
    'Pedro Lamares',
    '209383829X74',
    'male',
    'Largo da Perdição',
    '832',
    '4600',
    '324',
    '990849272',
    '1980-04-06'),

    (28, -- C
    'Liliana Ferreira',
    '273829283Y77',
    'female',
    'Rua dos Doutorados', 
    '960 - 2º A',
    '4300',
    '650',
    '939583890',
    '1979-03-16'),

    (29, -- V
    'Josefina Luís',
    '209007336Y54',
    'female',
    'Rua Filomena Silva',
    '101 - 2ºA',
    '4200',
    '560',
    '938978690',
    '1960-12-16'),

    (30, -- C, A, V
    'Filipa Magalhães',
    '219027801Y37',
    'female',
    'Rua do Poço Algarvio',
    '300 - 1º A',
    '4700',
    '108',
    '927874460',
    '1979-02-09'),

    (31, -- G
    'José Alberto',
    '231976382X23',
    'male',
    'Rua do Outeiro Lipo',
    '989 - 3º B',
    '4000',
    '109',
    '928907620',
    '1980-10-10'),

    (32, -- C
    'Silvia Rocha',
    '123567721Z78',
    'female',
    'Rua Joaquim Cão',
    '390 - 1º R/C',
    '4030',
    '129',
    '972345661',
    '1999-02-18'),

    (33, -- A, D, V
    'Lucas Ribeiro',
    '198703746Y76',
    'male',
    'Avenida de Braga',
    '456',
    '4900',
    '094',
    '967055460',
    '1958-05-16'),

    (34, -- C, G
    'Firmino Moreno',
    '124980339Y76',
    'male',
    'Rua das Laranjas', 
    '491 -R/C Esq.',
    '4900',
    '080',
    '936632800',
    '1990-03-01'),

    (35, -- V, A
    'Margarida Silva',
    '118267009Y59',
    'female',
    'Rua de Cadeiras mil',
    '12',
    '4000',
    '021',
    '916778698',
    '1971-07-02'),

    (36, -- C
    'Rui Rio',
    '129384733Y42',
    'male',
    'Travessa dos Riachos',
    '45',
    '4000',
    '423',
    '984737231',
    '1966-01-15'),

    (37, -- C
    'Madonna Silva',
    '123663732Z78',
    'female',
    'Rua das Toranjas',
    '125',
    '1100',
    '121',
    '918271234',
    '1960-11-23'),

    (38, -- C
    'António Costa',
    '13827394Z731',
    'male',
    'Rua da Geringonça',
    '13',
    '2000',
    '032',
    '914928370',
    '1971-03-10'),

    (39, -- C
    'Ana Malhoa',
    '183747829X74',
    'female',
    'Rua das Turbinas',
    '394 - 1º Esq.',
    '4030',
    '232',
    '938473821',
    '1985-01-06'),

    (40, -- C
    'Judite de Sousa',
    '184958378Y72',
    'female',
    'Rua dos Pendricalhos', 
    '234',
    '4200',
    '020',
    '968983890',
    '1975-02-09'),

    (41, -- C
    'Catarina Almeida',
    '209990036Y54',
    'female',
    'Rua Silva reis',
    '106 - 1ºA',
    '4300',
    '660',
    '930098690',
    '1964-10-26'),

    (42, -- C
    'Filipa Silves',
    '210090901Y37',
    'female',
    'Rua do lencastre',
    '303',
    '4800',
    '100',
    '911874460',
    '1970-01-29'),

    (43, -- C
    'Armando Teixeira',
    '237777762X23',
    'male',
    'Rua do Olimpio Lipo',
    '889 - 9º B',
    '4400',
    '109',
    '938900627',
    '1988-12-19'),

    (44, -- C
    'Rebeca Antónia',
    '129917721Z71',
    'female',
    'Rua Joaquim Almada',
    '306 - R/C',
    '4000',
    '229',
    '910094561',
    '1995-06-19'),

    (45, -- C
    'David Ribeiro',
    '122233746Y76',
    'male',
    'Avenida dos Combatentes',
    '406',
    '4000',
    '224',
    '912054460',
    '1989-01-19'),

    (46, -- C, V
    'Beatriz Castro',
    '124009939Y76',
    'female',
    'Rua do tribunal', 
    '400 - R/C Dir.',
    '4400',
    '180',
    '968982800',
    '1999-07-08'),

    (47, -- C, V
    'Leonor Martins',
    '184736239Y53',
    'female',
    'Rua dos Carvalhos',
    '42',
    '9961',
    '909',
    '968978698',
    '1969-05-12'
);


INSERT INTO Contributor(
    idPerson,
    idContributor,
    job,
    nif,
    associationDate,
    lastAnnuityPayment )
   
VALUES
    (1,
    1,
    'Nurse',
    '244324065',
    '2010-10-03',
    '2018-11-07'),
   
    (6,
    2,
    'Teacher',
    '230623614',
    '2015-04-22',
    '2018-01-22'),

    (7,
    3,
    'Engineer',
    '239831245',
    '2015-04-12',
    '2018-01-22'),

    (22,
    4,
    'Doctor',
    '109832245',
    '2017-09-12',
    '2019-01-20'),

    (24,
    5,
    'Singer',
    '267832245',
    '2015-04-22',
    '2018-10-26'),

    (32,
    6,
    'Waitress',
    '200832245',
    '2016-03-21',
    '2017-01-22'),

    (34,
    7,
    'Designer',
    '239032245',
    '2015-04-31',
    '2018-01-22'),

    (25,
    8,
    'Cop',
    '209002245',
    '2012-09-19',
    '2019-02-09'),

    (27,
    9,
    'Electrician',
    '109132245',
    '2008-10-18',
    '2019-01-01'),

    (30,
    10,
    'Mecanic',
    '200965224',
    '2014-07-12',
    '2018-11-16'),

    (28,
    11,
    'Programmer',
    '200830245',
    '2016-01-07',
    '2018-09-15'),

    (8,
    12,
    'Banker',
    '098890229',
    '2014-10-29',
    '2018-08-20'),

    (11,
    13,
    'Accountant',
    '109098342',
    '2013-11-28',
    '2017-06-21'),

    (14,
    14,
    'Student',
    '299854324',
    '2018-06-12',
    '2018-06-12'),

    (17,
    15,
    'Artist',
    '206784245',
    '2010-09-28',
    '2017-01-16'),

    (36,
    16,
    'Fire Fighter',
    '123456543',
    '2006-10-03',
    '2019-03-07'),

    (37,
    17,
    'Butcher',
    '764637463',
    '2016-11-03',
    '2019-11-07'),

    (38,
    18,
    'Police Officer',
    '245432234',
    '2014-08-23',
    '2015-03-07'),
    
    (39,
    19,
    'Secretary',
    '234867594',
    '2014-08-23',
    '2015-08-22'),

    (40,
    20,
    'Plumber',
    '275836474',
    '2017-02-23',
    '2019-04-06'),

    (41,
    21,
    'Nurse',
    '234736485',
    '2019-08-23',
    '2019-09-17'),

    (42,
    22,
    'Musician',
    '275648576',
    '2016-11-23',
    '2017-05-12'),

    (43,
    23,
    'Optician',
    '245800594',
    '2019-08-23',
    '2019-09-17'),

    (44,
    24,
    'Painter',
    '249987594',
    '2018-02-23',
    '2019-11-10'),

    (45,
    25,
    'Pharmacist',
    '298448911',
    '2014-01-13',
    '2018-03-27'),

    (46,
    26,
    'Physician',
    '245867594',
    '2017-05-23',
    '2019-06-23'),

    (47,
    27,
    'Teacher',
    '275849594',
    '2018-01-05',
    '2019-01-05'
);


INSERT INTO Volunteer (
    idPerson,
    weeklyHours )

VALUES
   (2, 10),
   (3, 4),
   (4, 7),
   (5, 20),
   (12, 10),
   (19, 2),
   (21, 5),
   (25, 3),
   (29, 6),
   (25, 3),
   (46, 6),
   (47, 7),
   (30, 5),
   (33, 6),
   (35,2
);


INSERT INTO WorkArea (
    idWorkArea,
    name )

VALUES
    (1,
    'Dog Walking'),
    (2,
    'Cleaning'),
    (3,
    'Peting'),
    (4,
    'Animal Rescuing'),
    (5,
    'Vet Appointment'),
    (6,
    'Social Media'),
    (7,
    'Feeding'
);


INSERT INTO Adopter (
    idPerson,
    nif )

VALUES
    (11,
    '245343213'),
    (8,
    '254657678'),
    (9,
    '298765456'),
    (20,
    '298957670'),
    (26,
    '298768966'),
    (33,
    '254679887'),
    (35,
    '298786676'),
    (30,
    '200963224'),
    (10,
    '234567745'
);
   

INSERT INTO OrganizationContributor (
    idOrganization,
    idPerson )

VALUES
    (1, 1),
    (1, 6),
    (1, 7),
    (1, 22),
    (1, 24),
    (1, 32),
    (1, 34),
    (1, 25),
    (1, 27),
    (1, 20),
    (1, 28),
    (1, 17),
    (1, 30),
    (1, 36),
    (1, 37),
    (1, 38),
    (1, 39),
    (1, 40),
    (1, 41),
    (1, 42),
    (1, 43),
    (1, 44),
    (1, 45),
    (1, 46),
    (1, 47
);
    
    
INSERT INTO Donation (
    idDonation,
    type,
    amount,
    frequency,
    idOrganization,
    idPerson )

VALUES
    (1,
    'food',
    15,
    2,
    1,
    13),

    (2,
    'toys',
    5,
    1,
    1,
    14),

    (3,
    'other',
    3,
    2,
    1,
    10),

    (4,
    'other',
    4,
    1,
    1,
    23),

    (5,
    'money',
    50,
    2,
    1,
    33),

    (6,
    'money',
    100,
    1,
    1,
    15
);


INSERT INTO AnimalShelter (
    idAnimalShelter,
    AnimalType,
    street,
    addressDetails,
    postalCodeRegion,
    postalCodeCity,
    phone,
    idOrganization )

VALUES
    (1,
    'cat',
    'Rua das Amoras',
    '23 R/C Dir.',
    4400,
    143,
    '916756687',
    1),

    (2,
    'dog',
    'Rua Martins Almada',
    '95 - R/C Frente',
    4000,
    451,
    '939004314',
    1
);


INSERT INTO AnimalShelterVolunteerWorkArea (
    idAnimalShelter,
    idPerson,
    idWorkArea )

VALUES
    (1, 2, 2),
    (1, 2, 4),
    (2, 3, 1),
    (1, 3, 7),
    (1, 4, 2),
    (2, 4, 5),
    (1, 5, 3),
    (2, 12, 4),
    (1, 19, 3),
    (2, 19, 7),
    (2, 21, 3),
    (1, 21, 5),
    (2, 21, 4),
    (1, 25, 2),
    (1, 25, 7),
    (2, 29, 3),
    (1, 29, 6),
    (1, 29, 5),
    (1, 30, 7),
    (2, 46, 3),
    (1, 46, 3),
    (2, 47, 7),
    (1, 47, 6),
    (1, 33, 7),
    (2, 35, 4
);


INSERT INTO Animal (
    idAnimal,
    name,
    arrivalDate,
    size,
    color,
    gender,
    birthDate,
    sterilized,
    health,
    idAnimalShelter )
    
VALUES
    (1, -- A
    'Shakira',
    '2018-09-01',
    'medium',
    'black',
    'female',
    '2018-01-01',
    1,
    'FIV',
    1),

    (2, -- G
    'Golias',
    '2019-04-01',
    'large',
    'black',
    'male',
    '2018-07-01',
    1,
    '',
    1),
    
    (3,
    'Zeca',
    '2018-09-01',
    'large',
    'white',
    'male',
    '2018-01-01',
    1,
    'Obesity',
    1),

    (4,
    'Baunilha',
    '2019-04-01',
    'medium',
    'yellow',
    'female',
    '2018-05-01',
    1,
    '',
    1),

    (5,
    'Tininha',
    '2015-05-15',
    'medium',
    'white',
    'female',
    '2012-01-22',
    1,
    'FEL',
    1),

    (6, -- G
    'Maluma',
    '2019-01-15',
    'medium',
    'white',
    'male',
    '2018-09-22',
    1,
    '',
    1),
    
    (7, -- G
    'Nina',
    '2018-12-15',
    'small',
    'brown',
    'female',
    '2018-05-21',
    1,
    '',
    1),

    (8, -- A
    'Malaquias',
    '2009-02-30',
    'medium',
    'yellow',
    'male',
    '2007-06-10',
    1,
    'Kidney failure',
    1),

    (9,
    'Piper',
    '2019-02-30',
    'small',
    'black',
    'female',
    '2014-01-24',
    1,
    '',
    2),

    (10, -- A
    'Ary',
    '2019-03-14',
    'medium',
    'white',
    'male',
    '2019-02-24',
    0,
    '',
    2),

    (11,
    'Mint',
    '2019-03-14',
    'medium',
    'white',
    'female',
    '2019-02-24',
    0,
    '',
    2),

    (12, -- G
    'Marley',
    '2019-03-26',
    'small',
    'yellow',
    'male',
    '2016-11-12',
    1,
    '',
    2),

    (13,
    'Scott',
    '2019-01-26',
    'large',
    'brown',
    'male',
    '2013-06-17',
    0,
    '',
    2),

    (14, -- G
    'Carlota',
    '2018-12-30',
    'small',
    'brown',
    'female',
    '2018-03-10',
    1,
    '',
    2),

    (15, -- A
    'Silas',
    '2009-11-22',
    'small',
    'brown',
    'female',
    '2005-01-24',
    1,
    '',
    2),

    (16,
    'Tripe',
    '2016-11-22',
    'medium',
    'black and white',
    'male',
    '2012-01-24',
    1,
    'Amputated limb',
    1),
    
    (17, -- A
    'Sassy',
    '2018-09-12',
    'small',
    'black',
    'male',
    '2018-01-24',
    1,
    'Megaesophagus',
    1),

    (18,
    'Mommy',
    '2015-03-14',
    'medium',
    'brown',
    'female',
    '2014-01-24',
    1,
    '',
    1),

    (19,
    'Maria',
    '2017-03-14',
    'small',
    'calico',
    'female',
    '2016-11-02',
    1,
    '',
    1),
    
    (20, -- A
    'Fúria',
    '2016-03-14',
    'small',
    'black',
    'female',
    '2016-01-02',
    1,
    '',
    1),

    (21,
    'Mancha',
    '2018-03-14',
    'small',
    'white',
    'female',
    '2017-01-22',
    1,
    '',
    2),

    (22, -- G
    'Flor',
    '2018-03-14',
    'small',
    'white',
    'female',
    '2015-11-17',
    1,
    '',
    2),

    (23,
    'Princesa',
    '2015-03-14',
    'large',
    'black',
    'female',
    '2012-11-17',
    1,
    '',
    2),

    (24, -- A
    'Ronaldo',
    '2019-04-14',
    'small',
    'grey',
    'male',
    '2019-02-17',
    1,
    '',
    2),

    (25,
    'Piratinha',
    '2017-04-14',
    'small',
    'white',
    'female',
    '2017-02-17',
    1,
    'Reduced eyesight',
    2),

    (26,
    'Camões',
    '2016-07-05',
    'large',
    'brown',
    'male',
    '2013-01-01',
    1,
    'Reduced eyesight',
    2),

    (27,
    'Romeu',
    '2016-05-15',
    'large',
    'brown',
    'male',
    '2015-07-21',
    1,
    'Reduced eyesight',
    2),

    (28,
    'Helder',
    '2018-12-19',
    'large',
    'calico',
    'male',
    '2016-07-07',
    1,
    'FIV',
    1),

    (29,
    'Riscas',
    '2014-02-19',
    'large',
    'brown',
    'male',
    '2012-10-09',
    1,
    'FIV, FEL',
    1),

    (30,
    'Blacky',
    '2018-02-19',
    'large',
    'black',
    'male',
    '2016-10-09',
    1,
    '',
    1),
    
    (31, -- G
    'Night',
    '2017-12-19',
    'large',
    'black',
    'male',
    '2015-10-12',
    1,
    '',
    1),

    (32,
    'Grumpy Face',
    '2017-11-29',
    'small',
    'white',
    'female',
    '2018-07-12',
    1,
    '',
    1),

    (33,
    'Peluda',
    '2018-11-29',
    'medium',
    'white',
    'female',
    '2016-07-12',
    1,
    '',
    2),

    (34,
    'Marisol',
    '2011-11-29',
    'medium',
    'calico',
    'female',
    '2009-03-12',
    1,
    '',
    2),

    (35, -- A
    'Manchinha',
    '2018-01-09',
    'small',
    'calico',
    'female',
    '2017-12-27',
    1,
    '',
    1),

    (36,
    'Java',
    '2019-02-09',
    'medium',
    'calico',
    'female',
    '2018-07-27',
    1,
    '',
    1),

    (37,
    'Boneca',
    '2019-03-09',
    'large',
    'grey',
    'female',
    '2019-01-27',
    1,
    '',
    1),


    (38,
    'Suricata',
    '2015-03-09',
    'small',
    'orange',
    'male',
    '2014-01-27',
    1,
    '',
    1),

    (39, -- A
    'Matrafona',
    '2017-06-19',
    'small',
    'calico',
    'female',
    '2017-01-27',
    1,
    '',
    2),

    (40,
    'Tora',
    '2006-07-23',
    'large',
    'brown',
    'female',
    '2006-04-23',
    1,
    '',
    2
);


INSERT INTO Adoption (
    idPerson,
    idAnimal,
    adoptionDate )

VALUES
    (11, 1, '2019-03-11'),
    (8, 10, '2019-03-11'),
    (9, 15, '2016-08-09'),
    (20, 39, '2019-01-19'),
    (26, 17, '2017-05-01'),
    (33, 35, '2018-10-23'),
    (35, 21, '2018-08-18'),
    (30, 24, '2015-01-30'),
    (10, 8, '2017-11-21'
);
   

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
    (15, 2),
    (16, 1),
    (17, 2),
    (18, 1),
    (19, 3),
    (20, 2),
    (21, 1),
    (22, 2),
    (23, 3),
    (24, 3),
    (25, 2),
    (26, 1),
    (27, 2),
    (28, 1),
    (29, 3),
    (30, 2),
    (31, 1),
    (32, 2),
    (33, 3),
    (34, 3),
    (35, 2),
    (36, 1),
    (37, 2),
    (38, 1),
    (39, 3),
    (40, 2
);


INSERT INTO Guardian (
    idAnimal,
    idPerson,
    monthlyAllowance )

VALUES
    (2, 16, 15),
    (6, 17, 40),
    (30, 31, 17),
    (7, 34, 30),
    (12, 20, 15),
    (14, 8, 25),
    (22, 18, 20),
    (19, 1, 30
);