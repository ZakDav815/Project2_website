-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2026 at 02:25 PM
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
-- Table structure for table `passwords`
--

CREATE TABLE `passwords` (
  `pass_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `status` set('active','inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'active',
  `created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`pass_id`, `user_id`, `password_hash`, `status`, `created`) VALUES
(1, 0, '$2y$10$I.PjoRhY0XxEzq30/X1zz.VQE7hz5FNL30AeYynw6.3o/pxYkbzgG', 'active', '2026-01-30');

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
(11, '', '\'\'', '', '', '2025-10-21'),
(12, 'testhome', 'testhome', '', 'testhome', '2026-01-30'),
(13, '', 'This description doesn&#039;t appear???', '', '', '2026-01-30'),
(14, 'Critical Perspectives in Interactive Media', '8 Golden Rules of Interface Design:\r\n\r\nConsistency:\r\nFamiliar icons, colours, etc. Standardising the way info conveyed allows user to just click from one place to another. \r\n\r\nShortcuts:\r\nCtrl+c, Ctrl+v \r\n\r\nInformative feedback:\r\nUser should know where they are. Actions should have feedback. \r\n\r\nDesign Dialog to yield closure:\r\nTell users what their action did. \r\n\r\nSimple error handling:\r\nGive users step by step instructions to solve their problem.\r\n \r\n\r\nPermit easy reversal of actions:\r\nCtrl+z to reverse a change, Alt+Left Arrow to go back a page.\r\n\r\n \r\n\r\nSupport internal locus of control:\r\nGive user sense that they are in control of events to earn their trust \r\n\r\nReduce short term memory loss:\r\nInterface should be simple to reduce use of short term memory.\r\n\r\n_____________________________________________________________________________________________\r\n\r\n\r\n5 Components of Usability \r\n\r\nwhat:\r\n-how good is the sites design, does the user have problems navigating and using site, is the site simple to use. \r\n\r\n\r\nWhy usability is important:\r\n-If site difficult to use/user got lost/don&amp;#039;t find what looking for, user leaves site to look elsewhere.\r\n\r\n-Time wasted on intranet is money wasted paying to get no work done. \r\n\r\n\r\nHow to improve usability:\r\n-user testing - get outside people(customers, employees from somewhere else) to do tasks in relation to site and observe to see where succeed and fail.  \r\n\r\n-iterative design - continually iterating on a previous design to perfect it. \r\n\r\n \r\nWhen work on Usability:\r\n-test previous design to identify good and bad points. \r\n\r\n-field study to see how users behave on own. \r\n\r\n-refine ideas from mock up(low-fidelity) to website(high-fidelity).\r\n\r\n__________________________________________________________________________________\r\n\r\nPeter Morville&amp;#039;s User Experience Honeycomb: \r\n\r\n-Context, Content, Users all mix together(venn diagram for example). \r\n\r\n-User Experience Honeycomb - explain various facets of user experience design, helps find sweet spot \r\n\r\nBetween different things for good UX. Helps to identify \r\n\r\n\r\nEach facet of the honeycomb: \r\n\r\nUsable - system in which product/service is delivered is simple and easy--&amp;amp;amp;amp;gt; Should be designed familiarly + ease of use.\r\n\r\nUseful - Product/service need to be useful, if not useful then no purpose for product/service.\r\n\r\nDesirable - Aesthetics attractive + easy to translate. Minimalist and to the point.\r\n\r\nFindable - Info findable and easy to navigate. If problem, should be able to find quick solution.\r\n\r\nAccessible - Product/Service should be designed in way that those with disabilities can also use.\r\n\r\nCredible - Need to be trustworthy.\r\n\r\nValuable - Gives value in that person gets what they want.', '', '8 Golden Rules of Interface Design:\r\n\r\nConsistency:\r\nFamiliar icons, colours, etc. Standardising the way info conveyed allows user to just click from one place to another. \r\n\r\nShortcuts:\r\nCtrl+c, Ctrl+v \r\n\r\nInformative feedback:\r\nUser should know where they are. Actions should have feedback. \r\n\r\nDesign Dialog to yield closure:\r\nTell users what their action did. \r\n\r\nSimple error handling:\r\nGive users step by step instructions to solve their problem.\r\n \r\n\r\nPermit easy reversal of actions:\r\nCtrl+z to reverse a change, Alt+Left Arrow to go back a page.\r\n\r\n \r\n\r\nSupport internal locus of control:\r\nGive user sense that they are in control of events to earn their trust \r\n\r\nReduce short term memory loss:\r\nInterface should be simple to reduce use of short term memory.\r\n\r\n_____________________________________________________________________________________________\r\n\r\n\r\n5 Components of Usability \r\n\r\nwhat:\r\n-how good is the sites design, does the user have problems navigating and using site, is the site simple to use. \r\n\r\n\r\nWhy usability is important:\r\n-If site difficult to use/user got lost/don&amp;#039;t find what looking for, user leaves site to look elsewhere.\r\n\r\n-Time wasted on intranet is money wasted paying to get no work done. \r\n\r\n\r\nHow to improve usability:\r\n-user testing - get outside people(customers, employees from somewhere else) to do tasks in relation to site and observe to see where succeed and fail.  \r\n\r\n-iterative design - continually iterating on a previous design to perfect it. \r\n\r\n \r\nWhen work on Usability:\r\n-test previous design to identify good and bad points. \r\n\r\n-field study to see how users behave on own. \r\n\r\n-refine ideas from mock up(low-fidelity) to website(high-fidelity).\r\n\r\n__________________________________________________________________________________\r\n\r\nPeter Morville&amp;#039;s User Experience Honeycomb: \r\n\r\n-Context, Content, Users all mix together(venn diagram for example). \r\n\r\n-User Experience Honeycomb - explain various facets of user experience design, helps find sweet spot \r\n\r\nBetween different things for good UX. Helps to identify \r\n\r\n\r\nEach facet of the honeycomb: \r\n\r\nUsable - system in which product/service is delivered is simple and easy--&amp;amp;amp;amp;gt; Should be designed familiarly + ease of use.\r\n\r\nUseful - Product/service need to be useful, if not useful then no purpose for product/service.\r\n\r\nDesirable - Aesthetics attractive + easy to translate. Minimalist and to the point.\r\n\r\nFindable - Info findable and easy to navigate. If problem, should be able to find quick solution.\r\n\r\nAccessible - Product/Service should be designed in way that those with disabilities can also use.\r\n\r\nCredible - Need to be trustworthy.\r\n\r\nValuable - Gives value in that person gets what they want.', '2026-01-30'),
(15, 'Contextual Studies of Interactive Media', 'Area of Interest: Video games.\r\n_____________________________________________________________________________________________\r\n\r\n1. Historical context:\r\nVideo Games have a long history, starting from the 50s until today. At first, they were quite basic, being simple games(at least on the surface) such as chess or other board games.  \r\n\r\n\r\nBy the 60s, the technology improved and knowledge grew to where Video Games became more complex, resulting in many games such as Spacewar!, a space combat game and strategy games.  \r\n\r\nBy the time of the 70s, programming languages such as BASIC came about. \r\n\r\n_____________________________________________________________________________________________\r\n\r\nEnvironmental context:\r\nVideo Games and their associated hardware have had fair impact on the Environment. In a study from Cambridge University, for every ps4 that is manufactured and transported, 89kg of carbon is emitted. This number may not seem too bad at first glance, over 117 million ps4s have been shipped as of June 2022.  \r\n\r\nAnother Environmental impact of Video Games is the materials that are needed to make the hardware. Rare Earth such as Lanthanum are critical components such as batteries and GPUs. This is where the problem, though pretty much unavoidable, begins as to acquire these rare earth metals, you need to mine extensively to get them due to their scarcity and as a result release more Carbon Dioxide into the atmosphere from the machinery used. As well as this, you need to have more land to mine, which then displaces the wildlife that lived there before. \r\n\r\n_____________________________________________________________________________________________\r\n\r\nSocial context:\r\nVideo Games have, like many things, pros and cons socially. For many many people who might have an issue with starting a conversation have found that Video Games can act as a social lubricant from which they can become good friends with likeminded people. Expanding on this, friends can play with each other in multiplayer, online and in-person, creating memories and bonding. \r\n\r\nHowever, there are some downsides, such as harassment &amp;amp;amp;amp;amp; cyberbullying. Due to the fact that as long as someone has the required hardware, subscription or whatever else they may need, they can chat online, which means that you will get some people who will harass others in-game due to pettiness or other nonsense reasons. \r\n\r\n_____________________________________________________________________________________________\r\n\r\nCultural context:\r\nVideo Games have had quite an impact on culture, be it memes, nostalgia, media and more. Online Culture, for example, is very much tied to Video Games through references, such as memes that satirise moments in games, websites such as Newgrounds where members of a community can upload things, contribute and interact with the community, forums to discuss a topic and more.\r\n\r\nThere is a not small subset of the population who have great memories of playing the Gameboy in their youth, and now that they have grown up now have a strong sense of nostalgia for the console.\r\n\r\nFurthermore, many franchises that originated as Video Games, such as the fallout television series which was originally a game series.\r\n\r\n_____________________________________________________________________________________________\r\n\r\nEconomic context:\r\nThe Video Game Industry employs 75,000 people in the UK and generates &amp;amp;amp;pound;12 Billion in Gross Value Added, supporting the UKs economy. Microtransations alone earn companies millions of pounds alone(in more popular games). \r\n\r\n_____________________________________________________________________________________________\r\n\r\nPolitical context:\r\nGames that feature some things may make sway peoples opinion on the topic and that topic may be a political one.  \r\n_____________________________________________________________________________________________', '', 'Area of Interest: Video games.\r\n_____________________________________________________________________________________________\r\n\r\n1. Historical context:\r\nVideo Games have a long history, starting from the 50s until today. At first, they were quite basic, being simple games(at least on the surface) such as chess or other board games.  \r\n\r\n\r\nBy the 60s, the technology improved and knowledge grew to where Video Games became more complex, resulting in many games such as Spacewar!, a space combat game and strategy games.  \r\n\r\nBy the time of the 70s, programming languages such as BASIC came about. \r\n\r\n_____________________________________________________________________________________________\r\n\r\nEnvironmental context:\r\nVideo Games and their associated hardware have had fair impact on the Environment. In a study from Cambridge University, for every ps4 that is manufactured and transported, 89kg of carbon is emitted. This number may not seem too bad at first glance, over 117 million ps4s have been shipped as of June 2022.  \r\n\r\nAnother Environmental impact of Video Games is the materials that are needed to make the hardware. Rare Earth such as Lanthanum are critical components such as batteries and GPUs. This is where the problem, though pretty much unavoidable, begins as to acquire these rare earth metals, you need to mine extensively to get them due to their scarcity and as a result release more Carbon Dioxide into the atmosphere from the machinery used. As well as this, you need to have more land to mine, which then displaces the wildlife that lived there before. \r\n\r\n_____________________________________________________________________________________________\r\n\r\nSocial context:\r\nVideo Games have, like many things, pros and cons socially. For many many people who might have an issue with starting a conversation have found that Video Games can act as a social lubricant from which they can become good friends with likeminded people. Expanding on this, friends can play with each other in multiplayer, online and in-person, creating memories and bonding. \r\n\r\nHowever, there are some downsides, such as harassment &amp;amp;amp;amp;amp; cyberbullying. Due to the fact that as long as someone has the required hardware, subscription or whatever else they may need, they can chat online, which means that you will get some people who will harass others in-game due to pettiness or other nonsense reasons. \r\n\r\n_____________________________________________________________________________________________\r\n\r\nCultural context:\r\nVideo Games have had quite an impact on culture, be it memes, nostalgia, media and more. Online Culture, for example, is very much tied to Video Games through references, such as memes that satirise moments in games, websites such as Newgrounds where members of a community can upload things, contribute and interact with the community, forums to discuss a topic and more.\r\n\r\nThere is a not small subset of the population who have great memories of playing the Gameboy in their youth, and now that they have grown up now have a strong sense of nostalgia for the console.\r\n\r\nFurthermore, many franchises that originated as Video Games, such as the fallout television series which was originally a game series.\r\n\r\n_____________________________________________________________________________________________\r\n\r\nEconomic context:\r\nThe Video Game Industry employs 75,000 people in the UK and generates &amp;amp;amp;pound;12 Billion in Gross Value Added, supporting the UKs economy. Microtransations alone earn companies millions of pounds alone(in more popular games). \r\n\r\n_____________________________________________________________________________________________\r\n\r\nPolitical context:\r\nGames that feature some things may make sway peoples opinion on the topic and that topic may be a political one.  \r\n_____________________________________________________________________________________________', '2026-01-30'),
(16, 'record', 'recording', '', 'recording', '2026-01-30'),
(17, 'record test5', 'recoirding tst 54', '', 'recoirding tst 24', '2026-01-30'),
(18, 'yhg', 'This', '', 'This', '2026-01-30'),
(19, 'Hi', 'YEs', '', 'YEs,', '2026-01-30'),
(20, 'HI2', 'Hi22', '', 'HI', '2026-01-30'),
(21, 'recordtes5', 'recordtes5', '', 'recordtes5', '2026-01-30'),
(22, 'a', 'a', '', 'a', '2026-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(12) NOT NULL,
  `name` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` set('active','inactive','pending') NOT NULL DEFAULT 'pending',
  `role` set('reader','author','admin') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'reader',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `status`, `role`, `email`, `created`) VALUES
(0, 'recording', 'recording', 'pending', 'reader', '', '2026-01-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passwords`
--
ALTER TABLE `passwords`
  ADD PRIMARY KEY (`pass_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passwords`
--
ALTER TABLE `passwords`
  MODIFY `pass_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
