-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 05:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onway_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `advertisement_id` int(11) NOT NULL,
  `advertisement_title` varchar(20) NOT NULL,
  `image_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`advertisement_id`, `advertisement_title`, `image_url`) VALUES
(1, 'Foodmood', 'images/images.jpg'),
(2, 'mood', 'images/images.jpg'),
(3, 'mood', 'images/images.jpg'),
(5, 'ffdfdf', 'images/Lexus most-watched ad 12-2-20.jpg 2.png'),
(6, 'ffdfdf', 'images/Lexus most-watched ad 12-2-20.jpg 2.png'),
(7, 'sss', 'images/Lexus most-watched ad 12-2-20.jpg 2.png'),
(8, 'mood', 'images/images.jpg'),
(9, 'moo', 'images/images.jpg'),
(10, 'sdsd', 'images/Lexus most-watched ad 12-2-20.jpg 2.png'),
(11, 'icp', 'images/Lexus most-watched ad 12-2-20.jpg 2.png');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'failed',
  `booking_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `total`, `status`, `booking_date`) VALUES
(6, 11, 600, 'paid', '2023-08-13 14:59:47'),
(7, 34, 200, 'failed', '2024-02-03 23:21:32'),
(8, 34, 200, 'failed', '2024-02-03 23:22:30'),
(9, 34, 200, 'failed', '2024-02-04 15:09:57'),
(10, 34, 200, 'failed', '2024-02-04 15:11:41'),
(11, 34, 200, 'failed', '2024-02-04 15:14:35'),
(12, 34, 200, 'failed', '2024-02-04 15:17:53'),
(13, 34, 200, 'failed', '2024-02-04 15:18:48'),
(14, 34, 200, 'failed', '2024-02-04 15:21:04'),
(15, 34, 200, 'failed', '2024-02-04 15:27:25'),
(16, 34, 200, 'failed', '2024-02-04 15:35:03'),
(17, 34, 200, 'failed', '2024-02-04 15:36:58'),
(18, 34, 250, 'failed', '2024-02-04 15:38:45'),
(19, 34, 50, 'failed', '2024-02-04 15:38:51'),
(20, 34, 50, 'failed', '2024-02-04 16:02:31'),
(21, 34, 50, 'failed', '2024-02-04 17:25:04'),
(22, 34, 50, 'failed', '2024-02-04 17:44:18'),
(23, 34, 50, 'failed', '2024-02-04 19:54:25'),
(24, 34, 50, 'failed', '2024-02-04 19:58:05'),
(25, 34, 50, 'failed', '2024-02-04 20:20:23'),
(26, 36, 50, 'failed', '2024-02-04 22:21:33'),
(27, 34, 222, 'failed', '2024-02-19 14:02:50'),
(28, 34, 50, 'failed', '2024-02-19 14:03:56'),
(29, 34, 50, 'failed', '2024-02-19 14:08:03'),
(30, 34, 50, 'failed', '2024-02-22 13:16:51'),
(31, 34, 50, 'failed', '2024-02-22 14:37:14'),
(32, 34, 500, 'failed', '2024-02-27 09:18:39'),
(33, 34, 50, 'failed', '2024-02-28 18:47:47'),
(34, 34, 50, 'failed', '2024-02-28 18:54:21'),
(35, 34, 100, 'failed', '2024-02-28 18:55:25'),
(36, 34, 500, 'failed', '2024-03-01 18:45:01'),
(37, 34, 10500, 'failed', '2024-03-06 09:47:14'),
(38, 34, 10500, 'failed', '2024-03-06 09:47:16'),
(39, 34, 10500, 'failed', '2024-03-06 09:47:16'),
(40, 34, 10500, 'failed', '2024-03-06 09:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `booking_detail_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `line_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`booking_detail_id`, `vehicle_id`, `booking_id`, `quantity`, `line_total`) VALUES
(22, 23, 18, 1, 50),
(23, 23, 19, 1, 50),
(24, 23, 20, 1, 50),
(25, 23, 21, 1, 50),
(26, 23, 22, 1, 50),
(27, 23, 23, 1, 50),
(28, 23, 24, 1, 50),
(29, 23, 25, 1, 50),
(30, 23, 26, 1, 50),
(31, 24, 27, 1, 111),
(32, 24, 27, 1, 111),
(33, 23, 28, 1, 50),
(34, 23, 29, 1, 50),
(35, 23, 30, 1, 50),
(36, 23, 31, 1, 50),
(37, 19, 32, 1, 500),
(38, 23, 33, 1, 50),
(39, 23, 34, 1, 50),
(40, 23, 35, 2, 100),
(41, 19, 36, 1, 500),
(42, 19, 37, 1, 500),
(43, 21, 37, 5, 10000),
(44, 19, 38, 1, 500),
(45, 21, 38, 5, 10000),
(46, 19, 39, 1, 500),
(47, 21, 39, 5, 10000),
(48, 19, 40, 1, 500),
(49, 21, 40, 5, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`, `isDeleted`) VALUES
(1, 'Dress', 1),
(2, 'Shoes', 1),
(3, 'Books', 1),
(4, 'Food', 1),
(5, 'Watch', 0),
(6, 'Electronics', 1),
(7, 'Chair', 1),
(8, 'Table', 1),
(9, 'Mouse', 1),
(10, 'Motercycle', 1),
(11, 'rose', 1),
(12, 'solar', 1),
(13, '', 1),
(14, 'house', 0),
(15, 'people', 0),
(16, 'asn', 1),
(17, 'suv', 1),
(18, 'Car', 1),
(19, 'cscsssds', 0),
(20, 'ankit', 0),
(21, 'hero123', 1),
(22, 'Sedan', 1),
(23, 'Seda', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_codes`
--

CREATE TABLE `otp_codes` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `other_data` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `booking_id`, `amount`, `other_data`) VALUES
(6, 11, 6, 100, 'PaymentSuccessModel{idx: ZjanWcT7dLR5dGUvczkHE2, amount: 10000, mobile: 98XXXXX177, productIdentity: 6, productName: Payment for order, token: ujmiNJVWwAJWSoS3fmTZ4E, additionalData: {}}');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_token`
--

CREATE TABLE `personal_access_token` (
  `token_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_access_token`
--

INSERT INTO `personal_access_token` (`token_id`, `token`, `user_id`) VALUES
(16, '8aec9cfe13be147648b8b48ce6fa37f3', 10),
(17, '1d9cae5d83d32fddaed5f0cef737d5be', 10),
(18, '0299b1ffa80d66e2be22c8ca86b0dfa6', 10),
(19, '4ee669150501dbd4bab8fceb67e91890', 10),
(20, '098fcaa7b0265a34cacbfd47ffedba0d', 10),
(21, 'b3b82b66b67d15fa160cfef72aea2883', 10),
(22, '5b5497dcda42bbd57adc6bd5eda125c2', 10),
(23, '8258f32609b1a3dfe0116f560b8cfdcd', 10),
(24, 'd3b40c0a1f90f67c863a4e4acb5c58e8', 10),
(25, 'e4e294f03611dcca0c2cff7ad596fa2b', 10),
(26, '67acd80739584d8ae176bab3fb21e6b3', 11),
(27, '07fe946fe66a9b41f37e10111adee5aa', 11),
(28, 'e65e82ca14c4e89174c91416b7951ed7', 11),
(29, '50b0af2eb6ba2837d09fbf24742c72a9', 10),
(30, '780446675cb7dbb62d8a9a547c90e16d', 10),
(31, 'f66f1cf1c9874ea2e7f49baf22c4c5ca', 10),
(32, '6b6bf07465f42a2bf651d4341ef35621', 10),
(33, '204f1eef21a2f0b445d155151eb23a0a', 10),
(34, 'af0400bc33aa4ce704ae718a89674cd3', 10),
(35, '56edf010bbcb6b7891dee0e7110eea0b', 10),
(36, '3c73d7a1363f28a5459443ef5b6ce85d', 10),
(37, '4a6ce35511307d01fce464ecf6ac1e92', 10),
(38, '8de016b73f02cf8f427925dbc34447d8', 10),
(39, '363433edd9a55b260da64aecc5c06cf5', 10),
(40, 'c9c65191489fde3e8d0d94122ec94269', 10),
(41, '34788adf2d06762cb37c528417af01e1', 10),
(42, '56e457c8c9b977e26b664dffc379800a', 11),
(43, '39594f2307f036a7edfd1088a1892ae0', 11),
(44, 'd35ac306599276871be3072bcee77cc5', 11),
(45, '32ed24482aa50e8b8c5b52c931736c65', 10),
(46, 'c51e416c237fdc3e88d7ee9749bdf42f', 10),
(47, 'ad1a46f68e008bc4609ac61dffab2d4e', 11),
(48, 'b2dcc43a7e009d274f9a127913917c25', 10),
(49, 'c906e66db2f524a80dd513447da60dc3', 10),
(50, 'aa958f4e8e41d9a7b01e2403550f8c93', 11),
(51, 'b591e6afb23d690121ce594ca5b9c2fb', 10),
(52, '73b29ec2364d371441dc69462656d839', 11),
(53, 'caaa1706af276860ead23c2f79e07999', 10),
(54, '3c3627887776b13a89cd116cf6bcaf1c', 11),
(55, '6c2f1d9403fc1af89f0a1fd64be10375', 10),
(56, 'b382f476b560f953e00023a0514076b4', 10),
(57, 'ff4db9dd95cd515c675b4f74f8f45346', 10),
(58, '9bb36869bb7ce3a9eb8c4693e05d4d2a', 11),
(59, 'daa9b4433658f556be399971c74b2365', 10),
(60, 'bef0c7404a4fdd09edc63ce518662e6b', 10),
(61, '3e7e1ef15468901394b93d90766160d4', 11),
(62, 'fbba6aefc41483f96561b9025f6da88c', 10),
(63, '860514002f8a315c1e20f9e2eae1c494', 11),
(64, '1145168207bec1fab7d7f2370d142a87', 14),
(65, '2ae67c1bde35197aafd8225222da77a6', 14),
(66, 'd074c54406b3604cc3d2267048cf0043', 14),
(67, '206ead50578189c60e96a0a7c04aa905', 14),
(68, '69da2eda1407d7e9ab98d75f49e955f1', 14),
(69, '844d542398019b76ad1de390daeb5157', 14),
(70, '03d91fa457bea8bbe79ff958445f3bf1', 14),
(71, 'fe4f2df13c918aab78594baf1a1b8354', 14),
(72, '6b1bc88c763ae784f1183c51e82a37f6', 14),
(73, '1b2daa9d750c53fda45a7efeaac376fa', 14),
(74, 'bede54b17da62b5450b9c420c4ed5d61', 14),
(75, 'b94fa51a0f2fd2caeb6d468f2d268f3e', 14),
(76, '995f817bfa9e8e251386c4f1faaf7897', 17),
(77, '5736b932c32cff77b20eaa799aa28523', 18),
(78, 'e152ea00f6d8cf07af9ceb2c5fb4a504', 18),
(79, 'ac09f26098be2d05e24e3dcaef66acbb', 17),
(80, '1109007a4441f314049185de57377ab1', 17),
(81, 'c762e3fbbb496038b70d9d410ef8717a', 17),
(82, '69fda73fc339c18648916301dc4ac8ff', 18),
(83, 'c121f3838caadf50de2a85010b744f25', 17),
(84, '3dc2557508d1133cf9e9a4babc9e4bb2', 18),
(85, '4b77567dfe0717ba8245eba31bad7151', 27),
(86, '015838f6f6ae3ba33b5fb792bc35d041', 28),
(87, '353b65bf362a723d8c00c5236aade99f', 28),
(88, '1111acdcb48696655ba3819d19e852fe', 28),
(89, '0e3136a57b6630e9eccff1326d03ea33', 28),
(90, 'dfe6ce1068ad048f64392182a3cc94bb', 28),
(91, '94a219e3b3f0b15da5351712e6b9e4df', 28),
(92, '392f0f420821d3eb786f5c8b3911bd08', 18),
(93, '332d2af9ce42ead4662d9df934e08361', 28),
(94, '43f0949e7a1b1ce9da789cd84b7f34aa', 28),
(95, 'eab3c752d49accc8e6f0fffc5c560553', 28),
(96, '963f837ca3c67ed32c1fdebc9911398f', 28),
(97, '7f894217d7f87cff573ce274270de851', 28),
(98, 'ef40df5dcd2bc0b4032fb4d0db17e2b5', 28),
(99, 'caf3d2162d762acb87ea246057a301be', 28),
(100, '0dedf69c80a96f3e61999de53ae3c4e7', 28),
(101, 'f648d1a466dfc7c24c81e629dae59bac', 18),
(102, 'ca7e9d155bb19e6380ffc49aaa342088', 28),
(103, 'a13f6e5c7bc34e59d5b3e6478eea11f5', 28),
(104, '40a94174f67065a665e93f2c647879fc', 28),
(105, '9c45165118d13dccb451c2cfcea7fda3', 32),
(106, 'f5e3858cbd635d3a1c03567ee48667b7', 32),
(107, 'd55cf0c10b516f8fc32c101570cd5b26', 32),
(108, 'a553dfee37938a3e04e6f2e5bd10c0af', 32),
(109, 'dfb28119a2e2e76d66662963da2c9501', 34),
(110, '92b9362343b2c28a3a78a6897c361e88', 35),
(111, '333d2273bdd88fefb9120a00de020f9b', 34),
(112, 'fe4566720a7c69ae99f840ae5f1b6d78', 35),
(113, '3bf0c67bbcca531aff1ecdbc8fe00815', 34),
(114, '78176a1cbfa88a62480b927d46bfa18e', 34),
(115, 'e39af33d02fbae5e17f65ca0fa3bbd3a', 36),
(116, '720db878f2bf1e014704239f2cb177a4', 35),
(117, '106928f60b54577440e842da1671d0b8', 35),
(118, '785a0f2126ca6015065d6b6618dc66d9', 35),
(119, 'b37aecbd32be005ded19e20969aa177c', 35),
(120, '0d0e2345c1ef2405268f2b3d6c06f5ee', 35),
(121, 'fb137ab220d4e311cfa4ace4ccbcd222', 34),
(122, '6a75c6e131b6e7552acf51befee3029e', 35),
(123, 'ea0eaa3731c69de87e0b326a0b25c607', 34),
(124, 'de9be49bc4c531b313c1fad8b08c484e', 34),
(125, '2b94f9f1e9f01e6b9827f72b13984136', 34),
(126, 'c6c84c8f1788e37577db390d3b95b4ac', 35),
(127, 'e97fd5e85b2ed84a26b3d4b845992a18', 34),
(128, '95e6c1194f2caa60894c9fdb491203da', 34),
(129, 'f3a812567992b29166e71025541a26d1', 34),
(130, '391a2b97cdcf6083974f9b75ece8be82', 34),
(131, 'ff5e00ef81966c29ef24f30fcd626cf4', 34),
(132, '642b2ff4b84b88284fdc7a440a1d93ce', 34),
(133, 'b248606e1a6f2efb827c75a1411a7a99', 34),
(134, '02689d5ea15016e886abc65d7369d059', 34),
(135, 'd84bd90e2deeb2112143690250dbbbc6', 34),
(136, '03582917f0c1b534e56c5b0da241cab6', 35),
(137, '6faa66df653cebc28215e18b06c5f0cd', 34),
(138, '7a8d778c639e384cf642142a50097945', 35),
(139, '116afbeaa2521874ce1be26fb0adf99c', 35),
(140, 'ed0cd33d6cdbf04c78f06fda7ba97746', 34),
(141, '335455b0b5c951ce09468c90095ea3a9', 34),
(142, '905c6f1b77b866a277d4ac969d592903', 35),
(143, '8bdee5a3b9df015d8b796cbcf94e300b', 35),
(144, '43800903f601ae228b5e553b4f5acd5d', 34),
(145, '1c85c007bcb907260aea07f599f8336e', 35),
(146, '251db15fc98ac57a74610e0855ef2999', 34),
(147, 'c8c6d775e491b9a06953565e3222101a', 35),
(148, '37080389b4aa6a0350cf4928871cc78a', 34),
(149, '8a9eaaee9903c4bc1953663604fa6f79', 35),
(150, '94737c29691f2561f68b492e2ae986c7', 34),
(151, '2884953ec3cd72a44f7397a76ac429ab', 35),
(152, 'd9c6dc7598c120f510f52fee721af1ec', 35),
(153, '6d369c300cbe78c5650c3456b3c5f540', 35),
(154, '8625d3e0b05a4dd1ca53c52e6d72efa6', 34),
(155, '7c55abeebf8e5ac3edffaf0ebe8545f4', 35),
(156, '879ec1d4fd2eb19d1526513f0149f1ef', 35),
(157, '6b9a10e102abcf7bf9eb60f8534d5329', 35),
(158, '07226caa706c950a57756eb25e9e651c', 35),
(159, '7b0696900f24081576aba6777849940d', 35),
(160, '0114cecae89933ec96c325f5d7c914d2', 34),
(161, 'abad5ba1b5c084676e092c610f8e18fa', 35),
(162, '3f22fad019d2e1757e324acf71ba97bc', 35),
(163, '0abd93137357556f16c1a668cc51deb4', 34),
(164, '7521f8b97541a306967ca1c58d705b61', 35),
(165, 'd018ef2801039e365af2705acf067a27', 35),
(166, 'e8f87a1e0769e6fb11e88f8ebff976ef', 34);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone_number` int(12) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `address`, `phone_number`, `password`, `email`, `role`) VALUES
(10, 'test ', '', 0, '$2y$10$.DrH0biyNorOyJoEfk/v4evvD8mkqKLV8n8mnA0ftJyKMxaee3Esy', 'admin@gmail.com', 'admin'),
(11, 'happy', '', 0, '$2y$10$.DrH0biyNorOyJoEfk/v4evvD8mkqKLV8n8mnA0ftJyKMxaee3Esy', 'happy@gmail.com', 'user'),
(14, 'ankitbaral', '', 0, '$2y$10$Il2ScmCPml/cJ/adTOITLe/6MsdceZtgOQfgS6NFrJyumXdroyt/u', 'ankitbaral@gmail.com', 'admin'),
(17, 'user1234', '', 0, '$2y$10$Z4cmdQRIH69J/jtwOy7hmescbZaH7R1S0.Gs/r1ONkYsVsu9Qov7y', 'user1234@gmail.com', 'user'),
(18, 'admin1234', '', 0, '$2y$10$hkhirBOL2UBZWF/o4OI/cuD4UKtr7unYdmcG68lid8xZeCnhg7idu', 'admin1234@gmail.com', 'admin'),
(27, 'ajay', 'raj', 1111111111, '$2y$10$RJBL.mwNWFn4d.hYn5Q6H.lqcXDnmYC0S4ojDq2FD9EIFyyWcWD5S', 'ajay@gmail.com', 'user'),
(28, 'User Ankit', 'pokkhara', 2147483647, '$2y$10$eeK6gMkevDRXcnuDWwhe/.k1j5BV.E.UIlM11nk5bj9nQMHQ4G/ZG', 'userankit10@gmail.com', 'user'),
(32, 'shiva baral', 'pokhara', 2147483647, '$2y$10$3OhayLCGLjxOF2R6fFS2wej4nPpI9acOH7AP4qvU.aH6G7ZZNIIiK', 'shivabaral@gmail.com', 'admin'),
(33, 'aaaaaa', 'pokhara', 5466456, '$2y$10$arnzfG8z2.rlsOCIfR0BieL5yoRJLGZfgKyyVog8WYrTe9dXW.Gf2', 'aaaa@gmail.com', 'admin'),
(34, 'hari', 'kathmandu', 100, '$2y$10$8d3Jt7p/FjJVlS.AmJOoFuyw5O5Wxlk/YOiZkLFK/ayB91FAsEKBS', 'hari@gmail.com', 'user'),
(35, 'ram', 'ktm', 543545345, '$2y$10$tJHjwx8A8JZfURDxhNwHm.jZn5D/5Qv3x5VAK8gUIF93z2Z0jK1Hq', 'baralankit10@gmail.com', 'admin'),
(36, 'zzzzzzzz', 'zzzzzzzz', 11111111, '$2y$10$1vuU/LvWZ0IgjiHInia2G.5qdEXSp8t50XN0IL3QgrrJuF85M8FRG', 'z@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `title`, `description`, `category_id`, `image_url`, `is_available`, `price`, `is_deleted`) VALUES
(19, 'white sneakers', 'very good sneakers', 2, 'images/6-tm-12-6-trm-white-original-imagjqyzz8z9jrgf.jpg', 1, 500, 0),
(20, 'Nice ', 'vergy good', 5, 'images/p2155519.webp', 1, 23232, 0),
(21, 'santo', 'hello', 18, 'images/images.jpg', 1, 2000, 0),
(22, 'dfsds', 'sdsdsd', 18, 'images/dw-burnett-pcoty22-8260-1671143390.jpg', 1, 3434, 0),
(23, 'wow', 'sdadd', 18, 'images/dw-burnett-pcoty22-8260-1671143390.jpg', 1, 50, 0),
(24, 'ddf', 'sdsd', 14, 'images/Lexus most-watched ad 12-2-20.jpg 2.png', 1, 111, 0),
(25, 'ssd', 'sdsd', 18, 'images/Lexus most-watched ad 12-2-20.jpg 2.png', 1, 434, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`advertisement_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_detail_id`),
  ADD KEY `product_id` (`vehicle_id`),
  ADD KEY `order_id` (`booking_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `personal_access_token`
--
ALTER TABLE `personal_access_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `advertisement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `otp_codes`
--
ALTER TABLE `otp_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_token`
--
ALTER TABLE `personal_access_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
  ADD CONSTRAINT `booking_details_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `personal_access_token`
--
ALTER TABLE `personal_access_token`
  ADD CONSTRAINT `personal_access_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
