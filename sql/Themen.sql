-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Erstellungszeit: 21. Feb 2023 um 15:05
-- Server-Version: 8.0.31
-- PHP-Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `library`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Themen`
--

CREATE TABLE `Themen` (
  `id` int NOT NULL,
  `thema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_class_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thema-id-von` int NOT NULL,
  `thema-id-bis` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `Themen`
--

INSERT INTO `Themen` (`id`, `thema`, `autor`, `image_class_parameter`, `thema-id-von`, `thema-id-bis`) VALUES
(1, 'Music', 'Chris', 'music', 10000, 10028),
(2, 'Chuck Norris', 'Jules', 'ch-norris', 101, 130),
(3, 'Animals', 'Daniel', 'animals', 201, 241),
(4, 'Movies', 'Cyrill', 'movies', 301, 310),
(5, 'Dungeon & Dragons', 'Tobias', 'd-n-d', 401, 430),
(6, 'Astronautics', 'Gaudenz', 'astronautics', 501, 510),
(9, 'Geography', 'Samy', 'geography', 801, 832),
(11, 'Science', 'Mayckell', 'science', 1001, 1013),
(12, 'Informatics', 'Samir', 'informatics', 1101, 1199),
(13, 'General Knowledge', 'Akram', 'gen-knowledge', 1201, 1220);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Themen`
--
ALTER TABLE `Themen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Themen`
--
ALTER TABLE `Themen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
