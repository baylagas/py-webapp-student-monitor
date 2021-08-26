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

CREATE TABLE `esendb`.`organization` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `esendb`.`organization` (`id`, `name`) VALUES ('0', 'Esen-Q2-Progra-Aplicada');

CREATE TABLE `esendb`.`assignment_repo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `type` VARCHAR(10) NOT NULL COMMENT 'can be: work or exam',
  PRIMARY KEY (`id`));

INSERT INTO `esendb`.`assignment_repo` (`id`, `name`, `type`) VALUES ('0', 'esen-q2-pa-git-intro', 'work');
INSERT INTO `esendb`.`assignment_repo` (`id`, `name`, `type`) VALUES ('0', 'esen-q2-pa-tarea1-oop', 'work');
INSERT INTO `esendb`.`assignment_repo` (`id`, `name`, `type`) VALUES ('0', 'esen-q2-pa-rest-api', 'work');
INSERT INTO `esendb`.`assignment_repo` (`id`, `name`, `type`) VALUES ('0', 'preparcial-ejer01', 'work');
INSERT INTO `esendb`.`assignment_repo` (`id`, `name`, `type`) VALUES ('0', 'preparcial-ejer02', 'work');
INSERT INTO `esendb`.`assignment_repo` (`id`, `name`, `type`) VALUES ('0', 'prograapli-parcial', 'exam');