-- Trebuie să creați un script pentru crearea bazei de date: online_store
DROP DATABASE IF EXISTS online_store ;
CREATE DATABASE online_store;
-- Acest script va șterge baza de date existentă dacă există.
-- Trebuie creat un script pentru a crea tabelul computer_parts \
CREATE TABLE computer_parts ( id INT PRIMARY KEY AUTO_INCREMENT,
-- Acest tabel ar trebui să conțină informații despre
-- ID-ul dispozitivului
-- Cheie primară, se autoincrementează
cod VARCHAR(5),
-- codul dispozitivului
-- este format din maxim 5 caractere
tip VARCHAR(255) DEFAULT 'Electronic',
-- tipul dispozitivului
-- default 'Electronic'
nume VARCHAR(100) UNIQUE NOT NULL,
-- numele dispozitivului
-- unic , not null
pret DECIMAL (7,2));
-- prețul dispozitivului.
-- are maxim 7 cifre, și 2 după virgulă
USE online_store;
SELECT * FROM computer_parts;

INSERT INTO computer_parts SET nume = 'cablu', pret = 54.23;
SELECT * FROM computer_parts;
