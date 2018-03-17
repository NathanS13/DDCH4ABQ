-- MySQL Script generated by MySQL Workbench
-- Sat Mar 17 14:23:06 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DDCH4ABQ
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DDCH4ABQ
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DDCH4ABQ` DEFAULT CHARACTER SET utf8 ;
USE `DDCH4ABQ` ;

-- -----------------------------------------------------
-- Table `DDCH4ABQ`.`user_login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DDCH4ABQ`.`user_login` ;

CREATE TABLE IF NOT EXISTS `DDCH4ABQ`.`user_login` (
  `idUserLogin` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `eLogin_Id` VARCHAR(100) NOT NULL,
  `ePassword` VARCHAR(100) NOT NULL,
  `eDisplay_Name` VARCHAR(100) NULL,
  `Accepted_Terms` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`idUserLogin`),
  UNIQUE INDEX `User_ID_UNIQUE` (`idUserLogin` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DDCH4ABQ`.`user_profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DDCH4ABQ`.`user_profile` ;

CREATE TABLE IF NOT EXISTS `DDCH4ABQ`.`user_profile` (
  `idUser_Profile` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUserLogin` BIGINT UNSIGNED NOT NULL,
  `eName` VARCHAR(200) NOT NULL,
  `Giver` TINYINT NOT NULL DEFAULT 0,
  `Looker` TINYINT NOT NULL DEFAULT 0,
  `eDescription` VARCHAR(1024) NULL,
  `eAddress` VARCHAR(200) NULL,
  `eCity` VARCHAR(200) NULL,
  `eState` VARCHAR(200) NULL,
  `eZip` VARCHAR(200) NULL,
  `ePhone_Number` VARCHAR(200) NULL,
  `eEmail` VARCHAR(200) NULL,
  PRIMARY KEY (`idUser_Profile`),
  UNIQUE INDEX `eId_profile_UNIQUE` (`idUser_Profile` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DDCH4ABQ`.`requests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DDCH4ABQ`.`requests` ;

CREATE TABLE IF NOT EXISTS `DDCH4ABQ`.`requests` (
  `idRequests` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUserLogin` BIGINT UNSIGNED NOT NULL,
  `eTitle` VARCHAR(45) NOT NULL,
  `eDescription` VARCHAR(45) NOT NULL,
  `StartTime` BIGINT NULL,
  `EndTime` BIGINT NULL,
  `completed` TINYINT NOT NULL DEFAULT 0,
  `Giver` TINYINT NOT NULL DEFAULT 0,
  `Looker` TINYINT NOT NULL DEFAULT 0,
  `Foundation` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`idRequests`),
  UNIQUE INDEX `idRequests_UNIQUE` (`idRequests` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DDCH4ABQ`.`giver`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DDCH4ABQ`.`giver` ;

CREATE TABLE IF NOT EXISTS `DDCH4ABQ`.`giver` (
  `idGiver` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUserLogin` BIGINT NOT NULL,
  `eDescription` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGiver`),
  UNIQUE INDEX `idgiver_skillset_UNIQUE` (`idGiver` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DDCH4ABQ`.`looker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DDCH4ABQ`.`looker` ;

CREATE TABLE IF NOT EXISTS `DDCH4ABQ`.`looker` (
  `idlooker` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUserLogin` BIGINT NOT NULL,
  `eDescription` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idlooker`),
  UNIQUE INDEX `idlooker_UNIQUE` (`idlooker` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;