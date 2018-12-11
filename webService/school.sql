-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2018 at 03:55 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `base` varchar(20) NOT NULL,
  `expertise` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `base`, `expertise`, `type`) VALUES
(1, 'تولید محتوا و برنامه سازی', 'دهم', 'شبکه و نرم افزار', 1),
(2, 'نصب و راه اندازی و برنامه سازی', 'دهم', 'شبکه و نرم افزار', 1),
(3, 'دانش فنی پایه', 'دهم', 'شبکه و نرم افزار', 0),
(4, 'نقشه کشی', 'دهم', 'شبکه و نرم افزار', 0),
(5, 'الزامات محیط کار', 'دهم', 'شبکه و نرم افزار', 0),
(6, 'ریاضی 1', 'دهم', 'عمومی', 0),
(7, ' عربی 1', 'دهم', 'عمومی', 0),
(8, 'دینی 1', 'دهم', 'عمومی', 0),
(9, 'فیزیک', 'دهم', 'عمومی', 0),
(10, 'ادبیات فارسی 1', 'دهم', 'عمومی', 0),
(11, 'ریاضی 2', 'یازدهم', 'عمومی', 0),
(12, ' عربی 2', 'یازدهم', 'عمومی', 0),
(13, 'دینی 2', 'یازدهم', 'عمومی', 0),
(14, 'شیمی', 'یازدهم', 'عمومی', 0),
(15, 'ادبیات فارسی 2', 'یازدهم', 'عمومی', 0),
(16, 'ریاضی 3', 'دوازدهم', 'عمومی', 0),
(17, ' عربی 3', 'دوازدهم', 'عمومی', 0),
(18, 'دینی 3', 'دوازدهم', 'عمومی', 0),
(19, 'ادبیات فارسی 3', 'دوازدهم', 'عمومی', 0),
(20, 'پیاده سازی سیستم های اطلاعاتی و طراحی وب', 'یازدهم', 'شبکه و نرم افزار', 1),
(21, 'توسعه برنامه سازی و پایگاه داده', 'یازدهم', 'شبکه و نرم افزار', 1),
(22, 'تفکر و سواد رسانه ایی', 'یازدهم', 'عمومی', 0),
(23, 'فناوری نوین', 'یازدهم', 'عمومی', 0),
(24, 'تاسیسات 1', 'دهم', 'تاسیسات ', 1),
(25, ' تاسیسات 2', 'دهم', 'تاسیسات ', 1),
(26, 'تاسیسات 3', 'دهم', 'تاسیسات ', 1),
(27, 'تاسیسات  4', 'دهم', 'تاسیسات ', 1),
(28, 'تاسیسات 11', 'یازدهم', 'تاسیسات ', 1),
(29, ' تاسیسات 22', 'یازدهم', 'تاسیسات ', 1),
(30, 'تاسیسات 33', 'یازدهم', 'تاسیسات ', 1),
(31, 'تاسیسات  44', 'یازدهم', 'تاسیسات ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

CREATE TABLE `class_room` (
  `id` int(10) UNSIGNED NOT NULL,
  `base` varchar(20) NOT NULL,
  `expertise` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`id`, `base`, `expertise`) VALUES
(1, 'دهم', 'شبکه و نرم افزار'),
(2, 'دهم', 'شبکه و نرم افزار'),
(3, 'یازدهم', 'شبکه و نرم افزار'),
(4, 'یازدهم', 'شبکه و نرم افزار'),
(5, 'دهم', 'تاسیسات'),
(6, 'دهم', 'تاسیسات '),
(7, 'یازدهم', 'تاسیسات'),
(8, 'یازدهم', 'تاسیسات ');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `national_code` int(12) UNSIGNED NOT NULL,
  `book_code` int(10) UNSIGNED NOT NULL,
  `mark` tinyint(3) UNSIGNED NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `national_code` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `national_code`, `name`, `class_id`, `active`) VALUES
(1, '5710037028', 'علی کریمی', 1, 0),
(2, '5710037020', 'امیرحسام رضایی', 1, 0),
(3, '0371111111', 'محمد آستین فشان', 1, 0),
(4, '0371111112', 'حسین زاده', 1, 0),
(5, '0371111113', ' ابراهیمی', 1, 0),
(6, '0371111114', 'حسینی', 1, 0),
(7, '0371111115', 'حسن حق وردی', 1, 0),
(8, '0371111116', 'نعماوی', 1, 0),
(9, '0371111117', ' قاضی', 1, 0),
(10, '0371111118', 'عمرانی', 1, 0),
(27, '0371111119', 'صابری', 1, 0),
(28, '0371111121', 'خوش گفتار', 1, 0),
(29, '0371111131', ' فرخی', 1, 0),
(30, '0371111141', 'اسکندری', 1, 0),
(31, '0371111151', 'یوسف منش', 1, 0),
(32, '0371111161', 'نیازی', 1, 0),
(33, '0371111171', ' موسوس', 1, 0),
(34, '0371111181', 'مقدم منظر', 2, 0),
(35, '0372111111', '2محمد آستین فشان', 2, 0),
(36, '0373111112', '2حسین زاده', 2, 0),
(37, '0374111113', ' 2ابراهیمی', 2, 0),
(38, '0375111114', '2حسینی', 2, 0),
(39, '0376111115', '2حسن حق وردی', 2, 0),
(40, '0377111116', '2نعماوی', 2, 0),
(41, '0378111117', '2 قاضی', 2, 0),
(42, '0379111118', '2عمرانی', 2, 0),
(43, '0371011119', '2صابری', 2, 0),
(44, '0371211121', '2خوش گفتار', 2, 0),
(45, '0371311131', ' 2فرخی', 2, 0),
(46, '0371411141', '2اسکندری', 2, 0),
(47, '0371511151', '2یوسف منش', 2, 0),
(48, '0371611161', '2نیازی', 2, 0),
(49, '0371711171', ' موسوی2', 2, 0),
(50, '0371811181', 'کریم زاده', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `group_id` tinyint(3) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `studend_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `personal_code` varchar(14) NOT NULL,
  `name` varchar(50) NOT NULL,
  `expertise` varchar(50) NOT NULL,
  `degree` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `personal_code`, `name`, `expertise`, `degree`, `active`) VALUES
(1, '94017925', 'علی کریمی', 'شبکه و نرم افزار', 1, 0),
(2, '94017953', 'اکبر نژاد', 'تاسیسات', 2, 0),
(3, '94017123', 'حسن حق وردی', 'شبکه و نرم افزار', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `id` int(10) UNSIGNED NOT NULL,
  `personal_code` int(10) UNSIGNED NOT NULL,
  `book_code` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `group_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `national_code` varchar(20) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `national_code`, `type`) VALUES
(1, '94017925', '94017925', '94017925', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_code` (`national_code`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD KEY `studend_id` (`studend_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_code` (`personal_code`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `national_code` (`national_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class_room`
--
ALTER TABLE `class_room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD CONSTRAINT `student_groups_ibfk_1` FOREIGN KEY (`studend_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teaching`
--
ALTER TABLE `teaching`
  ADD CONSTRAINT `teaching_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
