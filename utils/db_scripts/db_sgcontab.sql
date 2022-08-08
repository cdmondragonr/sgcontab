CREATE SCHEMA `db_sgcontab`;
USE `db_sgcontab`;
CREATE TABLE IF NOT EXISTS `db_sgcontab`.`transaction` (
  `order` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `date` DATETIME NOT NULL,
  `row` INT NOT NULL,
  `folder` VARCHAR(5) NULL,
  `type-trsc` VARCHAR(5) NULL,
  `document` VARCHAR(15) NULL,
  `period` VARCHAR(10) NULL,
  `account` VARCHAR(10) NULL,
  `debit` INT NULL,
  `credit` INT NULL,
  `detail` VARCHAR(445) NULL,
  `creation-time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `modf-time` DATETIME NULL,
  PRIMARY KEY (`order`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE)
ENGINE = InnoDB