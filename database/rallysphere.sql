-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Maj 2024, 17:38
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
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `paragraph1` text DEFAULT NULL,
  `paragraph2` text DEFAULT NULL,
  `paragraph3` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `publicationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `title`, `paragraph1`, `paragraph2`, `paragraph3`, `photo`, `publicationDate`) VALUES
(1, 'Disaster for Evans: Martin resorts to phone to call notes', 'Co-driver Scott Martin found himself relying on his mobile phone to relay pace notes to Elfyn Evans after misplacing his physical notebook on Friday afternoon at Vodafone Rally de Portugal.', 'Panic ensued between the British duo just before the second running of Góis 2 when Martin discovered that his pace note book, containing crucial details of every twist and turn of the stage, had gone astray.', 'With no time to spare, Martin ingeniously resorted to using his mobile phone to access a digital copy of the notes. However, the bad luck continued for the pair as their Toyota GR Yaris sustained front-right tyre damage during the stage, costing almost one minute.', 'https://wrc.enhance.diagnal.com/resources/images/eyJrZXkiOiJodHRwczovL2VuaGFuY2Utc3RvcmFnZS1zdGFjay1wcm9kLXdyY21lZGlhZmlsZXN0b3JhZ2UtZzN6MmhnM3Vyd2ZmLnMzLmFtYXpvbmF3cy5jb20vZjAzMDRjMWYtZjczOC00ZWNmLTk5NDMtNjlmZTc4ZDI4N2ZlXzEwMDUyNG1pc3NpbmctcGFjZW5vdGVzLnBuZyIsInRpbWVzdGFtcCI6IjIwMjQtMDUtMTBUMTQ6NDY6NTAuMzU0WiIsImVkaXRzIjp7ImV4dHJhY3QiOnsibGVmdCI6MCwidG9wIjowLCJ3aWR0aCI6MTQ3MSwiaGVpZ2h0Ijo4Mjd9LCJyZXNpemUiOnsid2lkdGgiOjE5MjAsImhlaWdodCI6MTA4MH0sImpwZWciOnsicXVhbGl0eSI6MTAwfX19/f0304c1f-f738-4ecf-9943-69fe78d287fe_100524missing-pacenotes.png', '2024-05-10 17:00:00'),
(2, 'New agreement confirms Portugal’s continued WRC legacy', 'WRC Promoter and Automóvel Club de Portugal (ACP) have sealed a new deal which guarantees Vodafone Rally de Portugal\'s position in the FIA World Rally Championship calendar until at least 2026.', 'The agreement, announced today (Friday 10 May), follows an electrifying opening day of action at round five of the 2024 season that drew tens of thousands of spectators to the stages in and around the vibrant northern Portuguese cities of Matosinhos and Porto.', 'Vodafone Rally de Portugal stands as the pinnacle of sporting excellence in the country, generating in excess 60 million Euros for the nation\'s economy. With extensive free-to-air live coverage on Portugal’s national broadcaster RTP and every stage broadcast on long-standing WRC partner SportTV, the event captivates audiences nationwide. Having been a cornerstone of the WRC since its inception in 1973, the rally holds esteemed status as one of the championship\'s enduring classics and is cherished by competitors and fans alike. “It is a big pleasure for me to confirm 2025 and 2026,” asserted ACP President Carlos Barbosa. \"We have an exceptional relationship with the promoter in terms of the event and the activations around it. Over the past 20 years Rally Portugal has asserted itself as one of the best rallies in the world.\" “Vodafone Rally de Portugal has once again earned its position on the FIA World Rally Championship calendar. This is a deserved recognition and we hope it continues for many years to come,” added WRC Promoter Managing Director Jona Siebel.', 'https://wrc.enhance.diagnal.com/resources/images/eyJrZXkiOiJodHRwczovL2VuaGFuY2Utc3RvcmFnZS1zdGFjay1wcm9kLXdyY21lZGlhZmlsZXN0b3JhZ2UtZzN6MmhnM3Vyd2ZmLnMzLmFtYXpvbmF3cy5jb20vMmZmYzI2YTUtOTJlNC00YjE1LThjODQtNmE5MWFkZGQyZThlXzEwMDUyNGFjcC1zaWduaW5nLmpwZyIsInRpbWVzdGFtcCI6IjIwMjQtMDUtMTBUMTg6NDQ6MjEuMjIyWiIsImVkaXRzIjp7ImV4dHJhY3QiOnsibGVmdCI6NTQ2LCJ0b3AiOjAsIndpZHRoIjo0MDkxLCJoZWlnaHQiOjIzMDN9LCJyZXNpemUiOnsid2lkdGgiOjE5MjAsImhlaWdodCI6MTA4MH0sImpwZWciOnsicXVhbGl0eSI6MTAwfX19/2ffc26a5-92e4-4b15-8c84-6a91addd2e8e_100524acp-signing.jpg', '2024-05-10 20:00:00'),
(3, 'Rovanperä surrenders Rally de Portugal lead after Saturday morning roll', 'A hat-trick of Vodafone Rally de Portugal victories is no longer on the cards for Kalle Rovanperä after the Finn rolled out of contention on Saturday morning.', 'Having claimed a commanding win in Saturday\'s opening stage at Felgueiras, Rovanperä seemed poised to further solidify his lead at this fifth round of the 2024 FIA World Rally Championship. However, the 23-year-old\'s aspirations came crashing down in the Montim stage when he misjudged a fast right-hander over a crest, clipping a tree on the outside which sent his Toyota GR Yaris into a roll.', 'Rovanperä and his co-driver Jonne Halttunen emerged unscathed from the incident but will take no further part in today\'s proceedings. Further drama unfolded as Oliver Solberg, who led the WRC2 category overnight, suffered a similar fate. Shortly after passing Rovanperä\'s stricken car, the Swede veered wide on a right-hand corner and rolled his Škoda Fabia RS Rally2. With Rovanperä and Solberg sidelined, Sébastien Ogier took the rally lead while Yohan Rossel swooped to the top spot in WRC2.', 'https://wrc.enhance.diagnal.com/resources/images/eyJrZXkiOiJodHRwczovL2VuaGFuY2Utc3RvcmFnZS1zdGFjay1wcm9kLXdyY21lZGlhZmlsZXN0b3JhZ2UtZzN6MmhnM3Vyd2ZmLnMzLmFtYXpvbmF3cy5jb20vNGMwMTJmNDYtMjYyYi00NzNkLWFkZTUtOTQxM2E2MzNlMDljXzExMDUyNHJvdi5qcGciLCJ0aW1lc3RhbXAiOiIyMDI0LTA1LTExVDA4OjUzOjU2LjQ5M1oiLCJlZGl0cyI6eyJleHRyYWN0Ijp7ImxlZnQiOjAsInRvcCI6MCwid2lkdGgiOjE5MjAsImhlaWdodCI6MTA4MH0sInJlc2l6ZSI6eyJ3aWR0aCI6MTkyMCwiaGVpZ2h0IjoxMDgwfSwianBlZyI6eyJxdWFsaXR5IjoxMDB9fX0=/4c012f46-262b-473d-ade5-9413a633e09c_110524rov.jpg', '2024-05-11 11:00:00'),
(4, 'Neuville claims early advantage in Portugal', 'Thousands of fans turned out in the central Portuguese coastal city Figueira da Foz on Thursday night to witness Thierry Neuville go fastest on the opening stage of Vodafone Rally de Portugal 2024.', 'The FIA World Rally Championship points leader was the last of the Rally1 cars to take to the 2.94km Tarmac street stage and went 0.6sec quicker than five-time Rally de Portugal winner Sébastien Ogier. Neuville needed every advantage he could get behind the wheel of his Hyundai i20 N Rally Hybrid on Thursday’s opener, with a tough Friday of gravel road clearing awaiting the Belgian. His Estonian team-mate Ott Tänak crossed the line third-quickest, 1.4sec down on Ogier.', 'The Toyota Gazoo Racing pairing of Takamoto Katsuta and Kalle Rovanperä rounded out the top five whilst Adrien Fourmaux was the fastest of the M-Sport Ford Puma drivers, coming home in sixth. Despite going quickest on Thursday morning’s shakedown, Dani Sordo could only muster the seventh-quickest time on his 2024 Hyundai debut, narrowly seeing off Toyota Gazoo Racing’s fourth driver Elfyn Evans. Leading home the WRC2 field in ninth overall was Yohan Rossel, continuing a stellar season to date for Citröen, whilst Pierre-Louis Loubet announced his return to action in style, going second-quickest in his first WRC2 outting in Škoda Fabia RS Rally2. It marked the Frenchman\'s first outting at global level since Central European Rally, when he competed in an M-Sport Ford Puma Rally1. Action resumes Friday morning 08:05 with stages awaiting competitors.', 'https://wrc.enhance.diagnal.com/resources/images/eyJrZXkiOiJodHRwczovL2VuaGFuY2Utc3RvcmFnZS1zdGFjay1wcm9kLXdyY21lZGlhZmlsZXN0b3JhZ2UtZzN6MmhnM3Vyd2ZmLnMzLmFtYXpvbmF3cy5jb20vNTM3YThiMTAtMGJkMS00NDBiLTg5NjUtMmY2ZjYxYjU1YTlmXzA5MDUyNHJiLXRoaWVycnktbmV1dmlsbGUtcG9ydHVnYWwtMjAyMzAxLmpwZyIsInRpbWVzdGFtcCI6IjIwMjQtMDUtMDlUMjE6MTk6MTEuOTA4WiIsImVkaXRzIjp7ImV4dHJhY3QiOnsibGVmdCI6MCwidG9wIjoxNTEsIndpZHRoIjozODQwLCJoZWlnaHQiOjIxNjB9LCJyZXNpemUiOnsid2lkdGgiOjE5MjAsImhlaWdodCI6MTA4MH0sImpwZWciOnsicXVhbGl0eSI6MTAwfX19/537a8b10-0bd1-440b-8965-2f6f61b55a9f_090524rb-thierry-neuville-portugal-202301.jpg', '2024-05-09 21:00:00');

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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_rallies`
--

