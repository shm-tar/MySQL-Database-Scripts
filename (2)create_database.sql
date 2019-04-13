-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Insurance Group
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Insurance Group
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SQL Insurance Group` DEFAULT CHARACTER SET utf8 ;
USE `SQL Insurance Group` ;

-- -----------------------------------------------------
-- Table `Insurance Group`.`Customer info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQL Insurance Group`.`Customer info` (
  `ID` INT UNSIGNED NOT NULL,
  `First Name` CHAR(45) NOT NULL,
  `Last Name` CHAR(45) NOT NULL,
  `City` CHAR(20) NOT NULL,
  `Address` VARCHAR(20) NOT NULL,
  `State` CHAR(15) NOT NULL,
  `Phone number` VARCHAR(15) NOT NULL,
  `Credit Card` VARCHAR(20) NOT NULL,
  `Exp Date` DATE NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Insurance Group`.`Car insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQL Insurance Group`.`Car insurance` (
  `Car Policy ID` INT UNSIGNED NOT NULL,
  `ID` INT UNSIGNED NOT NULL,
  `Make` CHAR(15) NOT NULL,
  `Model` CHAR(15) NOT NULL,
  `Year` INT NOT NULL,
  `Fees` VARCHAR(20) NULL,
  `Additional Driver` VARCHAR(45) BINARY NULL,
  `Liability Amount` INT UNSIGNED NOT NULL,
  `Collision Damage Amount` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Car Policy ID`),
  INDEX `fk_Car insurance_Customer info_idx` (`ID` ASC),
  CONSTRAINT `CarInsurance_CustomerInfo`
    FOREIGN KEY (`ID`)
    REFERENCES `SQL Insurance Group`.`Customer info` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Insurance Group`.`Home insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQL Insurance Group`.`Home insurance` (
  `Home Policy ID` INT UNSIGNED NOT NULL,
  `ID` INT UNSIGNED NOT NULL,
  `Liability Amount` INT UNSIGNED NOT NULL,
  `Property Damage Amount` INT UNSIGNED NULL,
  PRIMARY KEY (`Home Policy ID`),
  INDEX `fk_Home insurance_Customer info1_idx` (`ID` ASC),
  CONSTRAINT `fk_Home insurance_Customer info1`
    FOREIGN KEY (`ID`)
    REFERENCES `SQL Insurance Group`.`Customer info` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Insurance Group`.`Life insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQL Insurance Group`.`Life insurance` (
  `Life Policy ID` INT UNSIGNED NOT NULL,
  `ID` INT UNSIGNED NOT NULL,
  `Benefit Amount` INT UNSIGNED NULL,
  PRIMARY KEY (`Life Policy ID`),
  INDEX `fk_Life insurance_Customer info1_idx` (`ID` ASC),
  CONSTRAINT `fk_Life insurance_Customer info1`
    FOREIGN KEY (`ID`)
    REFERENCES `SQL Insurance Group`.`Customer info` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Insurance Group`.`Payments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQL Insurance Group`.`Payments` (
  `Payment Transaction ID` INT UNSIGNED NOT NULL,
  `ID` INT UNSIGNED NOT NULL,
  `Due Date` DATE NOT NULL,
  `Payment Amount` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Payment Transaction ID`),
  INDEX `fk_Payments_Customer info1_idx` (`ID` ASC),
  CONSTRAINT `fk_Payments_Customer info1`
    FOREIGN KEY (`ID`)
    REFERENCES `SQL Insurance Group`.`Customer info` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Insurance Group`.`Claims`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQL Insurance Group`.`Claims` (
  `Claim Transaction ID` INT NOT NULL,
  `ID` INT UNSIGNED NOT NULL,
  `Claim Amount` INT UNSIGNED NOT NULL,
  `Claim Approved` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Claim Transaction ID`), 
  INDEX `fk_Claims_Customer info1_idx` (`ID` ASC),
  CONSTRAINT `fk_Claims_Customer info1`
    FOREIGN KEY (`ID`)
    REFERENCES `SQL Insurance Group`.`Customer info` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
