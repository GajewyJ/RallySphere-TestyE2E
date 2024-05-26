-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Maj 2024, 19:07
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
(73, 'Porsche', '911 SC RS', 'The Porsche 911 SC RS is a rare and special model, built in 1984 with only 20 units produced. It was developed so that the factory Rothmans Porsche Rally Team could compete on the international stage. With a 3.0 L air-cooled flat 6 engine, it produced 255 bhp at 7000 rpm and 184 ft lbs of torque at 6500 rpm. This car was capable of 0 - 60 mph in 5.3 seconds and had a top speed of 158 mph, making it a formidable competitor in its time.', 'https://upload.wikimedia.org/wikipedia/commons/2/21/Piotr_Zaleski_-Jacek_Gruszczy%C5%84ski_Porsche_911_SC_RS_Rajd_Nadwislanski_HRSMP_2018_.arch_HRSMP_2018_fot_G.Rybarski.jpg', '<a href=\"https://commons.wikimedia.org/wiki/File:Piotr_Zaleski_-Jacek_Gruszczy%C5%84ski_Porsche_911_SC_RS_Rajd_Nadwislanski_HRSMP_2018_.arch_HRSMP_2018_fot_G.Rybarski.jpg\">Don Boolgot</a>, <a href=\"https://creativecommons.org/licenses/by-sa/4.0\">CC BY-SA 4.0</a>, via Wikimedia Commons', 6);

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
(7, 'Group A', 'Post-1986', 'Replacement for Group B: Introduced stricter regulations focusing on safety, with engine limits of 2000 cc and 300 bhp.', 7, ''),
(8, 'Super 1600', '2000-2011', 'It was primarily used in the Junior World Rally Championship (JWRC) between 2001 and 2010, as well as in various national rally championships and international rallycross events.', 9, ''),
(9, 'Super 2000', '2000 to Present', 'It is an FIA powertrain specification used in various championships, including the World Rally Championship (WRC), British Touring Car Championship (BTCC), and World Touring Car Championship (WTCC).', 10, ''),
(10, 'Group N', '1982-2013', 'Group N, often referred to as the \"showroom class,\" was introduced by the FIA in 1982. It is based on production models of street-legal cars with minimal modifications allowed.', 6, ''),
(11, 'WRC', '1997 to Present', 'WRC cars are based on production models but heavily modified for performance and safety.', 8, ''),
(12, 'Rally 1', '2021 to Present', 'Top-tier WRC cars with advanced technology and high performance.', 11, ''),
(13, 'Rally2', '2021 to Present', '', 12, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `enc_cars`
--
ALTER TABLE `enc_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT dla tabeli `enc_categories`
--
ALTER TABLE `enc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
