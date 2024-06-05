-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2024, 18:29
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
-- Struktura tabeli dla tabeli `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

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
(2, 'Volvo', 'Amazon', 'The Volvo Amazon proved to be a formidable rally car in its era. One of the most notable achievements was when Volvo\'s factory driver, Carl-Magnus Skogh, won the grueling 1965 Acropolis Rally in Greece driving a 122S Amazon. The Amazon\'s robust construction and reliable mechanicals made it well-suited for the demanding conditions of rally racing. Volvo even collaborated with the Swedish police to develop specialized equipment like disc brakes, brake assist, and radial tires that were later included on production Amazons used for patrol duties, years before such features became common on regular cars. The Amazon\'s rally pedigree helped establish Volvo\'s reputation for building durable and capable vehicles.', 'https://upload.wikimedia.org/wikipedia/commons/b/b5/1965_Volvo_133_GT_Amazon.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:1965_Volvo_133_GT_Amazon.jpg\">Rutger van der Maar</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 1),
(3, 'Ford', 'Cortina MK1', 'The Ford Cortina MK1, introduced in 1962, became a popular rally car due to its robust design and versatility. It was powered by a range of engines, the most notable being the 1.5-liter and 1.6-liter units. The Cortina MK1\'s success in rallying was bolstered by its affordability and ease of modification.', 'https://upload.wikimedia.org/wikipedia/commons/f/f8/1964_Ford_Lotus_Cortina_Mk1_-_44685277315.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:1964_Ford_Lotus_Cortina_Mk1_-_44685277315.jpg\">Dave Hamster</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 1),
(4, 'Mini', 'Cooper', 'The Mini Cooper, launched in 1961, revolutionized rallying with its compact size and front-wheel-drive layout. Equipped with a 1.0-liter engine, it achieved remarkable success in the Monte Carlo Rally, winning in 1964, 1965, and 1967. Its agility and handling made it a favorite among rally drivers.', 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Mini_Cooper_S_1964_%28AJB_44B%29_-_2016.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Mini_Cooper_S_1964_(AJB_44B)_-_2016.jpg\">DeFacto</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 1),
(5, 'Renault', '8 Gordini', 'The Renault 8 Gordini, introduced in 1964, was a high-performance version of the Renault 8. It featured a 1.1-liter engine, later upgraded to 1.3 liters, and was known for its excellent handling and reliability. The Gordini\'s success in rallying helped establish Renault\'s reputation in motorsport.', 'https://upload.wikimedia.org/wikipedia/commons/7/76/Renault_8_Gordini_%28avant%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Renault_8_Gordini_(avant).jpg\">Kev22</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 1),
(6, 'Saab', 'Monte Carlo 850', 'The Saab Monte Carlo 850, produced in the early 1960s, was a rally version of the Saab 96. It was powered by an 841 cc two-stroke engine and was known for its durability and performance in harsh conditions. The car\'s success in events like the Monte Carlo Rally helped cement Saab\'s legacy in rallying.', 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Simo_Lampinen_-_1965_Rally_Finland.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Simo_Lampinen_-_1965_Rally_Finland.jpg\">Keskisuomalainen</a>, Public domain, via Wikimedia Commons', 1),
(7, 'BMW', '700', 'The BMW 700, produced from 1959 to 1965, was a small rear-engined car that played a crucial role in BMW\'s financial recovery. It was powered by a 697 cc flat-twin engine and was known for its agility and lightweight construction, making it a competitive choice in rallying during its time.', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/W%C3%BCrgauer_Bergrennen_BMW_700-20220911-RM-114544.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:W%C3%BCrgauer_Bergrennen_BMW_700-20220911-RM-114544.jpg\">Reinhold Möller</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 1),
(8, 'Jaguar', 'Mk II', 'The Jaguar MkII, produced from 1959 to 1967, was a luxury sports saloon that excelled in rallying due to its powerful 3.8-liter inline-six engine and excellent handling. It was a favorite among rally drivers for its combination of performance and elegance.', 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Jaguar_-_MK-10_-_1963_-_6_cyl_-_MRZ_6852_-_Kolkata_2014-01-19_6491.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Jaguar_-_MK-10_-_1963_-_6_cyl_-_MRZ_6852_-_Kolkata_2014-01-19_6491.JPG\">Biswarup Ganguly</a>, <a href=\"https://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a>, via Wikimedia Commons', 1),
(9, 'Jaguar', 'XK120', 'The Jaguar XK120, produced from 1948 to 1954, was a sports car known for its speed and agility. It featured a 3.4-liter inline-six engine and was one of the fastest production cars of its time, making it a formidable competitor in early rally events.', 'https://upload.wikimedia.org/wikipedia/commons/8/89/Jaguar_XK120_in_competition_%281950%29_Solitude_Revival_2022_1X7A0088.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Jaguar_XK120_in_competition_(1950)_Solitude_Revival_2022_1X7A0088.jpg\">Alexander Migl</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 1),
(10, 'Jaguar', 'E-Type', 'The Jaguar E-Type, produced from 1961 to 1975, was a revolutionary sports car known for its stunning design and high performance. It was powered by a 3.8-liter or 4.2-liter inline-six engine and was used in various rally events due to its speed and handling capabilities.', 'https://upload.wikimedia.org/wikipedia/commons/1/12/Jaguar_E-Type_Serie_1-_P5190569.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Jaguar_E-Type_Serie_1-_P5190569.jpg\">Reinhold Möller</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 1),
(11, 'Lancia', 'Fulvia', 'The Lancia Fulvia, introduced in 1963, was a compact car that became famous in rallying for its front-wheel-drive layout and excellent handling. It was powered by a range of V4 engines and achieved significant success in the International Rally Championship.', 'https://upload.wikimedia.org/wikipedia/commons/4/41/Lancia_Fulvia-5311948.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Lancia_Fulvia-5311948.jpg\">Reinhold Möller</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 1),
(35, 'BMW', '2002 Turbo', 'The BMW 2002 Turbo represents a milestone in automotive history as the first series-produced vehicle in Europe equipped with a turbocharger. With its sharp lines and aggressive stance, this car was a precursor to the performance models that would later define the BMW brand.', 'https://upload.wikimedia.org/wikipedia/commons/5/5d/BMW_2002_Turbo_%282008-06-28%29_ret.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:BMW_2002_Turbo_(2008-06-28)_ret.jpg\">Spurzem - Lothar Spurzem</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.0/de/deed.en\">CC BY-SA 2.0 DE</a>, via Wikimedia Commons', 3),
(36, 'BMW', '2002Ti', 'The BMW 2002Ti is a testament to the brand\'s commitment to driving pleasure. It\'s a compact and nimble machine that offers an engaging driving experience, thanks to its dual-carburetor setup and responsive handling that made it a hit in both road and rally racing.', 'https://upload.wikimedia.org/wikipedia/commons/b/b8/2017_Rally_Bohemia_Historic_-_Budil-Vejvoda.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2017_Rally_Bohemia_Historic_-_Budil-Vejvoda.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 3),
(37, 'Ford', 'Capri 2300', 'The Ford Capri 2300, often referred to as \"the European Mustang,\" brought American muscle car ethos to a European audience. Its long hood and short rear deck design, combined with a robust V6 engine, made it a popular choice for those seeking both style and performance.', 'https://upload.wikimedia.org/wikipedia/commons/1/15/Nationale_oldtimerdag_Zandvoort_2010%2C_1974_ford_CAPRI_2300_GT%2C_47-BX-75_pic2.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Nationale_oldtimerdag_Zandvoort_2010,_1974_ford_CAPRI_2300_GT,_47-BX-75_pic2.JPG\">Alf van Beem</a>, CC0, via Wikimedia Commons', 3),
(38, 'FSO', 'Polonez 2000 Rally Gr.2', 'The FSO Polonez 2000 Rally Gr.2 is a rugged and resilient competitor, built to withstand the grueling conditions of rally racing. This car is a symbol of Polish automotive engineering, designed to tackle the toughest stages in Group 2 rally competitions.', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/2019_Rally_Poland_-_Piotr_Zalewski.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2019_Rally_Poland_-_Piotr_Zalewski.jpg\">Makary</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 3),
(39, 'Opel', 'Commodore', 'The Opel Commodore seamlessly blends comfort with capability. As a larger cousin to the Opel Rekord, the Commodore offers a more upscale experience without compromising on the reliable performance that Opel\'s are known for, making it a cherished model among classic car aficionados.', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Opel_Commodore_GS_Steinmetz.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Opel_Commodore_GS_Steinmetz.jpg\">Guzmán Lozano;Cropped and levels adjusted by uploader Mr.choppers</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 3),
(40, 'Porsche', '930', 'The Porsche 930, also known as the 911 Turbo, is an engineering marvel that set the standard for high-performance sports cars. With its distinctive \"whale tail\" spoiler and forceful turbocharged flat-six engine, it delivers an exhilarating drive that\'s hard to match.', 'https://upload.wikimedia.org/wikipedia/commons/4/46/Porsche_930%2C_Tour_Auto_2015%2C_Toulouse.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Porsche_930,_Tour_Auto_2015,_Toulouse.jpg\">Handelsgeselschaft</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 3),
(41, 'Triumph', '2000', 'The Triumph 2000 stands out with its sophisticated styling and British charm. This executive car is known for its smooth ride and refined interior, offering a level of luxury that was highly appreciated in its time.', 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Triumph_2000_Rally_%281968%29_%2835926657281%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Triumph_2000_Rally_(1968)_(35926657281).jpg\">Andrew Bone from Weymouth, England</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 3),
(43, 'Lancia', 'Beta Coupe', 'The Lancia Beta Coupe stands as a testament to Italian automotive design and engineering. With its distinctive silhouette and refined aesthetics, it captures the essence of the 1970s sports car era. The Beta Coupe is celebrated for its balanced handling and responsive engine, making it a cherished model among classic car enthusiasts.', 'https://upload.wikimedia.org/wikipedia/commons/1/1e/2015_Rally_Bohemia_Historic_-_Kroupar.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2015_Rally_Bohemia_Historic_-_Kroupar.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 4),
(44, 'Porsche', '914/6', 'The Porsche 914/6 is an iconic representation of Porsche’s racing heritage. This model, particularly famous for its participation in the 1971 Monte Carlo rally, boasts a mid-engine layout that ensures a low center of gravity and superior balance. Its 2.0-liter flat-six engine delivers a harmonious blend of power and agility, making it a highly sought-after collector’s item for both its performance and its storied history in motorsport.', 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Porsche_914-6_GT_%281970%29_Solitude_Revival_2019_IMG_1790.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Porsche_914-6_GT_(1970)_Solitude_Revival_2019_IMG_1790.jpg\">Alexander Migl</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 4),
(45, 'Alpine-Renault', 'A110 1300 Gordini', 'The Alpine-Renault A110 1300 Gordini is a marvel of French automotive engineering, embodying the spirit of rally racing. Its lightweight chassis and aerodynamic design contributed to its nimbleness and agility on twisty rally stages. The 1300 Gordini engine, known for its reliability and spirited performance, helped the A110 achieve numerous victories in the golden age of rallying, cementing its legacy as a giant-killer in the motorsport world.', 'https://upload.wikimedia.org/wikipedia/commons/2/21/Alpine_Renault_Alpine_A110_1300_Gordini_Group_3_Rally_car_%281968%29_Solitude_Revival_2019_IMG_1468.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Alpine_Renault_Alpine_A110_1300_Gordini_Group_3_Rally_car_(1968)_Solitude_Revival_2019_IMG_1468.jpg\">Alexander Migl</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 4),
(46, 'Alfa Romeo', 'Alfasud TI', 'The Alfa Romeo Alfasud TI is lauded for its revolutionary design and spirited driving experience. Introduced in the 1970s, it was a front-wheel-drive pioneer that combined practicality with the Italian flair for performance, making it a beloved model among enthusiasts.', 'https://upload.wikimedia.org/wikipedia/commons/2/24/Federico_Ormezzano_-_Alfa_Romeo_Alfasud_TI_%281974_Rallye_Sanremo%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Federico_Ormezzano_-_Alfa_Romeo_Alfasud_TI_(1974_Rallye_Sanremo).jpg\">See page for author</a>, Public domain, via Wikimedia Commons', 5),
(47, 'Alfa Romeo', 'Alfetta GTV Turbodelta', 'The Alfetta GTV Turbodelta stands as a testament to Alfa Romeo’s racing heritage. With its turbocharged engine and distinctive styling, it was a force to be reckoned with on the racetrack and remains a highly sought-after classic today.', 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Amilcare_Ballestrieri_-_Alfa_Romeo_Alfetta_GT_%281975_Rallye_Elba%2C_Volterraio%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Amilcare_Ballestrieri_-_Alfa_Romeo_Alfetta_GT_(1975_Rallye_Elba,_Volterraio).jpg\">See page for author</a>, Public domain, via Wikimedia Commons', 5),
(48, 'Alpine-Renault', 'A110', 'The Alpine-Renault A110 is an iconic sports car with a rich rally legacy. Its lightweight construction and rear-engine layout made it a dominant force in the World Rally Championship during the early 1970s.', 'https://upload.wikimedia.org/wikipedia/commons/9/99/Renault_Alpine_A_110_%28Sp%29.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Renault_Alpine_A_110_(Sp).JPG\">Lothar Spurzem</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.0/de/deed.en\">CC BY-SA 2.0 DE</a>, via Wikimedia Commons', 5),
(49, 'Audi', 'Quattro', 'The Audi Quattro revolutionized rally racing with its all-wheel-drive system. This groundbreaking technology provided unmatched traction and handling, propelling the Quattro to numerous rally victories and cementing its place in automotive history.', 'https://upload.wikimedia.org/wikipedia/commons/6/64/Audi_Quattro_%28Group_4%29_%281983%29_Solitude_Revival_2022_1X7A0315.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Audi_Quattro_(Group_4)_(1983)_Solitude_Revival_2022_1X7A0315.jpg\">Alexander Migl</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 5),
(50, 'Ferrari', '308 GTB', 'The Ferrari 308 GTB is an emblematic model that embodies the essence of a classic Ferrari. Its sleek design, mid-engine configuration, and thrilling V8 soundtrack have made it an enduring symbol of Italian sports car excellence.', 'https://upload.wikimedia.org/wikipedia/commons/9/98/Ferrari_308_GTS_Inter_Tour_Auto_2014_Circuit_de_Dijon_Prenois_07.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Ferrari_308_GTS_Inter_Tour_Auto_2014_Circuit_de_Dijon_Prenois_07.jpg\">François de Dijon</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 5),
(51, 'Porsche', '911', 'The Porsche 911 is an automotive icon that has stood the test of time. Renowned for its distinctive silhouette and rear-engine layout, the 911 has evolved over decades while maintaining its status as a benchmark for sports car performance.', 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Rally_Bohemia_Legend_2013_-_Porsche_911_-_H4.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Rally_Bohemia_Legend_2013_-_Porsche_911_-_H4.JPG\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 5),
(52, 'Citroën', 'DS21', 'The Citroën DS21 is a true masterpiece of automotive innovation, known for its futuristic body lines and advanced technological features. The DS21 offered unparalleled ride comfort with its hydropneumatic suspension, which is still considered one of the most advanced to this day.', 'https://upload.wikimedia.org/wikipedia/commons/6/66/Pauli_Toivonen_-_1962_Rally_Finland.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Pauli_Toivonen_-_1962_Rally_Finland.jpg\">Keskisuomalainen</a>, Public domain, via Wikimedia Commons', 5),
(53, 'Datsun', '240Z', 'The Datsun 240Z is a Japanese design icon that gained fame for its performance and reliability. With its legendary six-cylinder engine and beautiful, sporty silhouette, the 240Z won the hearts of car enthusiasts worldwide.', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/McLeod_1974_Graham_Ruckert.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:McLeod_1974_Graham_Ruckert.jpg\">Graham-ruckert</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 5),
(54, 'Fiat', 'Abarth 124 Rallye', 'The Fiat Abarth 124 Rallye is a symbol of Italian rally spirit. With a powerful engine and lightweight construction, the Abarth 124 was built for victory, proving itself on numerous rally courses.', 'https://upload.wikimedia.org/wikipedia/commons/8/8d/1972_Rallye_4_Regions_-_Paganelli_and_Russo%27s_Fiat_124_Spider.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:1972_Rallye_4_Regions_-_Paganelli_and_Russo%27s_Fiat_124_Spider.jpg\">ATTUALFOTO</a>, Public domain, via Wikimedia Commons', 5),
(55, 'Ford', 'Escort RS1600 Gr.4', 'The Ford Escort RS1600 Gr.4 is a rally legend that defined an era in motorsports. With its reliable BDA engine and excellent handling, the Escort RS1600 became synonymous with rally success.', 'https://upload.wikimedia.org/wikipedia/commons/1/12/Ford_Escort_RS1600_-_Race_Retro_2008_01.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Ford_Escort_RS1600_-_Race_Retro_2008_01.jpg\">estoril</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 5),
(56, 'Lancia', 'Stratos HF', 'The Lancia Stratos HF is one of the most recognizable and successful rally cars in history. Its futuristic design and incredible dynamics made the Stratos HF a legend, winning numerous championships.', 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Sandro_Munari_-_Lancia_Stratos_HF_Marlboro_%281974_Rallye_Sanremo%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Sandro_Munari_-_Lancia_Stratos_HF_Marlboro_(1974_Rallye_Sanremo).jpg\">See page for author</a>, Public domain, via Wikimedia Commons', 5),
(57, 'Porsche', '934 Turbo', 'The Porsche 934 Turbo is a true feat of engineering, combining turbo power with the classic Porsche line. As the racing version of the famous 911, the 934 Turbo made its presence known on race tracks around the world.', 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Porsche_934_RSR_Turbo_%2852687247549%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Porsche_934_RSR_Turbo_(52687247549).jpg\">Alexandre Prevot from Nancy, France</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.0\">CC BY-SA 2.0</a>, via Wikimedia Commons', 5),
(58, 'Fiat', '125p', 'The Fiat 125p is a classic sedan that became a symbol of automotive reliability and practicality in many countries. Its robust design and adaptable nature made it a popular choice for families and businesses alike, serving faithfully in various roles from daily commuting to official government use.', 'https://upload.wikimedia.org/wikipedia/commons/0/07/Rajd_Polski_1973_-_Marian_Bie%C5%84.png', '<a href=\"https://commons.wikimedia.org/wiki/File:Rajd_Polski_1973_-_Marian_Bie%C5%84.png\">Jadwiga Rubiś</a>, Public domain, via Wikimedia Commons', 5),
(60, 'Audi', 'Quattro A1', 'Iconic rally car that dominated the World Rally Championship in the early 1980s.', 'https://upload.wikimedia.org/wikipedia/commons/1/14/Audi_Quattro_A2_20060407.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Audi_Quattro_A2_20060407.jpg\">Tony Harrison</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.0\">CC BY-SA 2.0</a>, via Wikimedia Commons', 6),
(61, 'Audi', 'Quattro A2', 'A continuation of the Quattro’s success in rallying, with improvements for better performance.', 'https://upload.wikimedia.org/wikipedia/commons/1/13/Portugal_84_Audi_Quattro_A2.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Portugal_84_Audi_Quattro_A2.jpg\">MPW57</a>, Public domain, via Wikimedia Commons', 6),
(62, 'Audi', 'Sport Quattro S1 E2', 'A highly evolved Group B rally car with a powerful turbocharged engine and advanced aerodynamics.', 'https://upload.wikimedia.org/wikipedia/commons/c/cc/2020_Rally_Bohemia_Legend_-_Ulip_-_Audi_Sport_Quattro_S1_E2.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2020_Rally_Bohemia_Legend_-_Ulip_-_Audi_Sport_Quattro_S1_E2.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 6),
(63, 'BMW', 'M1', 'A supercar produced by BMW, known for its racing pedigree and as the only mid-engined BMW to be mass-produced.', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/BernardBeguin-24hYpern1984.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:BernardBeguin-24hYpern1984.jpg\">Eddi Laumanns aka RX-Guru</a>, <a href=\"https://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a>, via Wikimedia Commons', 6),
(64, 'Citroën', 'BX 4TC EVO1986', 'A Group B rally car based on the Citroën BX, known for its unique hydropneumatic suspension system.', 'https://upload.wikimedia.org/wikipedia/commons/d/df/Citro%C3%ABn_BX_4TC_Evolution_cropped.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Citro%C3%ABn_BX_4TC_Evolution_cropped.jpg\">Citroën_BX_4TC_Evolution.jpg: Dedeuchederivative work: Photographe Amateur sport extremes</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 6),
(65, 'Citroën', 'Visa Chrono II', 'A special edition of the Citroën Visa, designed to be a sporty version with improved performance.', 'https://upload.wikimedia.org/wikipedia/commons/3/34/Visa_Chrono_rallye%2C_69.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Visa_Chrono_rallye,_69.jpg\">Nanzig</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 6),
(67, 'Ferrari', '288 GTO', 'A homologation special and one of the most iconic Ferraris ever made, designed for Group B racing.', 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Chris_Evans%27_Ferrari_288_GTO_Goodwood_2011_%286005372935%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Chris_Evans%27_Ferrari_288_GTO_Goodwood_2011_(6005372935).jpg\">Louis Rix from UK</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 6),
(68, 'Ford', 'RS200 E', 'Purpose-built Group B rally car known for its striking design and potent turbocharged engine.', 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Thor_Holm_Ford_RS200_Lydden_Hill_1987_001.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Thor_Holm_Ford_RS200_Lydden_Hill_1987_001.jpg\">PSParrot</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 6),
(69, 'Lancia', 'Delta S4', 'A Group B rally car famous for its twin-charging system and success in the World Rally Championship.', 'https://upload.wikimedia.org/wikipedia/commons/a/a3/2006_Rally_Legend_-_Lancia_Delta_S4.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2006_Rally_Legend_-_Lancia_Delta_S4.jpg\">Albmartiniracing at Italian Wikipedia</a>, <a href=\"http://creativecommons.org/licenses/by-sa/3.0/\">CC BY-SA 3.0</a>, via Wikimedia Commons', 6),
(70, 'Peugeot', '205 Turbo 16', 'Legendary Group B rally car that achieved significant success in the mid-1980s.', 'https://upload.wikimedia.org/wikipedia/commons/2/22/Peugeot_205_Turbo_16_%2814%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Peugeot_205_Turbo_16_(14).jpg\">Jorjum</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 6),
(71, 'Porsche', '959', 'A technological tour de force from the 1980s, originally developed for Group B rallying.', 'https://upload.wikimedia.org/wikipedia/commons/1/11/Porsche_959_Dakar_racer_-_Goodwood_Festival_of_Speed_%286293073862%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Porsche_959_Dakar_racer_-_Goodwood_Festival_of_Speed_(6293073862).jpg\">PSParrot from England</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 6),
(72, 'Lancia', '037', 'The Lancia 037 is a legendary rally car that marked the end of an era as the last rear-wheel-drive vehicle to win the World Rally Championship. Built for Group B racing, the 037 was known for its supercharged engine and remarkable handling, which helped it clinch the manufacturers\' title in the 1983 season.', 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Lancia_Rally_037_at_Goodwood_2015-06-26_001.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Lancia_Rally_037_at_Goodwood_2015-06-26_001.jpg\">Neil Hooting</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 6),
(73, 'Porsche', '911 SC RS', 'The Porsche 911 SC RS is a rare and special model, built in 1984 with only 20 units produced. It was developed so that the factory Rothmans Porsche Rally Team could compete on the international stage. With a 3.0 L air-cooled flat 6 engine, it produced 255 bhp at 7000 rpm and 184 ft lbs of torque at 6500 rpm. This car was capable of 0 - 60 mph in 5.3 seconds and had a top speed of 158 mph, making it a formidable competitor in its time.', 'https://upload.wikimedia.org/wikipedia/commons/2/21/Piotr_Zaleski_-Jacek_Gruszczy%C5%84ski_Porsche_911_SC_RS_Rajd_Nadwislanski_HRSMP_2018_.arch_HRSMP_2018_fot_G.Rybarski.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Piotr_Zaleski_-Jacek_Gruszczy%C5%84ski_Porsche_911_SC_RS_Rajd_Nadwislanski_HRSMP_2018_.arch_HRSMP_2018_fot_G.Rybarski.jpg\">Don Boolgot</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 6),
(102, 'Ford', 'Escort RS Cosworth Gr.N', 'The Ford Escort RS Cosworth is a homologation special of the fifth-generation European Ford Escort. It was designed to qualify as a Group A car for the World Rally Championship, competing between 1993 and 1998. It was powered by a longitudinally mounted Cosworth YBT, a highly tunable turbocharged 2.0 L Inline-four engine.', 'https://upload.wikimedia.org/wikipedia/commons/b/b4/2019_Rally_Bohemia_Historic_-_Neumann-Hlavat%C3%BD_-_Ford_Escort_RS_Cosworth_-_02.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2019_Rally_Bohemia_Historic_-_Neumann-Hlavat%C3%BD_-_Ford_Escort_RS_Cosworth_-_02.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 10),
(103, 'Ford', 'Fiesta ST', 'The Ford Fiesta ST is a hot hatch version of the Ford Fiesta. It is powered by a 1.5-liter EcoBoost engine that delivers 200 horsepower and 300 Nm of torque. It features a sporty body styling with a rear spoiler, and it can accelerate from 0 to 100 km/h in just 6.5 seconds.', 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Elfyn_Evans-2007_Wales_Rally_GB_001.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Elfyn_Evans-2007_Wales_Rally_GB_001.jpg\">Darren</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 10),
(104, 'Honda', 'Civic Type R', 'The Honda Civic Type R is a high-performance version of the Honda Civic, designed to homologate the car for the World Rally Championship. It is powered by a turbocharged 1.8-litre engine with outputs of 154kW and 250Nm.', 'https://upload.wikimedia.org/wikipedia/commons/1/19/2015_Rally_Bohemia_-_Schenk%2C_Honda_Civic_Type-R.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:2015_Rally_Bohemia_-_Schenk,_Honda_Civic_Type-R.JPG\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 10),
(105, 'Mazda', '323 4WD', 'The Mazda 323 GTR is a compact car introduced in 1992. It is powered by a turbocharged and intercooled, twin-overhead-camshaft, 16-valve, 1.839 cc, inline 4-cylinder engine. This power plant has been specifically developed for the GT-R by Mazda’s Motor Sports Engineering Group.', 'https://upload.wikimedia.org/wikipedia/commons/2/26/R%C3%A9tromobile_2011_-_Mazda_323_4WD_Groupe_N_-_001.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:R%C3%A9tromobile_2011_-_Mazda_323_4WD_Groupe_N_-_001.jpg\">Thesupermat</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 10),
(107, 'Lancia', 'Delta HF Integrale Gr.N', 'The Lancia Delta HF Integrale is a high-performance version of the Lancia Delta, designed for Group A rally racing. It’s powered by a turbocharged 2.0-liter engine and features all-wheel drive.', 'https://upload.wikimedia.org/wikipedia/commons/7/76/Lancia_Delta_HF_Integrale_1992.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Lancia_Delta_HF_Integrale_1992.jpg\">Andrew-44-19</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 10),
(108, 'Subaru', 'ImprezaWRX STI', 'The Subaru Impreza WRX STI is a high-performance specification model of the Subaru Impreza compact car line, manufactured by Japanese automaker Fuji Heavy Industries Subaru. It was produced from 1994 to 2012.', 'https://upload.wikimedia.org/wikipedia/commons/d/de/Subaru_Impreza_WRX_STI_2006_Rally_Car.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Subaru_Impreza_WRX_STI_2006_Rally_Car.jpg\">Simondahn</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 10),
(109, 'Ford', 'Puma Rally1', 'The Ford Puma Rally1 is a Rally1 car built by the M-Sport Ford World Rally Team that was used in the World Rally Championship in 2022. It is based upon the road car version of Ford Puma crossover, and was developed for the purpose of replacing the Ford Fiesta WRC, which competed between 2017 and 2021. The car was revealed at the 2021 Goodwood Festival of Speed.', 'https://upload.wikimedia.org/wikipedia/commons/3/38/Pierre-Louis_Loubet_Rally_Finland_2023_Rannankyl%C3%A4.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Pierre-Louis_Loubet_Rally_Finland_2023_Rannankyl%C3%A4.jpg\">Antti Leppänen</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 12),
(110, 'Hyundai', 'i20 N Rally1', 'The Hyundai i20 N Rally1 is a Rally1 car built by the Hyundai Motorsport that is driven in the World Rally Championship starting in 2022. The prototype car is based on the Hyundai i20 N production car and was first revealed to public during testing in the south of France in May 2021.', 'https://upload.wikimedia.org/wikipedia/commons/5/53/Ott_T%C3%A4nak_Rally_Finland_2022_Rannankyl%C3%A4.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Ott_T%C3%A4nak_Rally_Finland_2022_Rannankyl%C3%A4.jpg\">Antti Leppänen</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 12),
(111, 'Toyota', 'GR Yaris Rally1', 'The Toyota GR Yaris Rally1 is a Rally1 car built by Toyota Gazoo Racing WRT that has been driven in the World Rally Championship since 2022. The prototype car is based on the GR Yaris production car3. The car won the Autosport Awards Rally Car of the Year in 2023.', 'https://upload.wikimedia.org/wikipedia/commons/0/00/WRC_Central_European_Rallye_2023_Nr._33_%281%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:WRC_Central_European_Rallye_2023_Nr._33_(1).jpg\">Lukas Raich</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 12),
(112, 'Alfa Romeo', '75 Turbo', 'The Alfa Romeo 75 Turbo is a classic Italian sports car known for its distinctive design and high performance. It is a favorite among car enthusiasts.', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Alfa75Turbo.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Alfa75Turbo.jpg\">The original uploader was Rttk at German Wikipedia.</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 7),
(113, 'Alfa Romeo', 'GTV6', 'The Alfa Romeo GTV6 is a stylish and powerful car that offers a thrilling driving experience. Its sleek design and impressive engine make it a standout in its class.', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Alfa_Romeo_GTV6_at_Hamburger_Stadtpark-Revival_2018.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Alfa_Romeo_GTV6_at_Hamburger_Stadtpark-Revival_2018.jpg\">Sebastian Koppehel</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 7),
(114, 'Audi', '200', 'The Audi 200 is a robust and reliable car designed for off-road adventures. Its sturdy build and powerful engine make it perfect for challenging terrains.', 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Slide_Agfachrome_Rallye_de_Portugal_1988_Montejunto_017_%2825922818744%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Slide_Agfachrome_Rallye_de_Portugal_1988_Montejunto_017_(25922818744).jpg\">_morgado</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 7),
(116, 'Audi', 'Coupe Quattro Type 85', 'The Audi Coupe Quattro Type 85 is a sporty coupe that offers a blend of performance and style. Its sleek design and powerful engine make it a joy to drive.', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Audi_Quattro_BW_2016-07-17_13-11-49.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Audi_Quattro_BW_2016-07-17_13-11-49.jpg\">Berthold Werner</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 7),
(117, 'BMW', 'E30 M3', 'The BMW E30 M3 is a high-performance version of the BMW 3 Series, developed by BMW\'s in-house motorsport division. Known for its agility and sporty aesthetics.', 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Fernando_Silva_D%C3%ADaz_in_Rally_Sur_do_Condado_4.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Fernando_Silva_D%C3%ADaz_in_Rally_Sur_do_Condado_4.jpg\">Harpagornis</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 7),
(118, 'Citroën', 'Xsara Kit Car', 'The Citroën Xsara Kit Car is a compact car produced by the French automaker Citroën. It is known for its versatility and the ability to customize it to the owner\'s preferences.', 'https://upload.wikimedia.org/wikipedia/commons/9/95/Citroen_Xsara_T4.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Citroen_Xsara_T4.jpg\">Stez cmr</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 7),
(120, 'Lancia', 'Delta HF Integrale', 'The Lancia Delta HF Integrale is a legendary rally car that dominated the World Rally Championship in the late 1980s. Its all-wheel-drive system and turbocharged engine made it a formidable competitor.', 'https://upload.wikimedia.org/wikipedia/commons/4/47/W%C3%BCrgauer_Bergrennen_Lancia_Delta_HF_Integrale-20220911-RM-114745.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:W%C3%BCrgauer_Bergrennen_Lancia_Delta_HF_Integrale-20220911-RM-114745.jpg\">Reinhold Möller</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 7),
(121, 'Mitsubishi', 'Lancer Evolution V', 'The Mitsubishi Lancer Evolution V is a high-performance sedan that is part of the famous Lancer Evolution series. It is known for its impressive speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Mitsubishi_Lancer_Evolution_5.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Mitsubishi_Lancer_Evolution_5.jpg\">EmptySpace0001</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 7),
(122, 'Subaru', 'Impreza WRX', 'The Subaru Impreza WRX is a compact sports car that is part of the well-known Impreza line. It is renowned for its all-wheel-drive system and turbocharged engine.', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Subaru_Impreza_WRX_STi_N8-2004_Cyprus_Rally_002.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Subaru_Impreza_WRX_STi_N8-2004_Cyprus_Rally_002.jpg\">Leonid Mamchenkov from Limassol, Cyprus</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 7),
(123, 'Toyota', 'Celica GT-Four ST205', 'The Toyota Celica GT-Four ST205 is a high-performance version of the Toyota Celica. It is known for its success in rally racing and its unique \"round-eye\" headlights.', 'https://upload.wikimedia.org/wikipedia/commons/e/e4/Vahan_Terzian_-_Rothmans_Cyprus_Rally_1994.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Vahan_Terzian_-_Rothmans_Cyprus_Rally_1994.jpg\">Andros Hadjilucas</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 7),
(124, 'Nissan', 'Pulsar GTI-R NME', 'The Nissan Pulsar GTI-R NME is a compact sports car that is part of the Pulsar series. It is known for its powerful turbocharged engine and distinctive styling.', 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Nissan_Pulsar_Gr.A_001.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Nissan_Pulsar_Gr.A_001.jpg\">I, 天然ガス</a>, <a href=\"http://creativecommons.org/licenses/by-sa/3.0/\">CC BY-SA 3.0</a>, via Wikimedia Commons', 7),
(125, 'Volkswagen', 'Golf GTI 16V', 'The Volkswagen Golf GTI 16V is a hot hatch that is part of the iconic Golf GTI series. It is known for its sporty performance and practicality.', 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Slide_Agfachrome_Rallye_de_Portugal_1988_Montejunto_004_%2826528003285%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Slide_Agfachrome_Rallye_de_Portugal_1988_Montejunto_004_(26528003285).jpg\">_morgado</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 7),
(126, 'Subaru', 'Impreza 555', 'The Subaru Impreza 555 is a legendary rally car that made its competition debut at the Rally Finland in 1993. The “555” in its name comes from Subaru’s key sponsor, State Express 555, who manufactured cigarettes but were forbidden to advertise under FIA guidelines.\n\nBeing smaller than the Legacy RS it replaced, the Impreza 555 was a more successful car. It used the same engine, chassis, and strut suspension, but had smaller dimensions for increased responsiveness. The engine also got a new turbo, intercooler, and cylinder heads.\n\nThe car’s inaugural race saw Ari Vatanen finishing second at Finland’s 1000 Lakes Rally. However, it was in 1995 that the car truly shone. Star drivers Colin McCrae and Carloz Saintz practically dominated the season, taking victories at the RAC Rally, Catalunya Rally, Rally of New Zealand, and Portugal Rally1. This set the pace for two further Manufacturers championships in 1996 and ’97. Colin McCrae also won the Drivers’ World Rally Championship in 1995, becoming the youngest world champion to ever clinch the title.\n\nThe Subaru Impreza 555 continued into 1996, but an entirely new set of regulations forced Subaru to release the WRC97 for subsequent seasons. Despite its retirement, the Subaru Impreza 555 remains an icon in the world of rally racing.', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/2007_Subaru_Impreza_WRC_-_Flickr_-_exfordy_%282%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2007_Subaru_Impreza_WRC_-_Flickr_-_exfordy_(2).jpg\">Brian Snelson from Hockley, Essex, England</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 7),
(127, 'Citroën', 'C3 WRC', 'The Citroën C3 WRC is a rally car built for the World Rally Championship. The car made its debut in the 2017 season at the Monte Carlo Rally.', 'https://upload.wikimedia.org/wikipedia/commons/d/df/C3_WRC_in_Monte_Carlo_-_fotocredd_Citro%C3%ABn_Racing.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:C3_WRC_in_Monte_Carlo_-_fotocredd_Citro%C3%ABn_Racing.jpg\">Citroën Racing</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 11),
(128, 'Citroën', 'C4 WRC', 'The Citroën C4 WRC is a world rally car built for the Citroën World Rally Team by Citroën Racing to compete in the World Rally Championship.', 'https://upload.wikimedia.org/wikipedia/commons/2/20/Loeb_WRC_Wales_Rally_GB_2010.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Loeb_WRC_Wales_Rally_GB_2010.jpg\">bobaliciouslondon</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 11),
(130, 'Ford', 'Fiesta RS WRC', 'The Ford Fiesta RS WRC is a rally car built by the Ford World Rally Team to compete in the World Rally Championship. It is based on the Ford Fiesta road car.', 'https://upload.wikimedia.org/wikipedia/commons/5/52/Ford_Fiesta_RS_WRC_%28Gabriel_Pozzo_y_Daniel_Stillo%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Ford_Fiesta_RS_WRC_(Gabriel_Pozzo_y_Daniel_Stillo).jpg\">Alejandro Zurcher</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 11),
(131, 'Hyundai', 'Accent WRC', 'The Hyundai Accent WRC is a rally car that was used by Hyundai in the World Rally Championship from 2000 to 2003. It is based on the Hyundai Accent road car.', 'https://upload.wikimedia.org/wikipedia/commons/8/82/Am2_hyundai.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Am2_hyundai.jpg\">Pasi Piesanen</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 11),
(132, 'Mitsubishi', 'Lancer Evolution WRC', 'The Mitsubishi Lancer Evolution WRC is a rally car built by Ralliart, Mitsubishi Motors\' motorsport division, to compete in the World Rally Championship.', 'https://upload.wikimedia.org/wikipedia/commons/5/58/Monte-Carlo_WRC_2014_-_12050461616.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Monte-Carlo_WRC_2014_-_12050461616.jpg\">Otire</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.0\">CC BY-SA 2.0</a>, via Wikimedia Commons', 11),
(134, 'Peugeot', '206 WRC', 'The Peugeot 206 WRC is a rally car that was used by Peugeot in the World Rally Championship. The car made its debut in the 1999 season and achieved significant success, including winning the manufacturers\' title in 2000, 2001, and 2002.', 'https://upload.wikimedia.org/wikipedia/commons/b/bd/2015_Rally_Bohemia_-_Vojt%C4%9Bch%2C_Peugeot_206_WRC.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:2015_Rally_Bohemia_-_Vojt%C4%9Bch,_Peugeot_206_WRC.JPG\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 11),
(135, 'Toyota', 'Corolla WRC', 'The Toyota Corolla WRC is a World Rally Car built by Toyota to compete in the World Rally Championship. The car, which is based on the European Corolla 3-door Hatchback, was developed and prepared by Toyota Motorsport GmbH in Cologne, Germany.', 'https://upload.wikimedia.org/wikipedia/commons/3/34/Saxony_rally_racing_Toyota_Corolla_WRC_02_%28aka%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Saxony_rally_racing_Toyota_Corolla_WRC_02_(aka).jpg\">André Karwath aka Aka</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.5\">CC BY-SA 2.5</a>, via Wikimedia Commons', 11),
(136, 'Volkswagen', 'Polo R WRC', 'The Volkswagen Polo R WRC is a World Rally Car built and operated by Volkswagen Motorsport and based on the Volkswagen Polo for use in the World Rally Championship. The car, which debuted in the 2013 season, has been very successful, winning the manufacturers\' title in its first season and the drivers\' title in its first three seasons.', 'https://upload.wikimedia.org/wikipedia/commons/e/ec/%C3%81lvaro_M%C3%A9ndez_Castro_-_Volkswagen_Polo_N1.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:%C3%81lvaro_M%C3%A9ndez_Castro_-_Volkswagen_Polo_N1.jpg\">Harpagornis</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 11),
(137, 'SEAT', 'Córdoba WRC', 'The SEAT Córdoba WRC is a World Rally Car built by SEAT to compete in the World Rally Championship. The car, which is based on the SEAT Córdoba, was used by the company from 1998 to 2000.', 'https://upload.wikimedia.org/wikipedia/commons/8/87/SEAT_Cordoba_D._Sola_%28R.cangas%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:SEAT_Cordoba_D._Sola_(R.cangas).jpg\">Astursalas</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 11),
(138, 'Škoda', 'Octavia WRC Evo3', 'The Škoda Octavia WRC is a World Rally Car built by Škoda to compete in the World Rally Championship. The car, which is based on the Škoda Octavia, was used by the company from 1999 to 2003.', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/As_skoda.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:As_skoda.jpg\">Pasi Piesanen</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 11),
(139, 'Subaru', 'Impreza WRC GD', 'The Subaru Impreza WRC is a World Rally Car built by Subaru in compliance with FIA regulations for competition in the World Rally Championship. The GD chassis was used from 2001 to 2007.', 'https://upload.wikimedia.org/wikipedia/commons/7/7a/Sarrazin%2C_Rallye_Catalunya_2006._-_panoramio.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Sarrazin,_Rallye_Catalunya_2006._-_panoramio.jpg\">espinya</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 11),
(140, 'Mitsubishi', 'Lancer WRC05', 'The Mitsubishi Lancer WRC is a World Rally Car built by Ralliart, Mitsubishi Motors\' motorsport division, to compete in the World Rally Championship. The car was introduced in 2001 and has achieved some success in various international rally championships.', 'https://upload.wikimedia.org/wikipedia/commons/5/52/2006FOS_2006MitsubishiLancerEvolution.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2006FOS_2006MitsubishiLancerEvolution.jpg\">Brian Snelson from Hockley, Essex, England</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 11),
(141, 'Citroën', 'C2 S1600', 'The Citroën C2 S1600 is a rally car built by Citroën for the Super 1600 class in rallying. It is known for its agility and lightweight design.', 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Sergio_P%C3%A9rez_-_2008_Rally_Catalunya.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Sergio_P%C3%A9rez_-_2008_Rally_Catalunya.jpg\">rallycarter</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 8),
(142, 'Citroën', 'Saxo VTS S1600', 'The Citroën Saxo VTS S1600 is a rally car that was used by Citroën in the Super 1600 class. It is based on the Citroën Saxo road car.', 'https://upload.wikimedia.org/wikipedia/commons/2/23/Sola_aviles.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Sola_aviles.jpg\">Astursalas</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 8),
(143, 'Fiat', 'Punto S1600', 'The Fiat Punto S1600 is a rally car built by Fiat for the Super 1600 class. It is known for its compact design and powerful engine.', 'https://upload.wikimedia.org/wikipedia/commons/6/68/S16_ad_fiat.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:S16_ad_fiat.jpg\">Pasi Piesanen</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 8),
(144, 'Ford', 'Fiesta S1600', 'The Ford Fiesta S1600 is a rally car built by Ford for the Super 1600 class. It is based on the Ford Fiesta road car and is known for its speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Haguenau_rallye_2010.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Haguenau_rallye_2010.JPG\">Jef132</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 8);
INSERT INTO `enc_cars` (`id`, `brand`, `model`, `description`, `photo_url`, `photo_html_attribution`, `category`) VALUES
(145, 'Ford', 'Puma S1600', 'The Ford Puma S1600 is a rally car that was used by Ford in the Super 1600 class. It made its debut at the Catalunya Rally.', 'https://upload.wikimedia.org/wikipedia/commons/9/91/S16_fd_ford_cropped.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:S16_fd_ford_cropped.jpg\">Pasi Piesanen</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 8),
(146, 'Opel', 'Corsa S1600', 'The Opel Corsa S1600 is a rally car built by Opel for the Super 1600 class. It is based on the Opel Corsa road car and is known for its agility and performance.', 'https://upload.wikimedia.org/wikipedia/commons/0/08/Saxony_rally_racing_Opel_Corsa_Super_1600_14_%28aka%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Saxony_rally_racing_Opel_Corsa_Super_1600_14_(aka).jpg\">André Karwath aka Aka</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.5\">CC BY-SA 2.5</a>, via Wikimedia Commons', 8),
(147, 'Renault', 'Clio S1600', 'The Renault Clio S1600 is a rally car built by Renault for the Super 1600 class. It is based on the Renault Clio road car and is known for its speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/8/83/Renault_Clio_S1600_2.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Renault_Clio_S1600_2.jpg\">Maurizio Zanetti</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 8),
(148, 'Fiat', 'Grande Punto Abarth S2000', 'The Fiat Grande Punto Abarth S2000 is a rally car built by Fiat for the Super 2000 class. It is known for its compact design and powerful engine.', 'https://upload.wikimedia.org/wikipedia/commons/1/19/Jimmie_Johnson_-_2007_Race_of_Champions.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Jimmie_Johnson_-_2007_Race_of_Champions.jpg\">christianb_7</a>, <a href=\"https://creativecommons.org/licenses/by-sa/2.0\">CC BY-SA 2.0</a>, via Wikimedia Commons', 9),
(149, 'Ford', 'Fiesta S2000', 'The Ford Fiesta S2000 is a rally car built by Ford for the Super 2000 class. It made its debut in the 2010 season at the Finland Rally.', 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Mikko_Hirvonen_Fiesta_S2000_Monte_Carlo_Rally_2010_003.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Mikko_Hirvonen_Fiesta_S2000_Monte_Carlo_Rally_2010_003.jpg\">Ford Motor Company</a>, <a href=\"https://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a>, via Wikimedia Commons', 9),
(150, 'MG', 'ZR S2000', 'The MG ZR S2000 is a rally car built by MG for the Super 2000 class in rallying. It is known for its agility and lightweight design.', 'https://upload.wikimedia.org/wikipedia/commons/b/b9/MG_Sport_S2000_-_Flickr_-_exfordy.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:MG_Sport_S2000_-_Flickr_-_exfordy.jpg\">Brian Snelson from Hockley, Essex, England</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 9),
(151, 'Mini', 'John Cooper Works S2000', 'The Mini John Cooper Works S2000 is a rally car built by Mini for the Super 2000 class. It is known for its compact design and powerful engine.', 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Logi-technic_mini_2.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Logi-technic_mini_2.jpg\">LTech</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 9),
(153, 'Peugeot', '207 S2000', 'The Peugeot 207 S2000 is a rally car built by Peugeot for the Super 2000 class. It is known for its speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Donchev_sport_peugeot_207_s2000.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Donchev_sport_peugeot_207_s2000.JPG\">Biso</a>, <a href=\"https://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a>, via Wikimedia Commons', 9),
(154, 'Škoda', 'Fabia S2000', 'The Škoda Fabia S2000 is a rally car built by Škoda for the Super 2000 class. It is known for its speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/5/50/Skoda_Fabia_s2000_-_Signor.JPG', '<a href=\"https://commons.wikimedia.org/wiki/File:Skoda_Fabia_s2000_-_Signor.JPG\">User:V12</a>, <a href=\"https://creativecommons.org/licenses/by-sa/3.0\">CC BY-SA 3.0</a>, via Wikimedia Commons', 9),
(155, 'Toyota', 'GR Yaris Rally2', 'The Toyota GR Yaris Rally2 is a rally car built by Toyota for the Rally2 class in rallying. The team aims to produce 40 to 50 GR Yaris Rally2 cars at its Jyväskylä factory in 2024.', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Toyota_GR_Yaris_Rally_2_%2853256798577%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Toyota_GR_Yaris_Rally_2_(53256798577).jpg\">Neil</a>, <a href=\"https://creativecommons.org/licenses/by/2.0\">CC BY 2.0</a>, via Wikimedia Commons', 13),
(156, 'Škoda', 'Fabia Rally2', 'The Škoda Fabia Rally2 is a rally car built by Škoda for the Rally2 class in rallying. It is known for its speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/b/b9/WRC-2_Central_European_Rallye_2023_Nr._26_%284%29.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:WRC-2_Central_European_Rallye_2023_Nr._26_(4).jpg\">Lukas Raich</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 13),
(157, 'Citroën', 'C3 Rally2', 'The Citroën C3 Rally2 is a rally car built by Citroën for the Rally2 class in rallying. It is known for its compact design and powerful engine.', 'https://upload.wikimedia.org/wikipedia/commons/c/cd/2021_Barum_Czech_Rally_Zl%C3%ADn_-_Bonato.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2021_Barum_Czech_Rally_Zl%C3%ADn_-_Bonato.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 13),
(158, 'Hyundai', 'i20 N Rally2', 'The Hyundai i20 N Rally2 is a rally car built by Hyundai for the Rally2 class in rallying. It is known for its speed and handling.', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/2021_Barum_Czech_Rally_Zl%C3%ADn_-_Vl%C4%8Dek_Martin.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2021_Barum_Czech_Rally_Zl%C3%ADn_-_Vl%C4%8Dek_Martin.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 13),
(159, 'Ford', 'Fiesta Rally2', 'The Ford Fiesta Rally2 is a rally car built by Ford for the Rally2 class in rallying. It is known for its compact design and powerful engine.', 'https://upload.wikimedia.org/wikipedia/commons/c/c4/2021_Barum_Czech_Rally_Zl%C3%ADn_-_Cais.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2021_Barum_Czech_Rally_Zl%C3%ADn_-_Cais.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 13),
(160, 'Volkswagen', 'Polo Rally2', 'The Volkswagen Polo Rally2 is a rally car built by Volkswagen for the Rally2 class in rallying. It is known for its compact design and powerful engine.', 'https://upload.wikimedia.org/wikipedia/commons/0/05/2021_Rally_Bohemia_-_Thurn_und_Taxis.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:2021_Rally_Bohemia_-_Thurn_und_Taxis.jpg\">Miloslav Rejha</a>, <a href=\"https://creativecommons.org/licenses/by/4.0\">CC BY 4.0</a>, via Wikimedia Commons', 13);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `enc_categories`
--

CREATE TABLE `enc_categories` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `years` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `chrono` int(11) NOT NULL,
  `photo_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `enc_categories`
