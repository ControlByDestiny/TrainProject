-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema book
-- -----------------------------------------------------
-- 培训项目数据库----图书借阅平台

-- -----------------------------------------------------
-- Schema book
--
-- 培训项目数据库----图书借阅平台
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `book` DEFAULT CHARACTER SET utf8 ;
USE `book` ;

-- -----------------------------------------------------
-- Table `book`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` VARCHAR(45) NULL COMMENT '用户名',
  `password` VARCHAR(32) NULL COMMENT '用户密码',
  `email` VARCHAR(45) NULL,
  `created_time` DATETIME NULL COMMENT '创建时间',
  `updated_time` DATETIME NULL COMMENT '更新时间',
  `last_login_time` DATETIME NULL COMMENT '上次登录时间',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COMMENT = '用户信息表';


-- -----------------------------------------------------
-- Table `book`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`book` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '图书编号',
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL COMMENT '书籍名称',
  `picture` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_estonian_ci' NULL COMMENT '书籍图片',
  `owner_id` INT NULL COMMENT '图书真正拥有者id',
  `current_owner_id` INT NULL COMMENT '图书当前拥有者id',
  `created_time` DATETIME NULL COMMENT '记录创建时间',
  `updated_time` DATETIME NULL COMMENT '更新时间',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COMMENT = '图书信息表';


-- -----------------------------------------------------
-- Table `book`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `display_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COMMENT = '用户角色表';


-- -----------------------------------------------------
-- Table `book`.`function`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`function` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `display_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
COMMENT = '功能表';


-- -----------------------------------------------------
-- Table `book`.`book_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`book_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `book_id` INT NULL,
  `borrow_time` DATETIME NULL,
  `borrow_user_id` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
COMMENT = '借阅历史记录表';


-- -----------------------------------------------------
-- Table `book`.`role_function`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`role_function` (
  `role_id` INT NOT NULL,
  `function_id` INT NOT NULL,
  PRIMARY KEY (`role_id`, `function_id`))
ENGINE = MyISAM
COMMENT = '角色功能表';


-- -----------------------------------------------------
-- Table `book`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book`.`user_role` (
  `user_id` INT NOT NULL,
  `role_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COMMENT = '用户角色表';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
