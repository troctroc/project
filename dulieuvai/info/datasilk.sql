SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `dulieuvai` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `dulieuvai` ;

-- -----------------------------------------------------
-- Table `dulieuvai`.`category`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `cat_name` VARCHAR(255) NOT NULL ,
  `order` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dulieuvai`.`Type`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`Type` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `type_name` VARCHAR(255) NOT NULL ,
  `order` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dulieuvai`.`Phannhanh`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`Phannhanh` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `pn_name` VARCHAR(255) NOT NULL ,
  `order` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dulieuvai`.`Suppliers`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`Suppliers` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `sup_name` VARCHAR(255) NOT NULL ,
  `contact` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dulieuvai`.`Silks`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`Silks` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `code` VARCHAR(45) NOT NULL ,
  `volume` INT NULL ,
  `size` INT NULL ,
  `price` FLOAT NULL ,
  `note` VARCHAR(45) NULL ,
  `image` VARCHAR(45) NULL ,
  `create` DATE NULL ,
  `update` DATE NOT NULL ,
  `Suppliers_id` INT NOT NULL ,
  `category_id` INT NOT NULL ,
  `Type_id` INT NOT NULL ,
  `Phannhanh_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_Silks_Suppliers_idx` (`Suppliers_id` ASC) ,
  INDEX `fk_Silks_category1_idx` (`category_id` ASC) ,
  INDEX `fk_Silks_Type1_idx` (`Type_id` ASC) ,
  INDEX `fk_Silks_Phannhanh1_idx` (`Phannhanh_id` ASC) ,
  CONSTRAINT `fk_Silks_Suppliers`
    FOREIGN KEY (`Suppliers_id` )
    REFERENCES `dulieuvai`.`Suppliers` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Silks_category1`
    FOREIGN KEY (`category_id` )
    REFERENCES `dulieuvai`.`category` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Silks_Type1`
    FOREIGN KEY (`Type_id` )
    REFERENCES `dulieuvai`.`Type` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Silks_Phannhanh1`
    FOREIGN KEY (`Phannhanh_id` )
    REFERENCES `dulieuvai`.`Phannhanh` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dulieuvai`.`Frame`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`Frame` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `frame_name` VARCHAR(45) NOT NULL ,
  `order` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dulieuvai`.`Country`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dulieuvai`.`Country` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `country_name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;

USE `dulieuvai` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