--

INSERT INTO `enc_categories` (`id`, `name`, `years`, `description`, `chrono`, `photo_url`) VALUES
(1, 'Early Era', 'Late 19th Century to 1960s', 'First rally cars ever made, helping to establish rallying as sport.', 1, 'https://upload.wikimedia.org/wikipedia/commons/8/89/Jaguar_XK120_in_competition_%281950%29_Solitude_Revival_2022_1X7A0088.jpg'),
(3, 'Group 2', '1970s to 1980s', 'Modified production cars with more extensive changes allowed.', 2, 'https://upload.wikimedia.org/wikipedia/commons/b/b8/2017_Rally_Bohemia_Historic_-_Budil-Vejvoda.jpg'),
(4, 'Group 3', '1970s to 1980s', 'Grand touring cars with limited production.', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/1e/2015_Rally_Bohemia_Historic_-_Kroupar.jpg'),
(5, 'Group 4', '1970s to 1980s', 'Specially modified grand touring cars, leading to more competitive and specialized vehicles.', 4, 'https://upload.wikimedia.org/wikipedia/commons/0/07/Rajd_Polski_1973_-_Marian_Bie%C5%84.png'),
(6, 'Group B', '1982-1986', 'Group B regulations were introduced in 1982, allowing for highly powerful and sophisticated rally cars. Known for its high performance and technological advancements, but also for safety concerns leading to its cancellation in 1986 after several fatal accidents.', 5, 'https://upload.wikimedia.org/wikipedia/commons/1/13/Portugal_84_Audi_Quattro_A2.jpg'),
(7, 'Group A', 'Post-1986', 'Replacement for Group B: Introduced stricter regulations focusing on safety, with engine limits of 2000 cc and 300 bhp.', 7, 'https://upload.wikimedia.org/wikipedia/commons/c/c3/2007_Subaru_Impreza_WRC_-_Flickr_-_exfordy_%282%29.jpg'),
(8, 'Super 1600', '2000-2011', 'It was primarily used in the Junior World Rally Championship (JWRC) between 2001 and 2010, as well as in various national rally championships and international rallycross events.', 9, 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Sergio_P%C3%A9rez_-_2008_Rally_Catalunya.jpg'),
(9, 'Super 2000', '2000 to Present', 'It is an FIA powertrain specification used in various championships, including the World Rally Championship (WRC), British Touring Car Championship (BTCC), and World Touring Car Championship (WTCC).', 10, 'https://upload.wikimedia.org/wikipedia/commons/b/ba/Mikko_Hirvonen_Fiesta_S2000_Monte_Carlo_Rally_2010_003.jpg'),
(10, 'Group N', '1982-2013', 'Group N, often referred to as the \"showroom class,\" was introduced by the FIA in 1982. It is based on production models of street-legal cars with minimal modifications allowed.', 6, 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Elfyn_Evans-2007_Wales_Rally_GB_001.jpg'),
(11, 'WRC', '1997 to Present', 'WRC cars are based on production models but heavily modified for performance and safety.', 8, 'https://upload.wikimedia.org/wikipedia/commons/5/52/Ford_Fiesta_RS_WRC_%28Gabriel_Pozzo_y_Daniel_Stillo%29.jpg'),
(12, 'Rally1', '2021 to Present', 'Top-tier WRC cars with advanced technology and high performance.', 11, 'https://upload.wikimedia.org/wikipedia/commons/5/53/Ott_T%C3%A4nak_Rally_Finland_2022_Rannankyl%C3%A4.jpg'),
(13, 'Rally2', '2021 to Present', '-', 12, 'https://upload.wikimedia.org/wikipedia/commons/6/6e/2021_Barum_Czech_Rally_Zl%C3%ADn_-_Vl%C4%8Dek_Martin.jpg');

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
(8, '\"Calm approach\" helped Ogier in Portugal, believes Toyoda', 'Toyota Gazoo Racing president Akio Toyoda has praised a calmer team approach which helped Sébastien Ogier score successive World Rally Championship victories last time out in Portugal.', 'Toyoda admitted he was impressed, once again, with the Frenchman’s approach to land a record-breaking sixth win at Vodafone Rally de Portugal. “No matter how tough the gravel surface was, Séb was always calm,” he said. “No matter how close and electrifying the competition was, Seb was always smiling to the fans. When something happened, he calmly informed the engineers about the situation and got back to the stages.', '“Then he comes back to the finish line faster than anyone else. I am grateful to have such a true professional driver in our team.” Toyoda admitted issues for Ogier’s team-mates were frustrating. He added: “There was both a disappointing thing and a good thing. The disappointing thing was that the other three cars were not able to drive through without problems. Our goal was for all four cars to have a trouble-free rally, but it became a frustrating result for us again. “On the other hand, the good thing which made me happy was that the team was calmer than before, whatever kind of problem they were facing. Many things happened during the weekend, but I heard everyone tried to stay calm and find a solution. “It is nice to see the team grow. The team gets stronger as each member gets stronger, and as the team gets stronger, the GR Yaris Rally1 will become ever better and stronger. We still have a lot of tough events ahead of us this season, but I hope to continue to grow with everybody in the team.” Despite Ogier’s win, Hyundai moved ahead of Toyota for the first time this season. The Frankfurt-based team heads to round six four points clear at the top of the manufacturers’ championship table.', 'dc478261-4bdc-47a3-8e1d-588d557ab719_220524rbogi.jpg', '2024-05-22 16:00:00'),
(22, 'Ogier stars to lead Rally Italia Sardegna on Friday', 'Sébastien Ogier delivered a near-perfect performance to lead Hyundai Motorsport rival Ott Tänak after Friday’s all-action opening leg at Rally Italia Sardegna.\n\nOgier capitalised on the increased traction offered by his late starting position to win two of the four sun-kissed gravel speed tests in his Toyota GR Yaris, opening an early 4.5sec advantage over i20 N driver Tänak in this sixth round of the FIA World Rally Championship.\n\nThe Frenchman’s only blot on the day was an overly cautious first drive through Sedini-Castelsardo, where he yielded 5.9sec to Tänak whilst trying to conserve tyres. In the end, Pirelli’s hard compound rubber stood up to the test of the Mediterranean holiday island’s high heats and rocky roads.\n\n\"It\'s good,” smiled Ogier. “It’s been extremely rough and demanding for the tyres and I am happy that we made it because it was challenging with only five tyres.\"', 'Tänak went fastest on SS2 and, despite losing hybrid boost on two occasions, second place overnight marks the Estonian’s strongest start to a rally so far this season.\n\nHis team-mate Dani Sordo completed the podium a hefty 28.7sec behind, grabbing the position when M-Sport Ford Puma hotshot Adrien Fourmaux suffered a tyre delamination on SS3. Fourmaux later retired with an electrical issue.\n\nWhile fourth went the way of Toyota’s Takamoto Katsuta, it was a testing afternoon for championship frontrunners Thierry Neuville and Elfyn Evans, who held fifth and sixth respectively after starting first and second on the sandy roads where grip was at its lowest.\n\nA leaking tyre on his GR Yaris during SS1 only compounded Evans’ frustrations and he ended the day almost one minute adrift of the lead.', '“That has definitely been the hardest day you could imagine to open the road on in Sardinia,” exhaled Hyundai star Neuville, who headed Evans by 24 points in the drivers’ standings before this round. “A tough day for us, but [we will] carry on.”\n\nGrégoire Munster trailed Evans by 11.9sec in seventh overall while Sami Pajari led the WRC2 category as well as holding eighth.\n\nSaturday is the longest leg with 149km of competition and no opportunity for midday service. The morning features double runs of Tempio Pausania and Tula, while the afternoon includes stages in the Monte Lerno area with the breathtaking Micky’s Jump.\n\n', '53805804-5f86-493c-b255-e9ca312b5f07_310524atogierfri.jpg', '2024-05-31 20:00:00'),
(23, 'Tänak grabs Italy lead as tyre decision hinders Ogier', 'Ott Tänak came out on top of a seesaw battle with overnight frontrunner Sébastien Ogier on Saturday morning to lead Rally Italia Sardegna by 3.5sec at the day’s midpoint.', 'In a breathless first half to the penultimate day of this sixth FIA World Rally Championship round of the season, Tänak and Ogier traded positions no less than three times in four stages. Ultimately, it was bad luck on Ogier’s part which helped the Estonian rise to the fore.\n\nOgier’s decision to carry only one spare wheel aboard his Toyota GR Yaris backfired when he suffered a deflation on the first stage at Tempio Pausania. That forced the Frenchman to complete the remaining three tests using the same four tyres - a monumental task given the abrasive and increasingly rough road surface.\n\nHyundai driver Tänak was far better equipped with his selection of six Pirellis and won the final two stages, but Ogier remained hot on his heels despite cautiously having to avoid further tyre damage and dealing with heavily worn rubber.\n\n“It’s like driving without power steering and the car is so, so difficult to drive,” Tänak said of the rough conditions in Tula 2. “I am quite exhausted at the moment.”', 'Ogier agreed, adding: “It\'s been a tough loop, and this last stage I have never seen so rough.”\n\nThere was almost double delight for Hyundai after Thierry Neuville surged from fifth to third, but the championship leader’s day came to an early end when he overcooked a right-hander in the finale and slid his i20 N car wide down a bank.\n\nNeuville’s demise elevated Toyota’s Takamoto Katsuta to third overall. The Japanese driver had already overtaken Dani Sordo on SS6, and he completed the loop 17.1sec clear of the Hyundai-driving Spaniard.\n\nSecond in the points before this round, Elfyn Evans trailed Sordo by 23.0sec in fifth. The Welshman struggled to find a positive feeling inside his Toyota and completed SS8 with his car’s front right tyre pushed off the wheel rim.\n\nWRC2 leader Sami Pajari was a mighty sixth overall in his Rally2-specification Toyota. Behind the Finn were Grégoire Munster, Jan Solans, Nikolay Gryazin and Martin Prokop.\n\n', '83fed388-0351-4c4e-a6c1-9467e1a8b48b_010624at-ott-tanak-sardinia01.jpeg', '2024-06-01 20:10:00'),
(24, 'Tänak claims shock Italy win in joint-closest WRC finish', 'Ott Tänak claimed a shock victory at Rally Italia Sardegna on Sunday afternoon after late agony for long-time leader Sébastien Ogier.\n\nThe Estonian, driving a Hyundai i20 N, celebrated his maiden success of the season when a damaged tyre in the final rough road speed test denied Ogier a third consecutive FIA World Rally Champonship victory.\n\nHaving traded blows with Tänak early in the rally, Ogier led since Saturday afternoon in his Toyota GR Yaris. The Frenchman began the rally-closing Wolf Power Stage with a 6.2sec advantage but ended 0.2sec behind after disaster unfolded in the closing kilometres.\n\nToday marks the joint-closest finish in WRC history – matching the result of Rally Jordan in 2011. On that occasion, Ogier was on the other side of the ledger and held off his now team boss Jari-Matti Latvala.\n\nTänak, who scored his previous win in Chile last year, was humble in victory. He faced similar heartbreak on the very same stage in 2019 when a power steering failure cost him a guaranteed win.', '“For the emotion it’s good, but obviously I am very sorry for Séb. To lose a win like this is cruel and I’ve been in exactly the same position myself a couple of years ago.”\n\nDani Sordo made it two Hyundai cars in the top three, helping the Korean marque to remain in the lead of the manufacturers’ championship. The 41-year-old was initially out of sorts but climbed the order as drivers ahead of him suffered heartbreak.\n\nOne of those drivers was his team-mate Thierry Neuville, whose podium bid went awry when he slid off the road on SS8. Neuville’s consolation was that he claimed the full 12 points from Super Sunday to retain the driver’s series lead.', 'Evans’ feeling inside his GR Yaris was not optimal for the rough gravel roads but, while he ended almost three minutes back from the lead in fourth, the Welshman did succeed in reducing Neuville’s buffer from 24 to 18 points. He and Tänak now sit on identical scores.\n\nConsistency rewarded Puma youngster Grégoire Munster with a fifth-place finish. His M-Sport Ford team-mate Adrien Fourmaux ran as high as third early on but retired in Friday’s final test with an electrical fault.\n\nSuch was the level of attrition that WRC2 machinery filled the remaining top 10 positions, with Toyota GR Yaris Rally2 driver Sami Pajari claiming the WRC2 win and sixth overall. Behind him were Yohan Rossel, Jan Solans, Martin Prokop and Kajetan Kajetanowicz.\n\nHigh-speed action awaits the WRC drivers at ORLEN 80th Rally Poland later this month. The gravel event returns to the series for the first time since 2017 and takes place from 27 – 30 June.', '7b1606f6-8346-4a25-ad28-03b228b869fe_020624rbtanak1-1.jpg', '2024-06-02 17:04:00'),
(25, 'Entry List: ORLEN 80th Rally Poland', 'The entry list for the ORLEN 80th Rally Poland has been released, with stars including eight-time FIA World Rally Champion Sébastien Ogier set to contest the returning event.', 'Poland’s high-speed gravel roads have featured on the WRC calendar five times, initially in 2009 and then for four consecutive years from 2014 to 2017. Later this month, after more than six years away, the rally returns to the sport’s top level.\n\nChampionship leader Thierry Neuville tops the entry list for the Mikołajki-based round, which runs from 27 - 30 June. The Belgian, who drives for Hyundai Motorsport, claimed victory the last time Poland featured in 2017. He is joined by Ott Tänak and Andreas Mikkelsen, the latter a previous winner in 2016, in a three-strong i20 N Rally1 entry.\n\nOgier is part of Toyota Gazoo Racing’s triple threat, teaming up with fellow GR Yaris Rally1 drivers Elfyn Evans and Takamoto Katsuta for what will be his fifth outing of the season. Ogier claimed back-to-back Poland victories in 2014 and 2015, driving a Volkswagen at the time.', 'M-Sport Ford is fielding an expanded line-up, with regular stars Adrien Fourmaux and Grégoire Munster joined by Latvian hotshot Mārtiņš Sesks. Sesks, making his top-level debut thanks to the support of M-Sport Ford and WRC Promoter, will drive a non-hybrid Puma Rally1 car alongside co-driver Renars Francis.\n\nAs a three-time winner of the rally, Kajetan Kajetanowicz will be eager to leave his mark on the WRC2 category as his home fixture returns to the WRC. He, along with Oliver Solberg and Gus Greensmith, is among a host of stars driving Škoda Fabia RS Rally2 cars.\n\nFinns Sami Pajari and Roope Korhonen will both field Toyota GR Yaris Rally2s, while Nikolay Gryazin is the sole Citroën C3 Rally3 entrant.', 'afc38143-8d66-482f-a6e0-4186ec7c0d0e_050624hmsg-poland.jpg', '2024-06-05 18:27:00');

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
(1, 'Martijn', 'Wydaeghe', 'Belgium', 'Hyundai', 122),
(2, 'Scott', 'Martin', 'Great Britain', 'Toyota', 104),
(3, 'Alexandre', 'Coria', 'France', 'M-Sport Ford', 74),
(4, 'Martin', 'Järveoja', 'Estonia', 'Hyundai', 104),
(5, 'Jonne', 'Halttunen', 'Finland', 'Toyota', 36),
(6, 'Aaron', 'Johnston', 'Ireland', 'Toyota', 52),
(7, 'Vincent', 'Landais', 'France', 'Toyota', 92),
(8, 'Janne', 'Ferm', 'Finland', 'Hyundai', 23),
(9, 'Elliott', 'Edmondson', 'Great Britain', 'Skoda', 12),
(10, 'Enni', 'Mälkönen', 'Finland', 'Toyota', 12),
(11, 'Torstein', 'Eriksen', 'Norway', 'Hyundai', 14),
(12, 'Jonas', 'Andersson', 'Sweden', 'Skoda', 6),
(13, 'James', 'Morgan', 'Great Britain', 'Toyota', 4),
(14, 'Anssi', 'Viinikka', 'Finland', 'Toyota', 3),
(15, 'Maciej', 'Szczepaniak', 'Poland', 'Skoda', 5),
(16, 'Konstantin', 'Aleksandrov', 'ANA', 'Citroen', 9),
(17, 'Louis', 'Louka', 'Belgium', 'M-Sport Ford', 16),
(18, 'Frédéric', 'Miclotte', 'Belgium', 'M-Sport Ford', 2),
(19, 'David', 'Vázquez', 'Spain', 'Skoda', 2),
(20, 'Kristian', 'Temonen', 'Finland', 'Toyota', 2),
(21, 'Arnaud', 'Dunand', 'France', 'Citroen', 3),
(22, 'Janni', 'Hussi', 'Finland', 'Skoda', 1),
(25, 'Simone', 'Scattolin', 'Italy', 'Toyota', 0),
(29, 'Candido', 'Carrera', 'Spain', 'Hyundai', 27),
(30, 'Rodrigo', 'Sanjuan', 'Spain', 'Hyundai', 6),
(31, 'Benjamin', 'Boulloud', 'France', 'Citroen', 4),
(32, 'Michal', 'Ernst', 'Czech Republic', 'Skoda', 1);

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
(1, 'Elfyn', 'Evans', 'UK', 'Toyota', 104),
(2, 'Takamoto', 'Katsuta', 'Japan', 'Toyota', 52),
(3, 'Kalle', 'Rovanperä', 'Finland', 'Toyota', 36),
(4, 'Sebastian', 'Ogier', 'France', 'Toyota', 92),
(5, 'Thierry', 'Neuville', 'Belgium', 'Hyundai', 122),
(6, 'Ott', 'Tänak', 'Estonia', 'Hyundai', 104),
(7, 'Esapekka', 'Lappi', 'Finland', 'Hyundai', 23),
(8, 'Andreas', 'Mikkelsen', 'Norway', 'Hyundai', 14),
(10, 'Adrien', 'Fourmaux', 'France', 'M-Sport Ford', 74),
(11, 'Grégoire', 'Munster', 'Belgium', 'M-Sport Ford', 16),
(13, 'Nikolay', 'Gryazin', 'Hungary', 'Citroën', 9),
(14, 'Olivier', 'Solberg', 'Norway', 'Škoda', 12),
(15, 'Kajetan', 'Kajetanowicz', 'Poland', 'Škoda', 5),
(16, 'Sami', 'Pajari', 'Finland', 'Toyota', 12),
(17, 'Gus', 'Greensmith', 'Great Britain', 'Skoda', 6),
(18, 'Georg', 'Linnamae', 'Estonia', 'Toyota', 4),
(19, 'Roope', 'Korhonen', 'Finland', 'Toyota', 3),
(20, 'Jourdan', 'Serderidis', 'Greece', 'M-Sport Ford', 2),
(21, 'Pepe', 'Lopez', 'Spain', 'Skoda', 2),
(22, 'Mikko', 'Heikkila', 'Finland', 'Toyota', 2),
(23, 'Yohan', 'Rossel', 'France', 'Citroen', 7),
(24, 'Lauri', 'Joona', 'Finland', 'Toyota', 1),
(27, 'Lorenzo', 'Bertelli', 'Italy', 'Toyota', 0),
(31, 'Daniel', 'Sordo', 'Spain', 'Hyundai', 27),
(32, 'Jan', 'Solans', 'Spain', 'Toyota', 6),
(33, 'Joshua', 'McErlan', 'Ireland', 'Skoda', 2),
(34, 'Martin', 'Prokop', 'Czech Republic', 'Skoda', 1);

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
(1, 'TOYOTA GAZOO Racing WRT', 'Japan', 2016, 'Jari-Matti Latvala', 'WRC1', 'Toyota', 265),
(2, 'Hyundai Shell Mobis WRT', 'Germany', 2012, 'Cyril Abiteboul', 'WRC1', 'Hyundai', 269),
(3, 'M-Sport Ford WRT', 'United Kingdom', 2006, 'Richard Millener', 'WRC1', 'Ford', 131),
(4, 'Toksport WRT', 'Czech Republic', 2002, 'Serkan Duru', 'WRC2', 'Skoda', 70),
(5, 'AEC - DG Sport Competition', 'France', 2008, 'Christian Jupsin', 'WRC2', 'Citroen', 169),
(6, 'Printsport TOYOTA GAZOO Racing WRT NG', 'Finland', 1997, 'Eero Raikkonen', 'WRC2', 'Toyota', 73),
(12, 'Toksport WRT 2', 'Germany', 2002, 'Serkan Duru', 'WRC2', 'Skoda', 18);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT dla tabeli `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `enc_cars`
--
ALTER TABLE `enc_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT dla tabeli `enc_categories`
--
ALTER TABLE `enc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `wrc_codrivers`
--
ALTER TABLE `wrc_codrivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `wrc_drivers`
--
ALTER TABLE `wrc_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT dla tabeli `wrc_rallies`
--
ALTER TABLE `wrc_rallies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `wrc_teams`
--
ALTER TABLE `wrc_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
