-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Kwi 2024, 19:29
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
(2, 'WRC Rally Sweden', 2024, 'Sweden', '2024-02-15', '2024-02-18');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rallies`
--
ALTER TABLE `rallies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rallies`
--
ALTER TABLE `rallies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
