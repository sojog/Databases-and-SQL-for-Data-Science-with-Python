
SHOW DATABASES;

CREATE DATABASE angajati;

USE angajati;

CREATE TABLE dezvoltatori (id INT PRIMARY KEY, nume VARCHAR(255));

INSERT INTO dezvoltatori VALUES (1, "Ionescu");

SELECT * FROM dezvoltatori;

INSERT INTO dezvoltatori VALUES (2, "Popescu");

SELECT * FROM dezvoltatori;

INSERT INTO dezvoltatori VALUES (1, "Georgescu");

SELECT * FROM dezvoltatori;


INSERT INTO dezvoltatori VALUES (6, "Popescu");
SELECT * FROM dezvoltatori;

UPDATE dezvoltatori SET nume = "Popescu-Popescu" WHERE id=1;
SELECT * FROM dezvoltatori;

INSERT INTO dezvoltatori VALUES (3, "Georgescu");
SELECT * FROM dezvoltatori;


-- INSERT INTO dezvoltatori SET nume="Gigi";
INSERT INTO dezvoltatori SET id=7;

SELECT * FROM dezvoltatori;


CREATE TABLE studenti(id INT PRIMARY KEY AUTO_INCREMENT, nume VARCHAR(10)); 
INSERT INTO studenti VALUES (1, "Mihai");

SELECT * FROM studenti;

INSERT INTO studenti SET nume="Florin";
SELECT * FROM studenti;

INSERT INTO studenti VALUES (8, "Andreea");
SELECT * FROM studenti;

INSERT INTO studenti SET nume="Ana";
SELECT * FROM studenti;

