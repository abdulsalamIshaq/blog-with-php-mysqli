-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 11:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `9jareport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminName` text NOT NULL,
  `adminPass` text NOT NULL,
  `adminUsername` text NOT NULL,
  `adminEmail` text NOT NULL,
  `adminPhoto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminPass`, `adminUsername`, `adminEmail`, `adminPhoto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `catTitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `catTitle`) VALUES
(1, 'News'),
(6, 'Sport'),
(7, 'Politics');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `comName` text NOT NULL,
  `comCont` text NOT NULL,
  `comDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comID`, `postID`, `comName`, `comCont`, `comDate`) VALUES
(3, 4, 'Abdulsalam Kayode Ishaq', 'hello world', '2019-12-08 23:10:56'),
(4, 2, 'Abdulsalam Kayode Ishaq', 'hii', '2019-12-08 23:05:34'),
(5, 2, 'kautharisaq2020@gmail.com', 'hii', '2019-12-08 23:05:34'),
(6, 2, 'kautharisaq2020@gmail.com', 'hii', '2019-12-08 23:05:34'),
(7, 2, 'kautharisaq2020@gmail.com', 'hii', '2019-12-08 23:05:34'),
(8, 2, 'kautharisaq2020@gmail.com', 'hii', '2019-12-08 23:05:34'),
(9, 5, 'Abdulsalam Kayode Ishaq', 'hii', '2019-12-08 23:05:34'),
(10, 5, 'abdulsalam', 'hii', '2019-12-08 23:05:34'),
(11, 1, 'Abdulsalam Kayode Ishaq', 'hii', '2019-12-08 23:05:34'),
(12, 1, 'AbdulsalamKayode', 'AbdulsalamKayode', '2019-12-09 06:49:48'),
(13, 5, 'kautharisaq2020@gmail.com', 'kautharisaq2020@gmail.com', '2019-12-13 13:35:20'),
(14, 6, 'Abdulsalam Kayode Ishaq', 'Abdulsalam Kayode Ishaq', '2019-12-13 14:09:40'),
(15, 6, 'Abdulsalam Kayode Ishaq', 'Abdulsalam Kayode Ishaq', '2019-12-13 14:09:46'),
(16, 6, 'Abdulsalam Kayode Ishaq', 'Abdulsalam Kayode Ishaq', '2019-12-13 14:10:11'),
(17, 5, 'Abdulsalam Kayode Ishaq', 'my name is abdulsalam', '2019-12-20 16:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `postTitle` text NOT NULL,
  `postCont` text NOT NULL,
  `postImg` text NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `postTitle`, `postCont`, `postImg`, `postDate`, `catID`) VALUES
