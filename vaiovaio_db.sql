-- MySQL Script generated by MySQL Workbench
-- Tue May 28 15:12:15 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Drop Database vaiovaio
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `vaiovaio` ;

-- -----------------------------------------------------
-- Create Database vaiovaio
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `vaiovaio` DEFAULT CHARACTER SET utf8 ;
USE `vaiovaio` ;

-- -----------------------------------------------------
-- Table `vaiovaio`.`noticia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vaiovaio`.`noticia` ;

CREATE TABLE IF NOT EXISTS `vaiovaio`.`noticia` (
  `id_noticia` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(50) NOT NULL,
  `titulo` VARCHAR(200) NOT NULL,
  `encabezamiento` VARCHAR(200) NOT NULL,
  `cuerpo` VARCHAR(1000) NOT NULL,
  `estado` TINYINT(1) NULL,
  PRIMARY KEY (`id_noticia`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Insert `vaiovaio`.`noticia`
-- -----------------------------------------------------
INSERT INTO `noticia` VALUES (NULL,"Incidente","Nuevos incidentes en el Instituto Nacional","Dejan 11 personas detenidas y 3 carabineros lesionados","Personal de Fuerzas Especiales de Carabineros debió trabajar por nuevos incidentes que se registraron en las afueras del Instituto Nacional, los cuales obligaron incluso a desalojar el establecimiento.",0);
INSERT INTO `noticia` VALUES (NULL,"Mundo","Papa Francisco condena nuevamente decisión de Trump","Construir un muro en frontera con México","El papa Francisco condenó de nuevo la decisión del presidente Donald Trump de erigir un muro en la frontera entre Estados Unidos y México y reiteró que la defensa de los migrantes es una “prioridad” para su pontificado.",0);
INSERT INTO `noticia` VALUES (NULL,"Guerra","Al menos 21 civiles murieron tras bombardeos","Régimen sirio sobre bastión rebelde","Los bombardeos del régimen sirio mataron este martes a por lo menos 21 civiles, entre ellos nueve niños, en la provincia de Idlib, último bastión yihadista en Siria, y la vecina Alepo, informó una oenegé.",0);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;