-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 09:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_omicron`
--

-- --------------------------------------------------------

--
-- Table structure for table `gps_track`
--

CREATE TABLE `gps_track` (
  `rider_id` int(11) NOT NULL,
  `track_time` datetime NOT NULL DEFAULT current_timestamp(),
  `track_lng` decimal(11,7) NOT NULL,
  `track_lat` decimal(11,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `temp` varchar(255) NOT NULL,
  `s1` varchar(255) NOT NULL,
  `s2` varchar(255) NOT NULL,
  `s3` varchar(255) NOT NULL,
  `s4` varchar(255) NOT NULL,
  `s5` varchar(244) NOT NULL,
  `s6` varchar(233) NOT NULL,
  `s7` varchar(255) NOT NULL,
  `s8` varchar(255) NOT NULL,
  `s9` varchar(244) NOT NULL,
  `s10` varchar(255) NOT NULL,
  `s11` varchar(255) NOT NULL,
  `s12` varchar(255) NOT NULL,
  `s13` varchar(255) NOT NULL,
  `travel` varchar(255) NOT NULL,
  `med_his` varchar(255) NOT NULL,
  `cur_cond` varchar(244) NOT NULL,
  `result` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `age`, `gender`, `temp`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `s11`, `s12`, `s13`, `travel`, `med_his`, `cur_cond`, `result`) VALUES
(1, '24', 'Male', 'high fever', '', 'Loss or diminished sense of smell', 'Sore Throat', 'Weakness', '', '', '', 'Feeling breathless', '', 'Drowsiness', 'Persistent pain and pressure in chest', 'Severe Weakness', '', 'clcont', 'stroke', 'worcl', 'معتدله'),
(2, '29', 'Male', 'high fever', 'Dry Cough', 'Loss or diminished sense of smell', 'Sore Throat', 'Weakness', 'Change in appetite', '', 'Moderate to severe cough', 'Feeling breathless', 'Difficulty in breathing', 'Drowsiness', 'Persistent pain and pressure in chest', '', '', 'clcont', 'reduced immunity', 'worcl', 'معتدله'),
(3, '25', 'Female', 'high fever', 'Dry Cough', 'Loss or diminished sense of smell', 'Sore Throat', '', '', '', '', 'Feeling breathless', 'Difficulty in breathing', '', 'Persistent pain and pressure in chest', 'Severe Weakness', '', 'clcont', 'reduced immunity', 'worcl', 'معتدله'),
(4, '22', 'Female', 'normal', '', '', '', '', '', 'None', '', '', '', '', '', '', 'None', 'no', 'None of these', 'imp', 'منخفضه'),
(5, '24', 'Male', 'high fever', 'Dry Cough', 'Loss or diminished sense of smell', 'Sore Throat', '', '', '', 'Moderate to severe cough', 'Feeling breathless', 'Difficulty in breathing', '', 'Persistent pain and pressure in chest', 'Severe Weakness', '', 'no', 'None of these', 'wor', 'مرتفعه'),
(6, '24', 'Male', 'high fever', 'Dry Cough', 'Loss or diminished sense of smell', 'Sore Throat', '', '', '', 'Moderate to severe cough', 'Feeling breathless', 'Difficulty in breathing', '', 'Persistent pain and pressure in chest', 'Severe Weakness', '', 'no', 'None of these', 'wor', 'مرتفعه'),
(7, '28', 'Female', 'high fever', 'Dry Cough', 'Loss or diminished sense of smell', 'Sore Throat', '', '', '', 'Moderate to severe cough', 'Feeling breathless', 'Difficulty in breathing', '', '', '', '', 'clcont', 'None of these', 'wor', 'مرتفعه'),
(8, '26', 'Female', 'fever', '', '', '', 'Weakness', 'Change in appetite', '', '', '', '', 'Drowsiness', '', '', '', 'no', 'None of these', 'imp', 'معتدله'),
(9, '25', 'Female', 'normal', '', '', '', '', '', 'None', '', '', '', '', '', '', 'None', 'no', 'None of these', 'imp', 'منخفضه'),
(10, '30', 'Male', 'normal', 'Dry Cough', 'Loss or diminished sense of smell', 'Sore Throat', '', 'Change in appetite', '', '', '', '', '', 'Persistent pain and pressure in chest', 'Severe Weakness', '', 'clcont', 'reduced immunity', 'no', 'معتدله'),
(11, '23', 'Male', 'high fever', 'Dry Cough', 'Loss or diminished sense of smell', '', '', '', '', '', 'Feeling breathless', 'Difficulty in breathing', 'Drowsiness', '', '', '', 'clcont', 'reduced immunity', 'wor', 'معتدله'),
(12, '26', 'Male', 'high fever', 'Dry Cough', '', '', '', '', '', '', 'Feeling breathless', '', '', '', '', '', 'no', 'high blood pressure', 'wor', 'مرتفعه'),
(13, '19', 'Male', 'high fever', 'Dry Cough', '', '', '', '', '', '', 'Feeling breathless', '', '', '', '', '', 'no', 'diabetes', 'wor', 'مرتفعه'),
(14, '19', 'Male', 'high fever', 'Dry Cough', '', '', '', '', '', '', 'Feeling breathless', '', '', '', '', '', 'no', 'diabetes', 'wor', 'مرتفعه'),
(15, '19', 'Male', 'high fever', 'Dry Cough', '', '', '', '', '', '', '', '', '', '', 'Severe Weakness', '', 'cont', 'diabetes', 'worcl', 'مرتفعه'),
(16, '19', 'Male', 'high fever', 'Dry Cough', '', '', '', '', '', '', '', '', '', '', 'Severe Weakness', '', 'cont', 'diabetes', 'worcl', 'مرتفعه'),
(17, '19', 'Male', 'normal', '', '', '', '', '', 'None', '', '', '', '', '', '', 'None', 'no', 'diabetes', 'imp', 'منخفضه');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'احمد محمد مصطفي', 'hussen@test.com', '27aa85d9579166a014c206c41971b23eadb20ac6a42aca4a88f7e64cf25fa6a2'),
(2, 'المنصورة العام', 'hussen2@test.com', '4137f4c3cc49f6f83bd557421f1666aff4f8b66365f070b90039751503982f97'),
(3, 'المنصورة العام1', 'hussen11@test.com', '4137f4c3cc49f6f83bd557421f1666aff4f8b66365f070b90039751503982f97'),
(4, 'ahmed', 'ahmed@test.com', '4137f4c3cc49f6f83bd557421f1666aff4f8b66365f070b90039751503982f97');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gps_track`
--
ALTER TABLE `gps_track`
  ADD PRIMARY KEY (`rider_id`),
  ADD KEY `track_time` (`track_time`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