CREATE TABLE `wrc_rallies` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `beginning` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_rallies`
--

INSERT INTO `wrc_rallies` (`id`, `name`, `season`, `country`, `beginning`, `end`) VALUES
(1, 'Rallye Monte-Carlo', 2024, 'Monaco', '2024-01-24', '2024-01-28'),
(2, 'WRC Rally Sweden', 2024, 'Sweden', '2024-02-15', '2024-02-18'),
(5, 'WRC Safari Rally Kenya', 2024, 'Kenya', '2024-03-28', '2024-03-31'),
(6, 'WRC Croatia Rally', 2024, 'Croatia', '2024-04-18', '2024-04-21'),
(7, 'WRC Vodafone Rally de Portugal', 2024, 'Portugal', '2024-05-09', '2024-05-12'),
(8, 'WRC Rally Italia Sardegna', 2024, 'Italy', '2024-05-30', '2024-06-02'),
(9, 'WRC ORLEN 80th Rally Poland', 2024, 'Poland', '2024-06-27', '2024-06-30'),
(10, 'WRC Tet Rally Latvia', 2024, 'Latvia', '2024-07-18', '2024-07-21'),
(11, 'WRC Secto Rally Finland', 2024, 'Finland', '2024-08-01', '2024-08-04'),
(12, 'WRC EKO Acropolis Rally Greece', 2024, 'Greece', '2024-09-05', '2024-09-08'),
(13, 'WRC Rally Chile Bio Bío', 2024, 'Chile', '2024-09-26', '2024-09-29'),
(14, 'WRC Central European Rally', 2024, 'Central Europe', '2024-10-17', '2024-10-20'),
(15, 'WRC FORUM8 Rally Japan', 2024, 'Japan', '2024-11-21', '2024-11-24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_teams`
--

