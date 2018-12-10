-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 12:24 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AuthorID` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `SSN` varchar(255) NOT NULL,
  `Birthdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AuthorID`, `first_name`, `last_name`, `SSN`, `Birthdate`) VALUES
(1, 'Duff', 'Togwell', '4600685016', '5/13/1992'),
(2, 'Aurelie', 'Compson', '3370088002', '3/10/2007'),
(3, 'Ashley', 'Gouck', '4620029386', '9/20/2013'),
(4, 'Saba', 'Lowdiane', '8992773315', '12/10/2010'),
(5, 'Callean', 'Ketchen', '0877775109', '9/15/1992'),
(6, 'Branden', 'Fromont', '5049614236', '10/31/1991'),
(7, 'Sybil', 'Thurlbourne', '1381429661', '11/11/1990'),
(8, 'Vikki', 'Blackie', '6218855600', '12/2/1994'),
(9, 'Tabina', 'Espinoy', '9661389071', '10/4/2001'),
(10, 'Caterina', 'Staterfield', '7824414280', '1/18/1994'),
(11, 'Silvie', 'Fragino', '9398706040', '3/23/2007'),
(12, 'Ives', 'Ovington', '9542090293', '5/6/2003'),
(13, 'Ashlen', 'Fitzpayn', '3332960083', '5/26/2005'),
(14, 'Tommie', 'Polino', '4783626936', '9/16/1991'),
(15, 'Belia', 'Du Hamel', '3758712718', '4/29/2004'),
(16, 'Garrek', 'Oats', '1924619032', '9/19/2016'),
(17, 'Michel', 'Mayor', '7558771056', '4/22/2007'),
(18, 'Nona', 'Elcocks', '8414190421', '3/15/1997'),
(19, 'Florella', 'Mauro', '1931609934', '3/18/2007'),
(20, 'Selie', 'Mulholland', '8108153980', '9/13/2001'),
(21, 'Keely', 'Cromb', '8401492742', '11/16/2002'),
(22, 'Alon', 'Cosslett', '7779965511', '4/23/1995'),
(23, 'Dory', 'Skrines', '7025755176', '11/25/1992'),
(24, 'Fionna', 'Ambler', '4817982055', '1/6/1998'),
(25, 'Myrwyn', 'Jarley', '9447566693', '1/30/2000'),
(26, 'Shari', 'Renison', '6537845289', '6/19/2012'),
(27, 'Anestassia', 'McCoid', '4906380751', '8/17/2005'),
(28, 'Courtney', 'Munkley', '5726014936', '9/17/2003'),
(29, 'Brook', 'Jeandeau', '0367145960', '3/13/2012'),
(30, 'Laural', 'Benham', '2360014994', '2/13/2000'),
(31, 'Aimil', 'Breawood', '7062675113', '2/15/2007'),
(32, 'Rodolph', 'Livezey', '0351231536', '6/11/2015'),
(33, 'Rebe', 'Lygoe', '2687754455', '9/28/2003'),
(34, 'Paul', 'Brim', '0203201264', '8/25/2012'),
(35, 'Lorant', 'Sharples', '8044255389', '1/11/2017'),
(36, 'Stanleigh', 'Antham', '4690474435', '7/18/2003'),
(37, 'Cooper', 'Haggar', '1506698867', '8/14/2014'),
(38, 'Cicily', 'Rasch', '7507685292', '8/12/2006'),
(39, 'Odille', 'MacBain', '0058574980', '7/10/2003'),
(40, 'Rosina', 'Rossborough', '8903077059', '3/2/2011'),
(41, 'Rhys', 'Naisbit', '8691628162', '9/10/2002'),
(42, 'Shaylyn', 'Isenor', '9558900087', '4/3/1997'),
(43, 'Marcos', 'Mayers', '4227317274', '3/31/1997'),
(44, 'Tatum', 'cornhill', '9922504294', '7/11/1995'),
(45, 'Ted', 'Greensides', '8110129439', '9/19/1998'),
(46, 'Timmie', 'Kohrsen', '7432931267', '5/11/1997'),
(47, 'Donal', 'Gouldie', '8745548692', '10/10/2015'),
(48, 'Erica', 'McKeurton', '4248143224', '5/4/2009'),
(49, 'Fred', 'Sambath', '1052552129', '10/21/2015'),
(50, 'Hubert', 'Bedbrough', '5287268637', '3/10/2010');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Barcode` varchar(255) NOT NULL,
  `PageNumber` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Edition` int(11) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `PublisherID` int(11) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `Reserved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `Title`, `Barcode`, `PageNumber`, `Year`, `Edition`, `AuthorID`, `PublisherID`, `ISBN`, `Reserved`) VALUES
