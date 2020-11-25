-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 02, 2020 at 03:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carehand`
--

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
CREATE TABLE IF NOT EXISTS `donate` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `items` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(30) NOT NULL,
  `transaction` varchar(30) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`d_id`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=MyISAM AUTO_INCREMENT=1018 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`d_id`, `items`, `name`, `contact`, `address`, `district`, `transaction`) VALUES
(1001, 'T-Shirt    :5pc;\r\nFootware(ladies) :2pc\r\n', 'Manohar', 8989898912, 'Manoharm House,Mettupalayam,Kochi', 'Eranakulam', 'pending'),
(1002, 'smal bagpack -2pc\r\nt-shirt small -5pc', 'zameer', 9334234565, 'near panchayath post office,kuttiyadi', 'kozhikode', 'pending'),
(1013, 'bucket 2pc\r\nshirt 3pc\r\nwater bottle 2pc', 'malavika', 9678564536, 'mullassry thravad,keepara', 'kasarkode', 'collected'),
(1015, 'TSHIRT-3pc\r\nSHIRT-2pc', 'Ajmal C ', 8078254644, 'Chodoth House,Aluva', 'Eranakulam', 'collected'),
(1017, 'Pack Of Mask& Glouse - 2\r\n,Sanitizer 50 bottle.', 'Zahid', 9567834429, 'Madathikol House', 'Kannur', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_no`
--

