-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 12:12 PM
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
-- Database: `blogsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `tags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL DEFAULT '\'\'',
  `author` varchar(255) NOT NULL,
  `post_txt` text NOT NULL,
  `created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `author`, `post_txt`, `created`) VALUES
(1, 'The Future of AI', '\"The Future of AI\" explores how artificial intelligence is reshaping industries, creativity, and ethics. Dive into emerging trends, innovations, and the big questions driving tomorrow’s intelligent tech.\r\nAI generated', 'John Doe', 'Artificial Intelligence is rapidly advancing and will shape our future in unimaginable ways. This article explores the potential impacts of AI on society.', '2025-09-17'),
(2, 'A Journey Through the Stars', '\"Explore the wonders of the cosmos in this captivating blog that traces humanity’s fascination with the stars—from ancient myths to modern space exploration.\"\r\nAI generated', 'Jane Smith', 'Space exploration has fascinated humans for centuries. In this post, we take a look at recent discoveries in space and what they mean for humanity.', '2025-09-17'),
(3, 'Understanding Quantum Computing', '\"Explore the fundamentals of quantum computing—how it works, why it matters, and what sets it apart from classical computing.\"\r\nAI generated', 'Alice Brown', 'Quantum computing is a revolutionary new field that promises to solve problems that classical computers cannot. Let’s dive into how it works and its potential applications.', '2025-09-17'),
(4, 'Healthy Living: A Guide to Better Habits', 'Discover practical tips and simple strategies to build healthier habits, boost your well-being, and lead a more balanced life.\r\nAI generated.', 'Robert White', 'Living a healthy life is about making small, consistent choices every day. In this post, we offer tips on diet, exercise, and mental well-being.', '2025-09-17'),
(5, 'The Art of Photography', '\"The Art of Photography\" explores the creative vision, techniques, and emotional depth behind capturing compelling images—where light, composition, and storytelling converge.\"\r\nAI generated.', 'Emily Green', 'Photography is more than just taking pictures; it’s an art. This post covers some essential techniques and tips for capturing stunning photos.', '2025-09-17'),
(6, 'Top 10 Travel Destinations for 2025', 'Discover the must-visit places of the year in our curated list of the Top 10 Travel Destinations for 2025—featuring breathtaking landscapes, vibrant cultures, and unforgettable experiences for every kind of traveler.\r\nAI generated', 'Michael Black', 'Traveling is an enriching experience. In this post, we highlight the top travel destinations you should visit in 2025 for a memorable experience.', '2025-09-17'),
(7, 'Web Development 101: A Beginner’s Guide', '\"Learn the fundamentals of web development—from HTML and CSS to JavaScript—in this beginner-friendly guide designed to help you build your first website with confidence. \r\nAI generated.', 'Sarah Clark', 'If you’re looking to get started in web development, this guide will walk you through the essential skills and technologies you need to learn.', '2025-09-17'),
(8, 'The Evolution of Social Media', '\"Explore how social media has transformed from early networking platforms to today’s dynamic digital ecosystems, reshaping communication, culture, and commerce.\"', 'Chris Davis', 'Social media has evolved tremendously over the years. This article discusses the changes and future trends in the world of social networking platforms.', '2025-09-17'),
(9, 'Mastering Time Management', '\"Unlock the secrets to productivity and balance with practical strategies for mastering your time, boosting efficiency, and achieving your goals.\r\nAI Generated', 'Jessica Lee', 'Effective time management is a key to success. In this post, we explore strategies for organizing your tasks and improving productivity.', '2025-09-17'),
(10, 'Exploring the Deep Sea', '\"Dive into the mysteries of the ocean\'s depths—discover strange creatures, hidden ecosystems, and the science behind deep-sea exploration.\"\r\nAI ggenerated', 'David Wilson', 'The deep ocean is one of the least explored places on Earth. This post takes you on an exciting journey into the mysteries of the ocean’s depths.', '2025-09-17'),
(11, '', '\'\'', '', '', '2025-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
