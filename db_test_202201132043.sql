--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.567.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 13.01.2022 20:43:25
-- Версия сервера: 8.0.24
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE test;

--
-- Удалить таблицу `buy`
--
DROP TABLE IF EXISTS buy;

--
-- Удалить таблицу `goods`
--
DROP TABLE IF EXISTS goods;

--
-- Удалить таблицу `person`
--
DROP TABLE IF EXISTS person;

--
-- Установка базы данных по умолчанию
--
USE test;

--
-- Создать таблицу `person`
--
CREATE TABLE person (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Создать таблицу `goods`
--
CREATE TABLE goods (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 6,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Создать таблицу `buy`
--
CREATE TABLE buy (
  id int NOT NULL AUTO_INCREMENT,
  goods_id int DEFAULT NULL,
  person_id int DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 7,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

-- 
-- Вывод данных для таблицы person
--
INSERT INTO person VALUES
(1, 'Иванов'),
(2, 'Петров'),
(3, 'Сидоров'),
(4, 'Каракатица');

-- 
-- Вывод данных для таблицы goods
--
INSERT INTO goods VALUES
(1, 'Соль'),
(2, 'Спички'),
(3, 'Мука'),
(4, 'Сахар'),
(5, 'Ламборджини');

-- 
-- Вывод данных для таблицы buy
--
INSERT INTO buy VALUES
(1, 1, 1),
(2, 2, 1),
(3, 5, 1),
(4, 2, 2),
(5, 3, 2),
(6, 2, 3);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;