(1, 'Mr Smith', '00291832', 300, 1996, 1, 0, 0, '127-736-273-2', 1),
(2, 'Morocco', '53217-005', 7, 1996, 2, 2, 2, '3682132511', 1),
(3, 'Highway to Hell', '36987-3077', 92, 1992, 3, 3, 3, '7653305520', 0),
(4, 'Tipping the Velvet', '65841-636', 18458, 1996, 4, 4, 4, '2944006096', 1),
(5, 'Ritz, The', '52138-200', 50, 1985, 5, 5, 5, '0381778762', 0),
(6, 'Alfie', '0944-4175', 6959, 1999, 6, 6, 6, '5854993317', 0),
(7, 'Friend of the Deceased, A (Priyatel pokonika)', '59351-0316', 8058, 2003, 7, 7, 7, '6016840181', 0),
(8, 'Thirteen Days', '68428-105', 693, 1996, 8, 8, 8, '2801937665', 0),
(9, 'Birdsong (Cant dels ocells, El)', '44911-0025', 0, 1969, 9, 9, 9, '1350919500', 0),
(10, 'Circus, The', '76334-002', 45, 1993, 10, 10, 10, '6587607071', 0),
(11, 'Creature Wasn\'t Nice, The (a.k.a. Naked Space) (a.k.a. Spaceship)', '43063-034', 3252, 2008, 11, 11, 11, '2547529076', 0),
(12, 'Wu Tang Master (Tian shi zhuang xie)', '21695-709', 2734, 1997, 12, 12, 12, '0867191996', 0),
(13, 'Pursuit to Algiers', '44087-1375', 986, 2011, 13, 13, 13, '4995566171', 0),
(14, 'Almost Married', '54575-970', 61410, 1995, 14, 14, 14, '9774437144', 0),
(15, 'Blood and Sand', '49349-302', 91750, 1995, 15, 15, 15, '3575694974', 0),
(16, 'No Mercy', '16590-994', 4, 2003, 16, 16, 16, '3059371318', 0),
(17, 'King Is Dancing, The (Le roi danse)', '64679-972', 43, 2002, 17, 17, 17, '3120311995', 0),
(18, 'Guardians of the Galaxy', '0456-3421', 26, 1989, 18, 18, 18, '1528947789', 0),
(19, 'Defendor', '16714-300', 31, 1992, 19, 19, 19, '1920237151', 0),
(20, 'Champ, The', '68180-381', 3505, 2000, 20, 20, 20, '8205536481', 0),
(21, 'Marshal of Finland, The (Suomen Marsalkka)', '49653-002', 34, 1993, 21, 21, 21, '7926754404', 0),
(22, 'Coffee and Cigarettes', '0074-3459', 5, 2004, 22, 22, 22, '9297396615', 0),
(23, 'Looking for Maria Sanchez', '0113-0328', 804, 2008, 23, 23, 23, '7976708309', 0),
(24, 'Mercy ', '11410-086', 30, 2008, 24, 24, 24, '8249414764', 0),
(25, '2 Fast 2 Furious (Fast and the Furious 2, The)', '0268-1036', 9, 2001, 25, 25, 25, '3642667449', 0),
(26, 'Hard Corps, The', '0591-3153', 5, 2000, 26, 26, 26, '6187079361', 0),
(27, 'Middle Men', '63941-142', 639, 1993, 27, 27, 27, '4594952895', 0),
(28, 'Clean', '37808-819', 15, 1999, 28, 28, 28, '9335089745', 0),
(29, 'The Fox and the Hound 2', '62756-432', 44, 1999, 29, 29, 29, '7167147672', 0),
(30, 'Captivated', '68084-788', 203, 2011, 30, 30, 30, '1869424638', 0),
(31, 'Outpost', '54868-6282', 23, 1998, 31, 31, 31, '2266807072', 0),
(32, 'Unprecedented: The 2000 Presidential Election', '49349-448', 26, 1992, 32, 32, 32, '3140012152', 0),
(33, 'Ghostbusters II', '11673-962', 30808, 1989, 33, 33, 33, '8219418346', 0),
(34, 'Ghetto (Vilniaus Getas)', '59667-0060', 477, 2010, 34, 34, 34, '7213231723', 0),
(35, 'My Brother Tom', '68016-072', 67545, 1992, 35, 35, 35, '8515898691', 0),
(36, 'Big River Man', '66608-515', 32470, 2001, 36, 36, 36, '9087831218', 0),
(37, 'Holy Man', '0496-0755', 361, 2003, 37, 37, 37, '3972997175', 0),
(38, 'The Last Farm', '52685-442', 1, 2009, 38, 38, 38, '1303409089', 0),
(39, 'Holding Trevor', '49658-1001', 25032, 2001, 39, 39, 39, '7533798260', 0),
(40, 'Across the Pacific', '42507-161', 8210, 1997, 40, 40, 40, '5826539194', 0),
(41, 'American Boy: A Profile of: Steven Prince', '76237-253', 60, 2006, 41, 41, 41, '9644733169', 0),
(42, 'Toolbox Murders', '21130-404', 834, 1973, 42, 42, 42, '5071170825', 0),
(43, 'Hands of Orlac, The (Orlacs Hände)', '68382-177', 8, 2002, 43, 43, 43, '4211530054', 0),
(44, 'Z Channel: A Magnificent Obsession', '55319-100', 324, 1993, 44, 44, 44, '9481940748', 0),
(45, 'A Night for Dying Tigers', '64380-743', 5, 1990, 45, 45, 45, '3401286005', 0),
(46, 'Vampire Effect (The Twins Effect) (Chin gei bin)', '48951-4012', 27, 1995, 46, 46, 46, '8283701924', 0),
(47, 'Stuart Saves His Family', '49938-102', 265, 2004, 47, 47, 47, '9925386306', 0),
(48, 'Maid in Sweden', '60681-0114', 9798, 1984, 48, 48, 48, '9486427968', 0),
(49, 'Farewell to Arms, A', '68788-9001', 1, 2006, 49, 49, 49, '6731890545', 0),
(50, 'Marie Antoinette', '61096-0038', 71103, 2002, 50, 50, 50, '3401676172', 0),
(51, 'Aurora Borealis', '21749-095', 22, 2009, 1, 1, 1, '3720240444', 0),
(52, 'Soft Skin, The (La peau douce)', '60512-6447', 69, 1998, 2, 2, 2, '8098654737', 0),
(53, 'Snitch Cartel, The (El cartel de los sapos)', '0093-0576', 55, 2007, 3, 3, 3, '6772509897', 0),
(54, 'Swept Away (Travolti da un insolito destino nell\'azzurro mare d\'Agosto)', '52685-451', 49, 1995, 4, 4, 4, '4062895560', 0),
(55, 'Catechism Cataclysm, The', '68345-850', 3, 1998, 5, 5, 5, '0608955302', 0),
(56, 'Scream 2', '0264-7612', 71034, 2000, 6, 6, 6, '5878093618', 0),
(57, 'Last Chance: Diary of Comedians, The (Bokutachi no koukan nikki)', '44206-437', 6115, 1987, 7, 7, 7, '8631603082', 0),
(58, 'Inside: \'Dr. Strangelove or How I Learned to Stop Worrying and Love the Bomb\'', '49349-987', 949, 2003, 8, 8, 8, '6186274047', 0),
(59, 'Midnight', '63629-2956', 38, 2002, 9, 9, 9, '0862449227', 0),
(60, 'Girl from Monday, The', '57896-760', 9077, 2000, 10, 10, 10, '0612868958', 0),
(61, 'Powder Blue', '0378-7353', 41, 1993, 11, 11, 11, '6764160856', 0),
(62, 'Stickup, The', '42291-650', 676, 2003, 12, 12, 12, '1471512959', 0),
(63, 'Ride in the Whirlwind', '11344-663', 22714, 1983, 13, 13, 13, '1882274105', 0),
(64, 'Camp Rock 2: The Final Jam', '65802-001', 24, 2006, 14, 14, 14, '0333102886', 0),
(65, 'Austenland', '58118-0156', 625, 2012, 15, 15, 15, '4121225864', 0),
(66, 'The Phantom Light', '13811-646', 59816, 1993, 16, 16, 16, '1270501704', 0),
(67, 'Jay and Silent Bob Strike Back', '17089-450', 7, 2000, 17, 17, 17, '5550888653', 0),
(68, 'Breaking and Entering', '55714-2249', 17037, 2009, 18, 18, 18, '7630313683', 0),
(69, 'Hans Christian Andersen', '0363-8127', 84, 1990, 19, 19, 19, '1153339889', 0),
(70, 'House of Seven Corpses, The', '0113-0825', 589, 1992, 20, 20, 20, '6525185734', 0),
(71, '51', '54569-1696', 236, 1996, 21, 21, 21, '2081633515', 0),
(72, 'Night of the Living Dead', '35356-742', 34041, 2004, 22, 22, 22, '2314706498', 0),
(73, 'Time of the Wolf, The (Le temps du loup)', '50051-0003', 5, 1992, 23, 23, 23, '3158691825', 0),
(74, 'Norm MacDonald: Me Doing Standup', '35356-746', 69063, 2004, 24, 24, 24, '2624797343', 0),
(75, 'Les Invisibles', '33261-029', 2, 2006, 25, 25, 25, '8035446975', 0),
(76, 'Locked Out (Enfermés dehors)', '37205-756', 432, 1995, 26, 26, 26, '7890572093', 0),
(77, 'Chaser, The (Chugyeogja)', '54973-2953', 483, 1987, 27, 27, 27, '8484651797', 0),
(78, 'Salvador', '37012-482', 6822, 2008, 28, 28, 28, '0889742227', 0),
(79, 'Widow of St. Pierre, The (Veuve de Saint-Pierre, La)', '0085-1351', 9553, 2004, 29, 29, 29, '8363592862', 0),
(80, 'Happily Ever After', '55154-4651', 545, 2003, 30, 30, 30, '7853855184', 0),
(81, 'Tenacious D in The Pick of Destiny', '24658-290', 97, 2011, 31, 31, 31, '2890902625', 0),
(82, 'Dream Team 1935', '34690-3001', 6, 2006, 32, 32, 32, '5659469396', 0),
(83, 'Rhythm of a Crime (Ritam zlocina)', '61957-1049', 23164, 2002, 33, 33, 33, '4811717414', 0),
(84, 'Long Way Down, A', '58232-0632', 3972, 2008, 34, 34, 34, '3243955874', 0),
(85, 'Comin\' at Ya!', '0363-6230', 9231, 1997, 35, 35, 35, '8580436974', 0),
(86, 'Pierrot le fou', '58668-5961', 3217, 2006, 36, 36, 36, '0392880210', 0),
(87, 'Cold Showers (Douches froides)', '61750-0022', 4, 2008, 37, 37, 37, '9042101857', 0),
(88, 'G.I. Joe: Operation Dragonfire', '10675-002', 2, 1997, 38, 38, 38, '6444962935', 0),
(89, 'Champ, The', '65193-144', 113, 1995, 39, 39, 39, '2490818902', 0),
(90, 'Junior Prom', '63029-555', 3, 2002, 40, 40, 40, '2703175272', 0),
(91, 'Penguins of Madagascar', '36987-1384', 42504, 2006, 41, 41, 41, '1044548959', 0),
(92, 'Browning Version, The', '55910-308', 5, 1998, 42, 42, 42, '6343449671', 0),
(93, 'Man in the Iron Mask, The', '36987-1423', 755, 1997, 43, 43, 43, '7387436061', 0),
(94, 'Pusher', '66116-368', 5, 1985, 44, 44, 44, '8062566404', 0),
(95, 'Last Supper, The', '65691-0104', 857, 1998, 45, 45, 45, '4032233969', 0),
(96, 'Arrowhead', '60505-0584', 2108, 2004, 46, 46, 46, '6315717691', 0),
(97, 'Persepolis', '64764-121', 2, 1987, 47, 47, 47, '6679089883', 0),
(98, 'Man from Planet X, The', '54868-6131', 8137, 2012, 48, 48, 48, '1913631273', 0),
(99, 'Watch, The', '58232-0603', 8, 2004, 49, 49, 49, '0707515815', 0),
(100, 'Sweet Rush (Tatarak)', '64536-1268', 72, 2013, 50, 50, 50, '5942490422', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookauthor`
--

CREATE TABLE `bookauthor` (
  `AuthorID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookauthor`
--

INSERT INTO `bookauthor` (`AuthorID`, `BookID`) VALUES
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `bookpublisher`
--

CREATE TABLE `bookpublisher` (
  `BookID` int(11) NOT NULL,
  `PublisherID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PublisherID` int(11) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Name`, `Address`, `PublisherID`, `Phone`) VALUES
