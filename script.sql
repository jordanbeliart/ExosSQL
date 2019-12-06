-- Exos SQL
-- Partie 1
-- Exo 1
CREATE DATABASE `languages`;
-- Exo 2
CREATE DATABASE IF NOT EXISTS `webDevelopment`;
-- Exo 3
CREATE DATABASE IF NOT EXISTS `frameworks`;
-- Exo 4
DROP DATABASE `languages`;
-- Exo 5
DROP DATABASE IF EXISTS `frameworks`;
-- Partie 2
-- Exo 1
CREATE TABLE `languages`
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  languages VARCHAR(100)
);
-- Exo 2
CREATE TABLE `tools`
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  tool VARCHAR(100)
);
-- Exo 3
CREATE TABLE IF NOT EXISTS `frameworks`
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100)
);
-- Exo 4
DROP TABLE IF EXISTS `tools`;
-- Exo 5
CREATE TABLE IF NOT EXISTS `clients`
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lastname VARCHAR(50),
  firstname VARCHAR(50),
  birthdate DATE,
  address VARCHAR(100),
  phone INT,
  mail VARCHAR(150)
);
-- Partie 3
-- Exo 1
ALTER TABLE `languages`
ADD versions VARCHAR(15);
-- Exo 2
ALTER TABLE `frameworks`
ADD version INT;
-- Exo 3
ALTER TABLE `languages`
CHANGE languages version VARCHAR(100);
-- Exo 4
ALTER TABLE `languages`
MODIFY version VARCHAR(10);
-- Exo 5
ALTER TABLE `clients`
CHANGE phone phoneNumber INT;
ALTER TABLE `clients`
MODIFY phoneNumber VARCHAR(10);
-- Partie 4
-- Exo 1
INSERT INTO `languages`(id, version)
VALUES
('JavaScript', 'version 5'),
('PHP', 'version 5.2'),
('PHP', 'version 5.4'),
('HTML', 'version 5.1'),
('JavaScript', 'version 6'),
('JavaScript', 'version 7'),
('JavaScript', 'version 8'),
('PHP', 'version 7');
-- Exo 2
INSERT INTO `frameworks`(name, version)
VALUES
('Symfony', 'version 2.8'),
('Symfony', 'version 3'),
('Jquery', 'version 1.6'),
('Jquery', 'version 2.10');
-- Partie 5
-- Exo 1
