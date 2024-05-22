-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Maj 2024, 19:24
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
-- Struktura tabeli dla tabeli `enc_cars`
--

CREATE TABLE `enc_cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo_url` text DEFAULT NULL,
  `photo_html_attribution` text DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `enc_cars`
--

INSERT INTO `enc_cars` (`id`, `brand`, `model`, `description`, `photo_url`, `photo_html_attribution`, `category`) VALUES
(2, 'Volvo', 'Amazon', 'The Volvo Amazon, a classic car produced by the Swedish manufacturer Volvo from 1956 to 1970, had a notable presence in rallying during its production years. The Amazon, known for its robust construction, reliability, and durability, proved to be a competitive rally car in various national and international competitions.\n\nRally Success: The Volvo Amazon achieved considerable success in rallying, particularly in the 1960s. It competed in numerous rally events around the world, showcasing its performance and reliability on diverse terrain, including gravel, tarmac, and snow.\n\nFactory and Privateer Teams: The Volvo Amazon was campaigned by both factory-supported teams and privateer entries. Volvo Motorsport, the racing division of Volvo Cars, provided technical support and assistance to factory teams, while independent drivers and teams also campaigned the Amazon with success.\n\nEuropean Rally Championship (ERC): The Volvo Amazon participated in the European Rally Championship (ERC), a series of rally events held across Europe. It achieved victories and podium finishes in various ERC events, contributing to Volvo\'s success in the championship.\n\nSafari Rally: The Volvo Amazon competed in the Safari Rally, one of the toughest and most demanding rallies in the world. Known for its rugged terrain and challenging conditions, the Safari Rally tested the durability and reliability of rally cars, and the Amazon proved to be competitive in this grueling event.\n\nNational Championships: In addition to international competitions, the Volvo Amazon competed in national rally championships in countries such as Sweden, Finland, the United Kingdom, and others. It secured numerous class wins, overall victories, and championship titles in these domestic rally series.\n\nLegacy: The Volvo Amazon\'s success in rallying helped to enhance Volvo\'s reputation as a manufacturer of durable and reliable cars. Its performance on the rally stage contributed to the car\'s enduring legacy as an iconic classic car among enthusiasts worldwide.\n\nThe Volvo Amazon\'s rallying history is characterized by its competitive performances, reliability, and versatility on various rally stages. It remains a celebrated and beloved car in motorsport history, known for its achievements in rallying during the 1960s and beyond.', 'https://upload.wikimedia.org/wikipedia/commons/b/b5/1965_Volvo_133_GT_Amazon.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:1965_Volvo_133_GT_Amazon.jpg\">Rutger van der Maar</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `enc_categories`
--

CREATE TABLE `enc_categories` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `years` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `enc_categories`
--

INSERT INTO `enc_categories` (`id`, `name`, `years`, `description`) VALUES
(1, 'Early Era', 'Late 19th Century to 1960s', 'First rally cars ever made, helping to establish rallying as sport.'),
(2, 'Group 1', '1970s to 1980s', 'Standard production cars with minimal modifications.'),
(3, 'Group 2', '1970s to 1980s', 'Modified production cars with more extensive changes allowed.'),
(4, 'Group 3', '1970s to 1980s', 'Grand touring cars with limited production.'),
(5, 'Group 4', '1970s to 1980s', 'Specially modified grand touring cars, leading to more competitive and specialized vehicles.'),
(6, 'Group B', '1982-1986', 'Group B regulations were introduced in 1982, allowing for highly powerful and sophisticated rally cars. Known for its high performance and technological advancements, but also for safety concerns leading to its cancellation in 1986 after several fatal accidents.'),
(7, 'Group A', 'Post-1986', 'Replacement for Group B: Introduced stricter regulations focusing on safety, with engine limits of 2000 cc and 300 bhp.'),
(8, 'Super 1600', '2000-2011', 'It was primarily used in the Junior World Rally Championship (JWRC) between 2001 and 2010, as well as in various national rally championships and international rallycross events.'),
(9, 'Super 2000', '2000 to Present', 'It is an FIA powertrain specification used in various championships, including the World Rally Championship (WRC), British Touring Car Championship (BTCC), and World Touring Car Championship (WTCC).'),
(10, 'Group N', '1982-2013', 'Group N, often referred to as the \"showroom class,\" was introduced by the FIA in 1982. It is based on production models of street-legal cars with minimal modifications allowed.'),
(11, 'WRC', '1997 to Present', 'WRC cars are based on production models but heavily modified for performance and safety.'),
(12, 'Rally 1', '2021 to Present', 'Top-tier WRC cars with advanced technology and high performance.');

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
(1, 'Disaster for Evans: Martin resorts to phone to call notes', 'Co-driver Scott Martin found himself relying on his mobile phone to relay pace notes to Elfyn Evans after misplacing his physical notebook on Friday afternoon at Vodafone Rally de Portugal.', 'Panic ensued between the British duo just before the second running of Góis 2 when Martin discovered that his pace note book, containing crucial details of every twist and turn of the stage, had gone astray.', 'With no time to spare, Martin ingeniously resorted to using his mobile phone to access a digital copy of the notes. However, the bad luck continued for the pair as their Toyota GR Yaris sustained front-right tyre damage during the stage, costing almost one minute.', 'f0304c1f-f738-4ecf-9943-69fe78d287fe_100524missing-pacenotes.jpg', '2024-05-10 17:00:00'),
(2, 'New agreement confirms Portugal’s continued WRC legacy', 'WRC Promoter and Automóvel Club de Portugal (ACP) have sealed a new deal which guarantees Vodafone Rally de Portugal\'s position in the FIA World Rally Championship calendar until at least 2026.', 'The agreement, announced today (Friday 10 May), follows an electrifying opening day of action at round five of the 2024 season that drew tens of thousands of spectators to the stages in and around the vibrant northern Portuguese cities of Matosinhos and Porto.', 'Vodafone Rally de Portugal stands as the pinnacle of sporting excellence in the country, generating in excess 60 million Euros for the nation\'s economy. With extensive free-to-air live coverage on Portugal’s national broadcaster RTP and every stage broadcast on long-standing WRC partner SportTV, the event captivates audiences nationwide. Having been a cornerstone of the WRC since its inception in 1973, the rally holds esteemed status as one of the championship\'s enduring classics and is cherished by competitors and fans alike. “It is a big pleasure for me to confirm 2025 and 2026,” asserted ACP President Carlos Barbosa. \"We have an exceptional relationship with the promoter in terms of the event and the activations around it. Over the past 20 years Rally Portugal has asserted itself as one of the best rallies in the world.\" “Vodafone Rally de Portugal has once again earned its position on the FIA World Rally Championship calendar. This is a deserved recognition and we hope it continues for many years to come,” added WRC Promoter Managing Director Jona Siebel.', '2ffc26a5-92e4-4b15-8c84-6a91addd2e8e_100524acp-signing.jpg', '2024-05-10 20:00:00'),
(3, 'Rovanperä surrenders Rally de Portugal lead after Saturday morning roll', 'A hat-trick of Vodafone Rally de Portugal victories is no longer on the cards for Kalle Rovanperä after the Finn rolled out of contention on Saturday morning.', 'Having claimed a commanding win in Saturday\'s opening stage at Felgueiras, Rovanperä seemed poised to further solidify his lead at this fifth round of the 2024 FIA World Rally Championship. However, the 23-year-old\'s aspirations came crashing down in the Montim stage when he misjudged a fast right-hander over a crest, clipping a tree on the outside which sent his Toyota GR Yaris into a roll.', 'Rovanperä and his co-driver Jonne Halttunen emerged unscathed from the incident but will take no further part in today\'s proceedings. Further drama unfolded as Oliver Solberg, who led the WRC2 category overnight, suffered a similar fate. Shortly after passing Rovanperä\'s stricken car, the Swede veered wide on a right-hand corner and rolled his Škoda Fabia RS Rally2. With Rovanperä and Solberg sidelined, Sébastien Ogier took the rally lead while Yohan Rossel swooped to the top spot in WRC2.', '4c012f46-262b-473d-ade5-9413a633e09c_110524rov.jpg', '2024-05-11 11:00:00'),
(4, 'Neuville claims early advantage in Portugal', 'Thousands of fans turned out in the central Portuguese coastal city Figueira da Foz on Thursday night to witness Thierry Neuville go fastest on the opening stage of Vodafone Rally de Portugal 2024.', 'The FIA World Rally Championship points leader was the last of the Rally1 cars to take to the 2.94km Tarmac street stage and went 0.6sec quicker than five-time Rally de Portugal winner Sébastien Ogier. Neuville needed every advantage he could get behind the wheel of his Hyundai i20 N Rally Hybrid on Thursday’s opener, with a tough Friday of gravel road clearing awaiting the Belgian. His Estonian team-mate Ott Tänak crossed the line third-quickest, 1.4sec down on Ogier.', 'The Toyota Gazoo Racing pairing of Takamoto Katsuta and Kalle Rovanperä rounded out the top five whilst Adrien Fourmaux was the fastest of the M-Sport Ford Puma drivers, coming home in sixth. Despite going quickest on Thursday morning’s shakedown, Dani Sordo could only muster the seventh-quickest time on his 2024 Hyundai debut, narrowly seeing off Toyota Gazoo Racing’s fourth driver Elfyn Evans. Leading home the WRC2 field in ninth overall was Yohan Rossel, continuing a stellar season to date for Citröen, whilst Pierre-Louis Loubet announced his return to action in style, going second-quickest in his first WRC2 outting in Škoda Fabia RS Rally2. It marked the Frenchman\'s first outting at global level since Central European Rally, when he competed in an M-Sport Ford Puma Rally1. Action resumes Friday morning 08:05 with stages awaiting competitors.', '537a8b10-0bd1-440b-8965-2f6f61b55a9f_090524rb-thierry-neuville-portugal-202301.jpg', '2024-05-09 20:00:00'),
(5, 'Ogier grabs Portugal lead as Toyota team-mates suffer', 'Sébastien Ogier vaulted into the lead of Vodafone Rally de Portugal as his Toyota Gazoo Racing colleagues Kalle Rovanperä and Takamoto Katsuta suffered heartbreak on a brutal Saturday morning.', 'Just as overnight leader Rovanperä seemed poised to consolidate his position at the top at this fifth round of the season, the two-time world champion misjudged a right-hand bend in Montim – running wide and clipping a tree that sent his GR Yaris Rally1 rolling into retirement, Ogier was thrust into the lead going into the morning’s penultimate stage at Amarante, but further misfortune struck the Japanese manufacturer squad in the 37km stage as Katsuta, who had lost position to Hyundai\'s Ott Tänak earlier in the morning, was forced to park his crippled Toyota at the roadside with smashed rear suspension.', 'Tänak dominated Amarante, outpacing Ogier by 3.6sec to become the fifth different rally leader in 12 special stages. However, rear tyre damage for the Estonian in Paredes allowed Frenchman Ogier to regain control late in the loop, taking a 13.6sec lead to service. “It was a big push in the last one, but honestly it hasn’t been so different since the start of the rally,\" Ogier said. \"We’re giving it everything we have.” The drama up ahead brought more good news for Thierry Neuville, who finished the morning 40.8sec behind team-mate Tänak after climbing from sixth to third. Despite stalling his i20 N at a hairpin, the Belgian driver is poised to extend his championship lead - which stood at six points before this rally - over Elfyn Evans with the Welshman currently down in sixth overall. Spain’s Dani Sordo made it three Hyundais in the top four, trailing Tänak by 3.6sec having dropped behind his colleague in the first stage of the day. M-Sport Ford man Adrien Fourmaux was 20.4sec further back in fifth with a 1min 20.9sec buffer to Evans, who was delayed by a spin on SS11. Grégoire Munster had a disastrous run through Amarante, pulling over twice and dropping over six minutes as he tried to diagnose a mysterious powertrain fault. Initially suspecting an alternator fault, Munster later discovered that was not the case and the issue appeared to rectify itself.', 'f6bc8f42-1cbb-432a-af9f-3cb3531aaa80_110524atogiersatam.jpg', '2024-05-11 20:00:00'),
(6, 'Chaotic Saturday puts Ogier in line for record Portugal win', 'Sébastien Ogier stands on the cusp of surpassing Markku Alén’s Vodafone Rally de Portugal record - providing he can maintain his lead over Hyundai Motorsport rival Ott Tänak on the event’s final day tomorrow (Sunday).', 'A tumultuous Saturday at the 2024 FIA World Rally Championship’s fifth round wreaked havoc among some of the series’ top drivers, reshuffling the leaderboard and granting Ogier an 11.9-sec overnight lead. The Frenchman’s Toyota Gazoo Racing team began this penultimate leg with all guns blazing, locking out the podium after a near-perfect opening day. However, their fortunes took a dive early this morning when Kalle Rovanperä and Takamoto Katsuta both faltered on the brutal gravel terrain.', 'Overnight leader Rovanperä looked poised to tighten his grip on the top spot after blitzing the Felgueiras opener, but he misjudged a right-hander in Montim shortly afterwards and rolled out of contention. Katsuta’s exit was less dramatic but equally devastating: a rearward impact shattered his GR Yaris Rally1 car’s suspension as the Japanese driver battled for third. Toyota’s hopes rested on Ogier’s shoulders. He tussled for the lead with Tänak and briefly relinquished the position on Amarante 1 before going back in front when the Estonian nursed a deflated tyre in the following stage. Although Tänak maintained the pressure with benchmark times over the first two stages of the repeated afternoon loop, Ogier responded with a brace of stage wins to widen the gap. Victory for Ogier on Sunday would be his sixth in Portugal. At present he jointly tops the event’s roll of honour with Finnish legend Markku Alén, known for his dominance with Fiat and Lancia in the 1970s and 80s. “It\'s been a good day,” said Ogier. “A tricky one, we didn\'t expect so many things happening today. Unfortunately on Toyota’s side it was not a perfect day. For me it was good, but we lost two cars. “We have to try and finish the job tomorrow now,” he added. The drama up ahead brought good news for Thierry Neuville, who ended the day 59.5sec behind team-mate Tänak having climbed from sixth to third. With main title rival Elfyn Evans languishing in sixth, Neuville is poised to extend his championship lead and his Saturday standing will earn him 13 points providing he completes Super Sunday. Neuville overtook Dani Sordo in the first stage of the day but the Spaniard kept touch with his colleague, ending the day 14.2sec further back to make it three Hyundais in the top four. Behind Sordo by only 7.3sec was M-Sport Ford hotshot Adrien Fourmaux, who held a comfortable buffer of almost two minutes to Evans. Evans struggled to get into a rhythm with his GR Yaris, and an early spin exacerbated his challenges. Rally2 cars filled the remainder of the leaderboard, with Nikolay Gryazin sitting seventh in his Citroën C3. Jan Solans was the first of the WRC2-registered drivers while Josh McErlean and Yohan Rossel completed the top 10.', '5e8cf000-53ff-4e40-99e6-ef52ce369bd3_110524at-seb-ogier-portugal01.jpg', '2024-05-11 21:00:00'),
(7, 'Record-breaking Ogier powers to sixth Portugal win', 'Sébastien Ogier became the first driver to achieve six Vodafone Rally de Portugal victories on Sunday, powering to glory 7.9sec clear of his Hyundai Motorsport rival Ott Tänak.', 'The Frenchman is now the most successful driver in the 56-year history of the event, which was a founding round of the FIA World Rally Championship back in 1973. Ogier previously shared the record with Finnish WRC legend Markku Alén before his triumph today. Five different drivers led the gruelling gravel fixture, which utilised roads near the northern Portuguese cities of Porto and Matosinhos and drew attendance from tens of thousands of passionate fans.', 'Ogier seized the top spot on a tumultuous Saturday, during which his Toyota GR Yaris team-mate Kalle Rovanperä rolled out of the lead and Takamoto Katsuta retired his similar car with shattered rear suspension. He headed the i20 N car of Tänak by 11.9sec arriving into Sunday’s four-stage finale and stayed cool to keep the Estonian at bay, soaring high over the legendary Fafe jump to round out this fifth round of the season in style. \"I had nothing against being tied with Markku Alén,\" Ogier smiled. \"He is a legend, but I heard for many years \'when will you beat this record?\' It was a not a great weekend for the whole team, but it was a good rally for us and I am glad we could bring some points.\" Second place marked Tänak’s best result since re-joining Hyundai at the beginning of the year. The additional seven points he earned for topping the Super Sunday classification helped move him ahead of Adrien Fourmaux to third in the championship standings. Championship wise, it was also a strong weekend for Thierry Neuville, who filled the final podium spot 1min 1.9sec behind his Hyundai colleague. Belgian star Neuville extended his drivers’ series lead to 24 points over Elfyn Evans after the Welshman endured a torrid week, finishing down in sixth having overcome a coolant leakage through the final day. Fourmaux climbed from fifth to fourth, passing the Hyundai of Dani Sordo on SS19 and pulling more than a minute clear of the Spaniard by the end. The M-Sport Ford youngster has finished all five rallies so far this year, gracing the top five on all but one occasion. Evans’ coolant leak forced him to crawl out of SS21 in EV mode and exacerbated what had already been a challenging outing for the GR Yaris driver. On Friday his co-driver Scott Martin resorted to reading pace notes from a mobile phone after misplacing his physical book, and the crew failed to post a single top-three stage time. Citroën C3 Rally2 driver Nikolay Gryazin took seventh overall ahead of Jan Solans, who was the best-placed WRC2-registered driver in eighth. Solans edged Josh McErlean by just 3.2sec while Lauri Joona completed the top 10. Competitors face more hot weather and rough roads as the WRC moves to the Mediterranean island of Sardinia later this month. Rally Italia Sardegna is based in Alghero from 30 May - 2 June.', '90f716e8-f3c0-4135-bbec-4e531ecfaf33_120524atogiersun-1.jpg', '2024-05-12 15:20:00'),
(8, '\"Calm approach\" helped Ogier in Portugal, believes Toyoda', 'Toyota Gazoo Racing president Akio Toyoda has praised a calmer team approach which helped Sébastien Ogier score successive World Rally Championship victories last time out in Portugal.', 'Toyoda admitted he was impressed, once again, with the Frenchman’s approach to land a record-breaking sixth win at Vodafone Rally de Portugal. “No matter how tough the gravel surface was, Séb was always calm,” he said. “No matter how close and electrifying the competition was, Seb was always smiling to the fans. When something happened, he calmly informed the engineers about the situation and got back to the stages.', '“Then he comes back to the finish line faster than anyone else. I am grateful to have such a true professional driver in our team.” Toyoda admitted issues for Ogier’s team-mates were frustrating. He added: “There was both a disappointing thing and a good thing. The disappointing thing was that the other three cars were not able to drive through without problems. Our goal was for all four cars to have a trouble-free rally, but it became a frustrating result for us again. “On the other hand, the good thing which made me happy was that the team was calmer than before, whatever kind of problem they were facing. Many things happened during the weekend, but I heard everyone tried to stay calm and find a solution. “It is nice to see the team grow. The team gets stronger as each member gets stronger, and as the team gets stronger, the GR Yaris Rally1 will become ever better and stronger. We still have a lot of tough events ahead of us this season, but I hope to continue to grow with everybody in the team.” Despite Ogier’s win, Hyundai moved ahead of Toyota for the first time this season. The Frankfurt-based team heads to round six four points clear at the top of the manufacturers’ championship table.', 'dc478261-4bdc-47a3-8e1d-588d557ab719_220524rbogi.jpg', '2024-05-22 16:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_codrivers`
--

CREATE TABLE `wrc_codrivers` (
  `id` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_codrivers`
--

INSERT INTO `wrc_codrivers` (`id`, `firstName`, `lastName`, `country`, `team`, `points`) VALUES
(1, 'Martijn', 'Wydaeghe', 'Belgium', 'Hyundai', 86),
(2, 'Scott', 'Martin', 'Great Britain', 'Toyota', 80),
(3, 'Alexandre', 'Coria', 'France', 'M-Sport Ford', 59),
(4, 'Martin', 'Järveoja', 'Estonia', 'Hyundai', 53),
(5, 'Jonne', 'Halttunen', 'Finland', 'Toyota', 31),
(6, 'Aaron', 'Johnston', 'Ireland', 'Toyota', 45),
(7, 'Vincent', 'Landais', 'France', 'Toyota', 45),
(8, 'Janne', 'Ferm', 'Finland', 'Hyundai', 23),
(9, 'Elliott', 'Edmondson', 'Great Britain', 'Skoda', 12),
(10, 'Enni', 'Mälkönen', 'Finland', 'Toyota', 6),
(11, 'Torstein', 'Eriksen', 'Norway', 'Hyundai', 14),
(12, 'Jonas', 'Andersson', 'Sweden', 'Skoda', 6),
(13, 'James', 'Morgan', 'Great Britain', 'Toyota', 4),
(14, 'Anssi', 'Viinikka', 'Finland', 'Toyota', 3),
(15, 'Maciej', 'Szczepaniak', 'Poland', 'Skoda', 3),
(16, 'Konstantin', 'Aleksandrov', 'ANA', 'Citroen', 5),
(17, 'Louis', 'Louka', 'Belgium', 'M-Sport Ford', 8),
(18, 'Frédéric', 'Miclotte', 'Belgium', 'M-Sport Ford', 2),
(19, 'David', 'Vázquez', 'Spain', 'Skoda', 2),
(20, 'Kristian', 'Temonen', 'Finland', 'Toyota', 2),
(21, 'Arnaud', 'Dunand', 'France', 'Citroen', 2),
(22, 'Janni', 'Hussi', 'Finland', 'Skoda', 1),
(25, 'Simone', 'Scattolin', 'Italy', 'Toyota', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wrc_drivers`
--

CREATE TABLE `wrc_drivers` (
  `id` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wrc_drivers`
--

INSERT INTO `wrc_drivers` (`id`, `firstName`, `lastName`, `country`, `team`, `points`) VALUES
(1, 'Elfyn', 'Evans', 'UK', 'Toyota', 80),
(2, 'Takamoto', 'Katsuta', 'Japan', 'Toyota', 45),
(3, 'Kalle', 'Rovanperä', 'Finland', 'Toyota', 31),
(4, 'Sebastian', 'Ogier', 'France', 'Toyota', 45),
(5, 'Thierry', 'Neuville', 'Belgium', 'Hyundai', 86),
(6, 'Ott', 'Tänak', 'Estonia', 'Hyundai', 53),
(7, 'Esapekka', 'Lappi', 'Finland', 'Hyundai', 23),
(8, 'Andreas', 'Mikkelsen', 'Norway', 'Hyundai', 14),
(10, 'Adrien', 'Fourmaux', 'France', 'M-Sport Ford', 59),
(11, 'Grégoire', 'Munster', 'Belgium', 'M-Sport Ford', 8),
(13, 'Nikolay', 'Gryazin', 'Hungary', 'Citroën', 5),
(14, 'Olivier', 'Solberg', 'Norway', 'Škoda', 12),
(15, 'Kajetan', 'Kajetanowicz', 'Poland', 'Škoda', 3),
(16, 'Sami', 'Pajari', 'Finland', 'Toyota', 6),
(17, 'Gus', 'Greensmith', 'Great Britain', 'Skoda', 6),
(18, 'Georg', 'Linnamae', 'Estonia', 'Toyota', 4),
(19, 'Roope', 'Korhonen', 'Finland', 'Toyota', 3),
(20, 'Jourdan', 'Serderidis', 'Greece', 'M-Sport Ford', 2),
(21, 'Pepe', 'Lopez', 'Spain', 'Skoda', 2),
(22, 'Mikko', 'Heikkila', 'Finland', 'Toyota', 2),
(23, 'Yohan', 'Rossel', 'France', 'Citroen', 2),
(24, 'Lauri', 'Joona', 'Finland', 'Toyota', 1),
(27, 'Lorenzo', 'Bertelli', 'Italy', 'Toyota', 0);

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
(1, 'TOYOTA GAZOO Racing WRT', 'Japan', 2016, 'Jari-Matti Latvala', 'WRC1', 'Toyota', 176),
(2, 'Hyundai Shell Mobis WRT', 'Germany', 2012, 'Cyril Abiteboul', 'WRC1', 'Hyundai', 169),
(3, 'M-Sport Ford WRT', 'United Kingdom', 2006, 'Richard Millener', 'WRC1', 'Ford', 96),
(4, 'Toksport WRT', 'Czech Republic', 1999, 'Serkan Duru', 'WRC2', 'Skoda', 70),
(5, 'AEC - DG Sport Competition', 'France', 2008, 'Christian Jupsin', 'WRC2', 'Citroen', 86),
(6, 'Printsport TOYOTA GAZOO Racing WRT NG', 'Finland', 1997, 'Eero Raikkonen', 'WRC2', 'Toyota', 61);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `enc_cars`
--
ALTER TABLE `enc_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indeksy dla tabeli `enc_categories`
--
ALTER TABLE `enc_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indeksy dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT dla tabeli `enc_cars`
--
ALTER TABLE `enc_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `enc_categories`
--
ALTER TABLE `enc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `wrc_codrivers`
--
ALTER TABLE `wrc_codrivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
-- Ograniczenia dla tabeli `enc_cars`
--
ALTER TABLE `enc_cars`
  ADD CONSTRAINT `enc_cars_ibfk_1` FOREIGN KEY (`category`) REFERENCES `enc_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
