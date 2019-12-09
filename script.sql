-- Exos SQL
---------------------- Partie 1
---------------------- Exo 1
CREATE DATABASE `languages`;
---------------------- Exo 2
CREATE DATABASE `webDevelopment` CHARACTER SET 'utf8';
CREATE DATABASE `webDevelopment` CHARSET='utf8';
---------------------- Exo 3 (meilleure pratique de création de base de données)
CREATE DATABASE IF NOT EXISTS `frameworks` CHARSET='utf8';
---------------------- Exo 4 (!!!ATTENTION!!! Supprime de façon définitive les données)
DROP DATABASE `languages`;
---------------------- Exo 5
DROP DATABASE IF EXISTS `frameworks`;
---------------------- Partie 2
---------------------- Exo 1
USE `webDevelopment`;
CREATE TABLE `languages`
(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(20)
);
---------------------- Exo 2
USE `webDevelopment`;
CREATE TABLE `tools`
(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `tool` VARCHAR(20)
);
---------------------- Exo 3
USE `webDevelopment`;
CREATE TABLE IF NOT EXISTS `frameworks`
(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(100)
);
---------------------- Exo 4
USE `webDevelopment`;
DROP TABLE IF EXISTS `tools`;
---------------------- Exo 5
USE `webDevelopment`;
CREATE TABLE IF NOT EXISTS `clients`
(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `lastname` VARCHAR(50),
  `firstname` VARCHAR(50),
  `birthdate` DATE,
  `address` VARCHAR(100),
  `phone` INT, -- à mettre en type VARCHAR pour éviter que les 0 sautent
  `mail` VARCHAR(150)
);
---------------------- Partie 3
---------------------- Exo 1
USE `webDevelopment`;
ALTER TABLE `languages`
  ADD `versions` VARCHAR(15);
---------------------- Exo 2
USE `webDevelopment`;
ALTER TABLE `frameworks`
  ADD `version` INT;
---------------------- Exo 3
USE `webDevelopment`;
ALTER TABLE `languages`
  CHANGE `versions` `version` VARCHAR(20);
---------------------- Exo 4
USE `webDevelopment`;
ALTER TABLE `frameworks`
  MODIFY `version` VARCHAR(15);
---------------------- Exo 5
USE `webDevelopment`;
ALTER TABLE `clients`
  -- on peut modifier directement le type de 'phoneNumber' dès le changement de nom
  -- comme ceci >>>> CHANGE `phone` `phoneNumber` VARCHAR(10);
  -- sinon :
  CHANGE `phone` `phoneNumber` INT;
ALTER TABLE `clients`
  MODIFY `phoneNumber` VARCHAR(10);
---------------------- Partie 4
---------------------- Exo 1
USE `webDevelopment`;
INSERT INTO `languages`(`name`, `version`)
  VALUES
    ('JavaScript', 'version 5'),
    ('PHP', 'version 5.2'),
    ('PHP', 'version 5.4'),
    ('HTML', 'version 5.1'),
    ('JavaScript', 'version 6'),
    ('JavaScript', 'version 7'),
    ('JavaScript', 'version 8'),
    ('PHP', 'version 7');
---------------------- Exo 2
USE `webDevelopment`;
INSERT INTO `frameworks`(`name`, `version`)
  VALUES
    ('Symfony', 'version 2.8'),
    ('Symfony', 'version 3'),
    ('Jquery', 'version 1.6'),
    ('Jquery', 'version 2.10');
---------------------- Partie 5
---------------------- Exo 1
USE `webdevelopment`;
SELECT *
  FROM `languages`
    ORDER BY `name`, `version`;
---------------------- Exo 2
USE `webdevelopment`;
SELECT *
  FROM `languages`
    WHERE `name`='PHP';
---------------------- Exo 3
USE `webdevelopment`;
SELECT *
  FROM `languages`
    WHERE `name`!='PHP';
---------------------- Exo 4
USE `webdevelopment`;
SELECT *
  FROM `languages`
    WHERE `name`='JavaScript' OR `name`='PHP';
---------------------- Exo 5
USE `webdevelopment`;
SELECT *
  FROM `frameworks`
    WHERE `version` LIKE 'version 2%';
---------------------- Exo 6
USE `webdevelopment`;
SELECT *
  FROM `frameworks`
    WHERE `id` IN (1, 3);
---------------------- Partie 6
---------------------- Exo 1
USE `webdevelopment`;
DELETE FROM `languages`
  WHERE `name`='HTML';
---------------------- Exo 2
USE `webdevelopment`;
UPDATE `frameworks`
  SET `name` = 'Symfony2'
    WHERE `name` = 'Symfony';
---------------------- Exo 3
USE `webdevelopment`;
UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `version` = 'version 5';
