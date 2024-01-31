DROP DATABASE IF EXISTS HumanFriends;
CREATE DATABASE HumanFriends;
USE HumanFriends;

DROP TABLE IF EXISTS TypeOfAnimal;
CREATE TABLE TypeOfAnimal (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nameType varchar(15));
 
 
INSERT INTO TypeOfAnimal(id, nameType)
values 
	(1, 'Pets'),
    (2, 'Pack animals');
    
DROP TABLE IF EXISTS AnimalsGen;
CREATE TABLE AnimalGen (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
AnimalsGen VARCHAR(25),
animals_id INT,
FOREIGN KEY (animals_id) REFERENCES TypeOfAnimal(ID) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO AnimalGen(ID, AnimalsGen, animals_id) 
VALUES
(1, 'DOG', 1), 
(2, 'CAT', 1),
(3, 'HAMSTER', 1),
(4, 'HORSE', 2),
(5, 'CAMEL', 2),
(6, 'DONKEY', 2);

DROP TABLE IF exists gender;
CREATE TABLE gender(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
GENDER CHAR(1)
);

INSERT INTO gender (id, gender) 
values (1, 'M'), (2, 'F');      

DROP TABLE IF EXISTS DOGS;
CREATE TABLE DOGS (
id INT NOT NULL AUTO_INCREMENT,
nickName varchar(20) NOT NULL, 
gender_id INT, 
AnimalGen INT, 
birth_date date NOT NULL, 
commands TEXT,
foreign key (gender_id) references gender(id),
foreign key (AnimalGen) references AnimalGen(id),
primary key (id)
);

INSERT INTO DOGS (id, nickName, AnimalGen, gender_id, birth_date, commands) VALUES 
(1, 'Bobik', 1, 1, '2020-03-05', 'Wagging, voice'),
(2, 'Sharik', 1, 1, '2022-12-15', 'Wagging, voice, sit'),
(3, 'Rex', 1, 1, '2023-03-12', 'Wagging, voice'),
(4, 'Zoya', 2, 1, '2022-12-15', 'Wagging, voice, sit');


DROP TABLE IF EXISTS CATS;
CREATE TABLE CATS (
id INT NOT NULL AUTO_INCREMENT,
nickName varchar(20) NOT NULL, 
gender_id INT, 
AnimalGen INT, 
birth_date date NOT NULL, 
commands TEXT,
foreign key (gender_id) references gender(id),
foreign key (AnimalGen) references AnimalGen(id),
primary key (id)
);

INSERT INTO CATS (id, nickName, AnimalGen, gender_id, birth_date, commands) VALUES 
(1, 'Fantik', 2, 1, '2020-03-05', 'Licking, voice'),
(2, 'Punti', 2, 2, '2022-10-10', 'Licking, voice, sit');

DROP TABLE IF EXISTS HAMSTERS;
CREATE TABLE HAMSTERS (
id INT NOT NULL AUTO_INCREMENT,
nickName varchar(20) NOT NULL, 
gender_id INT, 
AnimalGen INT, 
birth_date date NOT NULL, 
commands TEXT,
foreign key (gender_id) references gender(id),
foreign key (AnimalGen) references AnimalGen(id),
primary key (id)
);

INSERT INTO HAMSTERS (id, nickName, AnimalGen, gender_id, birth_date, commands) VALUES 
(1, 'Pelmen', 3, 1, '2022-03-05', 'RuninWheel'),
(2, 'Kotleta', 3, 2, '2021-10-10', 'RuninWheel');

DROP TABLE IF EXISTS HORSES;
CREATE TABLE HORSES (
id INT NOT NULL AUTO_INCREMENT,
nickName varchar(20) NOT NULL, 
gender_id INT, 
AnimalGen INT, 
birth_date date NOT NULL, 
commands TEXT,
foreign key (gender_id) references gender(id),
foreign key (AnimalGen) references AnimalGen(id),
primary key (id)
);

INSERT INTO HORSES (id, nickName, AnimalGen, gender_id, birth_date, commands) VALUES 
(1, 'Mers', 4, 1, '2012-03-05', 'Galop'),
(2, 'Benz', 4, 1, '2011-10-10', 'Galop'),
(3, 'Kolbasa', 4, 2, '2014-10-10', 'Galop, Jump');

DROP TABLE IF EXISTS CAMELS;
CREATE TABLE CAMELS (
id INT NOT NULL AUTO_INCREMENT,
nickName varchar(20) NOT NULL, 
gender_id INT, 
AnimalGen INT, 
birth_date date NOT NULL, 
commands TEXT,
foreign key (gender_id) references gender(id),
foreign key (AnimalGen) references AnimalGen(id),
primary key (id)
);

INSERT INTO CAMELS (id, nickName, AnimalGen, gender_id, birth_date, commands) VALUES 
(1, 'Izum', 5, 1, '2021-03-05', 'Walk, Sit'),
(2, 'Kur', 5, 1, '2019-10-10', 'Run'),
(3, 'Sobaka', 5, 2, '2019-10-10', 'Walk, Spit');

DROP TABLE IF EXISTS DONKEYS;
CREATE TABLE DONKEYS (
id INT NOT NULL AUTO_INCREMENT,
nickName varchar(20) NOT NULL, 
gender_id INT, 
AnimalGen INT, 
birth_date date NOT NULL, 
commands TEXT,
foreign key (gender_id) references gender(id),
foreign key (AnimalGen) references AnimalGen(id),
primary key (id)
);

INSERT INTO DONKEYS (id, nickName, AnimalGen, gender_id, birth_date, commands) VALUES 
(1, 'Ia', 6, 1, '2021-03-05', 'Walk, Sit'),
(2, 'Oslik', 6, 1, '2019-10-10', 'Run');

DELETE FROM CAMELS;

CREATE TABLE NEW_ANIMALS AS
SELECT * FROM HORSES
UNION ALL
SELECT * FROM DONKEYS;

CREATE TABLE YOUNG_ANIMALS AS
SELECT *, DATEDIFF(MONTH, birth_date, CURDATE()) AS age_months
FROM (
    SELECT * FROM DOGS
    UNION ALL
    SELECT * FROM CATS
    UNION ALL
    SELECT * FROM HAMSTERS
    UNION ALL
    SELECT * FROM NEW_ANIMALS
) AS all_animals
WHERE age_months BETWEEN 1 AND 3;

CREATE TABLE ALL_ANIMALS AS
SELECT * FROM YOUNG_ANIMALS
UNION ALL
SELECT * FROM (
    SELECT * FROM DOGS
    UNION ALL
    SELECT * FROM CATS
    UNION ALL
    SELECT * FROM HAMSTERS
    UNION ALL
    SELECT * FROM NEW_ANIMALS
) AS all_animals
WHERE age_months NOT BETWEEN 1 AND 3;
