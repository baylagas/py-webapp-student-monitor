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


CREATE TABLE `esendb`.`organization_student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `organizationid` INT NOT NULL,
  `studentid` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_os_organization_idx` (`organizationid` ASC) VISIBLE,
  INDEX `fk_os_student_idx` (`studentid` ASC) VISIBLE,
  CONSTRAINT `fk_os_organization`
    FOREIGN KEY (`organizationid`)
    REFERENCES `esendb`.`organization` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_os_student`
    FOREIGN KEY (`studentid`)
    REFERENCES `esendb`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

/* organization 1 */
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,1);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,2);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,3);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,4);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,5);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,6);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,7);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,8);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,9);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,10);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,11);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,12);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,13);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,14);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,15);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,16);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,17);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,18);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,19);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,20);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,21);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,22);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,23);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,24);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,25);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,26);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,27);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,28);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,29);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,30);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,31);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,32);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,33);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,34);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,35);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,36);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,37);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,38);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,39);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,40);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,41);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,42);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,43);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,44);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,45);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,46);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,47);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,48);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,49);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,50);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,51);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,52);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,53);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,54);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,1,55);

/* organization 2 */
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,56);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,57);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,58);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,59);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,60);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,61);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,62);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,63);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,64);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,65);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,66);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,67);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,68);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,69);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,70);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,71);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,72);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,73);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,74);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,75);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,76);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,77);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,78);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,79);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,80);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,81);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,82);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,83);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,84);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,85);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,86);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,87);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,88);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,89);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,90);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,91);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,92);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,93);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,94);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,95);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,96);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,97);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,98);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,99);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,100);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,101);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,102);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,103);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,104);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,105);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,106);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,107);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,108);
INSERT INTO `esendb`.`organization_student`(`id`,`organizationid`,`studentid`) VALUES(0,2,109);