CREATE TABLE `wrc_teams` (
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
-- Zrzut danych tabeli `wrc_teams`
--

INSERT INTO `wrc_teams` (`id`, `name`, `basedIn`, `establishment`, `principal`, `category`, `brand`, `points`) VALUES
(1, 'TOYOTA GAZOO Racing WRT', 'Japan', 2016, 'Jari-Matti Latvala', 'WRC1', 'Toyota', 131),
(2, 'Hyundai Shell Mobis WRT', 'Germany', 2012, 'Cyril Abiteboul', 'WRC1', 'Hyundai', 127),
(3, 'M-Sport Ford WRT', 'United Kingdom', 2006, 'Richard Millener', 'WRC1', 'Ford', 72),
(4, 'Toksport WRT', 'Czech Republic', 1999, 'Serkan Duru', 'WRC2', 'Skoda', 43),
(5, 'AEC - DG Sport Competition', 'France', 2008, 'Christian Jupsin', 'WRC2', 'Citroen', 43),
(6, 'Printsport TOYOTA GAZOO Racing WRT NG', 'Finland', 1997, 'Eero Raikkonen', 'WRC2', 'Toyota', 43);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `news`
--
ALTER TABLE `news`
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
-- Indeksy dla tabeli `wrc_rallies`
--
ALTER TABLE `wrc_rallies`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wrc_teams`
--
ALTER TABLE `wrc_teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wrc_codrivers`
--
ALTER TABLE `wrc_codrivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `wrc_codrivers_standings`
--
ALTER TABLE `wrc_codrivers_standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers_standings`
--
ALTER TABLE `wrc_drivers_standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `wrc_rallies`
--
ALTER TABLE `wrc_rallies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `wrc_teams`
--
ALTER TABLE `wrc_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
