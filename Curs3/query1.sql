-- Creati o baza de date facultate, apoi o tabelă cu numele student si câmpurile
CREATE DATABASE IF NOT EXISTS facultate;
USE facultate;
CREATE TABLE student 
	-- idstudent cheie primară
( idstudent INT PRIMARY KEY AUTO_INCREMENT,
-- nume unic, nenul
nume VARCHAR(255) NOT NULL UNIQUE,
-- prenume unic, nenul 
prenume VARCHAR(255) NOT NULL UNIQUE,
-- grupaobligatoriu, cu valori 1,2,3,4  
-- grupa INT CHECK ( grupa > 0 AND grupa < 5),
grupa INT NOT NULL CHECK ( grupa in (1,2,3,4)),
-- email -- unic
email VARCHAR(255) UNIQUE,
data_inscrierii DATETIME DEFAULT CURRENT_TIMESTAMP,
-- data_incrierii default data curentă
statut VARCHAR(11) DEFAULT 'neevaluat' 
	CHECK (statut in ('admis', 'respins', 'neevaluat'))
);

SELECT * FROM student;
INSERT INTO student SET nume = 'Georgescu', prenume = 'George', grupa = 1,
	email = 'george@facultate.ro';
SELECT * FROM student; 
-- statut
-- admis, respins, neevaluat 
-- cu valoarea default neevaluat