('Roderick', '660 Pepper Wood Terrace', 1, 549),
('Winfield', '30 Ruskin Road', 2, 953),
('Babette', '969 Old Shore Road', 3, 635),
('Turner', '3355 Coleman Lane', 4, 579),
('Tiena', '70 Northview Circle', 5, 890),
('Franz', '8199 John Wall Parkway', 6, 977),
('Elise', '68 Parkside Road', 7, 204),
('Dulce', '90777 Sheridan Lane', 8, 315),
('Clark', '7521 Maryland Drive', 9, 379),
('Bibby', '67454 Florence Alley', 10, 464),
('Nicolle', '2 Sheridan Drive', 11, 632),
('Cherida', '21316 Donald Point', 12, 858),
('Winni', '6241 Pleasure Street', 13, 606),
('Gerome', '0500 Center Drive', 14, 790),
('Auguste', '203 Westport Hill', 15, 519),
('Calla', '35 Melby Terrace', 16, 798),
('Giralda', '99803 Basil Pass', 17, 200),
('Durand', '4 Larry Drive', 18, 680),
('Meryl', '78 Spaight Trail', 19, 146),
('Alf', '2873 Mosinee Lane', 20, 758),
('Lucien', '4 Merrick Terrace', 21, 654),
('Rodolphe', '65 Memorial Parkway', 22, 608),
('Lorette', '6066 Mccormick Center', 23, 510),
('Bernice', '9309 Artisan Pass', 24, 856),
('Ede', '473 Montana Park', 25, 738),
('Livvyy', '740 Warrior Hill', 26, 785),
('Baryram', '04 Lakewood Gardens Crossing', 27, 513),
('Evin', '29 Eggendart Hill', 28, 243),
('Parker', '0 Service Alley', 29, 600),
('Beth', '21 Fremont Street', 30, 810),
('Saundra', '49137 Badeau Road', 31, 887),
('Jacquenette', '404 Dovetail Crossing', 32, 377),
('Belita', '92751 Merchant Hill', 33, 280),
('Roby', '2 Shoshone Lane', 34, 949),
('Aloin', '07372 Rowland Road', 35, 686),
('Nariko', '6 Sheridan Drive', 36, 408),
('Janeva', '9959 Pankratz Plaza', 37, 878),
('Sherlock', '56019 1st Park', 38, 433),
('Coleman', '78 4th Terrace', 39, 870),
('Lidia', '350 Starling Plaza', 40, 267),
('Baron', '8 Lakewood Gardens Terrace', 41, 547),
('Libbie', '17739 Cody Way', 42, 459),
('Ciro', '86402 Elmside Circle', 43, 205),
('Sonny', '045 Dixon Way', 44, 706),
('Crystie', '606 Sage Terrace', 45, 376),
('Star', '95291 Mccormick Center', 46, 290),
('Bertie', '8 Spohn Park', 47, 736),
('Gusella', '7233 Banding Court', 48, 177),
('Gray', '2 Gulseth Point', 49, 523),
('Jenna', '56 Prentice Road', 50, 606);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingbasket`
--

CREATE TABLE `shoppingbasket` (
  `BasketID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `Email`, `Password`, `UserID`, `Phone`, `Address`) VALUES
