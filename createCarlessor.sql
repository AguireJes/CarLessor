-- MySQL Script generated by MySQL Workbench
-- Tue Apr  7 00:11:05 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema carlessor
-- -----------------------------------------------------
-- Alquiler de autos
DROP SCHEMA IF EXISTS `carlessor` ;

-- -----------------------------------------------------
-- Schema carlessor
--
-- Alquiler de autos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carlessor` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `carlessor` ;

-- -----------------------------------------------------
-- Table `carlessor`.`login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carlessor`.`login` ;

CREATE TABLE IF NOT EXISTS `carlessor`.`login` (
  `idlogin` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(12) NOT NULL,
  `password` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`idlogin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carlessor`.`autos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carlessor`.`autos` ;

CREATE TABLE IF NOT EXISTS `carlessor`.`autos` (
  `idautos` INT NOT NULL AUTO_INCREMENT,
  `imagen` VARCHAR(60) NULL,
  `modelo` VARCHAR(12) NULL,
  `año` VARCHAR(4) NULL,
  `tarifadia` DOUBLE NULL,
  `descripcion` VARCHAR(300) NULL,
  `stock` INT NULL,
  `diaalquilado` INT NULL,
  `cantidadauto` INT NULL,
  `subtotal` DOUBLE NOT NULL DEFAULT 0.00,
  `descuento` DOUBLE NOT NULL DEFAULT 0.00,
  `total` DOUBLE NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`idautos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carlessor`.`compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carlessor`.`compra` ;

CREATE TABLE IF NOT EXISTS `carlessor`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `sexo` CHAR(1) NOT NULL,
  `cobertura` CHAR(1) NOT NULL,
  `csubtotal` DOUBLE NOT NULL DEFAULT 0.00,
  `cdescuento` DOUBLE NOT NULL DEFAULT 0.00,
  `ctotal` DOUBLE NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`idcompra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carlessor`.`cobertura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carlessor`.`cobertura` ;

CREATE TABLE IF NOT EXISTS `carlessor`.`cobertura` (
  `idcobertura` INT NOT NULL AUTO_INCREMENT,
  `tipo` CHAR(1) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `valor` DOUBLE NULL,
  PRIMARY KEY (`idcobertura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carlessor`.`autos_has_compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carlessor`.`autos_has_compra` ;

CREATE TABLE IF NOT EXISTS `carlessor`.`autos_has_compra` (
  `autos_idautos` INT NOT NULL,
  `compra_idcompra` INT NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `carlessor`.`cobertura`
-- -----------------------------------------------------

INSERT INTO `carlessor`.`cobertura` (`tipo`, `descripcion`, `valor`) VALUES ('C', 'Completo', 35);
INSERT INTO `carlessor`.`cobertura` (`tipo`, `descripcion`, `valor`) VALUES ('P', 'Parcial', 15);

-- -----------------------------------------------------
-- Data `carlessor`.`autos`
-- -----------------------------------------------------
INSERT INTO `carlessor`.`autos`(`imagen`,`modelo`,`año`,`tarifadia`,`descripcion`,`stock`, `cantidadauto`,`diaalquilado`,`subtotal`,`descuento`,`total`) VALUES('images/honda.jpg','BMW','2020',100,'Cinco asientos con acabados de lujo y bolsas de aires.',5,null,null,0.00,0.00,0.00);
INSERT INTO `carlessor`.`autos`(`imagen`,`modelo`,`año`,`tarifadia`,`descripcion`,`stock`,`cantidadauto`,`diaalquilado`,`subtotal`,`descuento`,`total`)  VALUES('images/bmw.jpg','HONDA','2020',75,'Cinco asientos, acabado deportivo y bolsas de aires.',10,null,null,0.00,0.00,0.00);
INSERT INTO `carlessor`.`autos`(`imagen`,`modelo`,`año`,`tarifadia`,`descripcion`,`stock`,`cantidadauto`,`diaalquilado`,`subtotal`,`descuento`,`total`)  VALUES('images/toyota.jpg','TOYOTA','2018',68.78,'Cinco asiento y siete bolsas de airte y  sistema Toyota Safety Sense.',3,null,null,0.00,0.00,0.00);
INSERT INTO `carlessor`.`autos`(`imagen`,`modelo`,`año`,`tarifadia`,`descripcion`,`stock`,`cantidadauto`,`diaalquilado`,`subtotal`,`descuento`,`total`) VALUES('images/mitsubishi.jpg','MITSUBISHI','2017',45.65,'Cinco asientos acabados estándar y bolsas de aires.',2,null,null,0.00,0.00,0.00);
INSERT INTO `carlessor`.`autos`(`imagen`,`modelo`,`año`,`tarifadia`,`descripcion`,`stock`,`cantidadauto`,`diaalquilado`,`subtotal`,`descuento`,`total`)  VALUES('images/lexus.jpg','LEXUS','2019',259.98,'Cinco asientos con acabados de lujo y cristal panoramico.',3,null,null,0.00,0.00,0.00);

show tables;
select * from carlessor.login;
select * from carlessor.autos;
select * from carlessor.autos_has_compra;
