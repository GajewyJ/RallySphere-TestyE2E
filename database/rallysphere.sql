-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Kwi 2024, 16:47
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rallysphere`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rallies`
--

CREATE TABLE `rallies` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `beginning` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rallies`
--

INSERT INTO `rallies` (`id`, `name`, `season`, `country`, `beginning`, `end`) VALUES
(1, 'Rallye Monte-Carlo', 2024, 'Monaco', '2024-01-24', '2024-01-28'),
(2, 'WRC Rally Sweden', 2024, 'Sweden', '2024-02-15', '2024-02-18'),
(5, 'Safari Rally Kenya', 2024, 'Kenya', '2024-03-28', '2024-03-31'),
(6, 'Croatia Rally', 2024, 'Croatia', '2024-04-18', '2024-04-21'),
(7, 'Vodafone Rally de Portugal', 2024, 'Portugal', '2024-05-09', '2024-05-12'),
(8, 'Rally Italia Sardegna', 2024, 'Italy', '2024-05-30', '2024-06-02'),
(9, 'ORLEN 80th Rally Poland', 2024, 'Poland', '2024-06-27', '2024-06-30'),
(10, 'Tet Rally Latvia', 2024, 'Latvia', '2024-07-18', '2024-07-21'),
(11, 'Secto Rally Finland', 2024, 'Finland', '2024-08-01', '2024-08-04'),
(12, 'EKO Acropolis Rally Greece', 2024, 'Greece', '2024-09-05', '2024-09-08'),
(13, 'Rally Chile Bio Bío', 2024, 'Chile', '2024-09-26', '2024-09-29'),
(14, 'Central European Rally', 2024, 'Central Europe', '2024-10-17', '2024-10-20'),
(15, 'FORUM8 Rally Japan', 2024, 'Japan', '2024-11-21', '2024-11-24'),
(16, 'Rally Monte Carlo', 2023, 'Monaco', '2023-01-19', '2023-01-22'),
(17, 'Rally Sweden', 2023, 'Sweden', '2023-02-09', '2023-02-12'),
(18, 'Rally Mexico', 2023, 'Mexico', '2023-03-16', '2023-03-19'),
(19, 'Croatia Rally', 2023, 'Croatia', '2023-04-20', '2023-04-23'),
(20, 'Rally de Portugal', 2023, 'Portugal', '2023-05-11', '2023-05-14'),
(21, 'Rally Italia Sardegna', 2023, 'Italy', '2023-06-01', '2023-06-04'),
(22, 'Safari Rally Kenya', 2023, 'Kenya', '2023-06-22', '2023-06-25'),
(23, 'Rally Estonia', 2023, 'Estonia', '2023-07-20', '2023-07-23'),
(24, 'Rally Finland', 2023, 'Finland', '2023-08-03', '2023-08-06'),
(25, 'Acropolis Rally', 2023, 'Greece', '2023-09-07', '2023-09-10'),
(26, 'Rally Chile', 2023, 'Chile', '2023-09-28', '2023-10-01'),
(27, 'Central European Rally', 2023, 'Austria, Czech Republic, Germany', '2023-10-26', '2023-10-29'),
(28, 'Rally Japan', 2023, 'Japan', '2023-11-16', '2023-11-19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `basedIn` text DEFAULT NULL,
  `establishment` int(11) DEFAULT NULL,
  `principal` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `brand` text DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `teams`
--

INSERT INTO `teams` (`id`, `name`, `basedIn`, `establishment`, `principal`, `category`, `brand`, `points`) VALUES
(1, 'TOYOTA GAZOO Racing WRT', 'Japan', 2016, 'Jari-Matti Latvala', 'WRC1', 'Toyota', 131),
(2, 'Hyundai Shell Mobis WRT', 'Germany', 2012, 'Cyril Abiteboul', 'WRC1', 'Hyundai', 127),
(3, 'M-Sport Ford WRT', 'United Kingdom', 2006, 'Richard Millener', 'WRC1', 'Ford', 72),
(4, 'Toksport WRT', 'Czech Republic', 1999, 'Gus Greensmith', 'WRC2', 'Skoda', 43),
(5, 'AEC - DG Sport Competition', 'France', 2008, 'Christian Jupsin', 'WRC2', 'Citroen', 43),
(6, 'Printsport TOYOTA GAZOO Racing WRT NG', 'Finland', 1997, 'Eero Raikkonen', 'WRC2', 'Toyota', 43);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_codrivers`
--

