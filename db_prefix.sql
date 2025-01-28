-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jan 2025 pada 11.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_prefix`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pavblog_blog`
--

CREATE TABLE `pavblog_blog` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pavblog_blog_description`
--

CREATE TABLE `pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pavblog_category`
--

CREATE TABLE `pavblog_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_grup` smallint(6) NOT NULL,
  `width` varchar(255) NOT NULL,
  `submenu_width` varchar(255) NOT NULL,
  `column_width` varchar(255) NOT NULL,
  `submenu_columnwidth` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `columns` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL,
  `show_title` smallint(6) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `level_depth` smallint(6) NOT NULL,
  `published` smallint(6) NOT NULL,
  `store_id` smallint(5) NOT NULL,
  `position` int(11) NOT NULL,
  `show_sub` smallint(6) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(25) NOT NULL,
  `privasi` smallint(5) NOT NULL,
  `position_type` varchar(255) NOT NULL,
  `menu_class` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pavblog_category_description`
--

CREATE TABLE `pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `decription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pavblog_coment`
--

CREATE TABLE `pavblog_coment` (
  `coment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `coment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pavblog_blog`
--
ALTER TABLE `pavblog_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indeks untuk tabel `pavblog_blog_description`
--
ALTER TABLE `pavblog_blog_description`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indeks untuk tabel `pavblog_category_description`
--
ALTER TABLE `pavblog_category_description`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pavblog_blog`
--
ALTER TABLE `pavblog_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pavblog_category_description`
--
ALTER TABLE `pavblog_category_description`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