('Almeda', 'Iacobetto', 'Admin', '202cb962ac59075b964b07152d234b70', 1, 449, '7899 Bluejay Drive'),
('Valma', 'Farrey', 'vfarrey1@flickr.com', '', 2, 513, '005 Dahle Street'),
('Gavra', 'Matuska', 'gmatuska2@google.es', '', 3, 489, '63 Crescent Oaks Junction'),
('Pen', 'Feeny', 'pfeeny3@ed.gov', '', 4, 995, '1517 Loftsgordon Place'),
('Berkie', 'Ysson', 'bysson4@desdev.cn', '', 5, 885, '657 Kropf Center'),
('Mata', 'Carty', 'mcarty5@timesonline.co.uk', '', 6, 324, '67630 Graedel Park'),
('Goldina', 'Ambrogi', 'gambrogi6@psu.edu', '', 7, 744, '050 Westerfield Park'),
('Ashley', 'Borman', 'aborman7@whitehouse.gov', '', 8, 741, '9807 Green Terrace'),
('Daisey', 'Klosges', 'dklosges8@home.pl', '', 9, 173, '25 Little Fleur Plaza'),
('Cammi', 'Stitle', 'cstitle9@foxnews.com', '', 10, 688, '2793 Shelley Place'),
('Darlleen', 'Slocumb', 'dslocumba@fda.gov', '', 11, 647, '0109 Riverside Trail'),
('Virgil', 'Simms', 'vsimmsb@dagondesign.com', '', 12, 156, '08887 Sachtjen Lane'),
('Lavena', 'Clethro', 'lclethroc@github.io', '', 13, 410, '5762 Pond Pass'),
('Tyrus', 'Pannett', 'tpannettd@dropbox.com', '', 14, 272, '63837 Debra Park'),
('Montgomery', 'Goard', 'mgoarde@w3.org', '', 15, 404, '323 6th Circle'),
('Roseanna', 'Kochel', 'rkochelf@opera.com', '', 16, 799, '0 Surrey Lane'),
('Nan', 'Slator', 'nslatorg@hostgator.com', '', 17, 998, '86379 Kropf Circle'),
('Stanwood', 'Harford', 'sharfordh@ehow.com', '', 18, 212, '668 Saint Paul Trail'),
('Vivianne', 'MacNeilley', 'vmacneilleyi@taobao.com', '', 19, 516, '40411 Sunnyside Pass'),
('Haywood', 'Amar', 'hamarj@1und1.de', '', 20, 765, '310 Vernon Place'),
('Aridatha', 'Vere', 'averek@1und1.de', '', 21, 341, '21480 Clove Center'),
('Ozzie', 'Marrett', 'omarrettl@furl.net', '', 22, 942, '0544 American Ash Street'),
('Loren', 'Turri', 'lturrim@java.com', '', 23, 426, '49 East Junction'),
('Clarine', 'Blandamore', 'cblandamoren@g.co', '', 24, 880, '85 Old Shore Park'),
('Kenyon', 'MacKain', 'kmackaino@ft.com', '', 25, 840, '7 Warbler Hill'),
('Arley', 'Winterbottom', 'awinterbottomp@nasa.gov', '', 26, 738, '585 Kedzie Street'),
('Steve', 'Burl', 'sburlq@altervista.org', '', 27, 462, '46 Oriole Pass'),
('Flory', 'Escalante', 'fescalanter@guardian.co.uk', '', 28, 597, '388 High Crossing Plaza'),
('Glennis', 'O\'Connel', 'goconnels@sfgate.com', '', 29, 659, '2 Barnett Pass'),
('Stan', 'Coverlyn', 'scoverlynt@discuz.net', '', 30, 762, '671 Old Shore Drive'),
('Eduardo', 'Klamman', 'eklammanu@yahoo.co.jp', '', 31, 527, '59 Maryland Parkway'),
('Mureil', 'Limrick', 'mlimrickv@unblog.fr', '', 32, 702, '854 Golf View Place'),
('Niels', 'Antonsson', 'nantonssonw@telegraph.co.uk', '', 33, 502, '45 8th Park'),
('Piper', 'Stocky', 'pstockyx@hatena.ne.jp', '', 34, 408, '7 Anderson Terrace'),
('Evelyn', 'Brazier', 'ebraziery@twitpic.com', '', 35, 808, '81621 Paget Trail'),
('Bruce', 'Dachey', 'bdacheyz@irs.gov', '', 36, 327, '644 Beilfuss Alley'),
('Veronique', 'Harner', 'vharner10@nbcnews.com', '', 37, 398, '9 Dapin Circle'),
('Nikolaos', 'Coulter', 'ncoulter11@devhub.com', '', 38, 318, '58 Memorial Point'),
('Stearne', 'MacSkeaghan', 'smacskeaghan12@topsy.com', '', 39, 811, '00486 Tennessee Point'),
('Odell', 'Philcox', 'ophilcox13@dmoz.org', '', 40, 461, '85284 Katie Alley'),
('Krystyna', 'Dore', 'kdore14@istockphoto.com', '', 41, 966, '25 Towne Road'),
('Reynolds', 'Evreux', 'revreux15@123-reg.co.uk', '', 42, 879, '57537 Scofield Trail'),
('Tracey', 'Mallord', 'tmallord16@hugedomains.com', '', 43, 247, '07 Trailsway Junction'),
('Bobinette', 'Maymand', 'bmaymand17@japanpost.jp', '', 44, 301, '226 Eagle Crest Parkway'),
('Claresta', 'Rosettini', 'crosettini18@techcrunch.com', '', 45, 180, '53 Summerview Street'),
('Godiva', 'Huckett', 'ghuckett19@nydailynews.com', '', 46, 364, '1050 Truax Terrace'),
('Kiersten', 'Yashanov', 'kyashanov1a@google.ru', '', 47, 447, '2688 Corscot Hill'),
('Binny', 'McComiskie', 'bmccomiskie1b@sitemeter.com', '', 48, 333, '65 Eagan Alley'),
('Murdoch', 'Hardiman', 'mhardiman1c@altervista.org', '', 49, 953, '41944 Thompson Way'),
('Windham', 'Wooffinden', 'wwooffinden1d@amazon.co.jp', '', 50, 724, '45 Melody Point');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PublisherID`);

--
-- Indexes for table `shoppingbasket`
--
ALTER TABLE `shoppingbasket`
  ADD PRIMARY KEY (`BasketID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `PublisherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `shoppingbasket`
--
ALTER TABLE `shoppingbasket`
  MODIFY `BasketID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
