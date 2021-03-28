-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2017 at 11:31 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `password`, `email`, `phone`, `address`) VALUES
(1, 'muthu', 'kodi', 'muthu@gmail.com', '1923456', 'mumbai'),
(2, 'muthu', 'kodi', 'muthu@gmail.com', '1923456', 'mumbai'),
(3, 'muthu', 'kodi', 'muthu@gmail.com', '1923456', 'mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(255) NOT NULL,
  `moviename` varchar(50) NOT NULL,
  `description` text,
  `yearoflaunch` int(11) DEFAULT NULL,
  `genre` varchar(20) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `director` varchar(20) DEFAULT NULL,
  `stars` varchar(50) DEFAULT NULL,
  `preview` varchar(100) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `images`, `moviename`, `description`, `yearoflaunch`, `genre`, `rating`, `director`, `stars`, `preview`, `trailer`) VALUES
(1, '/images/qjiskwlV1qQzRCjpV0cL9pEMF9a', 'Rogue One: A Star Wars Story', 'The Rebel Alliance makes a risky move to steal the plans for the Death Star, setting up the epic saga to follow.', 2016, 'Adventure, Sci-Fi', 'IMDB 8', 'Gareth Edwards', 'Felicity Jones, Diego Luna', '/images/tt3748528', '/Trailers/Rogue One A Star Wars Story Trailer (Official).mp4'),
(2, '/images/gri0DDxsERr6B2sOR1fGLxLpSLx', 'Fantastic Beasts and Where to Find Them', 'The adventures of writer Newt Scamander in New Yorks secret community of witches and wizards seventy years before Harry Potter reads his book in school.', 2016, 'Adventure, Fantasy', 'IMDB 7.5', 'David Yates', 'Eddie Redmayne, Sam Redford', '/images/tt3183660', '/Trailers/Fantastic Beasts and Where to Find Them - Teaser Trailer [HD].mp4'),
(3, '/images/6cbIDZLfwUTmttXTmNi8Mp3Rnmg', 'Hidden Figures', 'The story of a team of African-American women mathematicians who served a vital role in NASA during the early years of the US space program.', 2016, 'Drama', 'IMDB 7.9', 'Theodore Melfi', 'Taraji P. Henson, Octavia Spencer', '/images/tt4846340', '/Trailers/Hidden Figures  Teaser Trailer [HD]  20th Century FOX.mp4'),
(4, '/images/8m0lCMGVLuDod7lL20deiXInMq0', 'Moana', 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches an impetuous Chieftains daughters island, she answers the Oceans call to seek out the Demigod to set things right.', 2016, 'Adventure, Animation', 'IMDB 7.7', 'Ron Clements', ' Aulii Cravalho, Dwayne Johnson', '/images/tt3521164', '/Trailers/Moana Official Trailer.mp4'),
(8, '/images/4PiiNGXj1KENTmCBHeN6Mskj2Fq', 'Doctor Strange', 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.', 2016, 'Action, Adventure', 'IMDB 7.7', 'Scott Derrickson', 'Benedict Cumberbatch, Chiwetel Ejiofor', '/images/tt1211837', '/Trailers/Doctor Strange Official Trailer 2.mp4'),
(9, '/images/iBGRbLvg6kVc7wbS8wDdVHq6otm', 'Lion', 'A five-year-old Indian boy gets lost on the streets of Calcutta, thousands of kilometers from home. ', 2016, ' Drama', 'IMDB 8.1', 'Garth Davis', 'Sunny Pawar, Abhishek Bharate', '/images/tt3741834', '/Trailers/Lion Official Trailer 1 (2016) Dev Patel Rooney Mara Drama Movie HD.mp4'),
(10, '/images/bndiUFfJxNd2fYx8XO610L9a07m', 'Hacksaw Ridge', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 2016, 'Drama', 'IMDB 8.2', 'Mel Gibson', 'Andrew Garfield, Richard Pyros', '/images/tt2119532', '/Trailers/Hacksaw Ridge Official Trailer 1 (2016) - Andrew Garfield Movie.mp4'),
(11, '/images/hLudzvGfpi6JlwUnsNhXwKKg4j', 'Arrival', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 2016, 'Drama, Mystery', 'IMDB 8', 'Denis Villeneuve', 'Amy Adams, Jeremy Renner', '/images/tt2543164', '/Trailers/Arrival Trailer (2016) - Paramount Pictures.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(255) NOT NULL,
  `showname` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `yearoflaunch` int(11) DEFAULT NULL,
  `genre` varchar(30) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `creator` varchar(30) NOT NULL,
  `stars` varchar(40) NOT NULL,
  `preview` varchar(100) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `images`, `showname`, `description`, `yearoflaunch`, `genre`, `rating`, `creator`, `stars`, `preview`, `trailer`) VALUES
(1, '/images/show_85a60e7d66f57fb9d75de9eefe36c42c', 'The Walking Dead', 'Sheriff Deputy Rick Grimes wakes up from a coma, to learn the world is in ruins, and must lead a gro', 2010, 'Horror, Thriller', 'IMDB 8.5', 'Frank Darabont', 'Andrew Lincoln, Chandler Riggs', '/images/tt1520211', '/Trailers/THE WALKING DEAD Season 7 Episode 9 Trailer  Mid-Season Finale Clip - amc Series HD.mp4'),
(2, '/images/show_3107288', 'The Flash', 'After being struck by lightning, Barry Allen wakes up from his coma to discover hes been given the p', 2014, 'Action, Adventure', 'IMDB 8.1', 'Geoff Johns', 'Grant Gustin, Candice Patton', '/images/tt3107288', '/Trailers/The Flash Season 3 Comic-Con Trailer (HD).mp4'),
(3, '/images/show_519367c9176aef62eac5168e5434b3ef', 'Arrow', 'Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea.', 2012, 'Action, Adventure', 'IMDB 7.9', 'Greg Berlanti', 'Stephen Amell, David Ramsey', '/images/tt2193021', '/Trailers/Arrow Season 5 Break The Rules Trailer (HD).mp4'),
(4, '/images/show_e5a3b916628ee0b5e84b07314dcc07e7', 'Marvels Iron Fist', 'A young man is bestowed with incredible martial arts skills and a mystical force known as the Iron F', 2017, 'Action, Adventure', 'IMDB 7.5', 'Scott Buck', 'Finn Jones, Jessica Henwick', '/images/tt3322310', '/Trailers/Marvels Iron Fist  Official Trailer [HD]  Netflix.mp4'),
(5, '/images/show_97fe64d3d7739295462e43195cbe652a', 'The Big Bang Theory', 'A woman who moves into an apartment across the hall from two brilliant but socially awkward physicis', 2006, 'Comedy, Romance', 'IMDB 8.3', 'Chuck Lorre', 'Johnny Galecki, Jim Parsons', '/images/tt0898266', '/Trailers/The Big Bang Theory Season 10 Moving To Mondays Promo (HD).mp4'),
(9, '/images/show_0460681', 'Supernatural', 'Two brothers follow their fathers footsteps as "hunters" fighting evil supernatural beings of many k', 2005, 'Drama, Fantasy', 'IMDB 8.6', 'Eric Kripke', 'Jared Padalecki, Jensen Ackles', '/images/tt0460681', '/Trailers/Supernatural - Season 12 - Family Ties  official trailer (2016).mp4'),
(11, '/images/show_2632424', 'The Originals', 'A family of power-hungry thousand year old vampires look to take back the city that they built and d', 2013, 'Drama, Fantasy', 'IMDB 8.3', 'Julie Plec', 'Joseph Morgan, Daniel Gillies', '/images/tt2632424', '/Trailers/The Originals  Season 4 Extended Trailer  The CW.mp4'),
(12, '/images/show_1405406', 'The Vampire Diaries', 'A teenage girl from Mystic Falls is torn between two vampire brothers, who are quite the opposite.', 2009, 'Drama, Fantasy', 'IMDB 7.8', 'Julie Plec', 'Paul Wesley, Ian Somerhalder', '/images/tt1405406', '/Trailers/The Vampire Diaries Season 8 - Official Trailer Villains  [HD].mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
