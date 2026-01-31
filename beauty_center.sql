
-- Beauty Center Database
CREATE DATABASE IF NOT EXISTS `beauty_center`
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE `beauty_center`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL,
  `updated_at` timestamp NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `cities` (`name`, `active`, `created_at`, `updated_at`) VALUES
('Damascus',1,NOW(),NOW()),
('Aleppo',1,NOW(),NOW()),
('Homs',1,NOW(),NOW()),
('Hama',1,NOW(),NOW()),
('Latakia',1,NOW(),NOW()),
('Tartous',1,NOW(),NOW()),
('Daraa',1,NOW(),NOW()),
('Deir ez-Zor',1,NOW(),NOW()),
('Hasakah',1,NOW(),NOW());

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL,
  `updated_at` timestamp NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
);

INSERT INTO `users` (`name`,`email`,`password`,`type`,`created_at`,`updated_at`) VALUES
('Lama Hassan','lama@beauty.com','hashed_pass','user',NOW(),NOW()),
('System Admin','admin@beauty.com','hashed_pass','admin',NOW(),NOW()),
('Omar Khaled','omar@beauty.com','hashed_pass','cadmin',NOW(),NOW()),
('Rana Ahmad','rana@beauty.com','hashed_pass','user',NOW(),NOW());

COMMIT;