CREATE TABLE `wrc_codrivers` (
  `id` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `team` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_codrivers`
--

INSERT INTO `wrc_codrivers` (`id`, `firstName`, `lastName`, `country`, `team`) VALUES
(1, 'Martijn', 'Wydaeghe', 'Belgium', 'Hyundai'),
(2, 'Scott', 'Martin', 'Great Britain', 'Toyota'),
(3, 'Alexandre', 'Coria', 'France', 'M-Sport Ford'),
(4, 'Martin', 'Järveoja', 'Estonia', 'Hyundai'),
(5, 'Jonne', 'Halttunen', 'Finland', 'Toyota'),
(6, 'Aaron', 'Johnston', 'Ireland', 'Toyota'),
(7, 'Vincent', 'Landais', 'France', 'Toyota'),
(8, 'Janne', 'Ferm', 'Finland', 'Hyundai'),
(9, 'Elliott', 'Edmondson', 'Great Britain', 'Skoda'),
(10, 'Enni', 'Mälkönen', 'Finland', 'Toyota'),
(11, 'Torstein', 'Eriksen', 'Norway', 'Hyundai'),
(12, 'Jonas', 'Andersson', 'Sweden', 'Skoda'),
(13, 'James', 'Morgan', 'Great Britain', 'Toyota'),
(14, 'Anssi', 'Viinikka', 'Finland', 'Toyota'),
(15, 'Maciej', 'Szczepaniak', 'Poland', 'Skoda'),
(16, 'Konstantin', 'Aleksandrov', 'ANA', 'Citroen'),
(17, 'Louis', 'Louka', 'Belgium', 'M-Sport Ford'),
(18, 'Frédéric', 'Miclotte', 'Belgium', 'M-Sport Ford'),
(19, 'David', 'Vázquez', 'Spain', 'Skoda'),
(20, 'Kristian', 'Temonen', 'Finland', 'Toyota'),
(21, 'Arnaud', 'Dunand', 'France', 'Citroen'),
(22, 'Janni', 'Hussi', 'Finland', 'Skoda'),
(23, 'Alice', 'Tasselli', 'Italy', 'Volkswagen'),
(24, 'Simone', 'Angi', 'Italy', 'M-Sport Ford'),
(25, 'Simone', 'Scattolin', 'Italy', 'Toyota');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_codrivers_standings`
--

CREATE TABLE `wrc_codrivers_standings` (
  `id` int(11) NOT NULL,
  `codriversId` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_codrivers_standings`
--

INSERT INTO `wrc_codrivers_standings` (`id`, `codriversId`, `points`) VALUES
(1, 1, 67),
(2, 2, 61),
(3, 3, 46),
(4, 4, 33),
(5, 5, 31),
(6, 6, 30),
(7, 7, 24),
(8, 8, 23),
(9, 9, 12),
(10, 10, 6),
(11, 11, 6),
(12, 12, 6),
(13, 13, 4),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 1),
(22, 22, 1),
(23, 23, 0),
(24, 24, 0),
(25, 25, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_drivers`
--

CREATE TABLE `wrc_drivers` (
  `id` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `team` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_drivers`
--

INSERT INTO `wrc_drivers` (`id`, `firstName`, `lastName`, `country`, `team`) VALUES
(1, 'Elfyn', 'Evans', 'UK', 'Toyota'),
(2, 'Takamoto', 'Katsuta', 'Japan', 'Toyota'),
(3, 'Kalle', 'Rovanperä', 'Finland', 'Toyota'),
(4, 'Sebastian', 'Ogier', 'France', 'Toyota'),
(5, 'Thierry', 'Neuville', 'Belgium', 'Hyundai'),
(6, 'Ott', 'Tänak', 'Estonia', 'Hyundai'),
(7, 'Esapekka', 'Lappi', 'Finland', 'Hyundai'),
(8, 'Andreas', 'Mikkelsen', 'Norway', 'Hyundai'),
(10, 'Adrien', 'Fourmaux', 'France', 'M-Sport Ford'),
(11, 'Grégoire', 'Munster', 'Belgium', 'M-Sport Ford'),
(13, 'Nikolay', 'Gryazin', 'Hungary', 'Citroën'),
(14, 'Olivier', 'Solberg', 'Norway', 'Škoda'),
(15, 'Kajetan', 'Kajetanowicz', 'Poland', 'Škoda'),
(16, 'Sami', 'Pajari', 'Finland', 'Toyota'),
(17, 'Gus', 'Greensmith', 'Great Britain', 'Skoda'),
(18, 'Georg', 'Linnamae', 'Estonia', 'Toyota'),
(19, 'Roope', 'Korhonen', 'Finland', 'Toyota'),
(20, 'Jourdan', 'Serderidis', 'Greece', 'M-Sport Ford'),
(21, 'Pepe', 'Lopez', 'Spain', 'Skoda'),
(22, 'Mikko', 'Heikkila', 'Finland', 'Toyota'),
(23, 'Yohan', 'Rossel', 'France', 'Citroen'),
(24, 'Lauri', 'Joona', 'Finland', 'Toyota'),
(25, 'Jakopo', 'Beegamin', 'Italy', 'Volkswagen'),
(26, 'Carlo', 'Covi', 'Italy', 'M-Sport Ford'),
(27, 'Lorenzo', 'Bertelli', 'Italy', 'Toyota');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_drivers_standings`
--

CREATE TABLE `wrc_drivers_standings` (
  `id` int(11) NOT NULL,
  `driversId` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_drivers_standings`
--

INSERT INTO `wrc_drivers_standings` (`id`, `driversId`, `points`) VALUES
(1, 5, 67),
(2, 1, 61),
(3, 10, 46),
(4, 6, 33),
(5, 3, 31),
(6, 2, 30),
(7, 4, 24),
(8, 7, 23),
(9, 14, 12),
(10, 16, 6),
(11, 8, 6),
(12, 17, 6),
(13, 18, 4),
(14, 19, 3),
(15, 15, 3),
(16, 13, 3),
(17, 11, 3),
(18, 20, 2),
(19, 21, 2),
(20, 22, 2),
(21, 23, 1),
(22, 24, 1),
(23, 25, 0),
(24, 26, 0),
(25, 27, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rallies`
--
ALTER TABLE `rallies`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wrc_codrivers`
--
ALTER TABLE `wrc_codrivers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wrc_codrivers_standings`
--
ALTER TABLE `wrc_codrivers_standings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codriversId` (`codriversId`);

--
-- Indeksy dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wrc_drivers_standings`
--
ALTER TABLE `wrc_drivers_standings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driversId` (`driversId`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rallies`
--
ALTER TABLE `rallies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `wrc_codrivers`
--
ALTER TABLE `wrc_codrivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `wrc_codrivers_standings`
--
ALTER TABLE `wrc_codrivers_standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers_standings`
--
ALTER TABLE `wrc_drivers_standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `wrc_codrivers_standings`
--
ALTER TABLE `wrc_codrivers_standings`
  ADD CONSTRAINT `wrc_codrivers_standings_ibfk_1` FOREIGN KEY (`codriversId`) REFERENCES `wrc_codrivers` (`id`);

--
-- Ograniczenia dla tabeli `wrc_drivers_standings`
--
ALTER TABLE `wrc_drivers_standings`
  ADD CONSTRAINT `wrc_drivers_standings_ibfk_1` FOREIGN KEY (`driversId`) REFERENCES `wrc_drivers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
