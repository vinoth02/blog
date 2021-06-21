-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 01:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_06_18_132139_post', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `created_at`, `updated_at`) VALUES
(4, 'What Is Blogging?', 'The word blog is actually a shortened form of its original name, \"weblog.\" These weblogs allowed early internet users to \"log\" the details of their day in diary-style entries. Blogs often allow readers to comment, so as they became more common, communities sprung up around popular blogs. \r\n\r\nLike most internet-based innovations, many entrepreneurs saw marketing potential in having a blog, and the adoption of blogging among the business community helped further increase the popularity of the medium. Not only can a blog be used for marketing a business, but it can also become a home business in and of itself.', '2021-06-18 23:28:48', '2021-06-18 23:51:18'),
(5, 'How Blogging Works', 'Blogging is as simple as obtaining a website and publishing original content on it. Tech-savvy bloggers can buy a domain name and build the website themselves. Those with less HTML knowledge can create an account with sites like WordPress that simplify the web design and publishing process.\r\n\r\nBlogs are usually simple websites. Older pieces may be archived in separate sections of the site, and there may be a separate page with contact info or a bio, but the blog itself is usually just a single page that can be scrolled through—similar to the news feed on social media sites like Facebook. As with a Facebook news feed, a blog displays the newest content at the top of the page.', '2021-06-18 23:29:28', '2021-06-18 23:29:28'),
(6, 'Blogging vs. Traditional Websites', 'Some people are confused over what constitutes a blog over a website. Part of the confusion stems from the fact that many businesses use both, usually by adding a blog section to the company website. However, there are two features of a blog that set it apart from a traditional website.\r\n\r\nFirst, blogs are updated frequently. Whether it\'s a mommy blog in which a woman shares adventures in parenting, a food blog sharing new recipes, or a business providing updates to its services, blogs have new content added several times a week. Websites might occasionally have new information, but for the most part, they offer static information that rarely changes.', '2021-06-18 23:29:56', '2021-06-18 23:29:56'),
(7, 'Pros and Cons of Blogging', 'Pros\r\n\r\n    Good for SEO\r\n\r\n    Maintains communication with customers\r\n\r\n    Builds rapport with customers\r\n\r\n    Generate alternate income\r\n\r\n Cons\r\n\r\n    Time-consuming\r\n\r\n    Constantly requires fresh ideas\r\n\r\n    Payoff is delayed\r\n\r\n    Blogging in and of itself won\'t generate income', '2021-06-18 23:30:20', '2021-06-18 23:53:54'),
(8, 'Pros Explained', 'Good for SEO: Search engines love new content, and as a result, blogging is a great search engine optimization (SEO) tool. A defining feature of blogs is the frequency with which they\'re updated, and that fresh content helps improve a website\'s SEO performance.\r\nMaintains communication with customers: Blog posts can keep your customers and clients up-to-date on what\'s going on, let them know about new deals, and provide tips. The more frequently you post useful content, the more often a customer visits your blog, and the more likely they are to spend money.\r\nBuilds rapport with customers: Not only does a blog allow you to show off what you know—building your expertise and credibility—but people can also post comments and interact with you. That allows customers to get to know you, and hopefully, develop relationships that turn into purchases.', '2021-06-18 23:32:52', '2021-06-18 23:32:52'),
(9, 'Cons Explained', 'Time-consuming: The success of blogging comes from having people return, and they only return when there\'s new stuff to read. That means bloggers need to generate content at least several times a week to be effective at engaging readers and increasing SEO.\r\n    Constantly requires fresh ideas: Posting several times per week won\'t be beneficial if the ideas aren\'t fresh and engaging. It can be draining to constantly conceptualize and execute fresh content. The good news is that you don\'t have to do it all yourself. You can have guest writers or hire freelancers. Another option is to curate content from others. You can buy private label right (PLR) content and modify it for your blog.\r\n    Payoff is delayed: One of the biggest frustrations with blogging is that it\'s time-consuming with little payoff in the beginning. It takes time to build up a readership and momentum.\r\n    Blogging in and of itself won\'t generate income: At one time, posting an article was enough to generate traffic and income. Today, a successful blog needs email marketing, additional perks such as content upgrades, and an engaged social network, such as a Facebook group.', '2021-06-18 23:33:09', '2021-06-18 23:33:09'),
(10, 'Requirements for a Blog', 'The good news is that starting a blog or adding a blog to your existing site is relativity easy and affordable. All you have to do is follow these four steps.', '2021-06-18 23:33:33', '2021-06-18 23:33:33'),
(11, 'Set Up the Blog', 'There are free blog options such as WordPress and Blogger, but to retain control and a professional image, consider investing in a domain name and a hosting service. You can install WordPress or another content management system on your host if you don\'t want to create the whole site from scratch.', '2021-06-18 23:33:46', '2021-06-18 23:33:46'),
(12, 'Add Content', 'Once your blog is up and running, you need to keep it active with new content to grow your business. Develop a set schedule for writing and posting blog articles. Create a content calendar so you always know what you\'re going to post.', '2021-06-18 23:34:00', '2021-06-18 23:34:00'),
(13, 'Market', 'Like all other business ideas, your success comes from marketing and getting your message in front of your target market. Great ways to reach your market are through social media apps, email lists, and by reaching out to other bloggers, podcasters, and media outlets for publicity. Repurpose your blog content to promote your business across platforms, such as by using quotes on your Twitter or Instagram profiles, or by creating a video of your article to share on YouTube.', '2021-06-18 23:34:14', '2021-06-18 23:34:14'),
(14, 'Add Income Streams', 'While your blog can complement an existing business, it\'s also a great way to add additional income streams to your home business. You can promote other companies\' products and services in affiliate marketing. You can advertise or feed ad networks, such as AdSense, on to your blog. If you have a service business you\'re promoting with your blog, you can create your own information products to complement it. Or, if you have your own product, you can offer a service.', '2021-06-18 23:34:29', '2021-06-18 23:34:29'),
(15, 'How to Start a Blog in 5 Steps:', 'There are five main steps you need to do in order to start a blog. If you follow this guide exactly, you’ll have your own blog set up in 30 minutes or less.\r\n\r\n    1) Choose a great blog platform\r\n    2) Choose a web host for your blog\r\n    3) How to Set up a blog on your own domain\r\n    4) Design your new blog\r\n    5) Useful resources for blogging\r\n\r\nSo, we made it. Phew. Better late than never! So, without further ado, let’s jump into step 1.', '2021-06-18 23:41:59', '2021-06-18 23:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'vinoth', 'vinothghosthunter@gmail.com', '$2y$10$YBwtl.PsEOhHK4JwrpLgBuTOvbr3eLToKUYHCtv.a6uXrwSQec3eC', 1, '2021-06-17 10:30:14', '2021-06-17 10:30:14'),
(2, 'vinoth2', 'vinoth@gmail.com', '$2y$10$W1kUOG7rC6A8454nWzDcRuJjsvdu/aluoAxQuOVwlqdcmt1PnKfYi', 0, '2021-06-17 10:53:48', '2021-06-17 10:53:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
