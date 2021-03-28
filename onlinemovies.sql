-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2017 at 02:39 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinemovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(10) UNSIGNED NOT NULL,
  `moviename` varchar(50) NOT NULL,
  `description` text,
  `yearoflaunch` int(11) DEFAULT NULL,
  `genre` varchar(20) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `director` varchar(20) DEFAULT NULL,
  `stars` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `moviename`, `description`, `yearoflaunch`, `genre`, `rating`, `director`, `stars`) VALUES
(1, 'Rogue One: A Star Wars Story', 'All looks lost for the Rebellion against the Empire as they learn of the existence of a new super weapon, the Death Star. Once a possible weakness in its construction is uncovered, the Rebel Alliance must set out on a desperate mission to steal the plans for the Death Star. The future of the entire galaxy now rests upon its success.', 2016, 'Adventure, Sci-Fi', 'IMDB 8', 'Gareth Edwards', 'Felicity Jones, Diego Luna, Alan Tudyk'),
(2, 'Fantastic Beasts and Where to Find Them', 'The adventures of writer Newt Scamander in New Yorks secret community of witches and wizards seventy years before Harry Potter reads his book in school.', 2016, 'Adventure, Fantasy', 'IMDB 7.5', 'David Yates', 'Eddie Redmayne, Sam Redford'),
(3, 'Hidden Figures', 'The story of a team of African-American women mathematicians who served a vital role in NASA during the early years of the US space program.', 2016, 'Drama', 'IMDB 7.9', 'Theodore Melfi', 'Taraji P. Henson, Octavia Spencer'),
(4, 'Moana', 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches an impetuous Chieftains daughters island, she answers the Oceans call to seek out the Demigod to set things right.', 2016, 'Adventure, Animation', 'IMDB 7.7', 'Ron Clements', ' Aulii Cravalho, Dwayne Johnson'),
(5, 'Assassins Creed', 'When Callum Lynch explores the memories of his ancestor Aguilar and gains the skills of a Master Assassin, he discovers he is a descendant of the secret Assassins society.', 2016, 'Action, Adventure', 'IMDB 6.1', 'Justin Kurzel', 'Michael Fassbender, Marion Cotillard'),
(6, 'Resident Evil: The Final Chapter', 'Alice returns to where the nightmare began: The Hive in Raccoon City, where the Umbrella Corporation is gathering its forces for a final strike against the only remaining survivors of the apocalypse.', 2016, 'Action, Horror', 'IMDB 5.7', 'Paul W.S. Anderson', 'Milla Jovovich, Iain Glen'),
(7, 'Why Him?', 'A holiday gathering threatens to go off the rails when Ned Fleming realizes that his daughters Silicon Valley millionaire boyfriend is about to pop the question.', 2016, 'Comedy', 'IMDB 6.3', 'John Hamburg', 'Zoey Deutch, James Franco'),
(8, 'Doctor Strange', 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.', 2016, 'Action, Adventure', 'IMDB 7.7', 'Scott Derrickson', 'Benedict Cumberbatch, Chiwetel Ejiofor'),
(9, 'Lion', 'A five-year-old Indian boy gets lost on the streets of Calcutta, thousands of kilometers from home. He survives many challenges before being adopted by a couple in Australia and 25 years later, he sets out to find his lost family.', 2016, ' Drama', 'IMDB 8.1', 'Garth Davis', 'Sunny Pawar, Abhishek Bharate'),
(10, 'Hacksaw Ridge', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 2016, 'Drama', 'IMDB 8.2', 'Mel Gibson', 'Andrew Garfield, Richard Pyros'),
(11, 'Arrival', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 2016, 'Drama, Mystery', 'IMDB 8', 'Denis Villeneuve', 'Amy Adams, Jeremy Renner'),
(12, 'Manchester by the Sea', 'A depressed uncle is asked to take care of his teenage nephew after the boys father dies.', 2016, 'Drama', 'IMDB 8', 'Kenneth Lonergan', 'Casey Affleck, Kyle Chandler'),
(13, 'Moonlight', 'A chronicle of the childhood, adolescence and burgeoning adulthood of a young, African-American, gay man growing up in a rough neighborhood of Miami.', 2016, 'Drama', 'IMDB 7.6', 'Barry Jenkins', 'Mahershala Ali, Shariff Earp'),
(14, 'Fences', 'A working-class African-American father tries to raise his family in the 1950s, while coming to terms with the events of his life.', 2016, 'Drama', 'IMDB 7.3', 'Denzel Washington', 'Denzel Washington, Viola Davis'),
(15, 'Passengers', 'A spacecraft traveling to a distant colony planet and transporting thousands of people has a malfunction in its sleep chambers. As a result, two passengers are awakened 90 years early.', 2016, 'Adventure, Drama', 'IMDB 7', 'Morten Tyldum', 'Jennifer Lawrence, Chris Pratt');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(10) UNSIGNED NOT NULL,
  `showname` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `yearoflaunch` int(11) DEFAULT NULL,
  `genre` varchar(30) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `creator` varchar(30) NOT NULL,
  `stars` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `showname`, `description`, `yearoflaunch`, `genre`, `rating`, `creator`, `stars`) VALUES
(1, 'The Walking Dead', 'Sheriff Deputy Rick Grimes wakes up from a coma, to learn the world is in ruins, and must lead a gro', 2010, 'Horror, Thriller', 'IMDB 8.5', 'Frank Darabont', 'Andrew Lincoln, Chandler Riggs'),
(2, 'The Flash', 'After being struck by lightning, Barry Allen wakes up from his coma to discover hes been given the p', 2014, 'Action, Adventure', 'IMDB 8.1', 'Geoff Johns', 'Grant Gustin, Candice Patton'),
(3, 'Arrow', 'Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea.', 2012, 'Action, Adventure', 'IMDB 7.9', 'Greg Berlanti', 'Stephen Amell, David Ramsey'),
(4, 'Marvels Iron Fist', 'A young man is bestowed with incredible martial arts skills and a mystical force known as the Iron F', 2017, 'Action, Adventure', 'IMDB 7.5', 'Scott Buck', 'Finn Jones, Jessica Henwick'),
(5, 'The Big Bang Theory', 'A woman who moves into an apartment across the hall from two brilliant but socially awkward physicis', 2006, 'Comedy, Romance', 'IMDB 8.3', 'Chuck Lorre', 'Johnny Galecki, Jim Parsons'),
(6, 'Game of Thrones', 'Nine noble families fight for control over the mythical lands of Westeros. A forgotten race returns ', 2011, 'Adventure, Drama', 'IMDB 9.5', 'David Benioff', 'Peter Dinklage, Lena Headey'),
(7, 'Family Guy ', 'In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are t', 1999, 'Animation, Comedy', 'IMDB 8.2', 'Seth MacFarlane', 'Seth MacFarlane, Alex Borstein'),
(8, 'Supergirl', 'The adventures of Supermans cousin in her own superhero career.', 2015, 'Action, Adventure', 'IMDB 6.6', 'Ali Adler', 'Melissa Benoist, Mehcad Brooks'),
(9, 'Supernatural', 'Two brothers follow their fathers footsteps as "hunters" fighting evil supernatural beings of many k', 2005, 'Drama, Fantasy', 'IMDB 8.6', 'Eric Kripke', 'Jared Padalecki, Jensen Ackles'),
(10, 'Modern Family', 'Three different, but related families face trials and tribulations in their own uniquely comedic way', 2009, 'Comedy, Romance', 'IMDB 8.5', 'Steven Levitan', 'Ed ONeill, Julie Bowen'),
(11, 'The Originals', 'A family of power-hungry thousand year old vampires look to take back the city that they built and d', 2013, 'Drama, Fantasy', 'IMDB 8.3', 'Julie Plec', 'Joseph Morgan, Daniel Gillies'),
(12, 'The Vampire Diaries', 'A teenage girl from Mystic Falls is torn between two vampire brothers, who are quite the opposite.', 2009, 'Drama, Fantasy', 'IMDB 7.8', 'Julie Plec', 'Paul Wesley, Ian Somerhalder');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
