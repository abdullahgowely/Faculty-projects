-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 09:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `managmentt`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `Date` date NOT NULL,
  `Absence_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assistant`
--

CREATE TABLE `assistant` (
  `assistant_ssn` int(11) NOT NULL,
  `diploma_specialization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assistant`
--

INSERT INTO `assistant` (`assistant_ssn`, `diploma_specialization`) VALUES
(123446789, 'Math'),
(234537890, 'Math'),
(342678901, 'Math'),
(451789012, 'Computer science'),
(564890123, 'Computer science');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_id` int(11) NOT NULL,
  `Credits` int(11) DEFAULT NULL,
  `C_name` varchar(50) DEFAULT NULL,
  `Pre_requests` varchar(100) DEFAULT NULL,
  `doctor_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_id`, `Credits`, `C_name`, `Pre_requests`, `doctor_ssn`) VALUES
(1, 3, 'Calculus', NULL, 123451212),
(2, 4, 'Computer science', NULL, 890123456),
(3, 4, 'Data mining ', 'Introduction to Computer Science', 234561098),
(4, 3, 'Database', 'Calculus I', 234567890),
(5, 4, 'Machine learning', 'Data Structures and Algorithms', 345672109),
(6, 4, 'Math 0', 'Calculus I', 456789012),
(7, 4, 'programming', 'Introduction to Computer Science', 678901234),
(8, 4, 'regression', 'Data Structures and Algorithms', 678905432);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_SSN` int(11) NOT NULL,
  `masters_specialization` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_SSN`, `masters_specialization`) VALUES
(123451212, 'Business Administration'),
(234561098, 'Computer science'),
(234567890, 'Science in Engineering'),
(345672109, 'Fine Arts'),
(456789012, 'Social work'),
(678901234, 'Education'),
(678905432, 'Public Health'),
(890123456, 'Cybersecurity');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls_in`
--

CREATE TABLE `enrolls_in` (
  `Student_ID` int(11) NOT NULL,
  `Course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `Absence_Date` date NOT NULL,
  `Course_id` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `Lec_Time` time NOT NULL,
  `Lec_place` varchar(50) DEFAULT NULL,
  `Lec_date` date DEFAULT NULL,
  `Course_id` int(11) NOT NULL,
  `doctor_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`Lec_Time`, `Lec_place`, `Lec_date`, `Course_id`, `doctor_ssn`) VALUES
('09:00:00', 'Room 101', '2022-01-01', 1, 123451212),
('10:00:00', 'Room 303', '2022-03-03', 3, 234561098),
('10:30:00', 'Room 707', '2022-07-04', 7, 678901234),
('11:00:00', 'Room 404', '2022-04-15', 4, 234567890),
('13:00:00', 'Room 505', '2022-05-01', 5, 345672109),
('14:00:00', 'Room 808', '2022-08-20', 8, 678905432),
('14:30:00', 'Room 202', '2022-02-15', 2, 890123456),
('15:00:00', 'Room 606', '2022-06-10', 6, 456789012);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `SSN` int(11) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Middle_name` varchar(50) DEFAULT NULL,
  `Last_name` varchar(50) NOT NULL,
  `B_day` int(11) DEFAULT NULL,
  `B_month` int(11) DEFAULT NULL,
  `B_year` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `Street_no` int(11) DEFAULT NULL,
  `Street_city` varchar(50) DEFAULT NULL,
  `Enrolled_dept` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`SSN`, `First_name`, `Middle_name`, `Last_name`, `B_day`, `B_month`, `B_year`, `Gender`, `Religion`, `Street_no`, `Street_city`, `Enrolled_dept`) VALUES
(123446789, 'Abdulrahman', NULL, 'Ali', 10, 5, 1998, 'Male', 'Muslim', 123, 'Alexandria', NULL),
(123450987, 'Hala', NULL, 'Mahmoud', 12, 10, 1998, 'Female', 'Muslim', 1234, 'Alexandria', 'FCDS'),
(123451212, 'Abdullah', NULL, 'Gowely', 1, 4, 2001, 'Male', 'Muslim', 1233, 'Smouha', 'FCDS'),
(123456789, 'Ahmed', NULL, 'Mohamed', 2, 3, 1999, 'Male', 'Muslim', 1234, 'Alexandria', 'FCDS'),
(234537890, 'Mohamed', NULL, 'Ahmed', 15, 2, 1995, 'Male', 'Muslim', 456, 'Cairo', NULL),
(234561098, 'Mohammed', NULL, 'Amin', 30, 7, 2001, 'Male', 'Muslim', 2345, 'Cairo', 'FCDS'),
(234567890, 'Fatima', NULL, 'Ali', 5, 11, 2001, 'Female', 'Muslim', 2345, 'Cairo', 'FCDS'),
(234569871, 'Jihad', NULL, 'Mohammed', 19, 2, 1999, 'Male', 'Muslim', 2345, 'Cairo', 'FCDS'),
(342678901, 'Nouran', NULL, 'Hassan', 20, 9, 1997, 'Female', 'Muslim', 789, 'Giza', NULL),
(345672109, 'Heba', NULL, 'Abdul', 9, 9, 2002, 'Female', 'Muslim', 3456, 'Giza', 'FCDS'),
(345678901, 'Youssef', NULL, 'Ibrahim', 15, 6, 2000, 'Male', 'Muslim', 3456, 'Giza', 'FCDS'),
(451789012, 'Mariam', NULL, 'Sabahy', 8, 6, 1999, 'Female', 'Muslim', 1011, 'Helwan', NULL),
(456783210, 'Ahmed', NULL, 'Ali', 13, 2, 1999, 'Male', 'Muslim', 4567, 'Alexandria', 'FCDS'),
(456789012, 'Mariam', NULL, 'Hassan', 7, 9, 2002, 'Female', 'Muslim', 4567, 'Alexandria', 'FCDS'),
(564890123, 'Youssef', NULL, 'Alwan', 3, 1, 1994, 'Male', 'Christian', 1213, 'Maadi', NULL),
(567890123, 'Khaled', NULL, 'Abdullah', 20, 12, 1998, 'Male', 'Muslim', 5678, 'Cairo', 'FCDS'),
(567894321, 'Nada', NULL, 'Hamdy', 22, 11, 2000, 'Female', 'Muslim', 5678, 'Cairo', 'FCDS'),
(678901234, 'Nour', NULL, 'Salem', 11, 8, 2001, 'Female', 'Muslim', 6789, 'Giza', 'FCDS'),
(678905432, 'Ahmed', NULL, 'Adel', 8, 6, 2001, 'Male', 'Muslim', 6789, 'Giza', 'FCDS'),
(789012345, 'Ali', NULL, 'Khalid', 3, 7, 1999, 'Male', 'Muslim', 7890, 'Alexandria', 'FCDS'),
(789016543, 'Aisha', NULL, 'Abdullah', 17, 3, 1998, 'Female', 'Muslim', 7890, 'Alexandria', 'FCDS'),
(890123456, 'Sara', NULL, 'Fathi', 18, 5, 2002, 'Female', 'Muslim', 8901, 'Cairo', 'FCDS'),
(890127654, 'Mohammed', NULL, 'Khalid', 28, 12, 2002, 'Male', 'Muslim', 8901, 'Cairo', 'FCDS'),
(901234567, 'Omar', NULL, 'Hamza', 29, 1, 2000, 'Male', 'Muslim', 9012, 'Giza', 'FCDS'),
(901238765, 'Rana', NULL, 'Hassan', 4, 4, 2000, 'Female', 'Muslim', 9012, 'Giza', 'FCDS');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `Section_Time` datetime NOT NULL,
  `Section_place` varchar(50) DEFAULT NULL,
  `Section_date` date DEFAULT NULL,
  `Course_id` int(11) NOT NULL,
  `assistant_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SSN` int(11) NOT NULL,
  `Salary` float DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `Staff_type` varchar(20) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SSN` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `CGPA` float DEFAULT NULL,
  `Tuition_fees` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SSN`, `Student_ID`, `CGPA`, `Tuition_fees`) VALUES
(1234567892, 20221237, 3.9, 25000),
(567890123, 20221542, 2.3, 5000),
(456783210, 20221578, 2.9, 5000),
(901234567, 20221737, 3.1, 5000),
(901238765, 20221934, 2.87, 5000),
(567894321, 20221987, 3, 25000),
(234569871, 20222205, 3.9, 5000),
(123450987, 20223579, 3.5, 5000),
(345678901, 20224156, 2.4, 25000),
(789016543, 20224275, 1.9, 5000),
(123456789, 20224497, 3, 5000),
(1234567899, 20228972, 3.2, 5000),
(789012345, 20229835, 3.6, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `assistant`
--
ALTER TABLE `assistant`
  ADD PRIMARY KEY (`assistant_ssn`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_id`),
  ADD KEY `fk_doctor_ssn` (`doctor_ssn`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_SSN`,`masters_specialization`);

--
-- Indexes for table `enrolls_in`
--
ALTER TABLE `enrolls_in`
  ADD PRIMARY KEY (`Student_ID`,`Course_id`),
  ADD KEY `Course_id` (`Course_id`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`Absence_Date`,`Course_id`,`Student_ID`),
  ADD KEY `Course_id` (`Course_id`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`Lec_Time`),
  ADD KEY `fk_lecturers_doctor_ssn` (`doctor_ssn`),
  ADD KEY `fk_lectures_Course_id` (`Course_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`Section_Time`),
  ADD KEY `fk_sections_assistant` (`assistant_ssn`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assistant`
--
ALTER TABLE `assistant`
  ADD CONSTRAINT `assistant_ibfk_1` FOREIGN KEY (`assistant_ssn`) REFERENCES `person` (`SSN`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_doctor_ssn` FOREIGN KEY (`doctor_ssn`) REFERENCES `doctor` (`doctor_SSN`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`doctor_SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE;

--
-- Constraints for table `enrolls_in`
--
ALTER TABLE `enrolls_in`
  ADD CONSTRAINT `enrolls_in_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `enrolls_in_ibfk_2` FOREIGN KEY (`Course_id`) REFERENCES `courses` (`Course_id`);

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`Absence_Date`) REFERENCES `absence` (`Date`),
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`Course_id`) REFERENCES `courses` (`Course_id`),
  ADD CONSTRAINT `has_ibfk_3` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `fk_lecturers_doctor_ssn` FOREIGN KEY (`doctor_ssn`) REFERENCES `courses` (`doctor_ssn`),
  ADD CONSTRAINT `fk_lectures_Course_id` FOREIGN KEY (`Course_id`) REFERENCES `courses` (`Course_id`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_sections_assistant` FOREIGN KEY (`assistant_ssn`) REFERENCES `assistant` (`assistant_ssn`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