(1, 'lorem ipsum dolor sit amet consestor', 'lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor', 'gallery-3.jpg', '2019-12-08 23:20:28', 1),
(2, 'lorem ipsum dolor sit amet consestor', 'lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor', 'gallery-3.jpg', '2019-12-08 23:20:01', 1),
(3, 'lorem ipsum dolor sit amet consestor', 'lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor', 'gallery-3.jpg', '2019-12-08 23:21:56', 5),
(4, 'lorem ipsum dolor sit amet consestor', 'lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor', 'gallery-3.jpg', '2019-12-08 23:22:05', 6),
(5, 'lorem ipsum dolor sit amet consestor', 'lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor', 'gallery-3.jpg', '2019-12-08 23:22:17', 6),
(6, 'lorem ipsum dolor sit amet consestor', '    \r\n            \r\n                              \r\n                      \r\n', '39594160_219339798926293_5125396138895081472_n.jpg', '2019-12-12 20:55:32', 1),
(16, 'lorem ipsum dolor sit amet consestor', '    \r\n            \r\n        lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor                      \r\n                      \r\n', '', '2019-12-12 19:28:39', 16),
(17, 'lorem ipsum dolor sit amet consestor', 'alert(\'post inserted successfully\');</script>\";\r\n                     header(\'location:home.php\');                      \r\n\">    \r\n        alert(\'post inserted successfully\');</script>\";\r\n                     header(\'location:home.php\');\">    \r\n         $sql = \"UPDATE post SET postTitle = \'$title\', postCont = \'$content\', catID = \'$cat\' WHERE postID  = \'$id\'\";\r\n                     mysqli_query($conn, $sql);\r\n                     \"<script>alert(\'post inserted successfully\');</script>\";\r\n                     header(\'location:home.php\');                      \r\n                      \r\n\">    \r\n            \r\n         $sql = \"UPDATE post SET postTitle = \'$title\', postCont = \'$content\', catID = \'$cat\' WHERE postID  = \'$id\'\";\r\n                     mysqli_query($conn, $sql);\r\n                     \"<script>alert(\'post inserted successfully\');</script>\";\r\n                     header(\'location:home.php\');                      \r\n\">    \r\n        alert(\'post inserted successfully\');</script>\";\r\n                     header(\'location:home.php\');\">    \r\n         $sql = \"UPDATE post SET postTitle = \'$title\', postCont = \'$content\', catID = \'$cat\' WHERE postID  = \'$id\'\";\r\n                     mysqli_query($conn, $sql);\r\n                     \"<script>alert(\'post inserted successfully\');</script>\";\r\n                     header(\'location:home.php\');                      \r\n                      \r\n                      \r\n', '', '2019-12-12 19:28:15', 17),
(18, 'lorem ipsum dolor sit amet consestor', '    \r\n        9jareport\r\nAdmin Home\r\nCategory\r\nComments\r\nContact\r\n\r\nTopic Title\r\nlorem ipsum dolor sit amet consestor\r\n\r\nCategory\r\n\r\nTopic Content\r\nSubject Content\r\n\r\nSearch the blog\r\nWhat are you looking for?\r\n\r\nLatest Posts\r\n...\r\nlorem ipsum dolor sit amet consestor\r\nNews\r\n...\r\nlorem ipsum dolor sit amet consestor\r\nNews\r\n...\r\nlorem ipsum dolor sit amet consestor\r\nNews\r\nCategories\r\nNews\r\nNewss\r\nSport\r\nSport\r\nTags\r\n#BUSINESS #TECHNOLOGY #FASHION #SPORTS #ECONOMY\r\nSite Logo\r\n02 Prince Road, Kabala West, Nigeria\r\n\r\nPhone: +(234) 812 055 3286\r\n\r\nEmail: Info@Company.com\r\n\r\n    \r\nMy Account\r\nAdd Listing\r\nPricing\r\nPrivacy & Policy\r\nOur Partners\r\nFAQ\r\nHow It Works\r\nContact\r\n...\r\nLorem Ipsum Dolor Sit Amet Con ....\r\n9th Dec 2019 03:10\r\n \r\n...\r\nLorem Ipsum Dolor Sit Amet Con ....\r\n9th Dec 2019 03:04\r\n \r\n...\r\nLorem Ipsum Dolor Sit Amet Con ....\r\n9th Dec 2019 02:58\r\nÂ© 2019. All rights reserved.\r\n\r\nBy Abdulsalam Ishaq.                      \r\n', 'FB_IMG_15420000265119479.jpg', '2019-12-09 12:34:59', 0),
(19, 'lorem ipsum dolor sit amet consestor', '    \r\n        lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor                      \r\n', '2 I C 20180113_202920.jpg', '2019-12-09 12:37:55', 0),
(20, 'lorem ipsum dolor sit amet consestor', 'lorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestorlorem ipsum dolor sit amet consestor                      \r\n                      \r\n', 'CSS_certificate.jpg', '2019-12-09 12:34:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitedetails`
--

CREATE TABLE `sitedetails` (
  `id` int(11) NOT NULL,
  `siteLogo` text NOT NULL,
  `siteTitle` text NOT NULL,
  `siteTagline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitedetails`
--

INSERT INTO `sitedetails` (`id`, `siteLogo`, `siteTitle`, `siteTagline`) VALUES
(1, '', '9jaReport', '9jaReport');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `sitedetails`
--
ALTER TABLE `sitedetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sitedetails`
--
ALTER TABLE `sitedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
