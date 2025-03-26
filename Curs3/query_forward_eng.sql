-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema prima_baza_de_date
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema geografie
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema geografie
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `geografie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`facultate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`facultate` (
  `idfacultate` INT NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(255) NULL,
  `adresa` VARCHAR(45) NULL,
  PRIMARY KEY (`idfacultate`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `idstudent` INT NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(255) NOT NULL,
  `prenume` VARCHAR(255) NOT NULL,
  `grupa` ENUM("1", "2", "3", "4") NOT NULL,
  `email` VARCHAR(255) NULL,
  `data_inscrierii` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` ENUM("admis", "respins", "neevaluat") NULL DEFAULT 'neevaluat',
  `facultate_idfacultate` INT NOT NULL,
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX `nume_UNIQUE` (`nume` ASC) VISIBLE,
  UNIQUE INDEX `prenume_UNIQUE` (`prenume` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_student_facultate_idx` (`facultate_idfacultate` ASC) VISIBLE,
  CONSTRAINT `fk_student_facultate`
    FOREIGN KEY (`facultate_idfacultate`)
    REFERENCES `mydb`.`facultate` (`idfacultate`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `geografie` ;

-- -----------------------------------------------------
-- Table `geografie`.`computer_parts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `geografie`.`computer_parts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cod` VARCHAR(5) NULL DEFAULT NULL,
  `tip` VARCHAR(255) NULL DEFAULT 'Electronic',
  `nume` VARCHAR(100) NOT NULL,
  `pret` DECIMAL(7,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nume` (`nume` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `geografie`.`judete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `geografie`.`judete` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(255) NULL DEFAULT NULL,
  `cod` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nume` (`nume` ASC) VISIBLE,
  UNIQUE INDEX `cod_unic` (`cod` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