DROP TABLE IF EXISTS `emergency_no`;
CREATE TABLE IF NOT EXISTS `emergency_no` (
  `no_owner` varchar(50) NOT NULL,
  `number` bigint(20) NOT NULL,
  UNIQUE KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_no`
--

INSERT INTO `emergency_no` (`no_owner`, `number`) VALUES
('NATIONAL EMERGENCY NUMBER', 112),
('POLICE', 100),
('FIRE', 101),
('AMBULANCE', 102),
('Disaster Management Service', 108),
('Women Helpline', 1091),
('Women Helpline (Domestic Abuse)', 181),
('Air Ambulance', 9540161344),
('Aids Helpline', 1097),
('Anti Poison (New Delhi)', 1066),
('Disaster Management (N.D.M.A)', 1078),
('Earthquake/Flood/Disaster Helpline', 9711077372),
('Senior Citizen Helpline', 1291),
('Railway Enquiry', 139),
('Kisan Call Center', 1551),
('Relief Commissioner For Natural Disaster ', 1070),
('Children In Difficult Situation', 1098),
('LPG Leak Helpline', 1906);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Sno`, `subject`, `message`, `name`, `email`, `date`) VALUES
(1, 'Good Work', 'Your Team is done a greate work, it will help alot of people.', 'Bibin', 'Bibinmail@gmail.com', '2020-01-01'),
(2, 'Good website', 'This website is helpful for a lot of people who faces disasters.', 'aby', 'aby321@gmail.com', '2020-01-12'),
(7, 'Need More Features', 'You Need add a live updating weather map', 'sanju', 'sanjutechy@gmail.com', '2020-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=641 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`h_id`, `name`, `address`, `district`, `contact`) VALUES
(555, 'Govt.General Hospital', 'Kainatty,Kalpetta,673122', 'Wayanad', '04936206768'),
(556, 'Leo Hospital', 'Main Rd,Mandayapuram,Kalpetta 673122', 'Wayanad', '04936202711'),
(557, 'Kerala Institute of Medical Science', 'Anayara P.O', 'Trivandrum', '0471-2447575'),
(558, 'Regional Cancer Center', 'Medical College Campus,Pin:2417', 'Trivandrum', '91-471-2442541'),
(559, 'Aravind Medical Center', 'Chavara 691583', 'Kollam', '0474-2680477'),
(560, 'Assisi Attonment Hospital', 'Chavara', 'Kollam', '0474-2523321'),
(561, 'C.M hospital', 'Pathalam', 'Pathanamthitta', '0473-2452084'),
(562, 'C.S.I Hospital', 'Punnakad,Kozhenchery', 'Pathanamthitta', '0473-2314129'),
(563, 'Century Hospital', 'Mulakkuzha,P.O ,Chengannur', 'Alappuzha', '0477-245312'),
(564, 'Jeevan\'s Hospital', 'Chandiroor,688547', 'Alappuzha', '0478-2872648'),
(565, 'C.M.C Diagnostic Hospital', 'Opposit Medical College', 'Kottayam', '0481-2599923'),
(566, 'Morning Star Medical Center', 'Nazareth Hill,Adimali\r\n685 561', 'Idukki', '04862422144'),
(567, 'Amrita Institute Of Medical Centre', 'Amrita Lane,Elamakkara P.O .Ponekkara,Kochi', 'Ernakulam', '0484-2802000'),
(568, 'Bishop Alappatt Mission Hospital', 'Karanchira,Kattoor,Irinjalakuda', 'Thrissur', '0480-2877320'),
(569, 'Palakkad District Hospital', 'Palaghat', 'Palakkad', '0491-2533327'),
(570, 'Korambayil Hospital', 'Manjeri', 'Malappuram', '0493-766573'),
(571, 'Baby Memorial Hospital', 'Indira Gandhi Rd,Arayidathupalam,673004', 'Kozhikode', '04952777777'),
(572, 'A.K.G Hospital', 'Thalap,Kannur,670002', 'Kannur', '04972705501'),
(573, 'Arimala Hospital & Trauma centre', 'Near Railway Station,kanhangad,671315', 'Kasaragod', '04672202260'),
(574, 'Thejaswini Co-operative Hospital', 'Edhthode Rd,Nileshwar,671314', 'Kasaragod', '04672285257'),
(575, 'Malik Deenar Hospital', 'Thalangara,671122', 'Kasaragod', '04994230112'),
(576, 'Mansoor Hospital', 'SH 57,Athinjal,Kuttichira,Kanhangad', 'Kasaragod', '04672202070'),
(577, 'Govt.THQ Hospital', 'Kasaragod,Kerala', 'Kasaragod', '04994230080'),
(578, 'Kamath Medical Center', 'Kasaragod,kerala,671123', 'Kasaragod', '04994230004'),
(579, 'Sunrise Hospital', 'Panathoor Rd,Puthiyakandam Village,Kanhangad', 'Kasaragod', '04672208180'),
(580, 'K A H M Hospiatl', 'NH 17 ,Cheruvathur,671313', 'Kasaragod', '04672260072'),
(581, 'Kasaragod Institute of Medical Sciences', 'DDRC Lab,Ashwini Nagar ,MG Road,671121 ', 'Kasaragod', '04994219400'),
(582, 'Chaithra Medical Center', '111,SH 31,Journalist Colony,671123', 'Kasaragod', '04994256878'),
(583, 'Chokli Medical Center', 'APK Complex,Chokli,670672', 'Kannur', '04902338866'),
(584, 'Tellichery Co-operative Hospital', 'Venus Junction ,Thalassery,670101', 'Kannur', '04902340000'),
(585, 'Dhanalakshmi Hospital', 'Kannomthumchal Rd,Kannur,670002', 'Kannur', '04972714200'),
(586, 'Indira Gandhi Co-operative Hospital ', 'Manjodi,Thiruvangad,Thalassery,670103', 'Kannur', '04902328500'),
(587, 'Fathima Hospital ', 'South Bazar,Talap 670002 ', 'Kannur', '04972708825'),
(588, 'KIMST Hospital', 'John Mill rd,Talap, 670002', 'Kannur', '04972714800'),
(589, 'SM Hospital', 'NH 17 ,Muzhathadam 670012', 'Kannur', '04972704520'),
(590, 'General  Hospital', 'NH 66,Pallissery 670101', 'Kannur', '04902322150'),
(591, 'West Coast Hospital', 'Ballard Road, Kannur 670001', 'Kannur', '04972760730'),
(592, 'Vinayaka Hospital', 'Kattayad Rd,Sulthan Bathery 673592', 'Wayanad', '04936220102'),
(593, 'Jyothi Hospital', 'Down Bazar,Thazhe Angadi 670645', 'Wayanad', '04935240371'),
(594, 'Fatima Mata Mission Hospital', 'pinagode Rd,Kalpetta,673121', 'Wayanad', '04936204018'),
(595, 'Good Shepherd Hospital', 'Chelode,Vythiri,673576', 'Wayanad', '04936255226'),
(596, 'Assumption Hospital', 'NH212 ,Sulthan Bathery 673592', 'Wayanad', '04936223120'),
(597, 'Shrisha Hospital', 'Pulpally Mullenkolly 673579', 'Wayanad', '04936243423'),
(598, 'Victory Hospital', 'VH Rd,Near Matha Theatre,S.Bathery 673592', 'Wayanad', '07502500200'),
(599, 'Louise Mount Hospital', 'Chennalode,Kalpetta,673122', 'Wayanad', '07561891483'),
(600, 'Aster MIMS Hospital', 'Mini Bypass Rd,Govindapuram,673016', 'Kozhikode', '04952488000'),
(601, 'IQRAA Hospital', 'Wayanad Rd,Malaparamba,673009', 'Kozhikode', '04952379100'),
(602, 'District Co-operative Hospital', 'Mini Baypass Rd,Eranhipaalam,673006', 'Kozhikode', '04952709300'),
(603, 'Government General Hospital', 'Red Cross Rd,Vellayil,673032', 'Kozhikode', '04952365917'),
(604, 'Govt.Taluk Hospital ', 'NH 966,Down Hill,Kottapadi,676519', 'Malappuram', '04832734866'),
(605, 'PMSA Memorial District Co-op Hospital', 'Kottakunnu Rd,Up Hill,676505', 'Malapuram', '04832734407'),
(606, 'M.B Hospital', 'Down Hill-Varangode Rd,Machngal,676519', 'Malappuram', '04832883333'),
(607, 'Christian Mission Hospital', 'Kozhikode-Palakkad NH ,Up Hill,676505', 'Malappuram', '04832734387'),
(608, 'Orchid K P M Hospital', 'Highway 72 ,Kizhakkethala,676505', 'Malappuram', '04832734969'),
(609, 'Thangal Hospital', 'Chadanamkurussi,West Yakkara,678004', 'Palakkad', '04912515717'),
(610, 'Lakshmi Hospital', 'Chittur Rd,Durga Nagar,KunathurMedu,678013', 'Palakkad', '04912539999'),
(611, 'Avitis City Hospital', 'Brindavan Street,Near Town Hall,678001', 'Palakkad', '04912522879'),
(612, 'Divisional Railway Hospital', 'Railway Colony,Olavakot,678009', 'Palakkad', '04912555333'),
(613, 'Elite Mission Hospital', 'Koorkenchery Rd,Thrissur,680007', 'Thrissur', '04872436100'),
(614, 'Daya General Hospital', 'SH 22,Viyyoor-Peringavu Rd,Peringavu,680022', 'Thrissur', '04872475100'),
(615, 'Mother Hospital', 'Po Pullazhi ,olarikkara,680012', 'Thrissur', '04872434100'),
(616, 'GEM Hospital & Research Centre ', 'Ollukkara Village,Pravattani,680001', 'Thrissur', '04872972474'),
(617, 'Lisie Hospital', 'North Kaloor,682018', 'Ernakulam', '04842402044'),
(618, 'St.Joseph\'s Hospital', 'Muttar Eloor Rd,Manjummel,683501', 'Ernakulam', '08893247123'),
(619, 'PVS  Memorial Hospital', 'Banerji Rd,Opp Gokulam Park,Kaloor,682017', 'Ernakulam', '04844182888'),
(620, 'City Hospital', 'MG Rd,Padma Junction,Shenoys,682035', 'Ernakulam', '07592000731'),
(621, 'District Hospital', 'Idukki Twp,685603', 'Idukki', '04862232444'),
(622, 'Saint Alphonsa Hospital', 'SH40,Murickassery,685604', 'Idukki', '04868876221'),
(623, 'Archana Hospital', 'Muvattupuzha rd,Thodupuzha,685584', 'Idukki', '04862222824'),
(624, 'Co-operative Hospital', 'SH41 Thankamani,685609', 'Idukki', '04868275999'),
(625, 'S H Medical Center', 'nagampadam,Kottayam,686001', 'Kottayam', '04812562239'),
(626, 'Bharath Hospital', 'Azad Ln,Puthengady,686001', 'Kottayam', '04812582947'),
(627, 'General Hospital', 'Kottayam-Kumily Rd,686002', 'Kottayam', '04812563611'),
(628, 'Ananda Hospital', 'Sreenivasa Iyer Rd,Thirunakkara,686001', 'Kottayam', '04812567893'),
(629, 'Sahrudaya Hospital', 'Thondankulangara,Yhathampally,688013', 'Alappuzha', '04772247000'),
(630, 'Providence Hospital', 'Thumpoly Rd,Pomkavu NH66,688521', 'Alappuzha', '04772250100'),
(631, 'Sagara Co-operative Hospital', 'College Rd,Punnapra North,688003', 'Alappuzha', '04772267676'),
(632, 'Government General Hospital', 'Pathanamthitta Kerala 689645', 'Pathanamthitta', '04682222364'),
(633, 'Veda Hospital', 'Omallur,pathanamthitta 689647', 'Pathanamthitta', '04683259000'),
(634, 'Poyanil Hospital', 'Beside St.Thomas Hss ,Kozhencherry East 689641', 'Pathanamthitta', '04682314746'),
(635, 'Bishop Benziger Hospital', 'Mundakkal Village,Kollam 691001', 'Kollam', '04742768201'),
(636, 'Kollam District Hospital', 'Hospital Rd,Chinnakada,691001', 'Kollam', '04742768668'),
(637, 'Ashtamudi Hospital', 'Kollam Bypass Rd,Thattamala ,691020', 'Kollam', '04742534044'),
(638, 'PRS Hospital', 'NH 47,Killipalam ,695002', 'Trivandrum', '04712344442'),
(639, 'CSI Mission Hospital', 'Karakonam,Vadakkumbhagam,695582', 'Trivandrum', '04712418378'),
(640, 'India Hospital', 'Santhi Nagar,Thampanoor,695001', 'Trivandrum', '04712333193');

-- --------------------------------------------------------

--
-- Table structure for table `message2user`
--

DROP TABLE IF EXISTS `message2user`;
CREATE TABLE IF NOT EXISTS `message2user` (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`sms_id`)
) ENGINE=MyISAM AUTO_INCREMENT=563 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message2user`
--

INSERT INTO `message2user` (`sms_id`, `rc_id`, `message`, `date`, `time`) VALUES
(555, 148, 'Make sure All Volunteers wear a mask & glouse while cleaning the disaster area.\r\n', '2019-05-22', '08:11:17'),
(556, 148, 'provide a drinking water facility', '2019-04-09', '04:22:09'),
(561, 154, 'Make sure All Volunteers wear a mask & glouse while cleaning the disaster area.', '2020-06-01', '12:20:05'),
(562, 154, 'provide a drinking water facility', '2020-06-01', '12:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `newsfeed`
--

DROP TABLE IF EXISTS `newsfeed`;
CREATE TABLE IF NOT EXISTS `newsfeed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsfeed`
--

INSERT INTO `newsfeed` (`id`, `news`, `date`, `time`, `status`) VALUES
(1001, ' Kerala flood water recades,death toll rises to 104.', '2018-11-29', '09:07:00', 'show'),
(1002, 'Kerala:Flood-hit government high school gets new lab.', '2019-10-26', '15:06:04', 'hide'),
(1003, 'Changing weather patterns set off alarm bells in Kochi', '2018-12-11', '06:15:00', 'show'),
(1008, 'Kerala Student is India\'s first confirmed case of Corona Virus', '2020-01-30', '11:59:42', 'show'),
(1010, 'Covid 19 : [india] Confirmed (166k),Recovered (71106),Deaths (4706)', '2020-05-29', '08:19:36', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `rc_p_count`
--

DROP TABLE IF EXISTS `rc_p_count`;
CREATE TABLE IF NOT EXISTS `rc_p_count` (
  `rc_id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT '0',
  `male` int(11) DEFAULT '0',
  `female` int(11) DEFAULT '0',
  `children` int(11) DEFAULT '0',
  `volunteer` int(11) DEFAULT '0',
  PRIMARY KEY (`rc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_p_count`
--

INSERT INTO `rc_p_count` (`rc_id`, `capacity`, `male`, `female`, `children`, `volunteer`) VALUES
(148, 300, 2, 1, 1, 2),
(146, 100, 0, 0, 0, 0),
(147, 150, 0, 0, 0, 0),
(122, 120, 2, 1, 1, 1),
(151, 200, 1, 1, 0, 1),
(152, 120, 1, 0, 0, 2),
(153, 100, 0, 1, 0, 20),
(154, 200, 4, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rc_register`
--

DROP TABLE IF EXISTS `rc_register`;
CREATE TABLE IF NOT EXISTS `rc_register` (
  `rc_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `rcname` varchar(30) NOT NULL,
  `pcharge` varchar(20) DEFAULT NULL,
  `contact` bigint(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`rc_id`),
  UNIQUE KEY `unique` (`contact`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_register`
--

INSERT INTO `rc_register` (`rc_id`, `user_name`, `rcname`, `pcharge`, `contact`, `district`, `address`, `status`) VALUES
(152, 'rahul', 'Akg House', 'Ramanujan', 8899889898, 'Malappuram', 'Neelakkavala Road,Melpuram', 'Not Active'),
(122, 'fathu', 'Gov School CenterTown', 'Ramesh', 9567345211, 'Kannur', 'Near juma masjid,mahe', 'Active'),
(146, 'akash', 'Holy Angels Isc School', 'Subash', 9344523654, 'Thiruvananthapuram', 'Near konnoth Building,Papplasery', 'Not Active'),
(147, 'akash', 'Chinmaya Vidyalaya', 'Sulaiman', 8765432124, 'Kozhikode', '3rd Junction,Center town', 'Active'),
(148, 'ajmal', 'Madapalli HSS ,Kollam', 'Basil', 8342312786, 'Kollam', 'Near Anglo Girls School', 'Active'),
(151, 'aswanth', 'vishnuvilasm lp school', 'Kumar', 9567453432, 'Kasaragod', 'kadavathur road,Mukkilpeedia', 'Active'),
(154, 'vishnu', 'N A M HSS ,Moolankavu', 'Govind', 9224465120, 'Wayanad', 'NH72 Rd,Near Thanneerkulam', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `rc_stock`
--

DROP TABLE IF EXISTS `rc_stock`;
CREATE TABLE IF NOT EXISTS `rc_stock` (
  `item_no` int(11) NOT NULL AUTO_INCREMENT,
  `rc_id` int(11) DEFAULT NULL,
  `user_name` varchar(30) NOT NULL,
  `item` varchar(30) NOT NULL,
  `description` text,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_stock`
--

INSERT INTO `rc_stock` (`item_no`, `rc_id`, `user_name`, `item`, `description`, `qty`) VALUES
(135, 148, 'ajmal', 'biscut', 'parleg', 30),
(134, 153, 'laiju', 'Rice', 'Rice', 100),
(136, 122, 'fathu', 'BedSheet', 'Single ', 15),
(110, 151, 'aswanth', 'biscut', 'for children', 45),
(111, 151, 'aswanth', 'bag', 'small', 50),
(112, 151, 'aswanth', 'toothpaste', 'medium sized', 32),
(123, 146, 'akash', 'bisccut', '500g', 20),
(124, 147, 'akash', 'Drinking Water', '1litl', 23),
(125, 122, 'fathu', 'soap', 'washing soap', 30),
(128, 122, 'fathu', 'paste', 'colgate', 50),
(132, 148, 'ajmal', 'apple', '1kg', 50),
(137, 154, 'vishnu', 'Bed Sheet', 'Single', 8),
(138, 154, 'vishnu', 'Bucket', 'Small', 3),
(139, 154, 'vishnu', 'Rice', '3rose 25kg', 1),
(140, 154, 'vishnu', 'towels', 'new', 4);

-- --------------------------------------------------------

--
-- Table structure for table `refugee_info`
--

DROP TABLE IF EXISTS `refugee_info`;
CREATE TABLE IF NOT EXISTS `refugee_info` (
  `rfg_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_id` int(11) NOT NULL,
  `rfg_name` varchar(30) NOT NULL,
  `rfg_gender` varchar(1) NOT NULL,
  `rfg_dob` date NOT NULL,
  `rfg_aadhar` bigint(20) DEFAULT NULL,
  `address` text NOT NULL,
  `rfg_contact` bigint(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'In Camp',
  PRIMARY KEY (`rfg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refugee_info`
--

INSERT INTO `refugee_info` (`rfg_id`, `rc_id`, `rfg_name`, `rfg_gender`, `rfg_dob`, `rfg_aadhar`, `address`, `rfg_contact`, `status`) VALUES
(2121, 148, 'Abraham', 'm', '1995-12-18', 786756453423, 'Flower House,Mekkunnu', 8976554432, 'In Camp'),
(2122, 148, 'Raju', 'm', '2005-06-12', 543545445664, 'Madathil House,kurachundu', 5353535353, 'In Camp'),
(2124, 148, 'binoy', 'm', '2020-01-24', 545454545454, 'valiyapuram House,mundayad', 3434343434, 'left Camp'),
(2125, 148, 'malavika', 'f', '1973-06-20', 343434234565, 'Near panchayath post office,kuttiyadi', 8454433221, 'In Camp'),
(2126, 151, 'abin', 'm', '1997-07-21', 321234543212, 'muvattupuzhakkal ,thriveni road', 9898989432, 'In Camp'),
(2127, 151, 'savithry ramesh', 'f', '1989-08-02', 435432123454, 'Chundedath House,PO Thenkurissy', 9453423123, 'In Camp'),
(2128, 151, 'Riswan', 'm', '2006-03-20', 765432123465, 'Riss Manzil,Cholakkatu,payyoli', 9876545678, 'left Camp'),
(2129, 152, 'Jomon', 'm', '1998-02-11', 678765432356, 'Meppadi,Thiruvalla', 8765677765, 'left camp'),
(2130, 122, 'Meenakshi', 'f', '1995-07-14', 787656545676, 'Akhshara Vilasam po thekur', 9878987876, 'In Camp'),
(2131, 122, 'Sudheer Karappana', 'm', '1995-01-09', 676888887766, 'Sneha veedu ,Po.Vidavoor', 6543454323, 'In Camp'),
(2132, 122, 'Babu Mon', 'm', '2010-09-28', 676543454323, 'Sneha veedu ,Po.Vidavoor', 8767656545, 'In Camp'),
(2133, 153, 'Test', 'f', '1990-01-01', 123456789111, 'Test', 1234567890, 'In Camp'),
(2134, 154, 'Ram Mohan', 'm', '1986-07-28', 789876545432, 'asd House,Moolankavu', 9112236540, 'In Camp'),
(2135, 154, 'Gulmohar', 'm', '1985-09-08', 231234543986, 'JK House,Moolankavu', 9870050203, 'In Camp'),
(2136, 154, 'Bhavani', 'f', '1975-08-01', 989675435643, 'BB House,Moolankavu', 9887786654, 'In Camp'),
(2137, 154, 'Ammu', 'f', '2010-02-16', 676765654345, 'BB House,Moolankavu', 7876545432, 'In Camp'),
(2138, 154, 'Janardanan', 'm', '1984-12-12', 232123453543, 'KK Villa,Moolankavu', 9874563423, 'In Camp'),
(2139, 154, 'Shakunthala', 'f', '1979-05-19', 787654543432, 'KK Villa,Moolankavu', 8676545432, 'In Camp'),
(2140, 154, 'Suresh Kumar', 'm', '1988-01-04', 887767656545, 'NKL House,Moolankavu', 9335465231, 'In Camp');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(16) NOT NULL,
  `category` varchar(30) NOT NULL DEFAULT 'camp',
  `ac_status` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `unique` (`email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `username`, `email`, `contact`, `address`, `password`, `category`, `ac_status`) VALUES
(21, 'Admin', 'admin123@gmail.com', 9567834429, 'cybervilla', 'admin', 'admin', 'Active'),
(101, 'vishnu', 'vishnu@gmail.com', 8786858428, 'Vishnuvilasm,PIN:678346', '123456', 'camp', 'Active'),
(102, 'rahul', 'rahul@gmail.com', 9666464649, 'Rahul villa,PIN:675234', '123456', 'camp', 'Active'),
(103, 'fathu', 'fathu@gmail.com', 9234567895, 'Mirzamandir,PIN:675646', '123456', 'camp', 'Active'),
(104, 'akash', 'akash@gmail.com', 9898676745, 'Akashaganga ,PIN:678345', '123456', 'camp', 'Active'),
(105, 'aswanth', 'jeje@gmail.com', 9344534234, 'As vilasm,Pin:356445', '123456', 'camp', 'Active'),
(106, 'ajmal', 'ajmal@gmail.com', 8989675645, 'Bismillas ,Pin:675564', '123456', 'camp', 'Active'),
(107, 'rizwan', 'rizzz123@gmail.com', 9900989098, 'Rahath Mahal,Pin:675677\r\n', '123456', 'camp', 'Deactive'),
(117, 'laiju', 'laiju@gmail.com', 9744458599, 'St.Marys College,S.bathery', '123456', 'camp', 'Active'),
(118, 'Krishnajith', 'kinnan@gmail.com', 9778796742, 'Krishnavilasm,pullpalli,687345,Wayanad', '123456', 'camp', 'Active'),
(119, 'Akshay', 'AkkuDon@gmail.com', 9076453826, 'Don House,Kappiset,675432,Wayanad', '123456', 'camp', 'Active'),
(120, 'Kevin', 'kevinlevin@gmail.com', 9898987654, 'KK House,SulthanBathery,679592,Wayanad', '123456', 'camp', 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_info`
--

DROP TABLE IF EXISTS `volunteer_info`;
CREATE TABLE IF NOT EXISTS `volunteer_info` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(30) NOT NULL,
  `v_gender` varchar(1) NOT NULL,
  `v_age` int(11) NOT NULL,
  `v_aadhar` bigint(20) NOT NULL,
  `v_contact` bigint(20) NOT NULL,
  `v_address` text NOT NULL,
  `v_district` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'free',
  `rc_id` int(11) DEFAULT '0',
  PRIMARY KEY (`v_id`),
  UNIQUE KEY `v_aadhar` (`v_aadhar`)
) ENGINE=MyISAM AUTO_INCREMENT=797 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer_info`
--

INSERT INTO `volunteer_info` (`v_id`, `v_name`, `v_gender`, `v_age`, `v_aadhar`, `v_contact`, `v_address`, `v_district`, `status`, `rc_id`) VALUES
(777, 'Jeevan raj', 'm', 28, 876543128856, 9876567654, 'Sam vilas House,Kanjirakkal,Po.malampuzha\r\n', 'Palakkad', 'free', 0),
(778, 'Nihal mahamood', 'm', 25, 678765456765, 9008067654, 'Ellikal House,Nadapuram,Kozhikode', 'Kozhikode', 'free', 0),
(779, 'Sahad pk', 'm', 23, 641234543212, 8567007766, 'Ariyakandi house,Aniyaram,Peringathur', 'Kannur', 'free', 0),
(780, 'Rose Mary', 'f', 25, 767654321232, 8332211234, 'Koroth Kandi House,pulpery', 'Idukki', 'free', 0),
(781, 'Manju Mohan', 'f', 28, 699965456765, 8900998876, 'Manjuvilasm villa,Dharmadam', 'Kasaragod', 'free', 0),
(782, 'Then Mozhi', 'f', 32, 675543128856, 9944321120, 'Devaki Graham,Puthussery', 'Kottayam', 'free', 0),
(783, 'Sabique ch', 'm', 24, 678998765432, 9231233221, 'Punathil House,Mankattukadavu po.', 'Pathanamthitta', 'free', 0),
(788, 'Sumesh  kk', 'm', 32, 657656545432, 7876565434, 'Kk House,678567', 'Kollam', 'free', 0),
(784, 'Ajmal C', 'm', 21, 656543456554, 8078254644, 'Chodoth House,aluva', 'Eranakulam', 'free', 0),
(785, 'Anupam Jose', 'm', 24, 876781122321, 9207364653, 'Aadam Villa,Iringapuzha,Pin:674321', 'Thiruvananthapuram', 'free', 0),
(786, 'Athul Jose', 'm', 25, 678987898789, 9645568587, 'Angel Home,Iringappuzha,Pin:656765', 'Kozhikode', 'on work', 147),
(787, 'Jinto Reji', 'm', 21, 673455754786, 9072431966, 'Kuriyilil(H)palemad(po) unichandam nilambur', 'Malappuram', 'free', 0),
(789, 'Boby joy', 'm', 33, 667766556765, 9998887667, 'Joy Thamakkal,678765', 'Alappuzha', 'free', 0),
(790, 'Suma lath', 'f', 29, 645434323411, 9898112321, 'Suma Vilasm,678987', 'Thrissur', 'free', 0),
(791, 'Mathew Vargeese', 'm', 26, 676765678987, 8967550002, 'Malikkal House,678453', 'Wayanad', 'on work', 154),
(792, 'Ajay Thomas', 'm', 24, 567898765655, 7898675645, 'TJK House,Wayanad,6789654', 'Wayanad', 'free', 0),
(793, 'Satheeshan', 'm', 47, 565654543454, 6785675656, 'SK House,Wayanad,676567', 'Wayanad', 'free', 0),
(794, 'Kumari Veena', 'f', 31, 768976545342, 7898765645, 'KJ Colony,Wayanad567345', 'Wayanad', 'free', 0),
(795, 'Ramesh', 'm', 26, 456545654345, 6787688876, 'MK House,Calicut,456765', 'Kozhikode', 'free', 0),
(796, 'Savithri', 'f', 32, 688344522343, 7898899008, 'DK colony,Calicut,567456', 'Kozhikode', 'free', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
