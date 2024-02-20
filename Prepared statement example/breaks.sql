-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 05:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `break`
--

CREATE TABLE `break` (
  `breakID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(20) NOT NULL,
  `regionID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `break`
--

INSERT INTO `break` (`breakID`, `name`, `description`, `image`, `regionID`) VALUES
(1, 'Sumner', 'Nice long boarders break sunny and somtimes busy.', 'sumner.jpg', 1),
(2, 'Taylors', 'Mean break with steep playful waves when there is a big swell, ideal short board break', 'taylors.jpg', 1),
(3, 'Hickory', 'Fun Short board break with amazing viz and cool wild life', 'hic.jpg', 2),
(4, 'Graveyards', 'Mean breAK ASFHBDFJKDSA KJFBSSAKJN.AS;MC  DKNJFNFA.D FFJKASNFSDFJKNAS SADFNASJKFNAS', 'graveyard.jpg', 3),
(58, 'New Brighton', 'Sketchy but fun', 'brighton.jpg', 1),
(60, 'Gore Bay', 'Gore Bay in Kaikoura is an exposed beach break that has reasonably consistent surf, although summer tends to be mostly flat.', 'gore.jpg', 3),
(61, 'Le Bons Bay', 'An exposed bay that has quite reliable surf and can work at any time of the year. Offshore winds blow from the north.', 'le.jpg', 2),
(62, 'Tumbledown Bay', 'Tumbledown Bay is a nice, small, sheltered beach break. It is a sandy bay with a very low gradient.', 'tumble.jpg', 2),
(63, 'Magnet Bay', 'Magnet Bay in Banks Peninsular is an exposed reef and point break that has reasonably consistent surf and can work at any time of the year.', 'mag.jpg', 2),
(64, 'Te Oka Bay ', 'A sandy beach at the end of a long narrow bay, so it needs the right swell angle to get in.', 'te.jpg', 2),
(65, 'Fossils ', 'Fossils is a left-hand point break and a sandy beach break with a rocky point, located at the north end of Amberley Beach, north of Christchurch.', 'fos.jpg', 22),
(66, 'Amberley Beach', 'Amberley Beach is a beach break on a shingle/stoney beach, located on the coast from the Amberley township, north of Christchurch.', 'amb.jpg', 22),
(67, 'Pines Beach', 'There are several peaks to choose from along the beach with both right and left handers. The wave is punchy and fun.', 'pine.jpg', 22),
(68, 'Waikuku Beach', 'The waves can be variable depending on tide, wind and sand movement. The wave is punchy and fun, more hollow than the Christchurch local beaches.', 'wai.jpg', 22),
(71, 'Iron Gate', 'The wave is wally or fat. Good for all levels of surfer.', 'iron.jpg', 3),
(72, 'Waimari Beach', 'Steep waves on a big day but good for all surfers.', 'waw.jpg', 1),
(73, 'Meatworks', 'Its a small beach with a couple of peaks, producing both right and left handers. ', 'meat.jpg', 3),
(74, 'Town Reef', 'There are several peaks to choose from along the beach with mostly right handers and also some lefts.', 'town.jpg', 3),
(75, 'Ward Beach', 'Ward Beach produces a wally,punchy, fun beach break wave.', 'ward.jpg', 3),
(76, 'Blaketown ', 'The wave starts with a steep, hollow drop in, with a fast, powerful wall.', 'blake.jpg', 4),
(77, 'Carters Beach', ' Lots of peaks down the beach with both right and lefts handers. ', 'carterspg.jpg', 4),
(78, 'Charleston', 'Charleston consists of a Left hand point break off the boulders at the southern end of the beach infront of the river mouth, and various beach break pecks down the beach.', 'char.jpg', 4),
(79, 'Fox River', 'The wave breaks over the rocks at the southern end of the beach, then peels across the beach.', 'fox.jpg', 4),
(80, 'Punakaiki Beach', 'This is a beach break with several peaks to choose from. Usually best on the left-hander off the blowhole rocks, southern end of the beach at low tide.', 'pun.jpg', 4),
(81, 'The Channel', 'Can be quite shifty and peaky, but there are good solid pits on offer, with some long rides possible.', 'chan.jpg', 4),
(82, 'Goughs Bay', ' It picks up plenty of swell, but is generally a bit smaller than Hickory Bay.', 'gough.jpg', 2),
(83, 'Allans Beach', 'Suitable for intermediate to expert surfers, or beginners on a small day.', 'all.jpg', 12),
(84, 'Blackhead', 'The wave is powerful, with steep, fast drop-ins and good barrels. Suitable for all levels of surfer.', 'bla.jpg', 12),
(85, 'Brighton', 'The wave peels along with a nice wall. Suitable for all levels of surfer.', 'bro.jpg', 12),
(87, 'St Clair ', 'St Clair is a popular local spot in Dunedin and can get a bit busy on a good day in the summer. ', 'st.jpg', 12),
(89, 'Cable Bay ', ' The is hollow and fast with a gnarly drop over shallow rocks. This place can get good, but watch out for the rocks. Best for advanced to expert surfers only.', 'cable.jpg', 25),
(90, 'Clifford Bay ', 'Clifford Bay is an open beach that gets quite exposed to the wind. Its a beach break on a sandy beach, with several peaks down the beach, offering both right and left handers.', 'cliff.jpg', 25),
(91, 'Delaware Bay', 'Delaware is fairly inconsistant as it needs just the right conditions to get it working. When its on the wave dredges up into a hollow left hand barrel.', 'del.jpg', 25),
(92, 'Lighthouse', 'It requires a big over 6 foot cyclone swell to get it working, but when its on you will find long powerful right handers with gnarly drop ins. Advanced and expert surfers only.', 'light.jpg', 25),
(93, 'Ruby Bay', 'Ruby Bay is a left hand point break onto a sandy beach. The wave is nice and long, but fat, and slow. Good mal wave or for learners.', 'ruby.jpg', 25),
(94, 'Anatori Beach', 'The beach consists of a left hand river bar break and beach breaks to the north and south, on a sandy beach. The river break offers a long wally powerful wave.', 'ana.jpg', 24),
(95, 'Farewell Spit', 'Farewell Spit is a remote beach on the West Coast at the top of the South Island. The beach consists of a left-hand point break, known as Pillar Point, at the western end of the beach, as well as a be', 'spit.jpg', 24),
(96, 'Paturau Beach', 'Paturau Beach is a remote beach on the West Coast near the top of the South Island. The beach consists of a left hand point break at the southern end of the beach, which has some boulders high on the ', 'pat.jpg', 24),
(97, 'Wharariki Beach', 'Wharariki beach is a beach break on a sandy beach, located on the west coast at the top of the south island. There is a bit of a walk to get to the beach, but well worth it for the beautiful scenery. ', 'raikai.jpg', 24),
(98, 'Nicks Point', 'Beginners sick to the Colac Bay beach break, Nicks point is best for Intermediate to advanced. It gets colder down this area, so wear plenty of rubber.', 'nick.jpg', 8),
(99, 'Blue Cliffs', 'Blue Cliffs is a beach break on a sandy beach, located near the mouth of the Waiau River, in Te Waewae Bay. There You can surf anywhere along this stretch of coastline. ', 'bluecliff.jpg', 8),
(100, 'Long Point', 'Suitable for intermediate to expert surfers. It can get colder down in this area, so wear plenty of rubber. Careful on the rocks.', 'cat.jpg', 8),
(101, 'Porridge', 'The wave is long and fast, with several sections from wally to hollow barrels. You must ask the farmer permission to cross his land for access to the beach, which is a short walk over the hill. ', 'por.jpg', 8),
(102, 'Nugget Point', 'There are several peaks to choose from with both right and left handers. The wave is punchy and powerful. Suitable for beginner to expert surfers. It gets colder down this area, so wear plenty of rubb', 'nug.jpg', 8),
(103, 'Porpoise Bay', 'The wave is powerful. Its often bigger at the north end of the beach, and the left end gets some good left hand barrels working. Good for all levels of surfer. ', 'porp.jpg', 8),
(104, 'The Cut', 'Its a right hand point break onto a rocky shore. It requires a big over 6 foot cyclone swell to get it working, but when its on you will find powerful right handers with gnarly drop ins. Advanced and ', 'cut.jpg', 26),
(105, 'Schnappers Point', 'The wave is mellow when small and the bigger it gets the faster and hollower it gets. Suitable for intermediate to expert surfers. careful getting in and out on the moving stones/boulders.', 'scap.jpg', 26),
(106, 'Tahunanui Beach', 'Tahunanui beach is a beach break on a sandy beach, out front of the surf club. There are several peaks with both right and left handers. The beach has a shallow gradient so the wave break further off ', 'tuh.jpg', 26),
(107, 'Whangamoa', 'Whangamoa is a beach break on a sandy beach, with a river/inlet mouth.', 'woa.jpg', 26),
(108, 'Rabbit Island', 'Rabbit Island is a beach break on a sandy beach. There are lots of peaks down the beach to choose from, with both right and left handers. The wave is fairly fat and slow, great for learning or taking ', 'reb.jpg', 26),
(109, 'Smithfield', 'Smithfield is a right hand reef break, located off the rocks out front of the old Smithfield Freezing works. The wave is powerful, with a steep, gnarly drop in and a solid wall. Expert surfers only.', 's.jpg', 16),
(110, 'Jacks Point', 'Jacks Point is a right hand point break on a rocky, stoney point, at Scarborough, just south of Timaru. The wave gives a good length ride and a nice wally shape, with several sections to play. Best fo', 'jack.jpg', 16),
(111, 'Lighthouse Reef', 'Lighthouse Reef is a right hand reef break on a rocky reef just south of Jacks Point. The wave has a gnarly drop in, with hollow, barrel sections on offer. Best for advanced to expert surfers only.', 'reef.jpg', 16),
(112, 'Patiti', 'Patiti Point is a left hand point break off the end of the point. The wave has a steep, fast drop in, with some good power and a nice hollow sections. Good for intermediate to expert surfers. It can g', 'pai.jpg', 16),
(113, 'Colac Bay', 'Colac Bay is a sandy, beach break offer good fun waves, nothing too gnarly, suitable for all levels from beginners up. It gets colder down this area, so wear plenty of rubber.', 'co.jpg', 7),
(114, 'Beatons', 'Beatons is a left hand point break along the south eastern side of the bay, on a rocky shore. The wave is nice and wally, with a good length ride. You must ask the farmer for permission to cross his l', 'ra.jpg', 7),
(115, 'Riverton Rocks', 'This break requires a large swell to get working. The best spot is the right-hand point which can give a nice long ride when on. There is also the beach break with several peaks along the beach, featu', 'riv.jpg', 7),
(116, 'Cannibal Bay', 'Cannibal Bay is a beach break on a sandy beach. There are several peaks down the beach to choose from, with both right and left handers. The wave has awesome power and will get nice hollow barrels whe', 'ow.jpg', 7),
(117, 'Purakaunui Bay', 'Purakaunui Bay, better known as PK Bay, should stand for Pumping Kegs! This well-known beach break in the Catlins has top-quality, powerful, consistent and very fun surf. The beach break provides left', 'pur.jpg', 7),
(118, 'Lawyers Head', 'Lawyers head is one of Dunedins local breaks, just minutes from Dunedin center. Lawyers head is a beach break on a golden sand beach. There are several variable peaks down the beach to choose from wit', 'law.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `regionID` int(4) NOT NULL,
  `region_name` varchar(25) NOT NULL,
  `regionimage` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`regionID`, `region_name`, `regionimage`) VALUES
(1, 'Christcurch City', 'christ.jpg'),
(2, 'Banks Penninsula', 'akora.jpg'),
(3, 'Kaikoura', 'kai.jpg'),
(4, 'Westland', 'coast.jpg'),
(7, 'Invercargill City ', 'car.jpg'),
(8, 'Southland', 'south.jpg'),
(12, 'Central Otago ', 'ota.jpg'),
(16, 'Timaru', 'timaru.jpg'),
(22, 'Hurunui', 'hur.jpg'),
(24, 'Tasman', 'bull.jpg'),
(25, 'Marlborough', 'mar.jpg'),
(26, 'Nelson City ', 'nels.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `break`
--
ALTER TABLE `break`
  ADD PRIMARY KEY (`breakID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`regionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `break`
--
ALTER TABLE `break`
  MODIFY `breakID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `regionID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
