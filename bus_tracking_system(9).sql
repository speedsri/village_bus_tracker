-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2025 at 05:51 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 8.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_tracking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(50) NOT NULL,
  `table_affected` varchar(50) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`log_id`, `user_id`, `action_type`, `table_affected`, `record_id`, `old_values`, `new_values`, `ip_address`, `timestamp`) VALUES
(1, 2, 'location_update', 'bus_locations', 598, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:27'),
(2, 2, 'location_update', 'bus_locations', 599, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:29'),
(3, 2, 'location_update', 'bus_locations', 600, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:30'),
(4, 2, 'location_update', 'bus_locations', 601, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:31'),
(5, 2, 'location_update', 'bus_locations', 602, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:32'),
(6, 2, 'location_update', 'bus_locations', 603, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:33'),
(7, 2, 'location_update', 'bus_locations', 604, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:34'),
(8, 2, 'location_update', 'bus_locations', 605, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:35'),
(9, 2, 'location_update', 'bus_locations', 606, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:35'),
(10, 2, 'location_update', 'bus_locations', 607, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:36'),
(11, 2, 'location_update', 'bus_locations', 608, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:37'),
(12, 2, 'location_update', 'bus_locations', 609, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:38'),
(13, 2, 'location_update', 'bus_locations', 610, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:39'),
(14, 2, 'location_update', 'bus_locations', 611, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:40'),
(15, 2, 'location_update', 'bus_locations', 612, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:41'),
(16, 2, 'location_update', 'bus_locations', 613, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:42'),
(17, 2, 'location_update', 'bus_locations', 614, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:44'),
(18, 2, 'location_update', 'bus_locations', 615, NULL, NULL, '43.250.243.239', '2025-10-11 05:59:44'),
(19, 2, 'location_update', 'bus_locations', 616, NULL, NULL, '43.250.243.239', '2025-10-11 06:20:57'),
(20, 2, 'location_update', 'bus_locations', 617, NULL, NULL, '43.250.243.239', '2025-10-11 06:20:58'),
(21, 2, 'location_update', 'bus_locations', 618, NULL, NULL, '43.250.243.239', '2025-10-11 06:20:59'),
(22, 2, 'location_update', 'bus_locations', 619, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:00'),
(23, 2, 'location_update', 'bus_locations', 620, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:01'),
(24, 2, 'location_update', 'bus_locations', 621, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:02'),
(25, 2, 'location_update', 'bus_locations', 622, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:03'),
(26, 2, 'location_update', 'bus_locations', 623, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:04'),
(27, 2, 'location_update', 'bus_locations', 624, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:05'),
(28, 2, 'location_update', 'bus_locations', 625, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:05'),
(29, 2, 'location_update', 'bus_locations', 626, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:06'),
(30, 2, 'location_update', 'bus_locations', 627, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:07'),
(31, 2, 'location_update', 'bus_locations', 628, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:08'),
(32, 2, 'location_update', 'bus_locations', 629, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:10'),
(33, 2, 'location_update', 'bus_locations', 630, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:10'),
(34, 2, 'location_update', 'bus_locations', 631, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:11'),
(35, 2, 'location_update', 'bus_locations', 632, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:12'),
(36, 2, 'location_update', 'bus_locations', 633, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:13'),
(37, 2, 'location_update', 'bus_locations', 634, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:14'),
(38, 2, 'location_update', 'bus_locations', 635, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:15'),
(39, 2, 'location_update', 'bus_locations', 636, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:15'),
(40, 2, 'location_update', 'bus_locations', 637, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:16'),
(41, 2, 'location_update', 'bus_locations', 638, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:17'),
(42, 2, 'location_update', 'bus_locations', 639, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:18'),
(43, 2, 'location_update', 'bus_locations', 640, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:19'),
(44, 2, 'location_update', 'bus_locations', 641, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:20'),
(45, 2, 'location_update', 'bus_locations', 642, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:21'),
(46, 2, 'location_update', 'bus_locations', 643, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:22'),
(47, 2, 'location_update', 'bus_locations', 644, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:23'),
(48, 2, 'location_update', 'bus_locations', 645, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:24'),
(49, 2, 'location_update', 'bus_locations', 646, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:25'),
(50, 2, 'location_update', 'bus_locations', 647, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:25'),
(51, 2, 'location_update', 'bus_locations', 648, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:26'),
(52, 2, 'location_update', 'bus_locations', 649, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:27'),
(53, 2, 'location_update', 'bus_locations', 650, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:28'),
(54, 2, 'location_update', 'bus_locations', 651, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:29'),
(55, 2, 'location_update', 'bus_locations', 652, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:30'),
(56, 2, 'location_update', 'bus_locations', 653, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:31'),
(57, 2, 'location_update', 'bus_locations', 654, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:32'),
(58, 2, 'location_update', 'bus_locations', 655, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:33'),
(59, 2, 'location_update', 'bus_locations', 656, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:34'),
(60, 2, 'location_update', 'bus_locations', 657, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:35'),
(61, 2, 'location_update', 'bus_locations', 658, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:35'),
(62, 2, 'location_update', 'bus_locations', 659, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:36'),
(63, 2, 'location_update', 'bus_locations', 660, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:37'),
(64, 2, 'location_update', 'bus_locations', 661, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:38'),
(65, 2, 'location_update', 'bus_locations', 662, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:39'),
(66, 2, 'location_update', 'bus_locations', 663, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:40'),
(67, 2, 'location_update', 'bus_locations', 664, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:41'),
(68, 2, 'location_update', 'bus_locations', 665, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:42'),
(69, 2, 'location_update', 'bus_locations', 666, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:43'),
(70, 2, 'location_update', 'bus_locations', 667, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:44'),
(71, 2, 'location_update', 'bus_locations', 668, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:45'),
(72, 2, 'location_update', 'bus_locations', 669, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:45'),
(73, 2, 'location_update', 'bus_locations', 670, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:46'),
(74, 2, 'location_update', 'bus_locations', 671, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:47'),
(75, 2, 'location_update', 'bus_locations', 672, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:48'),
(76, 2, 'location_update', 'bus_locations', 673, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:49'),
(77, 2, 'location_update', 'bus_locations', 674, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:50'),
(78, 2, 'location_update', 'bus_locations', 675, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:51'),
(79, 2, 'location_update', 'bus_locations', 676, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:57'),
(80, 2, 'location_update', 'bus_locations', 677, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:57'),
(81, 2, 'location_update', 'bus_locations', 678, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:57'),
(82, 2, 'location_update', 'bus_locations', 679, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:58'),
(83, 2, 'location_update', 'bus_locations', 680, NULL, NULL, '43.250.243.239', '2025-10-11 06:21:59'),
(84, 2, 'start_trip', 'bus_trips', 38, NULL, '{\"trip_id\":\"38\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 07:00:29'),
(85, 2, 'location_update', 'bus_locations', 681, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:29'),
(86, 2, 'location_update', 'bus_locations', 682, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:31'),
(87, 2, 'location_update', 'bus_locations', 683, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:32'),
(88, 2, 'location_update', 'bus_locations', 684, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:33'),
(89, 2, 'location_update', 'bus_locations', 685, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:34'),
(90, 2, 'location_update', 'bus_locations', 686, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:43'),
(91, 2, 'location_update', 'bus_locations', 687, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:43'),
(92, 2, 'location_update', 'bus_locations', 688, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:43'),
(93, 2, 'location_update', 'bus_locations', 689, NULL, NULL, '43.250.243.239', '2025-10-11 07:00:44'),
(94, 2, 'start_trip', 'bus_trips', 39, NULL, '{\"trip_id\":\"39\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 07:05:57'),
(95, 2, 'location_update', 'bus_locations', 690, NULL, NULL, '43.250.243.239', '2025-10-11 07:05:59'),
(96, 2, 'location_update', 'bus_locations', 691, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:01'),
(97, 2, 'location_update', 'bus_locations', 692, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:02'),
(98, 2, 'location_update', 'bus_locations', 693, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:03'),
(99, 2, 'location_update', 'bus_locations', 694, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:04'),
(100, 2, 'location_update', 'bus_locations', 695, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:05'),
(101, 2, 'location_update', 'bus_locations', 696, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:06'),
(102, 2, 'location_update', 'bus_locations', 697, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:06'),
(103, 2, 'location_update', 'bus_locations', 698, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:07'),
(104, 2, 'location_update', 'bus_locations', 699, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:09'),
(105, 2, 'location_update', 'bus_locations', 700, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:09'),
(106, 2, 'location_update', 'bus_locations', 701, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:10'),
(107, 2, 'location_update', 'bus_locations', 702, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:11'),
(108, 2, 'location_update', 'bus_locations', 703, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:12'),
(109, 2, 'location_update', 'bus_locations', 704, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:13'),
(110, 2, 'location_update', 'bus_locations', 705, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:14'),
(111, 2, 'location_update', 'bus_locations', 706, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:15'),
(112, 2, 'location_update', 'bus_locations', 707, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:16'),
(113, 2, 'location_update', 'bus_locations', 708, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:16'),
(114, 2, 'location_update', 'bus_locations', 709, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:17'),
(115, 2, 'location_update', 'bus_locations', 710, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:18'),
(116, 2, 'location_update', 'bus_locations', 711, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:19'),
(117, 2, 'location_update', 'bus_locations', 712, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:20'),
(118, 2, 'location_update', 'bus_locations', 713, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:21'),
(119, 2, 'location_update', 'bus_locations', 714, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:22'),
(120, 2, 'location_update', 'bus_locations', 715, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:23'),
(121, 2, 'location_update', 'bus_locations', 716, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:24'),
(122, 2, 'location_update', 'bus_locations', 717, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:25'),
(123, 2, 'location_update', 'bus_locations', 718, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:26'),
(124, 2, 'location_update', 'bus_locations', 719, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:26'),
(125, 2, 'location_update', 'bus_locations', 720, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:27'),
(126, 2, 'location_update', 'bus_locations', 721, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:28'),
(127, 2, 'location_update', 'bus_locations', 722, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:29'),
(128, 2, 'location_update', 'bus_locations', 723, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:30'),
(129, 2, 'location_update', 'bus_locations', 724, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:31'),
(130, 2, 'location_update', 'bus_locations', 725, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:31'),
(131, 2, 'location_update', 'bus_locations', 726, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:32'),
(132, 2, 'location_update', 'bus_locations', 727, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:33'),
(133, 2, 'location_update', 'bus_locations', 728, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:34'),
(134, 2, 'location_update', 'bus_locations', 729, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:35'),
(135, 2, 'location_update', 'bus_locations', 730, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:36'),
(136, 2, 'location_update', 'bus_locations', 731, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:36'),
(137, 2, 'location_update', 'bus_locations', 732, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:37'),
(138, 2, 'location_update', 'bus_locations', 733, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:38'),
(139, 2, 'location_update', 'bus_locations', 734, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:39'),
(140, 2, 'location_update', 'bus_locations', 735, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:40'),
(141, 2, 'location_update', 'bus_locations', 736, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:41'),
(142, 2, 'location_update', 'bus_locations', 737, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:41'),
(143, 2, 'location_update', 'bus_locations', 738, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:42'),
(144, 2, 'location_update', 'bus_locations', 739, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:43'),
(145, 2, 'location_update', 'bus_locations', 740, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:44'),
(146, 2, 'location_update', 'bus_locations', 741, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:45'),
(147, 2, 'location_update', 'bus_locations', 742, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:46'),
(148, 2, 'location_update', 'bus_locations', 743, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:46'),
(149, 2, 'location_update', 'bus_locations', 744, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:47'),
(150, 2, 'location_update', 'bus_locations', 745, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:48'),
(151, 2, 'location_update', 'bus_locations', 746, NULL, NULL, '43.250.243.239', '2025-10-11 07:06:49'),
(152, 2, 'location_update', 'bus_locations', 747, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:01'),
(153, 2, 'location_update', 'bus_locations', 748, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:01'),
(154, 2, 'location_update', 'bus_locations', 749, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:01'),
(155, 2, 'location_update', 'bus_locations', 750, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:02'),
(156, 2, 'location_update', 'bus_locations', 751, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:03'),
(157, 2, 'location_update', 'bus_locations', 752, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:04'),
(158, 2, 'location_update', 'bus_locations', 753, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:05'),
(159, 2, 'location_update', 'bus_locations', 754, NULL, NULL, '43.250.243.239', '2025-10-11 07:07:06'),
(160, 2, 'start_trip', 'bus_trips', 40, NULL, '{\"trip_id\":\"40\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 08:21:02'),
(161, 2, 'location_update', 'bus_locations', 755, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:05'),
(162, 2, 'location_update', 'bus_locations', 756, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:05'),
(163, 2, 'location_update', 'bus_locations', 757, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:08'),
(164, 2, 'location_update', 'bus_locations', 758, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:09'),
(165, 2, 'location_update', 'bus_locations', 759, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:10'),
(166, 2, 'location_update', 'bus_locations', 760, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:11'),
(167, 2, 'location_update', 'bus_locations', 761, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:12'),
(168, 2, 'location_update', 'bus_locations', 762, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:13'),
(169, 2, 'location_update', 'bus_locations', 763, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:14'),
(170, 2, 'location_update', 'bus_locations', 764, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:15'),
(171, 2, 'location_update', 'bus_locations', 765, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:15'),
(172, 2, 'location_update', 'bus_locations', 766, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:16'),
(173, 2, 'location_update', 'bus_locations', 767, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:17'),
(174, 2, 'location_update', 'bus_locations', 768, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:18'),
(175, 2, 'location_update', 'bus_locations', 769, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:19'),
(176, 2, 'location_update', 'bus_locations', 770, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:20'),
(177, 2, 'location_update', 'bus_locations', 771, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:21'),
(178, 2, 'location_update', 'bus_locations', 772, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:22'),
(179, 2, 'location_update', 'bus_locations', 773, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:23'),
(180, 2, 'location_update', 'bus_locations', 774, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:24'),
(181, 2, 'location_update', 'bus_locations', 775, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:25'),
(182, 2, 'location_update', 'bus_locations', 776, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:25'),
(183, 2, 'location_update', 'bus_locations', 777, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:26'),
(184, 2, 'location_update', 'bus_locations', 778, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:27'),
(185, 2, 'location_update', 'bus_locations', 779, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:28'),
(186, 2, 'location_update', 'bus_locations', 780, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:29'),
(187, 2, 'location_update', 'bus_locations', 781, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:30'),
(188, 2, 'location_update', 'bus_locations', 782, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:31'),
(189, 2, 'location_update', 'bus_locations', 783, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:32'),
(190, 2, 'location_update', 'bus_locations', 784, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:33'),
(191, 2, 'location_update', 'bus_locations', 785, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:34'),
(192, 2, 'location_update', 'bus_locations', 786, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:46'),
(193, 2, 'location_update', 'bus_locations', 787, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:46'),
(194, 2, 'location_update', 'bus_locations', 788, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:46'),
(195, 2, 'location_update', 'bus_locations', 789, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:47'),
(196, 2, 'location_update', 'bus_locations', 790, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:48'),
(197, 2, 'location_update', 'bus_locations', 791, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:49'),
(198, 2, 'location_update', 'bus_locations', 792, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:50'),
(199, 2, 'location_update', 'bus_locations', 793, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:51'),
(200, 2, 'location_update', 'bus_locations', 794, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:52'),
(201, 2, 'location_update', 'bus_locations', 795, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:53'),
(202, 2, 'location_update', 'bus_locations', 796, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:54'),
(203, 2, 'location_update', 'bus_locations', 797, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:55'),
(204, 2, 'location_update', 'bus_locations', 798, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:55'),
(205, 2, 'location_update', 'bus_locations', 799, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:56'),
(206, 2, 'location_update', 'bus_locations', 800, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:57'),
(207, 2, 'location_update', 'bus_locations', 801, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:58'),
(208, 2, 'location_update', 'bus_locations', 802, NULL, NULL, '43.250.243.239', '2025-10-11 08:21:59'),
(209, 2, 'location_update', 'bus_locations', 803, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:00'),
(210, 2, 'location_update', 'bus_locations', 804, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:01'),
(211, 2, 'location_update', 'bus_locations', 805, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:02'),
(212, 2, 'location_update', 'bus_locations', 806, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:03'),
(213, 2, 'location_update', 'bus_locations', 807, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:04'),
(214, 2, 'location_update', 'bus_locations', 808, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:05'),
(215, 2, 'location_update', 'bus_locations', 809, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:05'),
(216, 2, 'location_update', 'bus_locations', 810, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:06'),
(217, 2, 'location_update', 'bus_locations', 811, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:07'),
(218, 2, 'location_update', 'bus_locations', 812, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:08'),
(219, 2, 'location_update', 'bus_locations', 813, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:09'),
(220, 2, 'location_update', 'bus_locations', 814, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:10'),
(221, 2, 'location_update', 'bus_locations', 815, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:12'),
(222, 2, 'location_update', 'bus_locations', 816, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:12'),
(223, 2, 'location_update', 'bus_locations', 817, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:13'),
(224, 2, 'location_update', 'bus_locations', 818, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:14'),
(225, 2, 'location_update', 'bus_locations', 819, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:15'),
(226, 2, 'location_update', 'bus_locations', 820, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:15'),
(227, 2, 'location_update', 'bus_locations', 821, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:16'),
(228, 2, 'location_update', 'bus_locations', 822, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:17'),
(229, 2, 'location_update', 'bus_locations', 823, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:18'),
(230, 2, 'location_update', 'bus_locations', 824, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:19'),
(231, 2, 'location_update', 'bus_locations', 825, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:20'),
(232, 2, 'location_update', 'bus_locations', 826, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:21'),
(233, 2, 'location_update', 'bus_locations', 827, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:22'),
(234, 2, 'location_update', 'bus_locations', 828, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:23'),
(235, 2, 'location_update', 'bus_locations', 829, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:24'),
(236, 2, 'location_update', 'bus_locations', 830, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:25'),
(237, 2, 'location_update', 'bus_locations', 831, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:25'),
(238, 2, 'location_update', 'bus_locations', 832, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:26'),
(239, 2, 'location_update', 'bus_locations', 833, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:27'),
(240, 2, 'location_update', 'bus_locations', 834, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:28'),
(241, 2, 'location_update', 'bus_locations', 835, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:29'),
(242, 2, 'location_update', 'bus_locations', 836, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:30'),
(243, 2, 'location_update', 'bus_locations', 837, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:31'),
(244, 2, 'location_update', 'bus_locations', 838, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:32'),
(245, 2, 'location_update', 'bus_locations', 839, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:33'),
(246, 2, 'location_update', 'bus_locations', 840, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:34'),
(247, 2, 'location_update', 'bus_locations', 841, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:35'),
(248, 2, 'location_update', 'bus_locations', 842, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:35'),
(249, 2, 'location_update', 'bus_locations', 843, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:36'),
(250, 2, 'location_update', 'bus_locations', 844, NULL, NULL, '43.250.243.239', '2025-10-11 08:22:37'),
(251, 2, 'start_trip', 'bus_trips', 41, NULL, '{\"trip_id\":\"41\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 08:56:17'),
(252, 2, 'location_update', 'bus_locations', 845, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:19'),
(253, 2, 'location_update', 'bus_locations', 846, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:26'),
(254, 2, 'location_update', 'bus_locations', 847, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:26'),
(255, 2, 'location_update', 'bus_locations', 848, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:27'),
(256, 2, 'location_update', 'bus_locations', 849, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:28'),
(257, 2, 'location_update', 'bus_locations', 850, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:29'),
(258, 2, 'location_update', 'bus_locations', 851, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:30'),
(259, 2, 'location_update', 'bus_locations', 852, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:31'),
(260, 2, 'location_update', 'bus_locations', 853, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:32'),
(261, 2, 'location_update', 'bus_locations', 854, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:33'),
(262, 2, 'location_update', 'bus_locations', 855, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:33'),
(263, 2, 'location_update', 'bus_locations', 856, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:34'),
(264, 2, 'location_update', 'bus_locations', 857, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:35'),
(265, 2, 'location_update', 'bus_locations', 858, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:36'),
(266, 2, 'location_update', 'bus_locations', 859, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:37'),
(267, 2, 'location_update', 'bus_locations', 860, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:38'),
(268, 2, 'location_update', 'bus_locations', 861, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:39'),
(269, 2, 'location_update', 'bus_locations', 862, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:40'),
(270, 2, 'location_update', 'bus_locations', 863, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:41'),
(271, 2, 'location_update', 'bus_locations', 864, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:42'),
(272, 2, 'location_update', 'bus_locations', 865, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:43'),
(273, 2, 'location_update', 'bus_locations', 866, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:43'),
(274, 2, 'location_update', 'bus_locations', 867, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:44'),
(275, 2, 'location_update', 'bus_locations', 868, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:45'),
(276, 2, 'location_update', 'bus_locations', 869, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:46'),
(277, 2, 'location_update', 'bus_locations', 870, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:47'),
(278, 2, 'location_update', 'bus_locations', 871, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:48'),
(279, 2, 'location_update', 'bus_locations', 872, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:49'),
(280, 2, 'location_update', 'bus_locations', 873, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:50'),
(281, 2, 'location_update', 'bus_locations', 874, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:51'),
(282, 2, 'location_update', 'bus_locations', 875, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:52'),
(283, 2, 'location_update', 'bus_locations', 876, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:53'),
(284, 2, 'location_update', 'bus_locations', 877, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:53'),
(285, 2, 'location_update', 'bus_locations', 878, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:54'),
(286, 2, 'location_update', 'bus_locations', 879, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:55'),
(287, 2, 'location_update', 'bus_locations', 880, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:56'),
(288, 2, 'location_update', 'bus_locations', 881, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:57'),
(289, 2, 'location_update', 'bus_locations', 882, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:58'),
(290, 2, 'location_update', 'bus_locations', 883, NULL, NULL, '43.250.243.239', '2025-10-11 08:56:59'),
(291, 2, 'location_update', 'bus_locations', 884, NULL, NULL, '43.250.243.239', '2025-10-11 08:57:00'),
(292, 2, 'location_update', 'bus_locations', 885, NULL, NULL, '43.250.243.239', '2025-10-11 08:57:01'),
(293, 2, 'location_update', 'bus_locations', 886, NULL, NULL, '43.250.243.239', '2025-10-11 08:57:02'),
(294, 2, 'location_update', 'bus_locations', 887, NULL, NULL, '43.250.243.239', '2025-10-11 08:57:03'),
(295, 2, 'location_update', 'bus_locations', 888, NULL, NULL, '43.250.243.239', '2025-10-11 08:57:03'),
(296, 2, 'start_trip', 'bus_trips', 42, NULL, '{\"trip_id\":\"42\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 09:07:51'),
(297, 2, 'location_update', 'bus_locations', 889, NULL, NULL, '43.250.243.239', '2025-10-11 09:07:53'),
(298, 2, 'location_update', 'bus_locations', 890, NULL, NULL, '43.250.243.239', '2025-10-11 09:07:56'),
(299, 2, 'location_update', 'bus_locations', 891, NULL, NULL, '43.250.243.239', '2025-10-11 09:07:56'),
(300, 2, 'location_update', 'bus_locations', 892, NULL, NULL, '43.250.243.239', '2025-10-11 09:07:57'),
(301, 2, 'location_update', 'bus_locations', 893, NULL, NULL, '43.250.243.239', '2025-10-11 09:07:58'),
(302, 2, 'location_update', 'bus_locations', 894, NULL, NULL, '43.250.243.239', '2025-10-11 09:07:59'),
(303, 2, 'location_update', 'bus_locations', 895, NULL, NULL, '43.250.243.239', '2025-10-11 09:08:00'),
(304, 2, 'location_update', 'bus_locations', 896, NULL, NULL, '43.250.243.239', '2025-10-11 09:08:01'),
(305, 2, 'location_update', 'bus_locations', 897, NULL, NULL, '43.250.243.239', '2025-10-11 09:08:02'),
(306, 2, 'start_trip', 'bus_trips', 43, NULL, '{\"trip_id\":\"43\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 09:24:51'),
(307, 2, 'location_update', 'bus_locations', 898, NULL, NULL, '43.250.243.239', '2025-10-11 09:24:54'),
(308, 2, 'location_update', 'bus_locations', 899, NULL, NULL, '43.250.243.239', '2025-10-11 09:24:57'),
(309, 2, 'location_update', 'bus_locations', 900, NULL, NULL, '43.250.243.239', '2025-10-11 09:24:58'),
(310, 2, 'location_update', 'bus_locations', 901, NULL, NULL, '43.250.243.239', '2025-10-11 09:24:59'),
(311, 2, 'location_update', 'bus_locations', 902, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:00'),
(312, 2, 'location_update', 'bus_locations', 903, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:01'),
(313, 2, 'location_update', 'bus_locations', 904, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:02'),
(314, 2, 'location_update', 'bus_locations', 905, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:02'),
(315, 2, 'location_update', 'bus_locations', 906, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:03'),
(316, 2, 'location_update', 'bus_locations', 907, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:04'),
(317, 2, 'location_update', 'bus_locations', 908, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:05'),
(318, 2, 'location_update', 'bus_locations', 909, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:06'),
(319, 2, 'location_update', 'bus_locations', 910, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:07'),
(320, 2, 'location_update', 'bus_locations', 911, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:08'),
(321, 2, 'location_update', 'bus_locations', 912, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:09'),
(322, 2, 'location_update', 'bus_locations', 913, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:10'),
(323, 2, 'location_update', 'bus_locations', 914, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:11'),
(324, 2, 'location_update', 'bus_locations', 915, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:12'),
(325, 2, 'location_update', 'bus_locations', 916, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:12'),
(326, 2, 'location_update', 'bus_locations', 917, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:13'),
(327, 2, 'location_update', 'bus_locations', 918, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:14'),
(328, 2, 'location_update', 'bus_locations', 919, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:15'),
(329, 2, 'location_update', 'bus_locations', 920, NULL, NULL, '43.250.243.239', '2025-10-11 09:25:16'),
(330, 2, 'start_trip', 'bus_trips', 44, NULL, '{\"trip_id\":\"44\",\"status\":\"in_progress\"}', '43.250.243.239', '2025-10-11 13:31:25'),
(331, 2, 'location_update', 'bus_locations', 921, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:28'),
(332, 2, 'location_update', 'bus_locations', 922, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:28'),
(333, 2, 'location_update', 'bus_locations', 923, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:31'),
(334, 2, 'location_update', 'bus_locations', 924, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:32'),
(335, 2, 'location_update', 'bus_locations', 925, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:33'),
(336, 2, 'location_update', 'bus_locations', 926, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:34'),
(337, 2, 'location_update', 'bus_locations', 927, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:35'),
(338, 2, 'location_update', 'bus_locations', 928, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:36'),
(339, 2, 'location_update', 'bus_locations', 929, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:37'),
(340, 2, 'location_update', 'bus_locations', 930, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:39'),
(341, 2, 'location_update', 'bus_locations', 931, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:39'),
(342, 2, 'location_update', 'bus_locations', 932, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:39'),
(343, 2, 'location_update', 'bus_locations', 933, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:40'),
(344, 2, 'location_update', 'bus_locations', 934, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:41'),
(345, 2, 'location_update', 'bus_locations', 935, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:42'),
(346, 2, 'location_update', 'bus_locations', 936, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:43'),
(347, 2, 'location_update', 'bus_locations', 937, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:44'),
(348, 2, 'location_update', 'bus_locations', 938, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:45'),
(349, 2, 'location_update', 'bus_locations', 939, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:46'),
(350, 2, 'location_update', 'bus_locations', 940, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:47'),
(351, 2, 'location_update', 'bus_locations', 941, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:48'),
(352, 2, 'location_update', 'bus_locations', 942, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:48'),
(353, 2, 'location_update', 'bus_locations', 943, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:49'),
(354, 2, 'location_update', 'bus_locations', 944, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:50'),
(355, 2, 'location_update', 'bus_locations', 945, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:51'),
(356, 2, 'location_update', 'bus_locations', 946, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:52'),
(357, 2, 'location_update', 'bus_locations', 947, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:53'),
(358, 2, 'location_update', 'bus_locations', 948, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:54'),
(359, 2, 'location_update', 'bus_locations', 949, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:56'),
(360, 2, 'location_update', 'bus_locations', 950, NULL, NULL, '43.250.243.239', '2025-10-11 13:31:56'),
(361, 2, 'location_update', 'bus_locations', 951, NULL, NULL, '43.250.243.239', '2025-10-11 13:32:01'),
(362, 2, 'location_update', 'bus_locations', 952, NULL, NULL, '43.250.243.239', '2025-10-11 13:32:01'),
(363, 2, 'location_update', 'bus_locations', 953, NULL, NULL, '43.250.243.239', '2025-10-11 13:32:02'),
(364, 1, 'create_trip', 'bus_trips', 45, NULL, '{\"bus_id\":1,\"route_id\":1,\"driver_id\":2}', '212.104.231.35', '2025-10-12 00:10:45'),
(365, 2, 'start_trip', 'bus_trips', 46, NULL, '{\"trip_id\":\"46\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 00:15:12'),
(366, 2, 'location_update', 'bus_locations', 954, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:15'),
(367, 2, 'location_update', 'bus_locations', 955, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:15'),
(368, 2, 'location_update', 'bus_locations', 956, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:18'),
(369, 2, 'location_update', 'bus_locations', 957, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:19'),
(370, 2, 'location_update', 'bus_locations', 958, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:19'),
(371, 2, 'location_update', 'bus_locations', 959, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:20'),
(372, 2, 'location_update', 'bus_locations', 960, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:21'),
(373, 2, 'location_update', 'bus_locations', 961, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:22'),
(374, 2, 'location_update', 'bus_locations', 962, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:23'),
(375, 2, 'location_update', 'bus_locations', 963, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:24'),
(376, 2, 'location_update', 'bus_locations', 964, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:24'),
(377, 2, 'location_update', 'bus_locations', 965, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:25'),
(378, 2, 'location_update', 'bus_locations', 966, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:26'),
(379, 2, 'location_update', 'bus_locations', 967, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:27'),
(380, 2, 'location_update', 'bus_locations', 968, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:28'),
(381, 2, 'location_update', 'bus_locations', 969, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:29'),
(382, 2, 'location_update', 'bus_locations', 970, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:30'),
(383, 2, 'location_update', 'bus_locations', 971, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:31'),
(384, 2, 'location_update', 'bus_locations', 972, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:32'),
(385, 2, 'location_update', 'bus_locations', 973, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:33'),
(386, 2, 'location_update', 'bus_locations', 974, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:34'),
(387, 2, 'location_update', 'bus_locations', 975, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:34'),
(388, 2, 'location_update', 'bus_locations', 976, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:35'),
(389, 2, 'location_update', 'bus_locations', 977, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:36'),
(390, 2, 'location_update', 'bus_locations', 978, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:36'),
(391, 2, 'location_update', 'bus_locations', 979, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:37'),
(392, 2, 'location_update', 'bus_locations', 980, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:38'),
(393, 2, 'location_update', 'bus_locations', 981, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:39'),
(394, 2, 'location_update', 'bus_locations', 982, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:40'),
(395, 2, 'location_update', 'bus_locations', 983, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:41'),
(396, 2, 'location_update', 'bus_locations', 984, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:41'),
(397, 2, 'location_update', 'bus_locations', 985, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:42'),
(398, 2, 'location_update', 'bus_locations', 986, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:42'),
(399, 2, 'location_update', 'bus_locations', 987, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:43'),
(400, 2, 'location_update', 'bus_locations', 988, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:44'),
(401, 2, 'location_update', 'bus_locations', 989, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:44'),
(402, 2, 'location_update', 'bus_locations', 990, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:45'),
(403, 2, 'location_update', 'bus_locations', 991, NULL, NULL, '212.104.231.35', '2025-10-12 00:15:46'),
(404, 2, 'start_trip', 'bus_trips', 47, NULL, '{\"trip_id\":\"47\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 00:16:01'),
(405, 2, 'location_update', 'bus_locations', 992, NULL, NULL, '212.104.231.35', '2025-10-12 00:16:03'),
(406, 2, 'location_update', 'bus_locations', 993, NULL, NULL, '212.104.231.35', '2025-10-12 00:16:04'),
(407, 2, 'location_update', 'bus_locations', 994, NULL, NULL, '212.104.231.35', '2025-10-12 00:16:04'),
(408, 2, 'location_update', 'bus_locations', 995, NULL, NULL, '212.104.231.35', '2025-10-12 00:16:05'),
(409, 2, 'location_update', 'bus_locations', 996, NULL, NULL, '212.104.231.35', '2025-10-12 00:16:06'),
(410, 2, 'location_update', 'bus_locations', 997, NULL, NULL, '212.104.231.35', '2025-10-12 00:16:07'),
(411, 2, 'start_trip', 'bus_trips', 48, NULL, '{\"trip_id\":\"48\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 01:58:45'),
(412, 2, 'location_update', 'bus_locations', 998, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:48'),
(413, 2, 'location_update', 'bus_locations', 999, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:50'),
(414, 2, 'location_update', 'bus_locations', 1000, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:50'),
(415, 2, 'location_update', 'bus_locations', 1001, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:51'),
(416, 2, 'location_update', 'bus_locations', 1002, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:52'),
(417, 2, 'location_update', 'bus_locations', 1003, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:53'),
(418, 2, 'location_update', 'bus_locations', 1004, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:54'),
(419, 2, 'location_update', 'bus_locations', 1005, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:54'),
(420, 2, 'location_update', 'bus_locations', 1006, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:55'),
(421, 2, 'location_update', 'bus_locations', 1007, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:56'),
(422, 2, 'location_update', 'bus_locations', 1008, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:56'),
(423, 2, 'location_update', 'bus_locations', 1009, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:57'),
(424, 2, 'location_update', 'bus_locations', 1010, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:57'),
(425, 2, 'location_update', 'bus_locations', 1011, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:58'),
(426, 2, 'location_update', 'bus_locations', 1012, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:58'),
(427, 2, 'location_update', 'bus_locations', 1013, NULL, NULL, '212.104.231.35', '2025-10-12 01:58:59'),
(428, 2, 'location_update', 'bus_locations', 1014, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:00'),
(429, 2, 'location_update', 'bus_locations', 1015, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:00'),
(430, 2, 'location_update', 'bus_locations', 1016, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:01'),
(431, 2, 'location_update', 'bus_locations', 1017, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:02'),
(432, 2, 'location_update', 'bus_locations', 1018, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:03'),
(433, 2, 'location_update', 'bus_locations', 1019, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:04'),
(434, 2, 'location_update', 'bus_locations', 1020, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:05'),
(435, 2, 'location_update', 'bus_locations', 1021, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:06'),
(436, 2, 'location_update', 'bus_locations', 1022, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:07'),
(437, 2, 'location_update', 'bus_locations', 1023, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:08'),
(438, 2, 'location_update', 'bus_locations', 1024, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:09'),
(439, 2, 'location_update', 'bus_locations', 1025, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:10'),
(440, 2, 'location_update', 'bus_locations', 1026, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:10'),
(441, 2, 'location_update', 'bus_locations', 1027, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:11'),
(442, 2, 'location_update', 'bus_locations', 1028, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:12'),
(443, 2, 'location_update', 'bus_locations', 1029, NULL, NULL, '212.104.231.35', '2025-10-12 01:59:13'),
(444, 2, 'start_trip', 'bus_trips', 49, NULL, '{\"trip_id\":\"49\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 02:07:36'),
(445, 2, 'location_update', 'bus_locations', 1030, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:39'),
(446, 2, 'location_update', 'bus_locations', 1031, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:39'),
(447, 2, 'location_update', 'bus_locations', 1032, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:40'),
(448, 2, 'location_update', 'bus_locations', 1033, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:40'),
(449, 2, 'location_update', 'bus_locations', 1034, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:41'),
(450, 2, 'location_update', 'bus_locations', 1035, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:42'),
(451, 2, 'location_update', 'bus_locations', 1036, NULL, NULL, '212.104.231.35', '2025-10-12 02:07:43'),
(452, 2, 'start_trip', 'bus_trips', 50, NULL, '{\"trip_id\":\"50\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 02:13:35'),
(453, 2, 'location_update', 'bus_locations', 1037, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:38'),
(454, 2, 'location_update', 'bus_locations', 1038, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:39'),
(455, 2, 'location_update', 'bus_locations', 1039, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:40'),
(456, 2, 'location_update', 'bus_locations', 1040, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:41'),
(457, 2, 'location_update', 'bus_locations', 1041, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:42'),
(458, 2, 'location_update', 'bus_locations', 1042, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:43'),
(459, 2, 'location_update', 'bus_locations', 1043, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:44'),
(460, 2, 'location_update', 'bus_locations', 1044, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:45'),
(461, 2, 'location_update', 'bus_locations', 1045, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:46'),
(462, 2, 'location_update', 'bus_locations', 1046, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:47'),
(463, 2, 'location_update', 'bus_locations', 1047, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:48'),
(464, 2, 'location_update', 'bus_locations', 1048, NULL, NULL, '212.104.231.35', '2025-10-12 02:13:49'),
(465, 2, 'start_trip', 'bus_trips', 51, NULL, '{\"trip_id\":\"51\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 02:27:05'),
(466, 2, 'location_update', 'bus_locations', 1049, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:09'),
(467, 2, 'location_update', 'bus_locations', 1050, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:10'),
(468, 2, 'location_update', 'bus_locations', 1051, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:11'),
(469, 2, 'location_update', 'bus_locations', 1052, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:14'),
(470, 2, 'location_update', 'bus_locations', 1053, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:14'),
(471, 2, 'location_update', 'bus_locations', 1054, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:14'),
(472, 2, 'location_update', 'bus_locations', 1055, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:15'),
(473, 2, 'location_update', 'bus_locations', 1056, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:16'),
(474, 2, 'location_update', 'bus_locations', 1057, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:17'),
(475, 2, 'location_update', 'bus_locations', 1058, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:18'),
(476, 2, 'location_update', 'bus_locations', 1059, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:19'),
(477, 2, 'location_update', 'bus_locations', 1060, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:20'),
(478, 2, 'location_update', 'bus_locations', 1061, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:21'),
(479, 2, 'location_update', 'bus_locations', 1062, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:22'),
(480, 2, 'location_update', 'bus_locations', 1063, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:23'),
(481, 2, 'location_update', 'bus_locations', 1064, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:24'),
(482, 2, 'location_update', 'bus_locations', 1065, NULL, NULL, '212.104.231.35', '2025-10-12 02:27:25'),
(483, 1, 'create_assignment', 'driver_assignments', 9, NULL, '{\"driver_id\":10,\"bus_id\":1,\"route_id\":1,\"date\":\"2025-10-12\"}', '212.104.231.35', '2025-10-12 03:07:38');
INSERT INTO `activity_logs` (`log_id`, `user_id`, `action_type`, `table_affected`, `record_id`, `old_values`, `new_values`, `ip_address`, `timestamp`) VALUES
(484, 1, 'create_trip', 'bus_trips', 52, NULL, '{\"bus_id\":1,\"route_id\":1,\"driver_id\":10}', '212.104.231.35', '2025-10-12 03:08:44'),
(485, 1, 'create_trip', 'bus_trips', 53, NULL, '{\"bus_id\":1,\"route_id\":1,\"driver_id\":10}', '212.104.231.35', '2025-10-12 03:09:04'),
(486, 10, 'start_trip', 'bus_trips', 54, NULL, '{\"trip_id\":\"54\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 03:10:02'),
(487, 10, 'location_update', 'bus_locations', 1066, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:05'),
(488, 10, 'location_update', 'bus_locations', 1067, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:05'),
(489, 10, 'location_update', 'bus_locations', 1068, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:06'),
(490, 10, 'location_update', 'bus_locations', 1069, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:07'),
(491, 10, 'location_update', 'bus_locations', 1070, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:08'),
(492, 10, 'location_update', 'bus_locations', 1071, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:09'),
(493, 10, 'location_update', 'bus_locations', 1072, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:10'),
(494, 10, 'location_update', 'bus_locations', 1073, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:11'),
(495, 10, 'location_update', 'bus_locations', 1074, NULL, NULL, '212.104.231.35', '2025-10-12 03:10:12'),
(496, 2, 'start_trip', 'bus_trips', 55, NULL, '{\"trip_id\":\"55\",\"status\":\"in_progress\"}', '212.104.231.35', '2025-10-12 04:01:23'),
(497, 2, 'location_update', 'bus_locations', 1075, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:26'),
(498, 2, 'location_update', 'bus_locations', 1076, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:27'),
(499, 2, 'location_update', 'bus_locations', 1077, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:28'),
(500, 2, 'location_update', 'bus_locations', 1078, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:29'),
(501, 2, 'location_update', 'bus_locations', 1079, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:29'),
(502, 2, 'location_update', 'bus_locations', 1080, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:30'),
(503, 2, 'location_update', 'bus_locations', 1081, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:31'),
(504, 2, 'location_update', 'bus_locations', 1082, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:32'),
(505, 2, 'location_update', 'bus_locations', 1083, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:33'),
(506, 2, 'location_update', 'bus_locations', 1084, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:34'),
(507, 2, 'location_update', 'bus_locations', 1085, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:35'),
(508, 2, 'location_update', 'bus_locations', 1086, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:36'),
(509, 2, 'location_update', 'bus_locations', 1087, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:37'),
(510, 2, 'location_update', 'bus_locations', 1088, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:38'),
(511, 2, 'location_update', 'bus_locations', 1089, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:39'),
(512, 2, 'location_update', 'bus_locations', 1090, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:39'),
(513, 2, 'location_update', 'bus_locations', 1091, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:40'),
(514, 2, 'location_update', 'bus_locations', 1092, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:41'),
(515, 2, 'location_update', 'bus_locations', 1093, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:42'),
(516, 2, 'location_update', 'bus_locations', 1094, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:43'),
(517, 2, 'location_update', 'bus_locations', 1095, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:44'),
(518, 2, 'location_update', 'bus_locations', 1096, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:45'),
(519, 2, 'location_update', 'bus_locations', 1097, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:46'),
(520, 2, 'location_update', 'bus_locations', 1098, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:47'),
(521, 2, 'location_update', 'bus_locations', 1099, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:48'),
(522, 2, 'location_update', 'bus_locations', 1100, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:49'),
(523, 2, 'location_update', 'bus_locations', 1101, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:49'),
(524, 2, 'location_update', 'bus_locations', 1102, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:50'),
(525, 2, 'location_update', 'bus_locations', 1103, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:51'),
(526, 2, 'location_update', 'bus_locations', 1104, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:52'),
(527, 2, 'location_update', 'bus_locations', 1105, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:53'),
(528, 2, 'location_update', 'bus_locations', 1106, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:54'),
(529, 2, 'location_update', 'bus_locations', 1107, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:55'),
(530, 2, 'location_update', 'bus_locations', 1108, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:56'),
(531, 2, 'location_update', 'bus_locations', 1109, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:57'),
(532, 2, 'location_update', 'bus_locations', 1110, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:58'),
(533, 2, 'location_update', 'bus_locations', 1111, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:59'),
(534, 2, 'location_update', 'bus_locations', 1112, NULL, NULL, '212.104.231.35', '2025-10-12 04:01:59'),
(535, 2, 'location_update', 'bus_locations', 1113, NULL, NULL, '212.104.231.35', '2025-10-12 04:02:00'),
(536, 2, 'location_update', 'bus_locations', 1114, NULL, NULL, '212.104.231.35', '2025-10-12 04:02:01'),
(537, 2, 'location_update', 'bus_locations', 1115, NULL, NULL, '212.104.231.35', '2025-10-12 04:02:02'),
(538, 2, 'location_update', 'bus_locations', 1116, NULL, NULL, '212.104.231.35', '2025-10-12 04:02:03'),
(539, 2, 'location_update', 'bus_locations', 1118, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(540, 2, 'location_update', 'bus_locations', 1119, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(541, 2, 'location_update', 'bus_locations', 1120, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(542, 2, 'location_update', 'bus_locations', 1117, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(543, 2, 'location_update', 'bus_locations', 1121, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(544, 2, 'location_update', 'bus_locations', 1123, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(545, 2, 'location_update', 'bus_locations', 1124, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(546, 2, 'location_update', 'bus_locations', 1125, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(547, 2, 'location_update', 'bus_locations', 1122, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(548, 2, 'location_update', 'bus_locations', 1126, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:22'),
(549, 2, 'location_update', 'bus_locations', 1127, NULL, NULL, '212.104.231.35', '2025-10-12 04:03:23'),
(550, 2, 'location_update', 'bus_locations', 1128, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:00'),
(551, 2, 'location_update', 'bus_locations', 1129, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:00'),
(552, 2, 'location_update', 'bus_locations', 1130, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:00'),
(553, 2, 'location_update', 'bus_locations', 1131, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:00'),
(554, 2, 'location_update', 'bus_locations', 1132, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:01'),
(555, 2, 'location_update', 'bus_locations', 1133, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:01'),
(556, 2, 'location_update', 'bus_locations', 1134, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:01'),
(557, 2, 'location_update', 'bus_locations', 1135, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:02'),
(558, 2, 'location_update', 'bus_locations', 1136, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:03'),
(559, 2, 'location_update', 'bus_locations', 1137, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:04'),
(560, 2, 'location_update', 'bus_locations', 1138, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:05'),
(561, 2, 'location_update', 'bus_locations', 1139, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:06'),
(562, 2, 'location_update', 'bus_locations', 1140, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:07'),
(563, 2, 'location_update', 'bus_locations', 1141, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:08'),
(564, 2, 'location_update', 'bus_locations', 1142, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:09'),
(565, 2, 'location_update', 'bus_locations', 1143, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:09'),
(566, 2, 'location_update', 'bus_locations', 1144, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:10'),
(567, 2, 'location_update', 'bus_locations', 1145, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:11'),
(568, 2, 'location_update', 'bus_locations', 1146, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:12'),
(569, 2, 'location_update', 'bus_locations', 1147, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:13'),
(570, 2, 'location_update', 'bus_locations', 1148, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:14'),
(571, 2, 'location_update', 'bus_locations', 1149, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:15'),
(572, 2, 'location_update', 'bus_locations', 1150, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:16'),
(573, 2, 'location_update', 'bus_locations', 1151, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:17'),
(574, 2, 'location_update', 'bus_locations', 1152, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:18'),
(575, 2, 'location_update', 'bus_locations', 1153, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:19'),
(576, 2, 'location_update', 'bus_locations', 1154, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:19'),
(577, 2, 'location_update', 'bus_locations', 1155, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:20'),
(578, 2, 'location_update', 'bus_locations', 1156, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:21'),
(579, 2, 'location_update', 'bus_locations', 1157, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:22'),
(580, 2, 'location_update', 'bus_locations', 1158, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:23'),
(581, 2, 'location_update', 'bus_locations', 1159, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:24'),
(582, 2, 'location_update', 'bus_locations', 1160, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:25'),
(583, 2, 'location_update', 'bus_locations', 1161, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:26'),
(584, 2, 'location_update', 'bus_locations', 1162, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:27'),
(585, 2, 'location_update', 'bus_locations', 1163, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:28'),
(586, 2, 'location_update', 'bus_locations', 1164, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:29'),
(587, 2, 'location_update', 'bus_locations', 1165, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:29'),
(588, 2, 'location_update', 'bus_locations', 1166, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:30'),
(589, 2, 'location_update', 'bus_locations', 1167, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:31'),
(590, 2, 'location_update', 'bus_locations', 1168, NULL, NULL, '212.104.231.35', '2025-10-12 04:04:32'),
(591, 2, 'location_update', 'bus_locations', 1170, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(592, 2, 'location_update', 'bus_locations', 1169, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(593, 2, 'location_update', 'bus_locations', 1171, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(594, 2, 'location_update', 'bus_locations', 1172, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(595, 2, 'location_update', 'bus_locations', 1173, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(596, 2, 'location_update', 'bus_locations', 1174, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(597, 2, 'location_update', 'bus_locations', 1175, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(598, 2, 'location_update', 'bus_locations', 1176, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(599, 2, 'location_update', 'bus_locations', 1177, NULL, NULL, '212.104.231.35', '2025-10-12 04:09:51'),
(600, 2, 'location_update', 'bus_locations', 1178, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(601, 2, 'location_update', 'bus_locations', 1179, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(602, 2, 'location_update', 'bus_locations', 1180, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(603, 2, 'location_update', 'bus_locations', 1181, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(604, 2, 'location_update', 'bus_locations', 1182, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(605, 2, 'location_update', 'bus_locations', 1183, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(606, 2, 'location_update', 'bus_locations', 1184, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(607, 2, 'location_update', 'bus_locations', 1185, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(608, 2, 'location_update', 'bus_locations', 1186, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(609, 2, 'location_update', 'bus_locations', 1187, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(610, 2, 'location_update', 'bus_locations', 1188, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(611, 2, 'location_update', 'bus_locations', 1190, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(612, 2, 'location_update', 'bus_locations', 1189, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(613, 2, 'location_update', 'bus_locations', 1191, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(614, 2, 'location_update', 'bus_locations', 1192, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(615, 2, 'location_update', 'bus_locations', 1193, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:02'),
(616, 2, 'location_update', 'bus_locations', 1194, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:03'),
(617, 2, 'location_update', 'bus_locations', 1195, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:04'),
(618, 2, 'location_update', 'bus_locations', 1196, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:05'),
(619, 2, 'location_update', 'bus_locations', 1197, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:06'),
(620, 2, 'location_update', 'bus_locations', 1198, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:07'),
(621, 2, 'location_update', 'bus_locations', 1199, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:08'),
(622, 2, 'location_update', 'bus_locations', 1200, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:09'),
(623, 2, 'location_update', 'bus_locations', 1201, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:09'),
(624, 2, 'location_update', 'bus_locations', 1202, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:10'),
(625, 2, 'location_update', 'bus_locations', 1203, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:11'),
(626, 2, 'location_update', 'bus_locations', 1204, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:12'),
(627, 2, 'location_update', 'bus_locations', 1205, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(628, 2, 'location_update', 'bus_locations', 1206, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(629, 2, 'location_update', 'bus_locations', 1207, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(630, 2, 'location_update', 'bus_locations', 1208, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(631, 2, 'location_update', 'bus_locations', 1209, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(632, 2, 'location_update', 'bus_locations', 1210, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(633, 2, 'location_update', 'bus_locations', 1211, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(634, 2, 'location_update', 'bus_locations', 1212, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:19'),
(635, 2, 'location_update', 'bus_locations', 1213, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:20'),
(636, 2, 'location_update', 'bus_locations', 1214, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:21'),
(637, 2, 'location_update', 'bus_locations', 1215, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:22'),
(638, 2, 'location_update', 'bus_locations', 1216, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:23'),
(639, 2, 'location_update', 'bus_locations', 1217, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:24'),
(640, 2, 'location_update', 'bus_locations', 1218, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:25'),
(641, 2, 'location_update', 'bus_locations', 1219, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:26'),
(642, 2, 'location_update', 'bus_locations', 1220, NULL, NULL, '212.104.231.68', '2025-10-12 04:11:27'),
(643, 2, 'location_update', 'bus_locations', 1221, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:57'),
(644, 2, 'location_update', 'bus_locations', 1222, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:57'),
(645, 2, 'location_update', 'bus_locations', 1223, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:57'),
(646, 2, 'location_update', 'bus_locations', 1224, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:57'),
(647, 2, 'location_update', 'bus_locations', 1225, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:57'),
(648, 2, 'location_update', 'bus_locations', 1226, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:58'),
(649, 2, 'location_update', 'bus_locations', 1227, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:58'),
(650, 2, 'location_update', 'bus_locations', 1228, NULL, NULL, '212.104.231.68', '2025-10-12 04:19:58'),
(651, 2, 'start_trip', 'bus_trips', 56, NULL, '{\"trip_id\":\"56\",\"status\":\"in_progress\"}', '212.104.231.68', '2025-10-12 07:49:36'),
(652, 2, 'location_update', 'bus_locations', 1229, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:39'),
(653, 2, 'location_update', 'bus_locations', 1230, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:42'),
(654, 2, 'location_update', 'bus_locations', 1231, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:43'),
(655, 2, 'location_update', 'bus_locations', 1232, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:44'),
(656, 2, 'location_update', 'bus_locations', 1233, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:45'),
(657, 2, 'location_update', 'bus_locations', 1234, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:46'),
(658, 2, 'location_update', 'bus_locations', 1235, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:47'),
(659, 2, 'location_update', 'bus_locations', 1236, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:47'),
(660, 2, 'location_update', 'bus_locations', 1237, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:48'),
(661, 2, 'location_update', 'bus_locations', 1238, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:49'),
(662, 2, 'location_update', 'bus_locations', 1239, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:50'),
(663, 2, 'location_update', 'bus_locations', 1240, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:51'),
(664, 2, 'location_update', 'bus_locations', 1241, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:52'),
(665, 2, 'location_update', 'bus_locations', 1242, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:53'),
(666, 2, 'location_update', 'bus_locations', 1243, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:54'),
(667, 2, 'location_update', 'bus_locations', 1244, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:55'),
(668, 2, 'location_update', 'bus_locations', 1245, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:56'),
(669, 2, 'location_update', 'bus_locations', 1246, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:57'),
(670, 2, 'location_update', 'bus_locations', 1247, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:57'),
(671, 2, 'location_update', 'bus_locations', 1248, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:58'),
(672, 2, 'location_update', 'bus_locations', 1249, NULL, NULL, '212.104.231.68', '2025-10-12 07:49:59'),
(673, 2, 'location_update', 'bus_locations', 1250, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:00'),
(674, 2, 'location_update', 'bus_locations', 1251, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:01'),
(675, 2, 'location_update', 'bus_locations', 1252, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:02'),
(676, 2, 'location_update', 'bus_locations', 1253, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:03'),
(677, 2, 'location_update', 'bus_locations', 1254, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:04'),
(678, 2, 'location_update', 'bus_locations', 1255, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:05'),
(679, 2, 'location_update', 'bus_locations', 1256, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:06'),
(680, 2, 'location_update', 'bus_locations', 1257, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:07'),
(681, 2, 'location_update', 'bus_locations', 1258, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:07'),
(682, 2, 'location_update', 'bus_locations', 1259, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:08'),
(683, 2, 'location_update', 'bus_locations', 1260, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:09'),
(684, 2, 'location_update', 'bus_locations', 1261, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:10'),
(685, 2, 'location_update', 'bus_locations', 1262, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:11'),
(686, 2, 'location_update', 'bus_locations', 1263, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:12'),
(687, 2, 'location_update', 'bus_locations', 1264, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:13'),
(688, 2, 'location_update', 'bus_locations', 1265, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:14'),
(689, 2, 'location_update', 'bus_locations', 1266, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:15'),
(690, 2, 'location_update', 'bus_locations', 1267, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:16'),
(691, 2, 'location_update', 'bus_locations', 1268, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:17'),
(692, 2, 'location_update', 'bus_locations', 1269, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:17'),
(693, 2, 'location_update', 'bus_locations', 1270, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:18'),
(694, 2, 'location_update', 'bus_locations', 1271, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:19'),
(695, 2, 'location_update', 'bus_locations', 1272, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:20'),
(696, 2, 'location_update', 'bus_locations', 1273, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:21'),
(697, 2, 'location_update', 'bus_locations', 1274, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:22'),
(698, 2, 'location_update', 'bus_locations', 1275, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:23'),
(699, 2, 'location_update', 'bus_locations', 1276, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:24'),
(700, 2, 'location_update', 'bus_locations', 1277, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:25'),
(701, 2, 'location_update', 'bus_locations', 1278, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:26'),
(702, 2, 'location_update', 'bus_locations', 1279, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:27'),
(703, 2, 'location_update', 'bus_locations', 1280, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:27'),
(704, 2, 'location_update', 'bus_locations', 1281, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:28'),
(705, 2, 'location_update', 'bus_locations', 1282, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:29'),
(706, 2, 'location_update', 'bus_locations', 1283, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:30'),
(707, 2, 'location_update', 'bus_locations', 1284, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:31'),
(708, 2, 'location_update', 'bus_locations', 1285, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:32'),
(709, 2, 'location_update', 'bus_locations', 1286, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:33'),
(710, 2, 'location_update', 'bus_locations', 1287, NULL, NULL, '212.104.231.68', '2025-10-12 07:50:34'),
(711, 2, 'location_update', 'bus_locations', 1288, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:15'),
(712, 2, 'location_update', 'bus_locations', 1289, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:15'),
(713, 2, 'location_update', 'bus_locations', 1290, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:15'),
(714, 2, 'location_update', 'bus_locations', 1291, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:15'),
(715, 2, 'location_update', 'bus_locations', 1292, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:15'),
(716, 2, 'location_update', 'bus_locations', 1293, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:16'),
(717, 2, 'location_update', 'bus_locations', 1294, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:17'),
(718, 2, 'location_update', 'bus_locations', 1295, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:17'),
(719, 2, 'location_update', 'bus_locations', 1296, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:18'),
(720, 2, 'location_update', 'bus_locations', 1297, NULL, NULL, '212.104.231.68', '2025-10-12 07:51:19'),
(721, 1, 'create_trip', 'bus_trips', 57, NULL, '{\"bus_id\":1,\"route_id\":1,\"driver_id\":10}', '212.104.231.68', '2025-10-12 08:25:13'),
(722, 10, 'start_trip', 'bus_trips', 58, NULL, '{\"trip_id\":\"58\",\"status\":\"in_progress\"}', '212.104.231.68', '2025-10-12 08:28:38'),
(723, 10, 'location_update', 'bus_locations', 1298, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:41'),
(724, 10, 'location_update', 'bus_locations', 1299, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:41'),
(725, 10, 'location_update', 'bus_locations', 1300, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:42'),
(726, 10, 'location_update', 'bus_locations', 1301, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:43'),
(727, 10, 'location_update', 'bus_locations', 1302, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:44'),
(728, 10, 'location_update', 'bus_locations', 1303, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:44'),
(729, 10, 'location_update', 'bus_locations', 1304, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:45'),
(730, 10, 'location_update', 'bus_locations', 1305, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:46'),
(731, 10, 'location_update', 'bus_locations', 1306, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:47'),
(732, 10, 'location_update', 'bus_locations', 1307, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:48'),
(733, 10, 'location_update', 'bus_locations', 1308, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:49'),
(734, 10, 'location_update', 'bus_locations', 1309, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:50'),
(735, 10, 'location_update', 'bus_locations', 1310, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:51'),
(736, 10, 'location_update', 'bus_locations', 1311, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:52'),
(737, 10, 'location_update', 'bus_locations', 1312, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:53'),
(738, 10, 'location_update', 'bus_locations', 1313, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:54'),
(739, 10, 'location_update', 'bus_locations', 1314, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:54'),
(740, 10, 'location_update', 'bus_locations', 1315, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:55'),
(741, 10, 'location_update', 'bus_locations', 1316, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:56'),
(742, 10, 'location_update', 'bus_locations', 1317, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:57'),
(743, 10, 'location_update', 'bus_locations', 1318, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:58'),
(744, 10, 'location_update', 'bus_locations', 1319, NULL, NULL, '212.104.231.68', '2025-10-12 08:28:59'),
(745, 10, 'location_update', 'bus_locations', 1320, NULL, NULL, '212.104.231.68', '2025-10-12 08:29:00'),
(746, 10, 'location_update', 'bus_locations', 1321, NULL, NULL, '212.104.231.68', '2025-10-12 08:29:01'),
(747, 10, 'location_update', 'bus_locations', 1322, NULL, NULL, '212.104.231.68', '2025-10-12 08:29:02'),
(748, 10, 'location_update', 'bus_locations', 1323, NULL, NULL, '212.104.231.68', '2025-10-12 08:29:03'),
(749, 10, 'location_update', 'bus_locations', 1324, NULL, NULL, '212.104.231.68', '2025-10-12 08:29:04'),
(750, 10, 'location_update', 'bus_locations', 1325, NULL, NULL, '212.104.231.68', '2025-10-12 08:29:04'),
(751, 1, 'create_assignment', 'driver_assignments', 10, NULL, '{\"driver_id\":2,\"bus_id\":1,\"route_id\":1,\"date\":\"2025-10-13\"}', '124.43.17.79', '2025-10-13 07:40:09'),
(752, 1, 'create_trip', 'bus_trips', 59, NULL, '{\"bus_id\":1,\"route_id\":1,\"driver_id\":2}', '124.43.17.79', '2025-10-13 07:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(11) NOT NULL,
  `bus_number` varchar(20) NOT NULL,
  `route_id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `conductor_id` int(11) DEFAULT NULL,
  `registration_number` varchar(30) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year_manufactured` year(4) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_id`, `bus_number`, `route_id`, `capacity`, `driver_id`, `conductor_id`, `registration_number`, `model`, `year_manufactured`, `is_active`, `created_at`) VALUES
(1, 'KGA-001', 1, 52, 2, NULL, 'WP KA-1234', 'TATA Starbus', '2020', 1, '2025-09-08 05:18:55'),
(2, 'KGA-002', 1, 60, 6, 2, 'WP-123781', 'BYD', '2025', 1, '2025-09-12 08:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `bus_locations`
--

CREATE TABLE `bus_locations` (
  `location_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `speed_kmh` decimal(5,2) DEFAULT NULL,
  `direction_degrees` int(11) DEFAULT NULL,
  `accuracy_meters` int(11) DEFAULT NULL,
  `current_stop_id` int(11) DEFAULT NULL,
  `next_stop_id` int(11) DEFAULT NULL,
  `estimated_arrival_time` datetime DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `is_current_location` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_locations`
--

INSERT INTO `bus_locations` (`location_id`, `bus_id`, `trip_id`, `latitude`, `longitude`, `speed_kmh`, `direction_degrees`, `accuracy_meters`, `current_stop_id`, `next_stop_id`, `estimated_arrival_time`, `timestamp`, `is_current_location`) VALUES
(690, 1, 39, 7.49778830, 80.32460720, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 07:05:59', 0),
(691, 1, 39, 7.49778730, 80.32458820, 1.65, NULL, 18, 28, 29, NULL, '2025-10-11 07:06:01', 0),
(692, 1, 39, 7.49778710, 80.32458590, 1.66, NULL, 18, 28, 29, NULL, '2025-10-11 07:06:02', 0),
(693, 1, 39, 7.49773660, 80.32461200, 1.45, NULL, 14, 28, 29, NULL, '2025-10-11 07:06:03', 0),
(694, 1, 39, 7.49774120, 80.32460290, 2.72, NULL, 11, 28, 29, NULL, '2025-10-11 07:06:04', 0),
(695, 1, 39, 7.49774750, 80.32459640, 3.20, NULL, 9, 28, 29, NULL, '2025-10-11 07:06:05', 0),
(696, 1, 39, 7.49775320, 80.32460200, 2.17, NULL, 8, 28, 29, NULL, '2025-10-11 07:06:06', 0),
(697, 1, 39, 7.49775320, 80.32460200, 2.17, NULL, 8, 28, 29, NULL, '2025-10-11 07:06:06', 0),
(698, 1, 39, 7.49775630, 80.32460230, 1.59, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:07', 0),
(699, 1, 39, 7.49775910, 80.32460700, 1.78, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:08', 0),
(700, 1, 39, 7.49775630, 80.32460510, 0.15, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:09', 0),
(701, 1, 39, 7.49775250, 80.32460780, 1.17, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:10', 0),
(702, 1, 39, 7.49775220, 80.32460960, 0.83, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:11', 0),
(703, 1, 39, 7.49775150, 80.32460920, 0.40, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:12', 0),
(704, 1, 39, 7.49775230, 80.32460990, 0.24, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:13', 0),
(705, 1, 39, 7.49775280, 80.32461080, 0.34, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:14', 0),
(706, 1, 39, 7.49775440, 80.32460890, 0.56, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:15', 0),
(707, 1, 39, 7.49774470, 80.32460990, 2.16, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:16', 0),
(708, 1, 39, 7.49774470, 80.32460990, 2.16, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:16', 0),
(709, 1, 39, 7.49774330, 80.32461190, 1.30, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:17', 0),
(710, 1, 39, 7.49774420, 80.32461340, 0.62, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:18', 0),
(711, 1, 39, 7.49774480, 80.32461420, 0.43, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:19', 0),
(712, 1, 39, 7.49774320, 80.32461530, 0.56, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:20', 0),
(713, 1, 39, 7.49773880, 80.32461650, 1.29, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:21', 0),
(714, 1, 39, 7.49773890, 80.32461670, 0.51, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:22', 0),
(715, 1, 39, 7.49774070, 80.32461600, 0.26, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:23', 0),
(716, 1, 39, 7.49774150, 80.32461330, 0.74, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:24', 0),
(717, 1, 39, 7.49774090, 80.32461170, 0.65, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:25', 0),
(718, 1, 39, 7.49774180, 80.32461140, 0.39, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:26', 0),
(719, 1, 39, 7.49774180, 80.32461140, 0.39, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:26', 0),
(720, 1, 39, 7.49774240, 80.32461110, 0.31, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:27', 0),
(721, 1, 39, 7.49774260, 80.32461100, 0.18, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:28', 0),
(722, 1, 39, 7.49774240, 80.32461140, 0.05, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:29', 0),
(723, 1, 39, 7.49774200, 80.32461120, 0.09, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:30', 0),
(724, 1, 39, 7.49774250, 80.32461010, 0.29, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:31', 0),
(725, 1, 39, 7.49774350, 80.32461220, 0.27, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:31', 0),
(726, 1, 39, 7.49774360, 80.32461240, 0.34, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:32', 0),
(727, 1, 39, 7.49774380, 80.32461250, 0.36, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:33', 0),
(728, 1, 39, 7.49774610, 80.32461310, 0.39, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:34', 0),
(729, 1, 39, 7.49774640, 80.32461350, 0.33, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:35', 0),
(730, 1, 39, 7.49774620, 80.32461350, 0.32, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:36', 0),
(731, 1, 39, 7.49774620, 80.32461350, 0.32, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:36', 0),
(732, 1, 39, 7.49774580, 80.32461300, 0.33, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:37', 0),
(733, 1, 39, 7.49774590, 80.32461150, 0.36, NULL, 3, 28, 29, NULL, '2025-10-11 07:06:38', 0),
(734, 1, 39, 7.49774640, 80.32461190, 0.33, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:39', 0),
(735, 1, 39, 7.49774580, 80.32461190, 0.35, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:40', 0),
(736, 1, 39, 7.49774670, 80.32461130, 0.35, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:41', 0),
(737, 1, 39, 7.49774590, 80.32461060, 0.24, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:41', 0),
(738, 1, 39, 7.49774620, 80.32461080, 0.34, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:42', 0),
(739, 1, 39, 7.49774600, 80.32461080, 0.36, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:43', 0),
(740, 1, 39, 7.49774570, 80.32461180, 0.37, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:44', 0),
(741, 1, 39, 7.49774500, 80.32461100, 0.37, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:45', 0),
(742, 1, 39, 7.49774480, 80.32461070, 0.13, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:46', 0),
(743, 1, 39, 7.49774480, 80.32461070, 0.13, NULL, 4, 28, 29, NULL, '2025-10-11 07:06:46', 0),
(744, 1, 39, 7.49774470, 80.32461050, 0.02, NULL, 5, 28, 29, NULL, '2025-10-11 07:06:47', 0),
(745, 1, 39, 7.49774470, 80.32461040, 0.01, NULL, 5, 28, 29, NULL, '2025-10-11 07:06:48', 0),
(746, 1, 39, 7.49774470, 80.32461050, 0.02, NULL, 5, 28, 29, NULL, '2025-10-11 07:06:49', 0),
(747, 1, 39, 7.49774580, 80.32461010, 0.04, NULL, 12, 28, 29, NULL, '2025-10-11 07:07:00', 0),
(748, 1, 39, 7.49774580, 80.32461010, 0.04, NULL, 12, 28, 29, NULL, '2025-10-11 07:07:00', 0),
(749, 1, 39, 7.49774510, 80.32461130, 0.55, NULL, 10, 28, 29, NULL, '2025-10-11 07:07:01', 0),
(750, 1, 39, 7.49774600, 80.32461080, 0.15, NULL, 8, 28, 29, NULL, '2025-10-11 07:07:02', 0),
(751, 1, 39, 7.49774590, 80.32461060, 0.06, NULL, 7, 28, 29, NULL, '2025-10-11 07:07:03', 0),
(752, 1, 39, 7.49774700, 80.32460910, 0.48, NULL, 6, 28, 29, NULL, '2025-10-11 07:07:04', 0),
(753, 1, 39, 7.49774720, 80.32460900, 0.23, NULL, 6, 28, 29, NULL, '2025-10-11 07:07:05', 0),
(754, 1, 39, 7.49774730, 80.32460850, 0.21, NULL, 4, 28, 29, NULL, '2025-10-11 07:07:06', 1),
(755, 1, 40, 7.49776860, 80.32460570, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 08:21:05', 0),
(756, 1, 40, 7.49776860, 80.32460570, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 08:21:05', 0),
(757, 1, 40, 7.49776600, 80.32459980, 0.25, NULL, 20, 28, 29, NULL, '2025-10-11 08:21:08', 0),
(758, 1, 40, 7.49773340, 80.32457260, 9.65, NULL, 15, 28, 29, NULL, '2025-10-11 08:21:09', 0),
(759, 1, 40, 7.49772630, 80.32456160, 6.68, NULL, 12, 28, 29, NULL, '2025-10-11 08:21:10', 0),
(760, 1, 40, 7.49771920, 80.32456430, 3.70, NULL, 10, 28, 29, NULL, '2025-10-11 08:21:11', 0),
(761, 1, 40, 7.49772440, 80.32458040, 3.28, NULL, 9, 28, 29, NULL, '2025-10-11 08:21:12', 0),
(762, 1, 40, 7.49772910, 80.32460160, 6.37, NULL, 6, 28, 29, NULL, '2025-10-11 08:21:13', 0),
(763, 1, 40, 7.49774070, 80.32461450, 6.43, NULL, 5, 28, 29, NULL, '2025-10-11 08:21:14', 0),
(764, 1, 40, 7.49774710, 80.32461860, 4.25, NULL, 5, 28, 29, NULL, '2025-10-11 08:21:15', 0),
(765, 1, 40, 7.49774710, 80.32461860, 4.25, NULL, 5, 28, 29, NULL, '2025-10-11 08:21:15', 0),
(766, 1, 40, 7.49774730, 80.32461790, 1.61, NULL, 5, 28, 29, NULL, '2025-10-11 08:21:16', 0),
(767, 1, 40, 7.49774340, 80.32461720, 0.57, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:17', 0),
(768, 1, 40, 7.49774150, 80.32461620, 0.65, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:18', 0),
(769, 1, 40, 7.49774140, 80.32461640, 0.29, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:19', 0),
(770, 1, 40, 7.49774280, 80.32461570, 0.27, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:20', 0),
(771, 1, 40, 7.49774340, 80.32461520, 0.30, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:21', 0),
(772, 1, 40, 7.49774510, 80.32461120, 1.15, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:22', 0),
(773, 1, 40, 7.49774600, 80.32461000, 0.82, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:23', 0),
(774, 1, 40, 7.49774600, 80.32461060, 0.20, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:24', 0),
(775, 1, 40, 7.49774630, 80.32461010, 0.23, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:25', 0),
(776, 1, 40, 7.49774630, 80.32461010, 0.23, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:25', 0),
(777, 1, 40, 7.49774620, 80.32461040, 0.04, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:26', 0),
(778, 1, 40, 7.49774770, 80.32461060, 0.37, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:27', 0),
(779, 1, 40, 7.49774760, 80.32461090, 0.14, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:28', 0),
(780, 1, 40, 7.49774750, 80.32461090, 0.05, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:29', 0),
(781, 1, 40, 7.49774690, 80.32461160, 0.21, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:30', 0),
(782, 1, 40, 7.49774590, 80.32461050, 0.36, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:31', 0),
(783, 1, 40, 7.49774590, 80.32461020, 0.18, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:32', 0),
(784, 1, 40, 7.49774690, 80.32461020, 0.20, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:33', 0),
(785, 1, 40, 7.49774930, 80.32461150, 0.71, NULL, 3, 28, 29, NULL, '2025-10-11 08:21:34', 0),
(786, 1, 40, 7.49774960, 80.32461170, 0.05, NULL, 22, 28, 29, NULL, '2025-10-11 08:21:46', 0),
(787, 1, 40, 7.49774960, 80.32461170, 0.05, NULL, 22, 28, 29, NULL, '2025-10-11 08:21:46', 0),
(788, 1, 40, 7.49774960, 80.32461170, 0.05, NULL, 22, 28, 29, NULL, '2025-10-11 08:21:46', 0),
(789, 1, 40, 7.49774930, 80.32461160, 0.07, NULL, 19, 28, 29, NULL, '2025-10-11 08:21:47', 0),
(790, 1, 40, 7.49774800, 80.32460970, 0.60, NULL, 16, 28, 29, NULL, '2025-10-11 08:21:48', 0),
(791, 1, 40, 7.49774790, 80.32461000, 0.24, NULL, 14, 28, 29, NULL, '2025-10-11 08:21:49', 0),
(792, 1, 40, 7.49774920, 80.32460290, 1.77, NULL, 12, 28, 29, NULL, '2025-10-11 08:21:50', 0),
(793, 1, 40, 7.49774960, 80.32460180, 0.99, NULL, 11, 28, 29, NULL, '2025-10-11 08:21:51', 0),
(794, 1, 40, 7.49775080, 80.32459560, 1.89, NULL, 7, 28, 29, NULL, '2025-10-11 08:21:52', 0),
(795, 1, 40, 7.49775190, 80.32459130, 1.81, NULL, 5, 28, 29, NULL, '2025-10-11 08:21:53', 0),
(796, 1, 40, 7.49775210, 80.32458610, 1.94, NULL, 5, 28, 29, NULL, '2025-10-11 08:21:54', 0),
(797, 1, 40, 7.49775350, 80.32458640, 0.84, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:55', 0),
(798, 1, 40, 7.49775350, 80.32458640, 0.84, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:55', 0),
(799, 1, 40, 7.49775420, 80.32458720, 0.35, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:56', 0),
(800, 1, 40, 7.49775410, 80.32458840, 0.27, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:57', 0),
(801, 1, 40, 7.49775390, 80.32458900, 0.24, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:58', 0),
(802, 1, 40, 7.49775440, 80.32458930, 0.20, NULL, 4, 28, 29, NULL, '2025-10-11 08:21:59', 0),
(803, 1, 40, 7.49775430, 80.32458990, 0.21, NULL, 4, 28, 29, NULL, '2025-10-11 08:22:00', 0),
(804, 1, 40, 7.49775430, 80.32458990, 0.09, NULL, 4, 28, 29, NULL, '2025-10-11 08:22:01', 0),
(805, 1, 40, 7.49775480, 80.32459090, 0.28, NULL, 4, 28, 29, NULL, '2025-10-11 08:22:02', 0),
(806, 1, 40, 7.49775510, 80.32459120, 0.23, NULL, 4, 28, 29, NULL, '2025-10-11 08:22:03', 0),
(807, 1, 40, 7.49775520, 80.32459120, 0.11, NULL, 4, 28, 29, NULL, '2025-10-11 08:22:04', 0),
(808, 1, 40, 7.49775530, 80.32459110, 0.05, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:05', 0),
(809, 1, 40, 7.49775530, 80.32459110, 0.05, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:05', 0),
(810, 1, 40, 7.49775560, 80.32459110, 0.09, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:06', 0),
(811, 1, 40, 7.49775510, 80.32459070, 0.13, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:07', 0),
(812, 1, 40, 7.49775510, 80.32459060, 0.07, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:08', 0),
(813, 1, 40, 7.49775540, 80.32459120, 0.14, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:09', 0),
(814, 1, 40, 7.49775540, 80.32459130, 0.08, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:10', 0),
(815, 1, 40, 7.49775540, 80.32459130, 0.03, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:12', 0),
(816, 1, 40, 7.49775550, 80.32459130, 0.03, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:12', 0),
(817, 1, 40, 7.49775590, 80.32459130, 0.10, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:13', 0),
(818, 1, 40, 7.49775570, 80.32459090, 0.09, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:14', 0),
(819, 1, 40, 7.49775710, 80.32459120, 0.34, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:15', 0),
(820, 1, 40, 7.49775710, 80.32459120, 0.34, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:15', 0),
(821, 1, 40, 7.49775780, 80.32459150, 0.31, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:16', 0),
(822, 1, 40, 7.49775780, 80.32459150, 0.11, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:17', 0),
(823, 1, 40, 7.49775780, 80.32459140, 0.06, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:18', 0),
(824, 1, 40, 7.49775820, 80.32459120, 0.12, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:19', 0),
(825, 1, 40, 7.49775830, 80.32459120, 0.08, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:20', 0),
(826, 1, 40, 7.49775880, 80.32459090, 0.16, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:21', 0),
(827, 1, 40, 7.49775920, 80.32459170, 0.23, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:22', 0),
(828, 1, 40, 7.49775920, 80.32459170, 0.09, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:23', 0),
(829, 1, 40, 7.49775870, 80.32459180, 0.10, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:24', 0),
(830, 1, 40, 7.49775880, 80.32459130, 0.10, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:25', 0),
(831, 1, 40, 7.49775880, 80.32459130, 0.10, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:25', 0),
(832, 1, 40, 7.49775970, 80.32459180, 0.23, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:26', 0),
(833, 1, 40, 7.49776040, 80.32459160, 0.25, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:27', 0),
(834, 1, 40, 7.49776140, 80.32459210, 0.35, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:28', 0),
(835, 1, 40, 7.49776160, 80.32459210, 0.20, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:29', 0),
(836, 1, 40, 7.49776160, 80.32459210, 0.08, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:30', 0),
(837, 1, 40, 7.49776140, 80.32459220, 0.03, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:31', 0),
(838, 1, 40, 7.49776140, 80.32459240, 0.06, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:32', 0),
(839, 1, 40, 7.49776190, 80.32459270, 0.14, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:33', 0),
(840, 1, 40, 7.49776120, 80.32459300, 0.17, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:34', 0),
(841, 1, 40, 7.49776160, 80.32459350, 0.17, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:35', 0),
(842, 1, 40, 7.49776160, 80.32459350, 0.17, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:35', 0),
(843, 1, 40, 7.49776270, 80.32459390, 0.33, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:36', 0),
(844, 1, 40, 7.49776180, 80.32459420, 0.18, NULL, 3, 28, 29, NULL, '2025-10-11 08:22:37', 1),
(845, 1, 41, 7.49777310, 80.32460530, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 08:56:19', 0),
(846, 1, 41, 7.49777940, 80.32463920, 1.12, NULL, 21, 28, 29, NULL, '2025-10-11 08:56:26', 0),
(847, 1, 41, 7.49777940, 80.32463920, 1.12, NULL, 21, 28, 29, NULL, '2025-10-11 08:56:26', 0),
(848, 1, 41, 7.49778410, 80.32466470, 7.21, NULL, 21, 28, 29, NULL, '2025-10-11 08:56:27', 0),
(849, 1, 41, 7.49778990, 80.32463800, 3.58, NULL, 20, 28, 29, NULL, '2025-10-11 08:56:28', 0),
(850, 1, 41, 7.49778950, 80.32463340, 2.62, NULL, 19, 28, 29, NULL, '2025-10-11 08:56:29', 0),
(851, 1, 41, 7.49776070, 80.32463880, 2.60, NULL, 17, 28, 29, NULL, '2025-10-11 08:56:30', 0),
(852, 1, 41, 7.49774960, 80.32464410, 2.66, NULL, 16, 28, 29, NULL, '2025-10-11 08:56:31', 0),
(853, 1, 41, 7.49774350, 80.32464900, 2.85, NULL, 13, 28, 29, NULL, '2025-10-11 08:56:32', 0),
(854, 1, 41, 7.49773800, 80.32465530, 3.14, NULL, 12, 28, 29, NULL, '2025-10-11 08:56:33', 0),
(855, 1, 41, 7.49773800, 80.32465530, 3.14, NULL, 12, 28, 29, NULL, '2025-10-11 08:56:33', 0),
(856, 1, 41, 7.49773120, 80.32462800, 5.64, NULL, 8, 28, 29, NULL, '2025-10-11 08:56:34', 0),
(857, 1, 41, 7.49772290, 80.32461050, 6.82, NULL, 7, 28, 29, NULL, '2025-10-11 08:56:35', 0),
(858, 1, 41, 7.49772160, 80.32459920, 5.38, NULL, 7, 28, 29, NULL, '2025-10-11 08:56:36', 0),
(859, 1, 41, 7.49771480, 80.32460000, 2.92, NULL, 6, 28, 29, NULL, '2025-10-11 08:56:37', 0),
(860, 1, 41, 7.49771960, 80.32459450, 2.07, NULL, 5, 28, 29, NULL, '2025-10-11 08:56:38', 0),
(861, 1, 41, 7.49772290, 80.32459370, 1.35, NULL, 5, 28, 29, NULL, '2025-10-11 08:56:39', 0),
(862, 1, 41, 7.49772210, 80.32459440, 0.29, NULL, 5, 28, 29, NULL, '2025-10-11 08:56:40', 0),
(863, 1, 41, 7.49772510, 80.32459630, 0.87, NULL, 4, 28, 29, NULL, '2025-10-11 08:56:41', 0),
(864, 1, 41, 7.49772330, 80.32459340, 0.58, NULL, 4, 28, 29, NULL, '2025-10-11 08:56:42', 0),
(865, 1, 41, 7.49772160, 80.32458780, 1.62, NULL, 4, 28, 29, NULL, '2025-10-11 08:56:43', 0),
(866, 1, 41, 7.49772160, 80.32458780, 1.62, NULL, 4, 28, 29, NULL, '2025-10-11 08:56:43', 0),
(867, 1, 41, 7.49772150, 80.32458720, 0.79, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:44', 0),
(868, 1, 41, 7.49772190, 80.32458650, 0.46, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:45', 0),
(869, 1, 41, 7.49772250, 80.32458680, 0.18, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:46', 0),
(870, 1, 41, 7.49772250, 80.32458670, 0.10, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:47', 0),
(871, 1, 41, 7.49772680, 80.32459070, 1.42, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:48', 0),
(872, 1, 41, 7.49772700, 80.32458860, 0.48, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:49', 0),
(873, 1, 41, 7.49772690, 80.32458820, 0.22, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:50', 0),
(874, 1, 41, 7.49772820, 80.32458650, 0.61, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:51', 0),
(875, 1, 41, 7.49772770, 80.32458650, 0.18, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:52', 0),
(876, 1, 41, 7.49772760, 80.32458650, 0.08, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:53', 0),
(877, 1, 41, 7.49772760, 80.32458650, 0.08, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:53', 0),
(878, 1, 41, 7.49772980, 80.32459040, 1.05, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:54', 0),
(879, 1, 41, 7.49772970, 80.32459120, 0.58, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:55', 0),
(880, 1, 41, 7.49772870, 80.32459210, 0.47, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:56', 0),
(881, 1, 41, 7.49772970, 80.32459080, 0.23, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:57', 0),
(882, 1, 41, 7.49772960, 80.32459000, 0.24, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:58', 0),
(883, 1, 41, 7.49772940, 80.32459020, 0.05, NULL, 3, 28, 29, NULL, '2025-10-11 08:56:59', 0),
(884, 1, 41, 7.49773100, 80.32459190, 0.52, NULL, 3, 28, 29, NULL, '2025-10-11 08:57:00', 0),
(885, 1, 41, 7.49773060, 80.32459110, 0.06, NULL, 3, 28, 29, NULL, '2025-10-11 08:57:01', 0),
(886, 1, 41, 7.49773060, 80.32459070, 0.11, NULL, 3, 28, 29, NULL, '2025-10-11 08:57:02', 0),
(887, 1, 41, 7.49773080, 80.32459230, 0.33, NULL, 3, 28, 29, NULL, '2025-10-11 08:57:03', 0),
(888, 1, 41, 7.49773080, 80.32459230, 0.33, NULL, 3, 28, 29, NULL, '2025-10-11 08:57:03', 1),
(889, 1, 42, 7.49776660, 80.32460610, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 09:07:53', 0),
(890, 1, 42, 7.49776380, 80.32460600, 0.11, NULL, 20, 28, 29, NULL, '2025-10-11 09:07:56', 0),
(891, 1, 42, 7.49776380, 80.32460600, 0.11, NULL, 20, 28, 29, NULL, '2025-10-11 09:07:56', 0),
(892, 1, 42, 7.49774830, 80.32460600, 3.46, NULL, 20, 28, 29, NULL, '2025-10-11 09:07:57', 0),
(893, 1, 42, 7.49769480, 80.32459540, 13.26, NULL, 16, 28, 29, NULL, '2025-10-11 09:07:58', 0),
(894, 1, 42, 7.49769480, 80.32457730, 7.43, NULL, 14, 28, 29, NULL, '2025-10-11 09:07:59', 0),
(895, 1, 42, 7.49769640, 80.32457970, 2.36, NULL, 12, 28, 29, NULL, '2025-10-11 09:08:00', 0),
(896, 1, 42, 7.49770280, 80.32458050, 0.93, NULL, 11, 28, 29, NULL, '2025-10-11 09:08:01', 0),
(897, 1, 42, 7.49771500, 80.32459570, 4.78, NULL, 8, 28, 29, NULL, '2025-10-11 09:08:02', 1),
(898, 1, 43, 7.49777490, 80.32460540, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 09:24:54', 0),
(899, 1, 43, 7.49777090, 80.32460830, 0.20, NULL, 20, 28, 29, NULL, '2025-10-11 09:24:57', 0),
(900, 1, 43, 7.49775970, 80.32460570, 0.80, NULL, 20, 28, 29, NULL, '2025-10-11 09:24:58', 0),
(901, 1, 43, 7.49770840, 80.32456920, 1.03, NULL, 16, 28, 29, NULL, '2025-10-11 09:24:59', 0),
(902, 1, 43, 7.49771400, 80.32454950, 3.65, NULL, 14, 28, 29, NULL, '2025-10-11 09:25:00', 0),
(903, 1, 43, 7.49769960, 80.32453830, 5.02, NULL, 13, 28, 29, NULL, '2025-10-11 09:25:01', 0),
(904, 1, 43, 7.49770310, 80.32455280, 1.66, NULL, 12, 28, 29, NULL, '2025-10-11 09:25:02', 0),
(905, 1, 43, 7.49770310, 80.32455280, 1.66, NULL, 12, 28, 29, NULL, '2025-10-11 09:25:02', 0),
(906, 1, 43, 7.49772580, 80.32458110, 8.75, NULL, 9, 28, 29, NULL, '2025-10-11 09:25:03', 0),
(907, 1, 43, 7.49773880, 80.32458630, 6.57, NULL, 7, 28, 29, NULL, '2025-10-11 09:25:04', 0),
(908, 1, 43, 7.49773680, 80.32458720, 2.47, NULL, 6, 28, 29, NULL, '2025-10-11 09:25:05', 0),
(909, 1, 43, 7.49774460, 80.32459400, 3.45, NULL, 6, 28, 29, NULL, '2025-10-11 09:25:06', 0),
(910, 1, 43, 7.49774990, 80.32459860, 3.03, NULL, 5, 28, 29, NULL, '2025-10-11 09:25:07', 0),
(911, 1, 43, 7.49775780, 80.32461320, 5.13, NULL, 5, 28, 29, NULL, '2025-10-11 09:25:08', 0),
(912, 1, 43, 7.49774580, 80.32460710, 1.80, NULL, 5, 28, 29, NULL, '2025-10-11 09:25:09', 0),
(913, 1, 43, 7.49774480, 80.32460870, 1.06, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:10', 0),
(914, 1, 43, 7.49775080, 80.32461710, 2.45, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:11', 0),
(915, 1, 43, 7.49774770, 80.32460440, 2.19, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:12', 0),
(916, 1, 43, 7.49774770, 80.32460440, 2.19, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:12', 0),
(917, 1, 43, 7.49774460, 80.32460440, 1.22, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:13', 0),
(918, 1, 43, 7.49774280, 80.32460750, 0.88, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:14', 0),
(919, 1, 43, 7.49774090, 80.32460340, 1.12, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:15', 0),
(920, 1, 43, 7.49774020, 80.32460470, 0.47, NULL, 4, 28, 29, NULL, '2025-10-11 09:25:16', 1),
(921, 1, 44, 7.49777600, 80.32460620, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 13:31:28', 0),
(922, 1, 44, 7.49777600, 80.32460620, NULL, NULL, 20, 28, 29, NULL, '2025-10-11 13:31:28', 0),
(923, 1, 44, 7.49780290, 80.32467030, 0.77, NULL, 16, 28, 29, NULL, '2025-10-11 13:31:31', 0),
(924, 1, 44, 7.49779210, 80.32462860, 1.25, NULL, 9, 28, 29, NULL, '2025-10-11 13:31:32', 0),
(925, 1, 44, 7.49779080, 80.32462760, 0.60, NULL, 8, 28, 29, NULL, '2025-10-11 13:31:33', 0),
(926, 1, 44, 7.49779890, 80.32462000, 0.69, NULL, 11, 28, 29, NULL, '2025-10-11 13:31:34', 0),
(927, 1, 44, 7.49782000, 80.32461500, 3.22, NULL, 12, 28, 29, NULL, '2025-10-11 13:31:35', 0),
(928, 1, 44, 7.49780640, 80.32460810, 2.12, NULL, 12, 28, 29, NULL, '2025-10-11 13:31:36', 0),
(929, 1, 44, 7.49782640, 80.32460140, 4.29, NULL, 12, 28, 29, NULL, '2025-10-11 13:31:37', 0),
(930, 1, 44, 7.49782730, 80.32460020, 2.11, NULL, 11, 28, 29, NULL, '2025-10-11 13:31:38', 0),
(931, 1, 44, 7.49782730, 80.32460020, 2.11, NULL, 11, 28, 29, NULL, '2025-10-11 13:31:39', 0),
(932, 1, 44, 7.49781170, 80.32461000, 3.51, NULL, 9, 28, 29, NULL, '2025-10-11 13:31:39', 0),
(933, 1, 44, 7.49780630, 80.32461620, 3.33, NULL, 8, 28, 29, NULL, '2025-10-11 13:31:40', 0),
(934, 1, 44, 7.49780130, 80.32461240, 2.19, NULL, 5, 28, 29, NULL, '2025-10-11 13:31:41', 0),
(935, 1, 44, 7.49780910, 80.32460760, 1.54, NULL, 4, 28, 29, NULL, '2025-10-11 13:31:42', 0),
(936, 1, 44, 7.49780030, 80.32460840, 1.73, NULL, 4, 28, 29, NULL, '2025-10-11 13:31:43', 0),
(937, 1, 44, 7.49779620, 80.32460800, 1.69, NULL, 4, 28, 29, NULL, '2025-10-11 13:31:44', 0),
(938, 1, 44, 7.49779530, 80.32460820, 0.89, NULL, 4, 28, 29, NULL, '2025-10-11 13:31:45', 0),
(939, 1, 44, 7.49779750, 80.32461130, 0.75, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:46', 0),
(940, 1, 44, 7.49779690, 80.32461060, 0.14, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:47', 0),
(941, 1, 44, 7.49779440, 80.32461320, 0.94, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:48', 0),
(942, 1, 44, 7.49779440, 80.32461320, 0.94, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:48', 0),
(943, 1, 44, 7.49779450, 80.32461500, 0.73, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:49', 0),
(944, 1, 44, 7.49778910, 80.32461640, 1.51, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:50', 0),
(945, 1, 44, 7.49778930, 80.32461720, 0.68, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:51', 0),
(946, 1, 44, 7.49778910, 80.32461800, 0.43, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:52', 0),
(947, 1, 44, 7.49778770, 80.32461820, 0.48, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:53', 0),
(948, 1, 44, 7.49778700, 80.32461840, 0.37, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:54', 0),
(949, 1, 44, 7.49778700, 80.32461840, 0.13, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:56', 0),
(950, 1, 44, 7.49778580, 80.32461830, 0.35, NULL, 3, 28, 29, NULL, '2025-10-11 13:31:56', 0),
(951, 1, 44, 7.49778590, 80.32461820, 0.03, NULL, 4, 28, 29, NULL, '2025-10-11 13:32:01', 0),
(952, 1, 44, 7.49778590, 80.32461820, 0.03, NULL, 4, 28, 29, NULL, '2025-10-11 13:32:01', 0),
(953, 1, 44, 7.49778590, 80.32461830, 0.03, NULL, 4, 28, 29, NULL, '2025-10-11 13:32:02', 1),
(954, 1, 46, 7.49779560, 80.32460730, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 00:15:15', 0),
(955, 1, 46, 7.49779560, 80.32460730, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 00:15:15', 0),
(956, 1, 46, 7.49780450, 80.32461300, 0.42, NULL, 11, 28, 29, NULL, '2025-10-12 00:15:18', 0),
(957, 1, 46, 7.49780440, 80.32461230, 0.19, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:19', 0),
(958, 1, 46, 7.49780310, 80.32461390, 0.83, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:19', 0),
(959, 1, 46, 7.49779640, 80.32460650, 2.49, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:20', 0),
(960, 1, 46, 7.49779280, 80.32463070, 5.35, NULL, 7, 28, 29, NULL, '2025-10-12 00:15:21', 0),
(961, 1, 46, 7.49777980, 80.32470540, 17.35, NULL, 7, 28, 29, NULL, '2025-10-12 00:15:22', 0),
(962, 1, 46, 7.49777680, 80.32466030, 3.32, NULL, 7, 28, 29, NULL, '2025-10-12 00:15:23', 0),
(963, 1, 46, 7.49777330, 80.32462400, 9.72, NULL, 8, 28, 29, NULL, '2025-10-12 00:15:24', 0),
(964, 1, 46, 7.49777330, 80.32462400, 9.72, NULL, 8, 28, 29, NULL, '2025-10-12 00:15:24', 0),
(965, 1, 46, 7.49778190, 80.32461580, 5.91, NULL, 8, 28, 29, NULL, '2025-10-12 00:15:25', 0),
(966, 1, 46, 7.49778860, 80.32461010, 4.24, NULL, 7, 28, 29, NULL, '2025-10-12 00:15:26', 0),
(967, 1, 46, 7.49779840, 80.32460280, 4.55, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:27', 0),
(968, 1, 46, 7.49779810, 80.32459260, 3.89, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:28', 0),
(969, 1, 46, 7.49779930, 80.32458740, 2.82, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:29', 0),
(970, 1, 46, 7.49779880, 80.32458280, 2.18, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:30', 0),
(971, 1, 46, 7.49779750, 80.32458570, 0.29, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:31', 0),
(972, 1, 46, 7.49779790, 80.32458650, 0.12, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:32', 0),
(973, 1, 46, 7.49779800, 80.32458760, 0.32, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:33', 0),
(974, 1, 46, 7.49779880, 80.32458600, 0.34, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:34', 0),
(975, 1, 46, 7.49779880, 80.32458600, 0.34, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:34', 0),
(976, 1, 46, 7.49779650, 80.32458750, 0.54, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:35', 0),
(977, 1, 46, 7.49779580, 80.32459030, 0.84, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:36', 0),
(978, 1, 46, 7.49779820, 80.32459880, 0.28, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:36', 0),
(979, 1, 46, 7.49779500, 80.32459590, 0.28, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:37', 0),
(980, 1, 46, 7.49779240, 80.32459690, 0.24, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:38', 0),
(981, 1, 46, 7.49779240, 80.32459690, 0.12, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:39', 0),
(982, 1, 46, 7.49779230, 80.32459730, 0.13, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:40', 0),
(983, 1, 46, 7.49779310, 80.32459750, 0.21, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:41', 0),
(984, 1, 46, 7.49779650, 80.32459930, 0.34, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:41', 0),
(985, 1, 46, 7.49779710, 80.32459950, 0.41, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:42', 0),
(986, 1, 46, 7.49779810, 80.32460070, 0.27, NULL, 3, 28, 29, NULL, '2025-10-12 00:15:42', 0),
(987, 1, 46, 7.49779690, 80.32460110, 0.35, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:43', 0),
(988, 1, 46, 7.49779660, 80.32460120, 0.34, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:44', 0),
(989, 1, 46, 7.49779660, 80.32460120, 0.34, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:44', 0),
(990, 1, 46, 7.49779580, 80.32460130, 0.35, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:45', 0),
(991, 1, 46, 7.49779550, 80.32460140, 0.37, NULL, 4, 28, 29, NULL, '2025-10-12 00:15:46', 1),
(992, 1, 47, 7.49779150, 80.32459760, NULL, NULL, 24, 28, 29, NULL, '2025-10-12 00:16:03', 0),
(993, 1, 47, 7.49779180, 80.32459760, 0.00, NULL, 22, 28, 29, NULL, '2025-10-12 00:16:04', 0),
(994, 1, 47, 7.49779180, 80.32459760, 0.00, NULL, 22, 28, 29, NULL, '2025-10-12 00:16:04', 0),
(995, 1, 47, 7.49779150, 80.32459780, 0.05, NULL, 20, 28, 29, NULL, '2025-10-12 00:16:05', 0),
(996, 1, 47, 7.49779200, 80.32459810, 0.11, NULL, 17, 28, 29, NULL, '2025-10-12 00:16:06', 0),
(997, 1, 47, 7.49779140, 80.32459780, 0.11, NULL, 15, 28, 29, NULL, '2025-10-12 00:16:07', 1),
(998, 1, 48, 7.49780710, 80.32460870, NULL, NULL, 21, 28, 29, NULL, '2025-10-12 01:58:48', 0),
(999, 1, 48, 7.49780050, 80.32461550, 8.79, NULL, 21, 28, 29, NULL, '2025-10-12 01:58:50', 0),
(1000, 1, 48, 7.49780050, 80.32461550, 8.79, NULL, 21, 28, 29, NULL, '2025-10-12 01:58:50', 0),
(1001, 1, 48, 7.49779700, 80.32462540, 8.89, NULL, 21, 28, 29, NULL, '2025-10-12 01:58:51', 0),
(1002, 1, 48, 7.49777940, 80.32468630, 5.84, NULL, 17, 28, 29, NULL, '2025-10-12 01:58:52', 0),
(1003, 1, 48, 7.49778340, 80.32467970, 5.45, NULL, 18, 28, 29, NULL, '2025-10-12 01:58:53', 0),
(1004, 1, 48, 7.49776480, 80.32466420, 1.77, NULL, 18, 28, 29, NULL, '2025-10-12 01:58:54', 0),
(1005, 1, 48, 7.49776000, 80.32466510, 0.45, NULL, 18, 28, 29, NULL, '2025-10-12 01:58:54', 0),
(1006, 1, 48, 7.49775390, 80.32466670, 0.34, NULL, 19, 28, 29, NULL, '2025-10-12 01:58:55', 0),
(1007, 1, 48, 7.49773520, 80.32467410, 0.28, NULL, 17, 28, 29, NULL, '2025-10-12 01:58:56', 0),
(1008, 1, 48, 7.49771930, 80.32468200, 0.27, NULL, 17, 28, 29, NULL, '2025-10-12 01:58:56', 0),
(1009, 1, 48, 7.49773300, 80.32466590, 0.39, NULL, 17, 28, 29, NULL, '2025-10-12 01:58:57', 0),
(1010, 1, 48, 7.49773410, 80.32466420, 0.31, NULL, 16, 28, 29, NULL, '2025-10-12 01:58:57', 0),
(1011, 1, 48, 7.49773090, 80.32466500, 0.41, NULL, 16, 28, 29, NULL, '2025-10-12 01:58:58', 0),
(1012, 1, 48, 7.49772960, 80.32466530, 0.41, NULL, 14, 28, 29, NULL, '2025-10-12 01:58:58', 0),
(1013, 1, 48, 7.49772880, 80.32466520, 0.61, NULL, 13, 28, 29, NULL, '2025-10-12 01:58:59', 0),
(1014, 1, 48, 7.49767150, 80.32466090, 0.59, NULL, 10, 28, 29, NULL, '2025-10-12 01:59:00', 0),
(1015, 1, 48, 7.49767150, 80.32466090, 0.59, NULL, 10, 28, 29, NULL, '2025-10-12 01:59:00', 0),
(1016, 1, 48, 7.49766430, 80.32465840, 1.21, NULL, 9, 28, 29, NULL, '2025-10-12 01:59:01', 0),
(1017, 1, 48, 7.49768570, 80.32463760, 6.70, NULL, 8, 28, 29, NULL, '2025-10-12 01:59:02', 0),
(1018, 1, 48, 7.49769630, 80.32463290, 5.37, NULL, 7, 28, 29, NULL, '2025-10-12 01:59:03', 0),
(1019, 1, 48, 7.49770340, 80.32462500, 4.67, NULL, 6, 28, 29, NULL, '2025-10-12 01:59:04', 0),
(1020, 1, 48, 7.49771730, 80.32462160, 0.62, NULL, 9, 28, 29, NULL, '2025-10-12 01:59:05', 0),
(1021, 1, 48, 7.49771520, 80.32462190, 0.50, NULL, 9, 28, 29, NULL, '2025-10-12 01:59:06', 0),
(1022, 1, 48, 7.49771580, 80.32462120, 0.48, NULL, 10, 28, 29, NULL, '2025-10-12 01:59:07', 0),
(1023, 1, 48, 7.49773140, 80.32461730, 0.48, NULL, 10, 28, 29, NULL, '2025-10-12 01:59:08', 0),
(1024, 1, 48, 7.49773100, 80.32461610, 0.37, NULL, 10, 28, 29, NULL, '2025-10-12 01:59:09', 0),
(1025, 1, 48, 7.49773300, 80.32461330, 0.94, NULL, 5, 28, 29, NULL, '2025-10-12 01:59:10', 0),
(1026, 1, 48, 7.49773300, 80.32461330, 0.94, NULL, 5, 28, 29, NULL, '2025-10-12 01:59:10', 0),
(1027, 1, 48, 7.49773410, 80.32461320, 0.59, NULL, 4, 28, 29, NULL, '2025-10-12 01:59:11', 0),
(1028, 1, 48, 7.49773600, 80.32461260, 0.69, NULL, 4, 28, 29, NULL, '2025-10-12 01:59:12', 0),
(1029, 1, 48, 7.49773500, 80.32461120, 0.43, NULL, 3, 28, 29, NULL, '2025-10-12 01:59:13', 1),
(1030, 1, 49, 7.49779500, 80.32460460, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 02:07:38', 0),
(1031, 1, 49, 7.49779520, 80.32460220, 0.71, NULL, 21, 28, 29, NULL, '2025-10-12 02:07:39', 0),
(1032, 1, 49, 7.49778770, 80.32458250, 0.86, NULL, 20, 28, 29, NULL, '2025-10-12 02:07:40', 0),
(1033, 1, 49, 7.49778770, 80.32458250, 0.86, NULL, 20, 28, 29, NULL, '2025-10-12 02:07:40', 0),
(1034, 1, 49, 7.49776870, 80.32451990, 0.74, NULL, 16, 28, 29, NULL, '2025-10-12 02:07:41', 0),
(1035, 1, 49, 7.49777200, 80.32452350, 1.13, NULL, 14, 28, 29, NULL, '2025-10-12 02:07:42', 0),
(1036, 1, 49, 7.49777240, 80.32452280, 0.52, NULL, 11, 28, 29, NULL, '2025-10-12 02:07:43', 1),
(1037, 1, 50, 7.49778010, 80.32460530, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 02:13:38', 0),
(1038, 1, 50, 7.49777910, 80.32460940, 0.15, NULL, 18, 28, 29, NULL, '2025-10-12 02:13:39', 0),
(1039, 1, 50, 7.49777740, 80.32461530, 1.26, NULL, 18, 28, 29, NULL, '2025-10-12 02:13:40', 0),
(1040, 1, 50, 7.49776170, 80.32461370, 3.43, NULL, 15, 28, 29, NULL, '2025-10-12 02:13:41', 0),
(1041, 1, 50, 7.49774980, 80.32461410, 4.20, NULL, 12, 28, 29, NULL, '2025-10-12 02:13:42', 0),
(1042, 1, 50, 7.49774760, 80.32460670, 2.78, NULL, 11, 28, 29, NULL, '2025-10-12 02:13:43', 0),
(1043, 1, 50, 7.49773120, 80.32460620, 4.84, NULL, 10, 28, 29, NULL, '2025-10-12 02:13:44', 0),
(1044, 1, 50, 7.49773120, 80.32460360, 2.15, NULL, 8, 28, 29, NULL, '2025-10-12 02:13:45', 0),
(1045, 1, 50, 7.49773330, 80.32461290, 1.83, NULL, 6, 28, 29, NULL, '2025-10-12 02:13:46', 0),
(1046, 1, 50, 7.49773920, 80.32460880, 1.31, NULL, 6, 28, 29, NULL, '2025-10-12 02:13:47', 0),
(1047, 1, 50, 7.49773710, 80.32460960, 0.09, NULL, 5, 28, 29, NULL, '2025-10-12 02:13:48', 0),
(1048, 1, 50, 7.49773640, 80.32460860, 0.25, NULL, 5, 28, 29, NULL, '2025-10-12 02:13:49', 1),
(1049, 1, 51, 7.49777220, 80.32463850, NULL, NULL, 15, 28, 29, NULL, '2025-10-12 02:27:09', 0),
(1050, 1, 51, 7.49776310, 80.32463970, 0.31, NULL, 10, 28, 29, NULL, '2025-10-12 02:27:10', 0),
(1051, 1, 51, 7.49776030, 80.32462600, 3.09, NULL, 9, 28, 29, NULL, '2025-10-12 02:27:11', 0),
(1052, 1, 51, 7.49776710, 80.32462110, 3.72, NULL, 7, 28, 29, NULL, '2025-10-12 02:27:13', 0),
(1053, 1, 51, 7.49774630, 80.32460590, 6.93, NULL, 8, 28, 29, NULL, '2025-10-12 02:27:14', 0),
(1054, 1, 51, 7.49776910, 80.32462160, 1.99, NULL, 7, 28, 29, NULL, '2025-10-12 02:27:14', 0),
(1055, 1, 51, 7.49775810, 80.32462230, 1.95, NULL, 5, 28, 29, NULL, '2025-10-12 02:27:15', 0),
(1056, 1, 51, 7.49775940, 80.32462050, 0.53, NULL, 5, 28, 29, NULL, '2025-10-12 02:27:16', 0),
(1057, 1, 51, 7.49775340, 80.32461230, 2.63, NULL, 4, 28, 29, NULL, '2025-10-12 02:27:17', 0),
(1058, 1, 51, 7.49775500, 80.32461070, 1.24, NULL, 4, 28, 29, NULL, '2025-10-12 02:27:18', 0),
(1059, 1, 51, 7.49775830, 80.32460940, 1.05, NULL, 4, 28, 29, NULL, '2025-10-12 02:27:19', 0),
(1060, 1, 51, 7.49775830, 80.32460960, 0.38, NULL, 4, 28, 29, NULL, '2025-10-12 02:27:20', 0),
(1061, 1, 51, 7.49775840, 80.32460980, 0.14, NULL, 3, 28, 29, NULL, '2025-10-12 02:27:21', 0),
(1062, 1, 51, 7.49775840, 80.32460970, 0.07, NULL, 3, 28, 29, NULL, '2025-10-12 02:27:22', 0),
(1063, 1, 51, 7.49775870, 80.32460970, 0.09, NULL, 3, 28, 29, NULL, '2025-10-12 02:27:23', 0),
(1064, 1, 51, 7.49775870, 80.32460960, 0.05, NULL, 3, 28, 29, NULL, '2025-10-12 02:27:24', 0),
(1065, 1, 51, 7.49775940, 80.32461000, 0.19, NULL, 3, 28, 29, NULL, '2025-10-12 02:27:25', 1),
(1066, 1, 54, 7.49778010, 80.32460530, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 03:10:05', 0),
(1067, 1, 54, 7.49778160, 80.32460570, 0.04, NULL, 20, 28, 29, NULL, '2025-10-12 03:10:05', 0),
(1068, 1, 54, 7.49778100, 80.32460500, 0.08, NULL, 20, 28, 29, NULL, '2025-10-12 03:10:06', 0),
(1069, 1, 54, 7.49777720, 80.32459660, 1.73, NULL, 20, 28, 29, NULL, '2025-10-12 03:10:07', 0),
(1070, 1, 54, 7.49778100, 80.32460190, 0.32, NULL, 20, 28, 29, NULL, '2025-10-12 03:10:08', 0),
(1071, 1, 54, 7.49778170, 80.32460540, 0.74, NULL, 20, 28, 29, NULL, '2025-10-12 03:10:09', 0),
(1072, 1, 54, 7.49777180, 80.32460740, 1.81, NULL, 19, 28, 29, NULL, '2025-10-12 03:10:10', 0),
(1073, 1, 54, 7.49775500, 80.32461730, 4.57, NULL, 16, 28, 29, NULL, '2025-10-12 03:10:11', 0),
(1074, 1, 54, 7.49775430, 80.32463040, 4.32, NULL, 15, 28, 29, NULL, '2025-10-12 03:10:12', 1),
(1075, 1, 55, 7.48866630, 80.36421360, NULL, NULL, 8, 7, 8, NULL, '2025-10-12 04:01:26', 0),
(1076, 1, 55, 7.48864860, 80.36421340, NULL, NULL, 7, 7, 8, NULL, '2025-10-12 04:01:27', 0),
(1077, 1, 55, 7.48864660, 80.36423190, 1.12, NULL, 7, 7, 8, NULL, '2025-10-12 04:01:28', 0),
(1078, 1, 55, 7.48862830, 80.36426580, NULL, NULL, 6, 7, 8, NULL, '2025-10-12 04:01:29', 0),
(1079, 1, 55, 7.48862830, 80.36426580, NULL, NULL, 6, 7, 8, NULL, '2025-10-12 04:01:29', 0),
(1080, 1, 55, 7.48862880, 80.36428470, NULL, NULL, 6, 7, 8, NULL, '2025-10-12 04:01:30', 0),
(1081, 1, 55, 7.48864580, 80.36429460, 0.54, NULL, 4, 7, 8, NULL, '2025-10-12 04:01:31', 0),
(1082, 1, 55, 7.48866300, 80.36428390, 2.34, NULL, 4, 7, 8, NULL, '2025-10-12 04:01:32', 0),
(1083, 1, 55, 7.48866790, 80.36427530, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:33', 0),
(1084, 1, 55, 7.48867140, 80.36427900, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:34', 0),
(1085, 1, 55, 7.48867270, 80.36427780, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:35', 0),
(1086, 1, 55, 7.48867490, 80.36426950, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:36', 0),
(1087, 1, 55, 7.48867970, 80.36425850, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:37', 0),
(1088, 1, 55, 7.48868530, 80.36425520, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:38', 0),
(1089, 1, 55, 7.48868660, 80.36425300, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:39', 0),
(1090, 1, 55, 7.48868660, 80.36425300, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:39', 0),
(1091, 1, 55, 7.48868250, 80.36425180, NULL, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:40', 0),
(1092, 1, 55, 7.48867420, 80.36426110, 2.09, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:41', 0),
(1093, 1, 55, 7.48867130, 80.36427110, 1.98, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:42', 0),
(1094, 1, 55, 7.48866980, 80.36427040, 3.78, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:43', 0),
(1095, 1, 55, 7.48866040, 80.36427380, 4.72, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:44', 0),
(1096, 1, 55, 7.48864580, 80.36428130, 6.80, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:45', 0),
(1097, 1, 55, 7.48864010, 80.36428520, 4.57, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:46', 0),
(1098, 1, 55, 7.48863480, 80.36429250, 4.90, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:47', 0),
(1099, 1, 55, 7.48862700, 80.36429120, 5.58, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:48', 0),
(1100, 1, 55, 7.48861410, 80.36428030, 9.29, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:49', 0),
(1101, 1, 55, 7.48861410, 80.36428030, 9.29, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:49', 0),
(1102, 1, 55, 7.48861050, 80.36427070, 5.54, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:50', 0),
(1103, 1, 55, 7.48860400, 80.36424940, 8.96, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:51', 0),
(1104, 1, 55, 7.48859770, 80.36422590, 9.58, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:52', 0),
(1105, 1, 55, 7.48859890, 80.36419540, 11.30, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:53', 0),
(1106, 1, 55, 7.48859990, 80.36416790, 11.38, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:54', 0),
(1107, 1, 55, 7.48860010, 80.36413650, 13.82, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:55', 0),
(1108, 1, 55, 7.48859850, 80.36409720, 14.90, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:56', 0),
(1109, 1, 55, 7.48859610, 80.36406120, 13.21, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:57', 0),
(1110, 1, 55, 7.48859340, 80.36404030, 7.96, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:58', 0),
(1111, 1, 55, 7.48858600, 80.36403030, 4.10, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:59', 0),
(1112, 1, 55, 7.48858600, 80.36403030, 4.10, NULL, 3, 7, 8, NULL, '2025-10-12 04:01:59', 0),
(1113, 1, 55, 7.48857920, 80.36401730, 4.46, NULL, 3, 7, 8, NULL, '2025-10-12 04:02:00', 0),
(1114, 1, 55, 7.48857740, 80.36400660, 3.85, NULL, 3, 7, 8, NULL, '2025-10-12 04:02:01', 0),
(1115, 1, 55, 7.48857560, 80.36399500, 4.50, NULL, 3, 7, 8, NULL, '2025-10-12 04:02:02', 0),
(1116, 1, 55, 7.48857490, 80.36397060, 8.71, NULL, 3, 7, 8, NULL, '2025-10-12 04:02:03', 0),
(1117, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:21', 0),
(1118, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:21', 0),
(1119, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:21', 0),
(1120, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:21', 0),
(1121, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:22', 0),
(1122, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:22', 0),
(1123, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:22', 0),
(1124, 1, 55, 7.48731070, 80.36444400, 2.20, NULL, 31, 7, 8, NULL, '2025-10-12 04:03:22', 0),
(1125, 1, 55, 7.48721610, 80.36485900, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:03:22', 0),
(1126, 1, 55, 7.48718530, 80.36478280, 0.76, NULL, 23, NULL, NULL, NULL, '2025-10-12 04:03:22', 0),
(1127, 1, 55, 7.48715830, 80.36479990, NULL, NULL, 18, NULL, NULL, NULL, '2025-10-12 04:03:23', 0),
(1128, 1, 55, 7.48715740, 80.36484180, NULL, NULL, 19, NULL, NULL, NULL, '2025-10-12 04:04:00', 0),
(1129, 1, 55, 7.48715740, 80.36484180, NULL, NULL, 19, NULL, NULL, NULL, '2025-10-12 04:04:00', 0),
(1130, 1, 55, 7.48715740, 80.36484180, NULL, NULL, 19, NULL, NULL, NULL, '2025-10-12 04:04:00', 0),
(1131, 1, 55, 7.48715740, 80.36484180, NULL, NULL, 19, NULL, NULL, NULL, '2025-10-12 04:04:00', 0),
(1132, 1, 55, 7.48715740, 80.36484180, NULL, NULL, 19, NULL, NULL, NULL, '2025-10-12 04:04:00', 0),
(1133, 1, 55, 7.48715070, 80.36479140, NULL, NULL, 12, NULL, NULL, NULL, '2025-10-12 04:04:01', 0),
(1134, 1, 55, 7.48715070, 80.36479140, NULL, NULL, 14, NULL, NULL, NULL, '2025-10-12 04:04:01', 0),
(1135, 1, 55, 7.48715760, 80.36478860, NULL, NULL, 10, NULL, NULL, NULL, '2025-10-12 04:04:02', 0),
(1136, 1, 55, 7.48714920, 80.36478480, NULL, NULL, 9, NULL, NULL, NULL, '2025-10-12 04:04:03', 0),
(1137, 1, 55, 7.48713150, 80.36479200, 0.65, NULL, 8, NULL, NULL, NULL, '2025-10-12 04:04:04', 0),
(1138, 1, 55, 7.48711980, 80.36479160, NULL, NULL, 5, NULL, NULL, NULL, '2025-10-12 04:04:05', 0),
(1139, 1, 55, 7.48711300, 80.36479760, NULL, NULL, 4, NULL, NULL, NULL, '2025-10-12 04:04:06', 0),
(1140, 1, 55, 7.48710800, 80.36479740, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:07', 0),
(1141, 1, 55, 7.48710520, 80.36480070, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:08', 0),
(1142, 1, 55, 7.48709780, 80.36480730, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:09', 0),
(1143, 1, 55, 7.48709780, 80.36480730, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:09', 0),
(1144, 1, 55, 7.48709320, 80.36480960, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:10', 0),
(1145, 1, 55, 7.48709280, 80.36481280, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:11', 0),
(1146, 1, 55, 7.48709320, 80.36481370, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:12', 0),
(1147, 1, 55, 7.48709400, 80.36481450, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:13', 0),
(1148, 1, 55, 7.48709150, 80.36481540, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:14', 0),
(1149, 1, 55, 7.48709270, 80.36481040, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:15', 0),
(1150, 1, 55, 7.48709390, 80.36481000, 0.68, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:16', 0),
(1151, 1, 55, 7.48709510, 80.36481400, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:17', 0),
(1152, 1, 55, 7.48709480, 80.36481590, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:18', 0),
(1153, 1, 55, 7.48709320, 80.36481440, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:19', 0),
(1154, 1, 55, 7.48709320, 80.36481440, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:19', 0),
(1155, 1, 55, 7.48709770, 80.36480980, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:20', 0),
(1156, 1, 55, 7.48709750, 80.36480890, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:21', 0),
(1157, 1, 55, 7.48709720, 80.36480990, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:22', 0),
(1158, 1, 55, 7.48709720, 80.36481110, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:23', 0),
(1159, 1, 55, 7.48709450, 80.36481100, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:24', 0),
(1160, 1, 55, 7.48709330, 80.36481180, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:25', 0),
(1161, 1, 55, 7.48709050, 80.36481310, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:26', 0),
(1162, 1, 55, 7.48709030, 80.36481370, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:27', 0),
(1163, 1, 55, 7.48709010, 80.36481410, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:28', 0),
(1164, 1, 55, 7.48708850, 80.36481510, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:29', 0),
(1165, 1, 55, 7.48708850, 80.36481510, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:29', 0),
(1166, 1, 55, 7.48708840, 80.36481510, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:30', 0),
(1167, 1, 55, 7.48708810, 80.36481630, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:31', 0),
(1168, 1, 55, 7.48708830, 80.36481640, NULL, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:04:32', 0),
(1169, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:50', 0),
(1170, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:50', 0),
(1171, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1172, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1173, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1174, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1175, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1176, 1, 55, 7.49435040, 80.34746260, 10.15, NULL, 23, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1177, 1, 55, 7.49428180, 80.34757180, 2.16, NULL, 17, 14, 15, NULL, '2025-10-12 04:09:51', 0),
(1178, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1179, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1180, 1, 55, 7.49411340, 80.34749830, 1.01, NULL, 6, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1181, 1, 55, 7.49400880, 80.34751670, 1.98, NULL, 22, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1182, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1183, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1184, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1185, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1186, 1, 55, 7.49406570, 80.34752280, NULL, NULL, 15, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1187, 1, 55, 7.49409870, 80.34751350, NULL, NULL, 12, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1188, 1, 55, 7.49409180, 80.34750180, NULL, NULL, 9, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1189, 1, 55, 7.49409790, 80.34751000, NULL, NULL, 10, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1190, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1191, 1, 55, 7.49409790, 80.34751000, NULL, NULL, 10, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1192, 1, 55, 7.49412910, 80.34754200, NULL, NULL, 72, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1193, 1, 55, 7.49413660, 80.34749560, 5.15, NULL, 5, 14, 15, NULL, '2025-10-12 04:11:02', 0),
(1194, 1, 55, 7.49414180, 80.34748430, 5.15, NULL, 5, 14, 15, NULL, '2025-10-12 04:11:03', 0),
(1195, 1, 55, 7.49417380, 80.34745200, 12.49, NULL, 4, 14, 15, NULL, '2025-10-12 04:11:04', 0),
(1196, 1, 55, 7.49419060, 80.34742810, 10.55, NULL, 4, 14, 15, NULL, '2025-10-12 04:11:05', 0),
(1197, 1, 55, 7.49420110, 80.34740070, 13.18, NULL, 4, 14, 15, NULL, '2025-10-12 04:11:06', 0),
(1198, 1, 55, 7.49421980, 80.34736940, 15.62, NULL, 4, 14, 15, NULL, '2025-10-12 04:11:07', 0),
(1199, 1, 55, 7.49423930, 80.34733410, 19.91, NULL, 4, 14, 15, NULL, '2025-10-12 04:11:08', 0),
(1200, 1, 55, 7.49425830, 80.34727230, 23.51, NULL, 3, 14, 15, NULL, '2025-10-12 04:11:09', 0),
(1201, 1, 55, 7.49425830, 80.34727230, 23.51, NULL, 3, 14, 15, NULL, '2025-10-12 04:11:09', 0),
(1202, 1, 55, 7.49428370, 80.34720870, 25.49, NULL, 3, 14, 15, NULL, '2025-10-12 04:11:10', 0),
(1203, 1, 55, 7.49430110, 80.34714380, 27.43, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:11', 0),
(1204, 1, 55, 7.49431540, 80.34706800, 29.45, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:12', 0),
(1205, 1, 55, 7.49433050, 80.34698360, 31.72, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1206, 1, 55, 7.49436750, 80.34666610, 30.85, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1207, 1, 55, 7.49434530, 80.34689680, 32.87, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1208, 1, 55, 7.49435330, 80.34681510, 31.50, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1209, 1, 55, 7.49436060, 80.34674310, 29.81, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1210, 1, 55, 7.49437680, 80.34657850, 34.27, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1211, 1, 55, 7.49438020, 80.34649290, 34.85, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1212, 1, 55, 7.49438020, 80.34649290, 34.85, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:19', 0),
(1213, 1, 55, 7.49438920, 80.34640720, 35.21, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:20', 0),
(1214, 1, 55, 7.49439700, 80.34631360, 36.72, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:21', 0),
(1215, 1, 55, 7.49440720, 80.34622110, 37.80, NULL, 3, NULL, NULL, NULL, '2025-10-12 04:11:22', 0),
(1216, 1, 55, 7.49442610, 80.34612340, 40.07, NULL, 3, 15, 16, NULL, '2025-10-12 04:11:23', 0),
(1217, 1, 55, 7.49444610, 80.34602550, 39.71, NULL, 3, 15, 16, NULL, '2025-10-12 04:11:24', 0),
(1218, 1, 55, 7.49446830, 80.34592120, 40.90, NULL, 3, 15, 16, NULL, '2025-10-12 04:11:25', 0),
(1219, 1, 55, 7.49449750, 80.34582140, 41.36, NULL, 3, 15, 16, NULL, '2025-10-12 04:11:26', 0),
(1220, 1, 55, 7.49453020, 80.34572420, 39.53, NULL, 3, 15, 16, NULL, '2025-10-12 04:11:27', 0),
(1221, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:57', 0),
(1222, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:57', 0),
(1223, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:57', 0);
INSERT INTO `bus_locations` (`location_id`, `bus_id`, `trip_id`, `latitude`, `longitude`, `speed_kmh`, `direction_degrees`, `accuracy_meters`, `current_stop_id`, `next_stop_id`, `estimated_arrival_time`, `timestamp`, `is_current_location`) VALUES
(1224, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:57', 0),
(1225, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:57', 0),
(1226, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:58', 0),
(1227, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:58', 0),
(1228, 1, 55, 7.49782060, 80.32460600, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 04:19:58', 1),
(1229, 1, 56, 7.49784150, 80.32461350, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 07:49:39', 0),
(1230, 1, 56, 7.49783570, 80.32460510, NULL, NULL, 15, 28, 29, NULL, '2025-10-12 07:49:42', 0),
(1231, 1, 56, 7.49779750, 80.32459310, NULL, NULL, 10, 28, 29, NULL, '2025-10-12 07:49:43', 0),
(1232, 1, 56, 7.49777960, 80.32457350, NULL, NULL, 9, 28, 29, NULL, '2025-10-12 07:49:44', 0),
(1233, 1, 56, 7.49777400, 80.32461520, NULL, NULL, 8, 28, 29, NULL, '2025-10-12 07:49:45', 0),
(1234, 1, 56, 7.49778410, 80.32461920, NULL, NULL, 7, 28, 29, NULL, '2025-10-12 07:49:46', 0),
(1235, 1, 56, 7.49778390, 80.32463370, NULL, NULL, 7, 28, 29, NULL, '2025-10-12 07:49:47', 0),
(1236, 1, 56, 7.49778390, 80.32463370, NULL, NULL, 7, 28, 29, NULL, '2025-10-12 07:49:47', 0),
(1237, 1, 56, 7.49779300, 80.32462530, NULL, NULL, 5, 28, 29, NULL, '2025-10-12 07:49:48', 0),
(1238, 1, 56, 7.49778130, 80.32461320, NULL, NULL, 4, 28, 29, NULL, '2025-10-12 07:49:49', 0),
(1239, 1, 56, 7.49777100, 80.32460810, NULL, NULL, 4, 28, 29, NULL, '2025-10-12 07:49:50', 0),
(1240, 1, 56, 7.49776900, 80.32459770, NULL, NULL, 4, 28, 29, NULL, '2025-10-12 07:49:51', 0),
(1241, 1, 56, 7.49777050, 80.32460290, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:52', 0),
(1242, 1, 56, 7.49777050, 80.32460180, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:53', 0),
(1243, 1, 56, 7.49776950, 80.32460270, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:54', 0),
(1244, 1, 56, 7.49776970, 80.32460320, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:55', 0),
(1245, 1, 56, 7.49777400, 80.32460280, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:56', 0),
(1246, 1, 56, 7.49777470, 80.32460240, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:57', 0),
(1247, 1, 56, 7.49777470, 80.32460240, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:57', 0),
(1248, 1, 56, 7.49777500, 80.32460220, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:58', 0),
(1249, 1, 56, 7.49777490, 80.32460220, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:49:59', 0),
(1250, 1, 56, 7.49777490, 80.32460210, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:00', 0),
(1251, 1, 56, 7.49777500, 80.32460210, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:01', 0),
(1252, 1, 56, 7.49777500, 80.32460200, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:02', 0),
(1253, 1, 56, 7.49777610, 80.32460310, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:03', 0),
(1254, 1, 56, 7.49777200, 80.32460610, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:04', 0),
(1255, 1, 56, 7.49777600, 80.32460430, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:05', 0),
(1256, 1, 56, 7.49777390, 80.32460580, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:06', 0),
(1257, 1, 56, 7.49777140, 80.32460990, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:07', 0),
(1258, 1, 56, 7.49777140, 80.32460990, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:07', 0),
(1259, 1, 56, 7.49777060, 80.32461280, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:08', 0),
(1260, 1, 56, 7.49776890, 80.32461630, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:09', 0),
(1261, 1, 56, 7.49776730, 80.32461950, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:10', 0),
(1262, 1, 56, 7.49776730, 80.32461960, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:11', 0),
(1263, 1, 56, 7.49776730, 80.32462040, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:12', 0),
(1264, 1, 56, 7.49777150, 80.32461890, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:13', 0),
(1265, 1, 56, 7.49777140, 80.32461870, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:14', 0),
(1266, 1, 56, 7.49777100, 80.32461930, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:15', 0),
(1267, 1, 56, 7.49777040, 80.32461980, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:16', 0),
(1268, 1, 56, 7.49777090, 80.32461940, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:17', 0),
(1269, 1, 56, 7.49777090, 80.32461940, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:17', 0),
(1270, 1, 56, 7.49777080, 80.32461950, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:18', 0),
(1271, 1, 56, 7.49777020, 80.32462020, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:19', 0),
(1272, 1, 56, 7.49777050, 80.32461970, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:20', 0),
(1273, 1, 56, 7.49777400, 80.32461830, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:21', 0),
(1274, 1, 56, 7.49777360, 80.32461860, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:22', 0),
(1275, 1, 56, 7.49777350, 80.32461880, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:23', 0),
(1276, 1, 56, 7.49777310, 80.32461920, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:24', 0),
(1277, 1, 56, 7.49777270, 80.32461940, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:25', 0),
(1278, 1, 56, 7.49777260, 80.32461940, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:26', 0),
(1279, 1, 56, 7.49777260, 80.32461940, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:27', 0),
(1280, 1, 56, 7.49777260, 80.32461940, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:27', 0),
(1281, 1, 56, 7.49777250, 80.32461960, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:28', 0),
(1282, 1, 56, 7.49777240, 80.32461970, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:29', 0),
(1283, 1, 56, 7.49777300, 80.32461910, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:30', 0),
(1284, 1, 56, 7.49777300, 80.32461900, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:31', 0),
(1285, 1, 56, 7.49777300, 80.32461900, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:32', 0),
(1286, 1, 56, 7.49777290, 80.32461890, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:33', 0),
(1287, 1, 56, 7.49777030, 80.32462240, 0.86, NULL, 3, 28, 29, NULL, '2025-10-12 07:50:34', 0),
(1288, 1, 56, 7.49800930, 80.32425270, 5.76, NULL, 66, 28, 29, NULL, '2025-10-12 07:51:15', 0),
(1289, 1, 56, 7.49800930, 80.32425270, 5.76, NULL, 66, 28, 29, NULL, '2025-10-12 07:51:15', 0),
(1290, 1, 56, 7.49800930, 80.32425270, 5.76, NULL, 66, 28, 29, NULL, '2025-10-12 07:51:15', 0),
(1291, 1, 56, 7.49800930, 80.32425270, 5.76, NULL, 66, 28, 29, NULL, '2025-10-12 07:51:15', 0),
(1292, 1, 56, 7.49800930, 80.32425270, 5.76, NULL, 66, 28, 29, NULL, '2025-10-12 07:51:15', 0),
(1293, 1, 56, 7.49796770, 80.32473080, 2.81, NULL, 49, 28, 29, NULL, '2025-10-12 07:51:16', 0),
(1294, 1, 56, 7.49784540, 80.32467460, 2.99, NULL, 35, 28, 29, NULL, '2025-10-12 07:51:17', 0),
(1295, 1, 56, 7.49784540, 80.32467460, 2.99, NULL, 35, 28, 29, NULL, '2025-10-12 07:51:17', 0),
(1296, 1, 56, 7.49780800, 80.32467660, NULL, NULL, 28, 28, 29, NULL, '2025-10-12 07:51:18', 0),
(1297, 1, 56, 7.49779690, 80.32465000, NULL, NULL, 23, 28, 29, NULL, '2025-10-12 07:51:19', 1),
(1298, 1, 58, 7.49777880, 80.32460570, NULL, NULL, 20, 28, 29, NULL, '2025-10-12 08:28:41', 0),
(1299, 1, 58, 7.49777690, 80.32460330, 6.16, NULL, 25, 28, 29, NULL, '2025-10-12 08:28:41', 0),
(1300, 1, 58, 7.49779250, 80.32458800, NULL, NULL, 29, 28, 29, NULL, '2025-10-12 08:28:42', 0),
(1301, 1, 58, 7.49764500, 80.32463810, NULL, NULL, 22, 28, 29, NULL, '2025-10-12 08:28:43', 0),
(1302, 1, 58, 7.49769610, 80.32463050, NULL, NULL, 19, 28, 29, NULL, '2025-10-12 08:28:44', 0),
(1303, 1, 58, 7.49769610, 80.32463050, NULL, NULL, 19, 28, 29, NULL, '2025-10-12 08:28:44', 0),
(1304, 1, 58, 7.49769740, 80.32461940, NULL, NULL, 15, 28, 29, NULL, '2025-10-12 08:28:45', 0),
(1305, 1, 58, 7.49771750, 80.32461270, NULL, NULL, 13, 28, 29, NULL, '2025-10-12 08:28:46', 0),
(1306, 1, 58, 7.49772090, 80.32462130, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:47', 0),
(1307, 1, 58, 7.49771340, 80.32461770, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:48', 0),
(1308, 1, 58, 7.49771450, 80.32461860, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:49', 0),
(1309, 1, 58, 7.49772880, 80.32462150, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:50', 0),
(1310, 1, 58, 7.49773360, 80.32462330, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:51', 0),
(1311, 1, 58, 7.49773360, 80.32462250, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:52', 0),
(1312, 1, 58, 7.49773480, 80.32462340, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:53', 0),
(1313, 1, 58, 7.49773500, 80.32462330, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:54', 0),
(1314, 1, 58, 7.49773500, 80.32462330, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:54', 0),
(1315, 1, 58, 7.49773430, 80.32462330, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:55', 0),
(1316, 1, 58, 7.49773430, 80.32462330, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:56', 0),
(1317, 1, 58, 7.49773430, 80.32462330, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:57', 0),
(1318, 1, 58, 7.49773580, 80.32462270, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:58', 0),
(1319, 1, 58, 7.49773580, 80.32462270, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:28:59', 0),
(1320, 1, 58, 7.49773570, 80.32462250, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:29:00', 0),
(1321, 1, 58, 7.49773570, 80.32462260, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:29:01', 0),
(1322, 1, 58, 7.49773570, 80.32462250, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:29:02', 0),
(1323, 1, 58, 7.49773560, 80.32462240, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:29:03', 0),
(1324, 1, 58, 7.49773560, 80.32462230, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:29:04', 1),
(1325, 1, 58, 7.49773560, 80.32462230, NULL, NULL, 3, 28, 29, NULL, '2025-10-12 08:29:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE `bus_stops` (
  `stop_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `stop_name` varchar(100) NOT NULL,
  `stop_order` int(11) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `estimated_time_from_start` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`stop_id`, `route_id`, `stop_name`, `stop_order`, `latitude`, `longitude`, `landmark`, `estimated_time_from_start`, `is_active`) VALUES
(7, 1, 'Main Stand', 1, 7.48813300, 80.36424000, 'A', 1, 1),
(8, 1, 'Police Halt', 2, 7.48430400, 80.36351000, 'B', 3, 1),
(9, 1, 'Maliyadewa Girls Halt', 3, 7.48285700, 80.36209400, 'C', 5, 1),
(10, 1, 'Bawudalokamawatha Halt', 4, 7.48201100, 80.36014100, 'D', 7, 1),
(11, 1, 'Puwakgashandiya Stop', 5, 7.48454300, 80.35439600, 'E', 7, 1),
(12, 1, 'Layima', 6, 7.48855900, 80.35022200, 'F', 10, 1),
(14, 1, 'Kawudawaththa Junction', 7, 7.49370700, 80.34789500, 'G', 12, 1),
(15, 1, 'G', 8, 7.49460100, 80.34529700, 'H', 13, 1),
(16, 1, 'I', 9, 7.49611100, 80.34353500, 'II', 14, 1),
(17, 1, 'Veenus Kade', 10, 7.49617000, 80.34160700, 'J', 15, 1),
(18, 1, 'J', 11, 7.49686600, 80.33931600, 'JJ', 16, 1),
(19, 1, 'K', 12, 7.49802000, 80.33758300, 'KK', 17, 1),
(20, 1, 'L', 13, 7.49781300, 80.33552200, 'LL', 18, 1),
(21, 1, 'M', 14, 7.49864300, 80.33296200, 'MM', 19, 1),
(22, 1, 'Aswadduma Primary School', 15, 7.49951500, 80.33225400, 'School', 20, 1),
(23, 1, 'N', 16, 7.49898800, 80.33141100, 'NN', 21, 1),
(24, 1, 'O', 17, 7.49924900, 80.33001100, 'OO', 22, 1),
(25, 1, 'Santha Kade', 18, 7.49934500, 80.32836900, 'SANTHA', 21, 1),
(26, 1, 'Rejee Kade', 19, 7.49902600, 80.32659300, 'Rejee ', 22, 1),
(27, 1, 'Dhanushka Garage', 20, 7.49865900, 80.32613600, 'Dhanushka', 23, 1),
(28, 1, 'Kevin Digital Shop', 21, 7.49782400, 80.32461200, 'Kevin', 24, 1),
(29, 1, 'Kalyanarathna Kade', 22, 7.49765900, 80.32375400, 'Kalyanarathna', 25, 1),
(30, 1, 'P', 23, 7.49738800, 80.32335100, 'PP', 26, 1),
(31, 1, 'Yatiwahara Junction', 24, 7.49639800, 80.32222400, 'Yatiwahara ', 27, 1),
(32, 1, 'Q', 25, 7.49592500, 80.32267000, 'QQ', 28, 1),
(33, 1, 'Miris Mola', 26, 7.49524900, 80.32356600, 'Miris ', 29, 1),
(39, 1, 'R', 27, 7.49451500, 80.32377500, 'RR', 29, 1),
(40, 1, 'Alakoladeniya End Terminal', 28, 7.49319100, 80.32436500, 'Alakoladeniya End Terminal', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bus_trips`
--

CREATE TABLE `bus_trips` (
  `trip_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `trip_direction` enum('outbound','return') NOT NULL,
  `scheduled_start_time` datetime NOT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `scheduled_end_time` datetime NOT NULL DEFAULT (current_timestamp() + interval 2 hour),
  `actual_end_time` datetime DEFAULT NULL,
  `current_stop_id` int(11) DEFAULT NULL,
  `trip_status` enum('scheduled','in_progress','completed','cancelled','delayed') DEFAULT 'scheduled',
  `passenger_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_trips`
--

INSERT INTO `bus_trips` (`trip_id`, `bus_id`, `route_id`, `driver_id`, `trip_direction`, `scheduled_start_time`, `actual_start_time`, `scheduled_end_time`, `actual_end_time`, `current_stop_id`, `trip_status`, `passenger_count`, `created_at`) VALUES
(1, 1, 1, 2, 'outbound', '2025-09-08 19:08:25', NULL, '2025-09-08 21:08:25', '2025-09-08 19:09:06', 7, 'completed', 0, '2025-09-08 11:08:25'),
(2, 1, 1, 2, 'outbound', '2025-09-08 19:10:40', NULL, '2025-09-08 21:10:40', '2025-09-08 19:11:12', NULL, 'completed', 0, '2025-09-08 11:10:40'),
(3, 1, 1, 2, 'outbound', '2025-09-09 11:16:03', NULL, '2025-09-09 13:16:03', '2025-09-09 11:16:37', NULL, 'completed', 0, '2025-09-09 03:16:03'),
(4, 1, 1, 2, 'outbound', '2025-09-09 15:37:25', NULL, '2025-09-09 17:37:25', '2025-09-09 15:37:42', NULL, 'completed', 0, '2025-09-09 07:37:25'),
(5, 1, 1, 2, 'outbound', '2025-09-09 15:40:41', NULL, '2025-09-09 17:40:41', '2025-09-09 15:40:50', NULL, 'completed', 0, '2025-09-09 07:40:41'),
(6, 1, 1, 2, 'outbound', '2025-09-10 13:59:53', NULL, '2025-09-10 15:59:53', '2025-09-10 13:59:55', 7, 'completed', 0, '2025-09-10 05:59:53'),
(7, 1, 1, 2, 'outbound', '2025-09-12 12:35:33', '2025-09-12 10:05:39', '2025-09-12 12:35:33', NULL, NULL, 'completed', 0, '2025-09-12 04:36:35'),
(8, 1, 1, 2, 'outbound', '2025-09-13 10:42:34', '2025-09-13 08:12:36', '2025-09-13 10:42:34', NULL, 28, 'scheduled', 0, '2025-09-13 02:47:01'),
(9, 1, 1, 2, 'outbound', '2025-09-16 16:56:02', NULL, '2025-09-16 18:56:02', '2025-09-16 16:56:56', NULL, 'completed', 0, '2025-09-16 08:56:02'),
(10, 1, 1, 2, 'outbound', '2025-09-16 17:02:42', NULL, '2025-09-16 19:02:42', '2025-09-16 17:03:53', NULL, 'completed', 0, '2025-09-16 09:02:42'),
(11, 1, 1, 2, 'outbound', '2025-09-16 18:05:14', NULL, '2025-09-16 20:05:14', '2025-09-16 18:06:23', NULL, 'completed', 0, '2025-09-16 10:05:14'),
(12, 1, 1, 2, 'outbound', '2025-09-16 18:31:39', NULL, '2025-09-16 20:31:39', '2025-09-16 18:32:44', NULL, 'completed', 0, '2025-09-16 10:31:39'),
(13, 1, 1, 2, 'outbound', '2025-09-16 18:36:30', NULL, '2025-09-16 20:36:30', '2025-09-16 18:36:56', NULL, 'completed', 0, '2025-09-16 10:36:30'),
(14, 1, 1, 2, 'outbound', '2025-09-16 18:37:32', NULL, '2025-09-16 20:37:32', NULL, NULL, 'completed', 0, '2025-09-16 10:37:32'),
(15, 1, 1, 2, 'outbound', '2025-09-17 12:31:15', NULL, '2025-09-17 14:31:15', '2025-09-17 12:33:59', NULL, 'completed', 0, '2025-09-17 04:31:15'),
(16, 1, 1, 2, 'outbound', '2025-09-18 10:59:17', NULL, '2025-09-18 12:59:17', '2025-09-18 11:05:34', NULL, 'completed', 0, '2025-09-18 02:59:17'),
(17, 1, 1, 2, 'outbound', '2025-09-18 15:57:39', NULL, '2025-09-18 17:57:39', '2025-09-18 16:01:06', NULL, 'completed', 0, '2025-09-18 07:57:39'),
(18, 1, 1, 2, 'outbound', '2025-09-18 17:20:25', NULL, '2025-09-18 19:20:25', '2025-09-18 17:22:37', NULL, 'completed', 0, '2025-09-18 09:20:25'),
(19, 1, 1, 2, 'outbound', '2025-09-18 23:11:35', NULL, '2025-09-19 01:11:35', '2025-09-18 23:14:57', NULL, 'completed', 0, '2025-09-18 15:11:35'),
(20, 1, 1, 2, 'outbound', '2025-09-19 10:34:17', '2025-09-19 10:34:17', '2025-09-19 12:34:17', '2025-09-19 10:35:57', NULL, 'completed', 0, '2025-09-19 05:34:17'),
(21, 1, 1, 2, 'outbound', '2025-09-19 10:41:08', '2025-09-19 10:41:08', '2025-09-19 12:41:08', '2025-09-19 10:42:05', NULL, 'completed', 0, '2025-09-19 05:41:08'),
(22, 1, 1, 2, 'outbound', '2025-09-19 10:47:52', '2025-09-19 10:47:52', '2025-09-19 12:47:52', '2025-09-19 10:49:38', NULL, 'completed', 0, '2025-09-19 05:47:52'),
(28, 1, 1, 2, 'outbound', '2025-09-19 14:56:46', '2025-09-19 11:56:46', '2025-09-19 16:56:46', '2025-09-19 11:57:32', NULL, 'completed', 0, '2025-09-19 06:56:46'),
(29, 1, 1, 2, 'outbound', '2025-09-19 14:57:59', '2025-09-19 11:57:59', '2025-09-19 16:57:59', '2025-09-19 11:58:09', NULL, 'completed', 0, '2025-09-19 06:57:59'),
(30, 1, 1, 2, 'outbound', '2025-09-19 14:58:23', '2025-09-19 11:58:23', '2025-09-19 16:58:23', '2025-09-19 12:04:37', NULL, 'completed', 0, '2025-09-19 06:58:23'),
(31, 1, 1, 2, 'outbound', '2025-09-19 15:40:51', '2025-09-19 12:40:51', '2025-09-19 17:40:51', '2025-09-19 12:45:16', NULL, 'completed', 0, '2025-09-19 07:40:51'),
(32, 1, 1, 2, 'outbound', '2025-09-19 15:54:42', '2025-09-19 12:54:42', '2025-09-19 17:54:42', '2025-10-11 11:51:59', 28, 'completed', 0, '2025-09-19 07:54:42'),
(33, 1, 1, 2, 'outbound', '2025-09-19 16:09:11', '2025-09-19 13:09:11', '2025-09-19 18:09:11', '2025-10-11 11:29:44', 28, 'completed', 0, '2025-09-19 08:09:11'),
(34, 1, 1, 2, 'outbound', '2025-09-19 16:15:16', '2025-09-19 13:15:16', '2025-09-19 18:15:16', '2025-09-19 13:15:20', NULL, 'completed', 0, '2025-09-19 08:15:16'),
(35, 1, 1, 2, 'outbound', '2025-09-19 16:25:19', '2025-09-19 13:25:19', '2025-09-19 18:25:19', '2025-09-19 13:26:41', NULL, 'completed', 0, '2025-09-19 08:25:19'),
(36, 1, 1, 2, 'outbound', '2025-09-20 07:08:41', '2025-09-20 04:08:41', '2025-09-20 09:08:41', '2025-09-20 04:08:55', NULL, 'completed', 0, '2025-09-19 23:08:41'),
(37, 1, 1, 2, 'outbound', '2025-10-11 14:08:38', '2025-10-11 11:38:40', '2025-10-11 15:38:40', NULL, NULL, 'scheduled', 0, '2025-10-11 06:10:04'),
(38, 1, 1, 2, 'outbound', '2025-10-11 12:30:29', '2025-10-11 12:30:29', '2025-10-11 14:30:29', '2025-10-11 12:30:44', 28, 'completed', 0, '2025-10-11 07:00:29'),
(39, 1, 1, 2, 'outbound', '2025-10-11 12:35:57', '2025-10-11 12:35:57', '2025-10-11 14:35:57', '2025-10-11 12:37:06', 28, 'completed', 0, '2025-10-11 07:05:57'),
(40, 1, 1, 2, 'outbound', '2025-10-11 13:51:02', '2025-10-11 13:51:02', '2025-10-11 15:51:02', '2025-10-11 13:55:36', 28, 'completed', 0, '2025-10-11 08:21:02'),
(41, 1, 1, 2, 'outbound', '2025-10-11 14:26:17', '2025-10-11 14:26:17', '2025-10-11 16:26:17', '2025-10-11 14:27:22', 28, 'completed', 0, '2025-10-11 08:56:17'),
(42, 1, 1, 2, 'outbound', '2025-10-11 14:37:51', '2025-10-11 14:37:51', '2025-10-11 16:37:51', '2025-10-11 14:38:02', 28, 'completed', 0, '2025-10-11 09:07:51'),
(43, 1, 1, 2, 'outbound', '2025-10-11 14:54:51', '2025-10-11 14:54:51', '2025-10-11 16:54:51', '2025-10-11 14:55:16', 28, 'completed', 0, '2025-10-11 09:24:51'),
(44, 1, 1, 2, 'outbound', '2025-10-11 19:01:25', '2025-10-11 19:01:25', '2025-10-11 21:01:25', '2025-10-11 19:02:02', 28, 'completed', 0, '2025-10-11 13:31:25'),
(45, 1, 1, 2, 'outbound', '2025-10-12 05:40:00', NULL, '2025-10-12 07:40:00', NULL, NULL, 'scheduled', 0, '2025-10-12 00:10:45'),
(46, 1, 1, 2, 'outbound', '2025-10-12 05:45:12', '2025-10-12 05:45:12', '2025-10-12 07:45:12', '2025-10-12 05:45:46', 28, 'completed', 0, '2025-10-12 00:15:12'),
(47, 1, 1, 2, 'outbound', '2025-10-12 05:46:01', '2025-10-12 05:46:01', '2025-10-12 07:46:01', '2025-10-12 05:46:07', 28, 'completed', 0, '2025-10-12 00:16:01'),
(48, 1, 1, 2, 'outbound', '2025-10-12 07:28:45', '2025-10-12 07:28:45', '2025-10-12 09:28:45', '2025-10-12 07:29:13', 28, 'completed', 0, '2025-10-12 01:58:45'),
(49, 1, 1, 2, 'outbound', '2025-10-12 07:37:36', '2025-10-12 07:37:36', '2025-10-12 09:37:36', '2025-10-12 07:37:44', 28, 'completed', 0, '2025-10-12 02:07:36'),
(50, 1, 1, 2, 'outbound', '2025-10-12 07:43:35', '2025-10-12 07:43:35', '2025-10-12 09:43:35', '2025-10-12 07:43:49', 28, 'completed', 0, '2025-10-12 02:13:35'),
(51, 1, 1, 2, 'outbound', '2025-10-12 07:57:05', '2025-10-12 07:57:05', '2025-10-12 09:57:05', '2025-10-12 07:57:25', 28, 'completed', 0, '2025-10-12 02:27:05'),
(52, 1, 1, 10, 'outbound', '2025-10-12 08:38:00', NULL, '2025-10-12 10:38:00', NULL, NULL, 'scheduled', 0, '2025-10-12 03:08:44'),
(53, 1, 1, 10, 'outbound', '2025-10-12 08:38:00', NULL, '2025-10-12 10:38:00', NULL, NULL, 'scheduled', 0, '2025-10-12 03:09:04'),
(54, 1, 1, 10, 'outbound', '2025-10-12 08:40:02', '2025-10-12 08:40:02', '2025-10-12 10:40:02', '2025-10-12 08:40:12', 28, 'completed', 0, '2025-10-12 03:10:02'),
(55, 1, 1, 2, 'outbound', '2025-10-12 09:31:23', '2025-10-12 09:31:23', '2025-10-12 11:31:23', '2025-10-12 09:49:58', 28, 'completed', 0, '2025-10-12 04:01:23'),
(56, 1, 1, 2, 'outbound', '2025-10-12 13:19:36', '2025-10-12 13:19:36', '2025-10-12 15:19:36', '2025-10-12 13:21:19', 28, 'completed', 0, '2025-10-12 07:49:36'),
(57, 1, 1, 10, 'outbound', '2025-10-12 08:38:00', NULL, '2025-10-12 10:38:00', NULL, NULL, 'scheduled', 0, '2025-10-12 08:25:13'),
(58, 1, 1, 10, 'outbound', '2025-10-12 13:58:38', '2025-10-12 13:58:38', '2025-10-12 15:58:38', '2025-10-12 13:59:04', 28, 'completed', 0, '2025-10-12 08:28:38'),
(59, 1, 1, 2, 'outbound', '2025-10-13 13:12:00', NULL, '2025-10-13 15:12:00', NULL, NULL, 'scheduled', 0, '2025-10-13 07:43:26');

-- --------------------------------------------------------

--
-- Stand-in structure for view `current_bus_locations`
-- (See below for the actual view)
--
CREATE TABLE `current_bus_locations` (
`bus_id` int(11)
,`bus_number` varchar(20)
,`route_name` varchar(100)
,`latitude` decimal(10,8)
,`longitude` decimal(11,8)
,`speed_kmh` decimal(5,2)
,`current_stop` varchar(100)
,`next_stop` varchar(100)
,`estimated_arrival_time` datetime
,`last_update` timestamp
,`trip_status` enum('scheduled','in_progress','completed','cancelled','delayed')
,`trip_direction` enum('outbound','return')
);

-- --------------------------------------------------------

--
-- Table structure for table `driver_assignments`
--

CREATE TABLE `driver_assignments` (
  `assignment_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `shift_start` time NOT NULL,
  `shift_end` time NOT NULL,
  `assigned_date` date NOT NULL,
  `status` enum('scheduled','active','completed','cancelled') DEFAULT 'scheduled',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_assignments`
--

INSERT INTO `driver_assignments` (`assignment_id`, `driver_id`, `bus_id`, `route_id`, `shift_start`, `shift_end`, `assigned_date`, `status`, `created_at`) VALUES
(1, 2, 1, 1, '08:00:00', '17:00:00', '2025-09-12', 'scheduled', '2025-09-12 05:48:23'),
(2, 8, 1, 1, '12:36:30', '16:36:30', '2025-09-18', 'scheduled', '2025-09-18 07:07:29'),
(3, 5, 1, 1, '08:00:00', '17:00:00', '2025-09-18', 'scheduled', '2025-09-18 08:12:54'),
(4, 2, 1, 1, '08:00:00', '17:00:00', '2025-09-18', 'scheduled', '2025-09-18 08:59:26'),
(5, 6, 1, 1, '08:00:00', '17:00:00', '2025-09-18', 'scheduled', '2025-09-18 08:59:51'),
(6, 2, 1, 1, '13:36:54', '17:36:54', '2025-09-19', 'scheduled', '2025-09-19 08:07:40'),
(7, 2, 1, 1, '15:29:04', '23:29:04', '2025-10-11', 'active', '2025-10-11 06:59:52'),
(8, 2, 1, 1, '07:43:19', '21:43:19', '2025-10-12', 'active', '2025-10-12 00:14:05'),
(9, 10, 1, 1, '08:00:00', '20:00:00', '2025-10-12', 'active', '2025-10-12 03:07:38'),
(10, 2, 1, 1, '08:00:00', '17:00:00', '2025-10-13', 'scheduled', '2025-10-13 07:40:08');

-- --------------------------------------------------------

--
-- Stand-in structure for view `driver_today`
-- (See below for the actual view)
--
CREATE TABLE `driver_today` (
`driver_id` int(11)
,`bus_id` int(11)
,`bus_number` varchar(20)
,`route_id` int(11)
,`route_name` varchar(100)
,`shift_start` time
,`shift_end` time
);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_tracking`
--

CREATE TABLE `passenger_tracking` (
  `tracking_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `boarding_stop_id` int(11) NOT NULL,
  `alighting_stop_id` int(11) DEFAULT NULL,
  `boarding_time` datetime NOT NULL,
  `alighting_time` datetime DEFAULT NULL,
  `ticket_price` decimal(8,2) DEFAULT NULL,
  `payment_method` enum('cash','card','mobile','free') DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(100) NOT NULL,
  `route_code` varchar(20) NOT NULL,
  `start_location` varchar(100) NOT NULL,
  `end_location` varchar(100) NOT NULL,
  `total_distance_km` decimal(8,2) DEFAULT NULL,
  `estimated_duration_minutes` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`route_id`, `route_name`, `route_code`, `start_location`, `end_location`, `total_distance_km`, `estimated_duration_minutes`, `is_active`, `created_at`) VALUES
(1, 'Kurunagala to Alakoladeniya', 'KGA-ALK-001', 'Kurunagala Main Bus Stand', 'Alakoladeniya Terminal', 85.50, 120, 1, '2025-09-08 05:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `stop_arrivals`
--

CREATE TABLE `stop_arrivals` (
  `arrival_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `scheduled_arrival_time` datetime NOT NULL,
  `actual_arrival_time` datetime DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `passenger_count_on` int(11) DEFAULT 0,
  `passenger_count_off` int(11) DEFAULT 0,
  `delay_minutes` int(11) GENERATED ALWAYS AS (case when `actual_arrival_time` is not null then timestampdiff(MINUTE,`scheduled_arrival_time`,`actual_arrival_time`) else NULL end) STORED,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stop_arrivals`
--

INSERT INTO `stop_arrivals` (`arrival_id`, `trip_id`, `stop_id`, `scheduled_arrival_time`, `actual_arrival_time`, `departure_time`, `passenger_count_on`, `passenger_count_off`, `notes`) VALUES
(1, 1, 7, '2025-09-10 10:52:24', '2025-09-10 10:52:24', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_alerts`
--

CREATE TABLE `system_alerts` (
  `alert_id` int(11) NOT NULL,
  `alert_type` enum('delay','breakdown','emergency','route_change','maintenance') NOT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `severity` enum('low','medium','high','critical') DEFAULT 'medium',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `resolved_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `trip_progress`
-- (See below for the actual view)
--
CREATE TABLE `trip_progress` (
`trip_id` int(11)
,`bus_number` varchar(20)
,`route_name` varchar(100)
,`trip_direction` enum('outbound','return')
,`stops_completed` bigint(21)
,`total_stops` bigint(21)
,`progress_percentage` decimal(26,2)
,`trip_status` enum('scheduled','in_progress','completed','cancelled','delayed')
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `user_type` enum('passenger','driver','admin') NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `license_expiry` date DEFAULT NULL,
  `emergency_contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `user_type`, `full_name`, `email`, `phone`, `created_at`, `updated_at`, `is_active`, `last_login`, `license_number`, `license_expiry`, `emergency_contact`) VALUES
(1, 'admin', '$2a$12$PZtgB37UthFxHmLJJ/auGOb8AvanouyehFaopH5cw4t3kxqmXQuR6', 'admin', 'System Administrator', 'admin@bustrace.lk', '+94771234567', '2025-09-08 05:18:55', '2025-10-13 07:11:18', 1, '2025-10-13 07:11:18', NULL, NULL, NULL),
(2, 'driver1', '$2a$12$gFWRxrd1kAfbwlhLi7thVeEykOFzmcDdOzSeSlgqSy449VPOGJv8e', 'driver', 'Amal Silva', 'john@bustrace.lk', '+94771234568', '2025-09-08 05:18:55', '2025-10-13 07:32:42', 1, '2025-10-13 07:32:42', NULL, NULL, NULL),
(3, 'passenger1', '$2y$10$example_hash_pass1', 'passenger', 'Mary Fernando', 'mary@gmail.com', '+94771234569', '2025-09-08 05:18:55', '2025-09-08 05:18:55', 1, NULL, NULL, NULL, NULL),
(4, 'admin2', '$2a$12$/Bj90jm8SFn9ZCv3ytXLIONw92T89FDNqlxRh26KIIpRXgZCaG3hG', 'admin', 'admin eka', 'admieka@gmail.com', '0718032779', '2025-09-12 05:09:15', '2025-09-18 11:01:29', 1, '2025-09-18 11:01:29', NULL, NULL, NULL),
(5, 'driver2', '$2a$12$04dvRF5veiJtN1tbmDVjK.Sv5ZAuTP3AgDJh2lHXOyYeitQPU3/2q', 'driver', 'Kalpana Weerasinghe', 'kalpana@gmail.com', '0717032779', '2025-09-12 05:56:04', '2025-10-11 06:06:58', 1, '2025-10-11 06:06:58', NULL, NULL, NULL),
(6, 'driver3', '$2y$10$c.b0qLQT/TjwNrf/i9qAueOaN3yG8G50jMqYgHmzmoRXd0GtSC8bW', 'driver', 'Arunasiri Gamage', 'gamage@gmail.com', '0715098779', '2025-09-12 08:55:48', '2025-09-12 08:55:48', 1, NULL, NULL, NULL, NULL),
(8, 'kalpana', '$2a$12$ywbvOZIj3of5hnRTMYDjSOq3jP1thidqTk/5toJ6f2o9kOR36CYcC', 'driver', 'kalpana', 'kalpana1@gmail.com', NULL, '2025-09-18 03:35:22', '2025-09-18 07:08:04', 1, '2025-09-18 07:08:04', NULL, NULL, NULL),
(10, 'driver5', '$2a$12$2LPL9bcGtWGTh1k.c16zH.Lm7vlDA/WMxoIcGYMPmml8WGOuqrg/a', 'driver', 'driver5', 'driver5@gmail.cm', '0214755555', '2025-10-11 03:25:31', '2025-10-12 08:27:22', 1, '2025-10-12 08:27:22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`session_id`, `user_id`, `session_token`, `ip_address`, `user_agent`, `login_time`, `logout_time`, `is_active`) VALUES
(1, 2, 'de86774c3d6886ebb70031b46375e58fc484240139484a8d2084e60087963ce6', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:01:19', NULL, 1),
(2, 2, '6cda77b132151b3e5a164a44f09ba2530338b26b87913a537c7cde7266535d15', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:01:30', NULL, 1),
(3, 2, '93602bff7294d10a42d984c32ef60dbcc7a073ac7bca56d3ba02cd90ed23cd95', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:01:37', NULL, 1),
(4, 2, 'e59afeae0aaa8c9edd6b1446480eb3545d13544c786971f85017fd28f670ad9c', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:05:10', NULL, 1),
(5, 2, '0ca82401df4d6a814a22f77fc2d1ef4a57b212576c1f96f6ff509fff138f8e43', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:05:12', NULL, 1),
(6, 2, '2e15b888e5f9c0d18cbce994a2e25257c4fa83b22daaabafaedc4ec9223d4682', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:13:15', NULL, 1),
(7, 2, '510e5df45b150bceabcc2599aa14619c826a9e6a68a2b95757413a89ee516c91', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:13:18', NULL, 1),
(8, 2, 'f082ca15f763a9aeeeade2c5c183553f42659f46271aaf0b46a78ec55a0d2266', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-16 11:15:31', NULL, 1),
(9, 2, '7a0643be741bdb6799870b34f1ab2495063c2fa8ba50b440630840a2ccbd7d83', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:31:17', NULL, 1),
(10, 2, 'b20daf61360fceef87d01a2bbdb48a6f623e6c46adff93b121b7a2d8f0e02fa2', '212.104.231.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-16 11:31:18', NULL, 1),
(11, 2, 'c3bbae72cf921b4ca93164a6a1a104616b28c1a084c9d60f60da267360ee73b7', '124.43.17.79', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-17 04:01:48', NULL, 1),
(12, 2, '838f686b9c1d32f39230cb6696fb7c7dae0b788da88a7eedca3cd5e23de4bd7e', '124.43.17.79', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-17 04:01:50', NULL, 1),
(13, 2, 'e67fad4b566c152112c0c0236caf5210cd7c7817a3e0df7822560bed82c519f7', '212.104.231.128', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-17 04:23:32', NULL, 1),
(14, 2, 'a8be8f16c9b8ec04bc744edb098cdde4230a389720361d04e699e81da31b3b78', '212.104.231.128', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-17 04:23:34', NULL, 1),
(15, 2, 'd11aabaa2df70c3914c7548fe7885656b4f9396278b64bfa627f1d6a12e1a591', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-17 04:26:01', NULL, 1),
(16, 2, '00241d321e8700d0ba5eaf8a05cde821a30c7d4439bd6a2662e5d6e18511e176', '212.104.231.128', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-17 04:30:00', NULL, 1),
(17, 2, '4ebb05a353f718e2d90926a66448122e346296143d362bc762eeb715b3c74f91', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-17 04:40:37', NULL, 1),
(18, 2, 'cece827cc3989adbc28a66aba489dd4bf91124811e3a2322111614f262a2aeab', '61.245.170.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 02:59:10', NULL, 1),
(19, 8, '9dd9673ed15a40f5774bfc52360838240f2d42405fd579cf00f10948c7d47cca', '61.245.170.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 03:49:59', NULL, 1),
(20, 2, 'd5e92849b53d560f256e911f51b571ab2e99359921593e0ad2d9819d52b41666', '61.245.170.29', 'Mozilla/5.0 (Android 12; Mobile; rv:142.0) Gecko/142.0 Firefox/142.0', '2025-09-18 07:56:36', NULL, 1),
(21, 2, 'c599df82237384fd1abfec76a18670165c4e6083eb7fc38429fdfbf860fff036', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 08:55:28', NULL, 1),
(22, 2, '35e6145b580d4cc9afdbd8e3605a1d3eb60212754731195d1b9eb3cd00c0a537', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 09:01:06', NULL, 1),
(23, 2, '35f767acc1033e4fcdd7b8196617235c006f54400356149ead1d1376a5fe645a', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 09:01:09', NULL, 1),
(24, 5, 'cfa89e59a08c39fb06c28fb95f1195da1e3058c3a40bb15767cdce2f7f40a533', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 09:06:32', NULL, 1),
(25, 2, '952c18a8c8a54e3e7645cf1934bcb253d6e699bda09fb6391194c12a23567303', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 09:20:12', NULL, 1),
(26, 2, '39a08620c94b3a23fb9dbfa3ac2f6a5bdf9ddedaa771ab7be1164adf5f558087', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 15:11:21', NULL, 1),
(27, 2, 'a72b2031906ca9d8beda18e1ea2fd2112a85d8451ce14be3d39f9bf8be64de05', '61.245.170.29', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-18 15:11:23', NULL, 1),
(28, 2, 'a33923cfdb4219ce8ae7bd12e1c910ce06590e24a47461d98e1689f055bc5a4b', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 03:29:13', NULL, 1),
(29, 2, '6d45ae27f55953a4da59a9e9ed42b1c0d334c7caa9d0405188d15a7065696a42', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 03:29:14', NULL, 1),
(30, 2, '59a1b3a55c659a0465c47ec3535256d7c3e569abf6bb87ad54465d62bab2bc75', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2025-09-19 03:30:17', NULL, 1),
(31, 2, 'c4d3d81a08af37f4acf68057f9a969b8159d42a388a60a9ec09ec3788b280aa2', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2025-09-19 03:30:19', '2025-09-19 03:31:04', 0),
(32, 2, 'abbaab3c58c3e07dc631079afa799c4f3a1052fe5d7800eeeb00bbd38a178f8a', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2025-09-19 03:31:58', '2025-09-19 03:36:28', 0),
(33, 2, 'e71c2f233e18d5fc757125fad56c97e5557e8024ee575146e3b2058af1ecc784', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2025-09-19 03:36:42', NULL, 1),
(34, 2, '60c868d5546229e913308d2270d4b74273c6c629a34426bdd35ad4591b6a1829', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-19 03:55:40', '2025-09-19 04:08:45', 0),
(35, 2, '1db00114e65c50c1f6b712b8b8c3e53e61ab815c440300dd7df9fd5497153b0a', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-19 04:09:55', NULL, 1),
(36, 2, 'c57a19bec38f8b5c5924ba8e680f6247db6532dba0583e8d98a043d6a6a865c0', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 04:55:12', NULL, 1),
(37, 2, 'a8c4fb0bfd1ecca8eb42e6e28de3be6927ce6b18d655a612cc84550d34c726bb', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 04:55:14', '2025-09-19 05:14:32', 0),
(38, 2, '1b4d6081e2dcbb501757a9e05c8b0071c088bc2f334c0c11692c052bc0d1081d', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 05:14:37', NULL, 1),
(39, 2, '09c5434373ab24661c2a3a34db2a1ea27e480529192f8729f18fc7983eb4ed0e', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 05:14:39', '2025-09-19 05:34:03', 0),
(40, 2, 'b8ec6fbacd2d47ee09119d2e6b5633ecddb3f50faed1784964af37c3913ddb6d', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 05:34:08', NULL, 1),
(41, 2, '84cd4240825e815da8e016a890e8930f855b858ccf590ef9e8f37733fde489be', '43.250.243.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 05:34:10', '2025-09-19 05:51:11', 0),
(42, 2, '4808f90b53b9969e3d361743bc654cb1d50af4f40b2cce163260acc10776688c', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '2025-09-19 05:51:20', NULL, 1),
(43, 2, '618db12c9bb5edbc02dab24d70f35138058c4af49c5ec7408a5f732317a8b243', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 06:03:52', '2025-09-19 06:25:35', 0),
(44, 2, '53eda5f307e42ac1007bed02d025383e9a789ac3940c5f1a7c0cd8a6fd5679e7', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 06:34:02', '2025-09-19 06:44:45', 0),
(45, 2, 'cd3f5c548549008b7b2b729644f2c23f267cbf195ba34f05be17411608da926c', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 06:45:15', '2025-09-19 06:50:34', 0),
(46, 2, 'f64376a50b2bc17510b9261f8f54e900927b60e9b9b019d3e53dd155a6981719', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 06:50:50', '2025-09-19 06:56:14', 0),
(47, 2, '0177e14509ac33634254111cd27b13308c23c2103d7e44056379fa8e8e1c21f2', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 06:56:27', '2025-09-19 07:39:46', 0),
(48, 2, '642125634b566dbb32c25c7056b632dd0cd4e3166dc013279815e87806fd3471', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 07:40:24', NULL, 1),
(49, 2, 'ae79c5d61f771b126b38d795fbb62803b35354efd82debf0e55f46840a228a70', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 07:53:25', NULL, 1),
(50, 2, '5027be878ec61a570abc9d125cb6ea75ab80e712cdde952b3b34530adda3a2dd', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 07:53:27', '2025-09-19 08:08:43', 0),
(51, 2, '13bf8a95787668bfc1f1afc42ea2e38d4ebb25519c892cbe968421d2495d3a33', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 08:08:49', NULL, 1),
(52, 2, 'f10a9703c47c32300291a6b5cb7e4cb4419403df86efc70df52035f0fe5ba664', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 08:08:51', NULL, 1),
(53, 2, '83acdec5be6085f9aa5429cefaa49519bd0382c6e43089207a4673f6dfc0d07a', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 08:25:11', NULL, 1),
(54, 2, '285880a6dc9c59114a9c0c16d54e2f085ae26ea868de9f32cadcfbaf92fd1b13', '43.250.243.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 08:25:12', NULL, 1),
(55, 2, 'e24800cffc64268533547f6cc02dee6cb55de7938023650d66c16f2d77ff26d9', '61.245.169.50', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 13:28:48', NULL, 1),
(56, 2, '93df2be538d1a3c065f7bd6c331eb6bc841b937e81386d18f0cbeebec8cf2beb', '61.245.161.95', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 23:04:52', NULL, 1),
(57, 2, '89d8c726e3234d4c866c60c697f256568b5d6dc1580f0d5aa437e26d9c4274f0', '61.245.161.95', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 23:08:22', NULL, 1),
(58, 2, '799db527a5e71b7cca3162de5a066af188cba3e83465b6b0c90d3eabf8cf60c5', '61.245.161.95', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-09-19 23:08:24', '2025-09-19 23:09:23', 0),
(59, 2, 'd4eed89f7caf78866bcad3bef63562b0f936a0306bab342208bdf3ef879409e9', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 15:39:03', NULL, 1),
(60, 2, 'd4772f2907b9002036b2dee9f35aeb40b12557e433dbddee3a4bc1874e86ad4e', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-10-10 16:17:54', NULL, 1),
(61, 2, '9ce0a1a251364a9cdf1a5997dd3118826310d208e6458df62b2b31280a01a09d', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 21:39:13', NULL, 1),
(62, 2, '93f7ccd17439bbb5229e8b03950988d5a2c1f4f75b12a132a625a1ae1390cdfb', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 21:44:55', NULL, 1),
(63, 2, '4d0cef23e35c7f595157cb4c5e48ef44811147a2d2ea7a7866d9b8a32631478e', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 21:46:01', NULL, 1),
(64, 2, '47e915b26fd6b80f288e52e8014fe36dcc2d86c1f70f6b9a0f72920ed0d8cbe8', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 21:53:47', NULL, 1),
(65, 2, '8f51afff06189ca87777f5d149e9718ed0768ccfdf87b8e340827808c436b69b', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 21:56:29', NULL, 1),
(66, 2, '2c1ac272765edcb8168ce5a734d202a6a758d8d9fe5795da2b819be8f194805c', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-10 22:07:32', NULL, 1),
(67, 2, '2756deba50c35bddacc0b0af19855d6f5e1dd623990539bc3dc7aea2d65a820c', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:18:56', NULL, 1),
(68, 2, 'cce3c4885eb8d2804eef514f755872246f269d781f50ba1b4a23b4966fc840f5', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:19:17', NULL, 1),
(69, 2, '9752b8e609756bc38bf0f24c4216f16b5569b6ce001c9049fd9a1c04acb0e3be', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:20:19', NULL, 1),
(70, 2, 'd25eba6bb7c32482407c6359c453f62f9a19e6cdb0c898dbdd5039c44da4952e', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:22:23', NULL, 1),
(71, 5, 'c749f89db42d2057dccaf03e6c74fc0afc7ffe224567e50d0281254dd9af24b9', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:23:31', NULL, 1),
(72, 10, '066ef2046bb1658b4eeebbb9507a8d41bd23ec0d89fa4186d17b083ba36482c0', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:25:50', NULL, 1),
(73, 2, '3d83d16f282c814074e5e04a95f354283c9047321f44c337513d1f0c4df7d5ae', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:30:30', NULL, 1),
(74, 10, 'b24288bb244d6ad1342a1387cd00e698fdefcfcd6f8786ce97b5ab913328073b', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:34:23', '2025-10-11 03:34:48', 0),
(75, 2, '65956b6caf9fbab364fc70a1a4f1222d863abd97e62a613d73becfe5ecdea7ff', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:34:57', '2025-10-11 03:35:02', 0),
(76, 5, 'bf7b324c5fc3ce66a7ed46052e0a5b07d8f9947409b8961c1d866752635caa4a', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:36:03', '2025-10-11 03:38:30', 0),
(77, 2, '32abb5095de2972a932c71b047fa45d085a9f7f9e5584e4dd10a9d009ceb98a3', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:41:16', '2025-10-11 03:49:53', 0),
(78, 5, '1725236146e10777dc055f60280d07f09961b66f8ddc073b0df9a2947478f607', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:50:00', '2025-10-11 03:54:21', 0),
(79, 1, 'f607c938bb4e41e64888599069cd4496bf74710e5381f9ecaec0bb647b92551c', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:54:45', '2025-10-11 03:57:01', 0),
(80, 1, 'f34ec8eea342d2d989ea627c8bf7e31f69be8372cc8a93726256068d199606fa', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 03:57:09', '2025-10-11 04:03:37', 0),
(81, 1, '6d95faf81d55d2a0649009fdcd2b718e81ae415d1b88f2a25008b3743e558c15', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 04:03:43', '2025-10-11 04:21:44', 0),
(82, 1, '27648fecc50c67651838b53102df6943c064265eeaec5e0fda6bb5402f24b1f7', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 04:21:50', '2025-10-11 04:22:10', 0),
(83, 10, '9d7d05b0845d3fada790f195d16384f428eaaf022501b07c033f7f9c3a34b4e3', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 04:23:35', NULL, 1),
(84, 2, '1696f530b2fdc03cf20c855ee55f1b6180e17aac785fa199146b074976ad58d7', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 04:25:52', '2025-10-11 05:34:05', 0),
(85, 2, '6bcc678a26309d973cc0e2d9fb8e3fc53422e98750acfe9f5bb755fd93a43032', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-11 04:28:17', '2025-10-11 08:18:18', 0),
(86, 2, 'ad2b55054379850e17f99d462cd908b600974b7c812d6bee97a59c15dcd60782', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 05:34:17', '2025-10-11 05:35:13', 0),
(87, 2, '74b58dd3ea92a8c9fba49806e2d8beba322f55b907b9b5af7e74d86a877887d4', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 05:35:21', '2025-10-11 05:35:41', 0),
(88, 2, '2a41425f7f911fc97dd70f943bfe2bbecd23d77c86b3710ee140bdb5e0f4a210', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 05:35:48', NULL, 1),
(89, 5, 'b3e057092cea94376d159fdd45168a18687caaad09187f6ea95f1d0cbfa5d7cd', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 05:37:08', NULL, 1),
(90, 2, '36ddb3d56dbbb96c2b989756a3505093a0c438324f2ac83a70403dd1720128f4', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 05:55:39', '2025-10-11 05:57:37', 0),
(91, 2, '3bbdbe32558a52199a760116ac01e81981359a4a7d66484cecd28f6b8bde0daa', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-10-11 05:59:23', '2025-10-11 06:06:33', 0),
(92, 5, 'e1eb16682be38852f02703336b8320518ef5956f542994a2b6f7bcd3ee226402', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-10-11 06:06:58', '2025-10-11 06:20:28', 0),
(93, 2, 'af3226bb52b98c1bb25c27a559ddf538b17b6b39a4b4a1e8050f90f1793b9944', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-10-11 06:20:54', '2025-10-11 06:24:37', 0),
(94, 2, '9b933dff8fcdc5533dacb7c679d85768c38fe03bc25cb55db5c9d59b6ff216cc', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 06:35:43', '2025-10-11 06:36:18', 0),
(95, 2, '855daaa734eace680fb300055a628bfc9a197680c62045ce82c9215ad4637ac3', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 06:37:40', '2025-10-11 06:57:08', 0),
(96, 2, '59e7f64602c20e64c1233233d166f634a2421b19837935d338a6f2c4706f5517', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 06:57:18', '2025-10-11 07:00:00', 0),
(97, 2, '3c186e10861d839a702be2345ab7c844573d432ca6a1f4937dcd24501445e77f', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 07:00:06', '2025-10-11 07:00:57', 0),
(98, 2, '583ee937e24356260aac6492f1089cf5bf4ce2ea79a4350714f941c4f5548a3f', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2025-10-11 07:04:53', NULL, 1),
(99, 1, '5a067083e77abeedb0f65be4ebcbc8ffde68f7eda6206d67b243bf86836f75b1', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', '2025-10-11 07:36:33', NULL, 1),
(100, 2, 'ef11efefcf7ab6a470861e9c7f59826670a4c98bc5f310537fd411949db984f6', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-11 08:20:53', '2025-10-11 08:25:48', 0),
(101, 2, '2e98130759f1f26e8cfa426c597129aa620b9722275d6c3bad69e163b101295c', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-11 08:56:11', NULL, 1),
(102, 2, 'ef76e5c51f5bb3edcfa76c0197dad66022a4b17477d7ce78baf2e1fa3dd472f1', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-11 09:24:20', '2025-10-11 10:52:57', 0),
(103, 1, '2617650ac67d65cc8b80425280ac8894683d45569b9f170df2d03c20c1108376', '43.250.243.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-11 11:02:38', NULL, 1),
(104, 2, 'db92cea9da7762bc69aaf98c04994b5c5c3e41703bca80fd72257fef0f9e9d2a', '43.250.243.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-11 13:31:16', NULL, 1),
(105, 2, '32b6b1ecc5f26fbaae753aee32d871f3a8708f2e6676634e5b356fd90f47c4d8', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 00:09:33', '2025-10-12 00:11:07', 0),
(106, 2, 'fc5c8798b005c7d19dcbab20fbbcc30d0f6988d70d77fa8364b8b1b69c3989da', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 00:11:22', '2025-10-12 00:14:45', 0),
(107, 2, 'c54cdb7537fdd6eef93cc35c09da56e4f22b75afd31e8ecbd27960544503f714', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 00:15:02', NULL, 1),
(108, 2, 'f4468ccb7076193fa1a88d41bf123431830d3d012c5c03faca25af7a2a28dcfb', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 01:58:29', '2025-10-12 02:09:33', 0),
(109, 2, 'ea4c43179afad43dc4d4cf496fa0a40b01964bddcf7881f553792b181eff247c', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 02:12:42', '2025-10-12 02:13:56', 0),
(110, 2, '334667a403130e50e720f023357b8d9a06ce157c0df5ca8fa75c6cd237080a99', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 02:26:30', '2025-10-12 02:27:34', 0),
(111, 10, '47238aedbb6045179259f24cbfba31fd604f4ec509baeea4e7d6eb4f73c0d85a', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 03:09:41', '2025-10-12 03:10:42', 0),
(112, 2, 'a002d5c6a3c8cc298fe0cae0e17682925a26c0eeb3f8b82752000cf91dfbe041', '212.104.231.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 04:01:17', NULL, 1),
(113, 2, '77c0f3a700deb3b41f08ed208a353958da7474f3aa29a13bd90099ddea083f3b', '212.104.231.68', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 07:48:35', '2025-10-12 08:27:00', 0),
(114, 10, '630e54fa8450d955b5646fd414ac96c66bab1bc1b8ca44c1d9bcb217f76aaec2', '212.104.231.68', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2025-10-12 08:27:22', NULL, 1),
(115, 1, '00ae95a262e228e8cd7509c29b2b08386cc9d251ffef94ae94e261785fcaee82', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 07:11:18', NULL, 1),
(116, 2, '3df3e784efc8535ae76874406a833c02b701d90f5063b38a9548cd2621b18823', '124.43.17.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 07:32:42', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`),
  ADD UNIQUE KEY `bus_number` (`bus_number`),
  ADD UNIQUE KEY `registration_number` (`registration_number`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `conductor_id` (`conductor_id`),
  ADD KEY `idx_buses_route` (`route_id`);

--
-- Indexes for table `bus_locations`
--
ALTER TABLE `bus_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `trip_id` (`trip_id`),
  ADD KEY `current_stop_id` (`current_stop_id`),
  ADD KEY `next_stop_id` (`next_stop_id`),
  ADD KEY `idx_bus_timestamp` (`bus_id`,`timestamp`),
  ADD KEY `idx_current_location` (`bus_id`,`is_current_location`),
  ADD KEY `idx_bus_locations_timestamp` (`timestamp`);

--
-- Indexes for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD PRIMARY KEY (`stop_id`),
  ADD UNIQUE KEY `unique_route_order` (`route_id`,`stop_order`);

--
-- Indexes for table `bus_trips`
--
ALTER TABLE `bus_trips`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `bus_id` (`bus_id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `current_stop_id` (`current_stop_id`),
  ADD KEY `idx_trips_status` (`trip_status`);

--
-- Indexes for table `driver_assignments`
--
ALTER TABLE `driver_assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `bus_id` (`bus_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `passenger_tracking`
--
ALTER TABLE `passenger_tracking`
  ADD PRIMARY KEY (`tracking_id`),
  ADD KEY `trip_id` (`trip_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `boarding_stop_id` (`boarding_stop_id`),
  ADD KEY `alighting_stop_id` (`alighting_stop_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`),
  ADD UNIQUE KEY `route_code` (`route_code`);

--
-- Indexes for table `stop_arrivals`
--
ALTER TABLE `stop_arrivals`
  ADD PRIMARY KEY (`arrival_id`),
  ADD UNIQUE KEY `unique_trip_stop` (`trip_id`,`stop_id`),
  ADD KEY `stop_id` (`stop_id`),
  ADD KEY `idx_stop_arrivals_trip` (`trip_id`);

--
-- Indexes for table `system_alerts`
--
ALTER TABLE `system_alerts`
  ADD PRIMARY KEY (`alert_id`),
  ADD KEY `bus_id` (`bus_id`),
  ADD KEY `trip_id` (`trip_id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_type` (`user_type`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_token` (`session_token`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=753;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus_locations`
--
ALTER TABLE `bus_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1326;

--
-- AUTO_INCREMENT for table `bus_stops`
--
ALTER TABLE `bus_stops`
  MODIFY `stop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bus_trips`
--
ALTER TABLE `bus_trips`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `driver_assignments`
--
ALTER TABLE `driver_assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `passenger_tracking`
--
ALTER TABLE `passenger_tracking`
  MODIFY `tracking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stop_arrivals`
--
ALTER TABLE `stop_arrivals`
  MODIFY `arrival_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_alerts`
--
ALTER TABLE `system_alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

-- --------------------------------------------------------

--
-- Structure for view `current_bus_locations`
--
DROP TABLE IF EXISTS `current_bus_locations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `current_bus_locations`  AS SELECT `b`.`bus_id` AS `bus_id`, `b`.`bus_number` AS `bus_number`, `r`.`route_name` AS `route_name`, `bl`.`latitude` AS `latitude`, `bl`.`longitude` AS `longitude`, `bl`.`speed_kmh` AS `speed_kmh`, `bs_current`.`stop_name` AS `current_stop`, `bs_next`.`stop_name` AS `next_stop`, `bl`.`estimated_arrival_time` AS `estimated_arrival_time`, `bl`.`timestamp` AS `last_update`, `t`.`trip_status` AS `trip_status`, `t`.`trip_direction` AS `trip_direction` FROM (((((`buses` `b` join `routes` `r` on(`b`.`route_id` = `r`.`route_id`)) join `bus_trips` `t` on(`b`.`bus_id` = `t`.`bus_id` and `t`.`trip_status` = 'in_progress')) join `bus_locations` `bl` on(`b`.`bus_id` = `bl`.`bus_id` and `bl`.`is_current_location` = 1)) left join `bus_stops` `bs_current` on(`bl`.`current_stop_id` = `bs_current`.`stop_id`)) left join `bus_stops` `bs_next` on(`bl`.`next_stop_id` = `bs_next`.`stop_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `driver_today`
--
DROP TABLE IF EXISTS `driver_today`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `driver_today`  AS SELECT `da`.`driver_id` AS `driver_id`, `da`.`bus_id` AS `bus_id`, `b`.`bus_number` AS `bus_number`, `b`.`route_id` AS `route_id`, `r`.`route_name` AS `route_name`, `da`.`shift_start` AS `shift_start`, `da`.`shift_end` AS `shift_end` FROM ((`driver_assignments` `da` join `buses` `b` on(`b`.`bus_id` = `da`.`bus_id`)) join `routes` `r` on(`r`.`route_id` = `da`.`route_id`)) WHERE `da`.`assigned_date` = curdate() AND `da`.`status` = 'active' ;

-- --------------------------------------------------------

--
-- Structure for view `trip_progress`
--
DROP TABLE IF EXISTS `trip_progress`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trip_progress`  AS SELECT `t`.`trip_id` AS `trip_id`, `b`.`bus_number` AS `bus_number`, `r`.`route_name` AS `route_name`, `t`.`trip_direction` AS `trip_direction`, count(`sa`.`arrival_id`) AS `stops_completed`, (select count(0) from `bus_stops` where `bus_stops`.`route_id` = `t`.`route_id`) AS `total_stops`, round(count(`sa`.`arrival_id`) / (select count(0) from `bus_stops` where `bus_stops`.`route_id` = `t`.`route_id`) * 100,2) AS `progress_percentage`, `t`.`trip_status` AS `trip_status` FROM (((`bus_trips` `t` join `buses` `b` on(`t`.`bus_id` = `b`.`bus_id`)) join `routes` `r` on(`t`.`route_id` = `r`.`route_id`)) left join `stop_arrivals` `sa` on(`t`.`trip_id` = `sa`.`trip_id` and `sa`.`actual_arrival_time` is not null)) GROUP BY `t`.`trip_id` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`),
  ADD CONSTRAINT `buses_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `buses_ibfk_3` FOREIGN KEY (`conductor_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `bus_locations`
--
ALTER TABLE `bus_locations`
  ADD CONSTRAINT `bus_locations_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `bus_locations_ibfk_2` FOREIGN KEY (`trip_id`) REFERENCES `bus_trips` (`trip_id`),
  ADD CONSTRAINT `bus_locations_ibfk_3` FOREIGN KEY (`current_stop_id`) REFERENCES `bus_stops` (`stop_id`),
  ADD CONSTRAINT `bus_locations_ibfk_4` FOREIGN KEY (`next_stop_id`) REFERENCES `bus_stops` (`stop_id`);

--
-- Constraints for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD CONSTRAINT `bus_stops_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`);

--
-- Constraints for table `bus_trips`
--
ALTER TABLE `bus_trips`
  ADD CONSTRAINT `bus_trips_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `bus_trips_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`),
  ADD CONSTRAINT `bus_trips_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `bus_trips_ibfk_4` FOREIGN KEY (`current_stop_id`) REFERENCES `bus_stops` (`stop_id`);

--
-- Constraints for table `driver_assignments`
--
ALTER TABLE `driver_assignments`
  ADD CONSTRAINT `driver_assignments_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `driver_assignments_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `driver_assignments_ibfk_3` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`);

--
-- Constraints for table `passenger_tracking`
--
ALTER TABLE `passenger_tracking`
  ADD CONSTRAINT `passenger_tracking_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `bus_trips` (`trip_id`),
  ADD CONSTRAINT `passenger_tracking_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_tracking_ibfk_3` FOREIGN KEY (`boarding_stop_id`) REFERENCES `bus_stops` (`stop_id`),
  ADD CONSTRAINT `passenger_tracking_ibfk_4` FOREIGN KEY (`alighting_stop_id`) REFERENCES `bus_stops` (`stop_id`);

--
-- Constraints for table `stop_arrivals`
--
ALTER TABLE `stop_arrivals`
  ADD CONSTRAINT `stop_arrivals_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `bus_trips` (`trip_id`),
  ADD CONSTRAINT `stop_arrivals_ibfk_2` FOREIGN KEY (`stop_id`) REFERENCES `bus_stops` (`stop_id`);

--
-- Constraints for table `system_alerts`
--
ALTER TABLE `system_alerts`
  ADD CONSTRAINT `system_alerts_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `system_alerts_ibfk_2` FOREIGN KEY (`trip_id`) REFERENCES `bus_trips` (`trip_id`),
  ADD CONSTRAINT `system_alerts_ibfk_3` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`),
  ADD CONSTRAINT `system_alerts_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_old_bus_locations_event` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-18 15:18:30' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    DELETE FROM bus_locations
    WHERE timestamp < DATE_SUB(NOW(), INTERVAL 3 DAY);
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
