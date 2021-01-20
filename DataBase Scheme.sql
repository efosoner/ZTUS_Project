-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Sty 2021, 18:13
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mydb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `startDate` datetime DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `caseID` varchar(45) NOT NULL,
  `CLIENT_id` int(11) DEFAULT NULL,
  `ownName` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `department` varchar(45) NOT NULL,
  `company` varchar(45) NOT NULL,
  `docID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `note` text DEFAULT NULL,
  `is_company` tinyint(4) NOT NULL DEFAULT 0,
  `vat_number` varchar(13) DEFAULT NULL,
  `company_name` varchar(128) DEFAULT NULL,
  `USER_id` int(11) NOT NULL,
  `USER_id1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `client_detail`
--

CREATE TABLE `client_detail` (
  `CLIENT_id` int(11) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `street_number` varchar(8) NOT NULL,
  `apartment_number` varchar(8) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `country` varchar(45) NOT NULL,
  `country_iso` varchar(2) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `created` datetime NOT NULL,
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `CASE_id` int(11) NOT NULL,
  `location` varchar(256) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `last_edit_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `type` enum('add','delete','edit','remove','login') NOT NULL,
  `table_name` enum('CLIENT','CASE','DOCUMENT','REMINDER','ADDRESS_DETAIL','PERMISSION','USER') DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `USER_id` int(11) NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permission`
--

CREATE TABLE `permission` (
  `USER_id` int(11) NOT NULL,
  `can_edit` tinyint(4) NOT NULL DEFAULT 0,
  `can_add` tinyint(4) NOT NULL DEFAULT 0,
  `can_delete` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reminder`
--

CREATE TABLE `reminder` (
  `id` int(11) NOT NULL,
  `remind_before` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `remind_user` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `passwordValue` varchar(64) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `passwordValue`, `is_active`, `name`, `username`, `is_admin`) VALUES
(0, 'idsbdofficial@gmail.com', '1234', 1, '', 'root', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cases`
--
ALTER TABLE `cases`
  ADD UNIQUE KEY `number_UNIQUE` (`caseID`),
  ADD KEY `fk_CASE_USER1_idx` (`owner`),
  ADD KEY `fk_CASE_CLIENT1_idx` (`CLIENT_id`),
  ADD KEY `fk_CASE_USER2_idx` (`created_by`),
  ADD KEY `fk_CASE_USER3_idx` (`edited_by`);

--
-- Indeksy dla tabeli `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_CLIENT_USER1_idx` (`USER_id`),
  ADD KEY `fk_CLIENT_USER2_idx` (`USER_id1`);

--
-- Indeksy dla tabeli `client_detail`
--
ALTER TABLE `client_detail`
  ADD PRIMARY KEY (`CLIENT_id`),
  ADD KEY `fk_CLIENT_DETAIL_CLIENT1_idx` (`CLIENT_id`);

--
-- Indeksy dla tabeli `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`,`CASE_id`),
  ADD KEY `fk_DOCUMENT_CASE1_idx` (`CASE_id`),
  ADD KEY `fk_DOCUMENT_USER1_idx` (`added_by`),
  ADD KEY `fk_DOCUMENT_USER2_idx` (`last_edit_by`);

--
-- Indeksy dla tabeli `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_LOG_USER1_idx` (`USER_id`);

--
-- Indeksy dla tabeli `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`USER_id`),
  ADD KEY `fk_PERMISSION_USER_idx` (`USER_id`);

--
-- Indeksy dla tabeli `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_REMINDER_USER1_idx` (`remind_user`),
  ADD KEY `fk_REMINDER_USER2_idx` (`created_by`),
  ADD KEY `fk_REMINDER_USER3_idx` (`edited_by`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `fk_CASE_CLIENT1` FOREIGN KEY (`CLIENT_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CASE_USER1` FOREIGN KEY (`owner`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CASE_USER2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CASE_USER3` FOREIGN KEY (`edited_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_CLIENT_USER1` FOREIGN KEY (`USER_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CLIENT_USER2` FOREIGN KEY (`USER_id1`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `client_detail`
--
ALTER TABLE `client_detail`
  ADD CONSTRAINT `fk_CLIENT_DETAIL_CLIENT1` FOREIGN KEY (`CLIENT_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fk_DOCUMENT_CASE1` FOREIGN KEY (`CASE_id`) REFERENCES `cases` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DOCUMENT_USER1` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DOCUMENT_USER2` FOREIGN KEY (`last_edit_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_LOG_USER1` FOREIGN KEY (`USER_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `fk_PERMISSION_USER` FOREIGN KEY (`USER_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `reminder`
--
ALTER TABLE `reminder`
  ADD CONSTRAINT `fk_REMINDER_USER1` FOREIGN KEY (`remind_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REMINDER_USER2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REMINDER_USER3` FOREIGN KEY (`edited_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
