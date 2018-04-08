-- ********** TABLE CREATION ********** --
CREATE DATABASE db_RegisteredPets;

USE db_RegisteredPets;


/******************************************************
 * Build our database tables and define their schema
 ******************************************************/
CREATE TABLE PetOwner 
(
	OwnerID INT PRIMARY KEY NOT NULL IDENTITY (101,1),
	FirstName VARCHAR(50),
	LastName VARCHAR(75),
	City VARCHAR(50),
	State VARCHAR(50)
);

CREATE TABLE RegisteredPets
(
	TagID INT PRIMARY KEY NOT NULL,
	Name VARCHAR(50),
	Species VARCHAR(50) NOT NULL,
	Breed VARCHAR(50),
	Age INT,
	Sex VARCHAR(10) NOT NULL,
	OwnerID INT NOT NULL CONSTRAINT fk_PetOwner_OwnerID FOREIGN KEY REFERENCES PetOwner(OwnerID) ON UPDATE CASCADE ON DELETE CASCADE
);


/******************************************************
 * Now that the tables are built, we populate them
 ******************************************************/
 INSERT INTO PetOwner
	(FirstName, LastName, City, State)
	VALUES
	('Denzel', 'Washington', 'Augusta', 'Maine'),
	('Tom', 'Hanks', 'Carson City', 'Nevada'),
	('Brad', 'Pitt', 'Bismark', 'North Dakota'),
	('Emma', 'Stone', 'Columbus', 'Ohio'),
	('Helen', 'Mirren', 'Cheyenne', 'Wyoming'),
	('Meryl', 'Streep', 'Helena', 'Montana'),
	('Sandra', 'Bullock', 'Seattle', 'Washington'),
	('Cate', 'Blanchett', 'Salem', 'Oregon'),
	('Matt', 'Damon', 'Raleigh', 'North Carolina'),
	('Johnny', 'Depp', 'Lincoln', 'Nebraska'),
	('John', 'Candy', 'Pierre', 'South Dakota'),
	('Chris', 'Farley', 'Olympia', 'Washington'),
	('Morgan', 'Freeman', 'Madison', 'Wisconsin'),
	('Ryan', 'Reynolds', 'Chicago', 'Illinois')
;

SELECT *
	FROM PetOwner;


INSERT INTO RegisteredPets
	(TagID, Name, Species, Breed, Age, Sex, OwnerID)
	VALUES
	(708, 'Albert', 'Dog', 'Great Dane', 2, 'Male', 101),
	(843, 'Eleanor', 'Dog', 'Dalmation', 6, 'Female', 102),
	(152, 'Harvey', 'Dog', 'Kuvasz', 1, 'Male', 103),
	(483, 'Storm', 'Dog', 'Weimaraner', 5, 'Male', 104),
	(836, 'Rusty', 'Dog', 'Vizsla', 3, 'Male', 105),
	(978, 'Rohnan', 'Dog', 'Wirehaired Pointing Griffon', 2, 'Male', 106),
	(236, 'Tala', 'Dog', 'Rhodesian Ridgeback', 8, 'Female', 107),
	(541, 'Aurora', 'Dog', 'Leonberger', 6, 'Female', 108),
	(462, 'Lincoln', 'Dog', 'Brussels Griffon', 7, 'Male', 109),
	(783, 'Twinkie', 'Dog', 'Basenji', 12, 'Female', 110),
	(342, 'Reese', 'Cat', 'Siamese', 18, 'Female', 111),
	(864, 'Ragnar', 'Dog', 'Great Dane', 1, 'Male', 111),
	(296, 'Link', 'Cat', 'Bengal', 15, 'Male', 112),
	(168, 'Oliver', 'Cat', 'Sphynx', 3, 'Male', 113),
	(975, 'Sam', 'Cat', 'Maine Coon', 7, 'Male', 114)
;