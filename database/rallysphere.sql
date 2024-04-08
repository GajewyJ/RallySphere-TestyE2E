-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Kwi 2024, 19:16
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
(9, 'Dani', 'Sordo', 'Spain', 'Hyundai'),
(10, 'Adrien', 'Fourmaux', 'France', 'M-Sport Ford'),
(11, 'Grégoire', 'Munster', 'Belgium', 'M-Sport Ford'),
(12, 'Yohan', 'Rossel', 'France', 'Citroën'),
(13, 'Nikolay', 'Gryazin', 'Russia', 'Citroën'),
(14, 'Olivier', 'Solberg', 'Norway', 'Škoda'),
(15, 'Kajetan', 'Kajetanowicz', 'Poland', 'Škoda');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rallies`
--
ALTER TABLE `rallies`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rallies`
--
ALTER TABLE `rallies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
