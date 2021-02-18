-- MySQL Workbench Synchronization
-- Generated: 2021-02-18 17:24
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Helena Gomez Villegas

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `ampolla` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

CREATE TABLE IF NOT EXISTS `ampolla`.`Cliente` (
  `idCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Direccion` VARCHAR(45) NULL DEFAULT NULL,
  `Telefono` VARCHAR(11) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `FechaRegistro` DATE NULL DEFAULT NULL,
  `Cliente_idCliente` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `fk_Cliente_Cliente1_idx` (`Cliente_idCliente` ASC),
  CONSTRAINT `fk_Cliente_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `ampolla`.`Cliente` (`idCliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`DireccionProv` (
  `idDireccionProvedor` INT(11) NOT NULL AUTO_INCREMENT,
  `Calle` VARCHAR(5) NULL DEFAULT NULL,
  `Numero` INT(11) NULL DEFAULT NULL,
  `Piso` VARCHAR(5) NULL DEFAULT NULL,
  `Puerta` VARCHAR(5) NULL DEFAULT NULL,
  `Ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `CodigoPostal` VARCHAR(10) NULL DEFAULT NULL,
  `Pais` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idDireccionProvedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Gafas` (
  `idGafas` INT(11) NOT NULL AUTO_INCREMENT,
  `Marca` VARCHAR(45) NULL DEFAULT NULL,
  `graduacion` VARCHAR(20) NULL DEFAULT NULL,
  `Montura` ENUM('Pasta', 'Metalica') NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  `precio` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idGafas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Gafas_has_Provedor` (
  `Gafas_idGafas` INT(11) NOT NULL,
  `Provedor_idProvedor` INT(11) NOT NULL,
  PRIMARY KEY (`Gafas_idGafas`, `Provedor_idProvedor`),
  INDEX `fk_Gafas_has_Provedor_Provedor1_idx` (`Provedor_idProvedor` ASC),
  INDEX `fk_Gafas_has_Provedor_Gafas1_idx` (`Gafas_idGafas` ASC),
  CONSTRAINT `fk_Gafas_has_Provedor_Gafas1`
    FOREIGN KEY (`Gafas_idGafas`)
    REFERENCES `ampolla`.`Gafas` (`idGafas`),
  CONSTRAINT `fk_Gafas_has_Provedor_Provedor1`
    FOREIGN KEY (`Provedor_idProvedor`)
    REFERENCES `ampolla`.`Provedor` (`idProvedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Gafas_has_Provedor1` (
  `Gafas_idGafas` INT(11) NOT NULL,
  `Provedor_idProvedor` INT(11) NOT NULL,
  PRIMARY KEY (`Gafas_idGafas`, `Provedor_idProvedor`),
  INDEX `fk_Gafas_has_Provedor1_Provedor1_idx` (`Provedor_idProvedor` ASC),
  INDEX `fk_Gafas_has_Provedor1_Gafas1_idx` (`Gafas_idGafas` ASC),
  CONSTRAINT `fk_Gafas_has_Provedor1_Gafas1`
    FOREIGN KEY (`Gafas_idGafas`)
    REFERENCES `ampolla`.`Gafas` (`idGafas`),
  CONSTRAINT `fk_Gafas_has_Provedor1_Provedor1`
    FOREIGN KEY (`Provedor_idProvedor`)
    REFERENCES `ampolla`.`Provedor` (`idProvedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Gafas_has_Vendedor` (
  `Gafas_idGafas` INT(11) NOT NULL,
  `Vendedor_idVendedor` INT(11) NOT NULL,
  PRIMARY KEY (`Gafas_idGafas`, `Vendedor_idVendedor`),
  INDEX `fk_Gafas_has_Vendedor_Vendedor1_idx` (`Vendedor_idVendedor` ASC),
  INDEX `fk_Gafas_has_Vendedor_Gafas1_idx` (`Gafas_idGafas` ASC),
  CONSTRAINT `fk_Gafas_has_Vendedor_Gafas1`
    FOREIGN KEY (`Gafas_idGafas`)
    REFERENCES `ampolla`.`Gafas` (`idGafas`),
  CONSTRAINT `fk_Gafas_has_Vendedor_Vendedor1`
    FOREIGN KEY (`Vendedor_idVendedor`)
    REFERENCES `ampolla`.`Vendedor` (`idVendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Gafas_has_Venta` (
  `Gafas_idGafas` INT(11) NOT NULL,
  `Venta_idVenta` INT(11) NOT NULL,
  `Venta_Cliente_idCliente` INT(11) NOT NULL,
  `Venta_Vendedor_idVendedor` INT(11) NOT NULL,
  PRIMARY KEY (`Gafas_idGafas`, `Venta_idVenta`, `Venta_Cliente_idCliente`, `Venta_Vendedor_idVendedor`),
  INDEX `fk_Gafas_has_Venta_Venta1_idx` (`Venta_idVenta` ASC, `Venta_Cliente_idCliente` ASC, `Venta_Vendedor_idVendedor` ASC),
  INDEX `fk_Gafas_has_Venta_Gafas1_idx` (`Gafas_idGafas` ASC),
  CONSTRAINT `fk_Gafas_has_Venta_Gafas1`
    FOREIGN KEY (`Gafas_idGafas`)
    REFERENCES `ampolla`.`Gafas` (`idGafas`),
  CONSTRAINT `fk_Gafas_has_Venta_Venta1`
    FOREIGN KEY (`Venta_idVenta` , `Venta_Cliente_idCliente` , `Venta_Vendedor_idVendedor`)
    REFERENCES `ampolla`.`Venta` (`idVenta` , `Cliente_idCliente` , `Vendedor_idVendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Provedor` (
  `idProvedor` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Telefono` VARCHAR(11) NULL DEFAULT NULL,
  `Fax` VARCHAR(11) NULL DEFAULT NULL,
  `NIF` VARCHAR(10) NULL DEFAULT NULL,
  `DireccionProv_idDireccionProvedor` INT(11) NOT NULL,
  PRIMARY KEY (`idProvedor`),
  INDEX `fk_Provedor_DireccionProv1_idx` (`DireccionProv_idDireccionProvedor` ASC),
  CONSTRAINT `fk_Provedor_DireccionProv1`
    FOREIGN KEY (`DireccionProv_idDireccionProvedor`)
    REFERENCES `ampolla`.`DireccionProv` (`idDireccionProvedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Vendedor` (
  `idVendedor` INT(11) NOT NULL AUTO_INCREMENT,
  `NombreVendedor` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idVendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE IF NOT EXISTS `ampolla`.`Venta` (
  `idVenta` INT(11) NOT NULL,
  `Cliente_idCliente` INT(11) NOT NULL,
  `Vendedor_idVendedor` INT(11) NOT NULL,
  PRIMARY KEY (`idVenta`, `Cliente_idCliente`, `Vendedor_idVendedor`),
  INDEX `fk_Venta_Cliente1_idx` (`Cliente_idCliente` ASC),
  INDEX `fk_Venta_Vendedor1_idx` (`Vendedor_idVendedor` ASC),
  CONSTRAINT `fk_Venta_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `ampolla`.`Cliente` (`idCliente`),
  CONSTRAINT `fk_Venta_Vendedor1`
    FOREIGN KEY (`Vendedor_idVendedor`)
    REFERENCES `ampolla`.`Vendedor` (`idVendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
