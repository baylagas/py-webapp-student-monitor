CREATE DATABASE `esendb`;
USE `esendb`;

CREATE TABLE `esendb`.`student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(10) NOT NULL,
  `number` INT NOT NULL,
  `firstname` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `personal_email` VARCHAR(50) NOT NULL,
  `esen_email` VARCHAR(50) NOT NULL,
  `github_account` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) INVISIBLE);
