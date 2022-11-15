-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2022 lúc 08:08 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qbcore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `apartments`
--

CREATE TABLE `apartments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `apartments`
--

INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
(4144, 'apartment18573', 'apartment1', 'C?n H? 1 8573', 'LRR75545'),
(4145, 'apartment36779', 'apartment3', 'C?n H? 3 6779', 'QOM77281'),
(4146, 'apartment12243', 'apartment1', 'C?n H? 1 2243', 'ZPO22520'),
(4147, 'apartment55441', 'apartment5', 'C?n H? 5 5441', 'OWU19261'),
(4148, 'apartment47351', 'apartment4', 'C?n H? 4 7351', 'ZEP36379'),
(4149, 'apartment15116', 'apartment1', 'C?n H? 1 5116', 'FXB52191'),
(4151, 'apartment118', 'apartment1', 'C?n H? 1 18', 'CQL51031'),
(4152, 'apartment55943', 'apartment5', 'C?n H? 5 5943', 'KUC68081'),
(4153, 'apartment11313', 'apartment1', 'C?n H? 1 1313', 'UEC26862');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(250) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint(255) NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','business','Gang') NOT NULL DEFAULT 'Current'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bank_accounts`
--

INSERT INTO `bank_accounts` (`record_id`, `citizenid`, `business`, `businessid`, `gangid`, `amount`, `account_type`) VALUES
(1, 'LRR75545', NULL, NULL, NULL, 0, 'Savings');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_cards`
--

CREATE TABLE `bank_cards` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `cardNumber` varchar(50) DEFAULT NULL,
  `cardPin` varchar(50) DEFAULT NULL,
  `cardActive` tinyint(4) DEFAULT 1,
  `cardLocked` tinyint(4) DEFAULT 0,
  `cardType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bank_cards`
--

INSERT INTO `bank_cards` (`record_id`, `citizenid`, `cardNumber`, `cardPin`, `cardActive`, `cardLocked`, `cardType`) VALUES
(2, 'LRR75545', '9578404399559120', '1111', 1, 0, 'visa'),
(3, 'ZPO22520', '8148217498955737', '1111', 1, 0, 'visa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_statements`
--

CREATE TABLE `bank_statements` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `deposited` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bank_statements`
--

INSERT INTO `bank_statements` (`record_id`, `citizenid`, `account`, `business`, `businessid`, `gangid`, `deposited`, `withdraw`, `balance`, `date`, `type`) VALUES
(1, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 100000, 5370, '2022-11-03 08:02:03', 'Rút $100000 t? Tài kho?n Hi?n t?i'),
(2, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 5370, '2022-11-03 08:02:07', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(3, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 15370, '2022-11-03 08:02:10', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(4, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 25370, '2022-11-03 08:02:11', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(5, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 35370, '2022-11-03 08:02:11', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(6, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 45370, '2022-11-03 08:02:11', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(7, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 55370, '2022-11-03 08:02:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(8, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 65370, '2022-11-03 08:02:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(9, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 75370, '2022-11-03 08:02:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(10, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 85370, '2022-11-03 08:02:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(11, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 95370, '2022-11-03 08:02:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(12, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 105370, '2022-11-03 08:02:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(13, 'QOM77281', 'Bank', NULL, NULL, NULL, 1000, 0, 106370, '2022-11-03 08:02:14', 'Ti?n g?i $1000 vào Tài kho?n Hi?n t?i'),
(14, 'QOM77281', 'Bank', NULL, NULL, NULL, 1000, 0, 107370, '2022-11-03 08:02:14', 'Ti?n g?i $1000 vào Tài kho?n Hi?n t?i'),
(15, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 107370, '2022-11-03 08:02:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(16, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 97370, '2022-11-03 08:02:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(17, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 87370, '2022-11-03 08:02:30', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(18, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 77370, '2022-11-03 08:02:31', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(19, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 67370, '2022-11-03 08:02:32', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(20, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 57370, '2022-11-03 08:02:32', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(21, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 47370, '2022-11-03 08:02:32', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(22, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 37370, '2022-11-03 08:02:32', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(23, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 27370, '2022-11-03 08:02:32', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(24, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 17370, '2022-11-03 08:02:33', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(25, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 7370, '2022-11-03 08:02:33', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(26, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 7370, '2022-11-03 08:02:35', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(27, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 6370, '2022-11-03 08:02:35', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(28, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 5370, '2022-11-03 08:02:35', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(29, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 4370, '2022-11-03 08:02:35', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(30, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 3370, '2022-11-03 08:02:35', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(31, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 2370, '2022-11-03 08:02:36', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(32, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 1370, '2022-11-03 08:02:36', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(33, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 1000, 370, '2022-11-03 08:02:36', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(34, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 370, '2022-11-03 08:04:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(35, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 10370, '2022-11-03 08:04:16', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(36, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 20370, '2022-11-03 08:04:17', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(37, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 30370, '2022-11-03 08:04:17', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(38, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 40370, '2022-11-03 08:04:17', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(39, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 40370, '2022-11-03 08:04:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(40, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 30370, '2022-11-03 08:04:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(41, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 20370, '2022-11-03 08:04:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(42, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 10370, '2022-11-03 08:04:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(43, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 370, '2022-11-03 08:04:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(44, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 10370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(45, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 20370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(46, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 30370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(47, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 40370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(48, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 50370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(49, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 60370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(50, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 70370, '2022-11-03 08:04:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(51, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 70370, '2022-11-03 08:04:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(52, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 60370, '2022-11-03 08:04:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(53, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 50370, '2022-11-03 08:04:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(54, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 40370, '2022-11-03 08:04:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(55, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 30370, '2022-11-03 08:04:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(56, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 20370, '2022-11-03 08:04:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(57, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 10370, '2022-11-03 08:04:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(58, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 370, '2022-11-03 08:04:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(59, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 370, '2022-11-03 08:04:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(60, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 10370, '2022-11-03 08:04:23', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(61, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 20370, '2022-11-03 08:04:23', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(62, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 30370, '2022-11-03 08:04:23', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(63, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 30370, '2022-11-03 08:04:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(64, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 20370, '2022-11-03 08:04:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(65, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 10370, '2022-11-03 08:04:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(66, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 10740, '2022-11-03 09:29:34', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(67, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 20740, '2022-11-03 09:29:35', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(68, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 30740, '2022-11-03 09:29:35', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(69, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 40740, '2022-11-03 09:29:35', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(70, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 50740, '2022-11-03 09:29:35', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(71, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 60740, '2022-11-03 09:29:35', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(72, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 70740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(73, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 80740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(74, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(75, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 100740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(76, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 110740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(77, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 120740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(78, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 130740, '2022-11-03 09:29:36', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(79, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 140740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(80, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 150740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(81, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 160740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(82, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 170740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(83, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 180740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(84, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 190740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(85, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 200740, '2022-11-03 09:29:37', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(86, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 210740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(87, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 220740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(88, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 230740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(89, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 240740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(90, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 250740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(91, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 260740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(92, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 270740, '2022-11-03 09:29:38', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(93, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 280740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(94, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 290740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(95, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 300740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(96, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 310740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(97, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 320740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(98, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 330740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(99, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 340740, '2022-11-03 09:29:39', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(100, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 350740, '2022-11-03 09:29:40', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(101, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 360740, '2022-11-03 09:29:40', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(102, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 370740, '2022-11-03 09:29:40', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(103, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 380740, '2022-11-03 09:29:40', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(104, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 9000000, 380740, '2022-11-03 09:29:47', 'Rút $9000000 t? Tài kho?n Hi?n t?i'),
(105, 'QOM77281', 'Bank', NULL, NULL, NULL, 90000000, 0, 90380740, '2022-11-03 09:29:56', 'Ti?n g?i $90000000 vào Tài kho?n Hi?n t?i'),
(106, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 90161940, '2022-11-04 03:53:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(107, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90161940, '2022-11-04 03:53:18', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(108, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90171940, '2022-11-04 03:53:18', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(109, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90181940, '2022-11-04 03:53:18', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(110, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90191940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(111, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90201940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(112, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90211940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(113, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90221940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(114, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90231940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(115, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90241940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(116, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90251940, '2022-11-04 03:53:19', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(117, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90261940, '2022-11-04 03:53:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(118, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90271940, '2022-11-04 03:53:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(119, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90281940, '2022-11-04 03:53:20', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(120, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90292090, '2022-11-04 03:54:47', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(121, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90302090, '2022-11-04 03:54:47', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(122, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90312090, '2022-11-04 03:54:48', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(123, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90322090, '2022-11-04 03:54:48', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(124, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90332090, '2022-11-04 03:54:48', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(125, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90342090, '2022-11-04 03:54:48', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(126, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90352090, '2022-11-04 03:54:48', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(127, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90362090, '2022-11-04 03:54:48', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(128, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90372090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(129, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90382090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(130, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90392090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(131, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90402090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(132, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90412090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(133, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90422090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(134, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90432090, '2022-11-04 03:54:49', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(135, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90442090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(136, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90452090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(137, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90462090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(138, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90472090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(139, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90482090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(140, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90492090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(141, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90502090, '2022-11-04 03:54:50', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(142, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90512090, '2022-11-04 03:54:51', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(143, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90522090, '2022-11-04 03:54:51', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(144, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90532090, '2022-11-04 03:54:51', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(145, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90542090, '2022-11-04 03:54:51', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(146, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90552090, '2022-11-04 03:54:51', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(147, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90562090, '2022-11-04 03:54:51', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(148, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90572090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(149, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90582090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(150, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90592090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(151, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90602090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(152, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90612090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(153, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90622090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(154, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90632090, '2022-11-04 03:54:52', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(155, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90642090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(156, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90652090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(157, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90662090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(158, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90672090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(159, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90682090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(160, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90692090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(161, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90702090, '2022-11-04 03:54:53', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(162, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90712090, '2022-11-04 03:54:54', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(163, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90722090, '2022-11-04 03:54:54', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(164, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90732090, '2022-11-04 03:54:54', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(165, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90742090, '2022-11-04 03:54:54', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(166, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90752090, '2022-11-04 03:54:54', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(167, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90762090, '2022-11-04 03:54:54', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(168, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90772090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(169, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90782090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(170, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90792090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(171, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90802090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(172, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90812090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(173, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90822090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(174, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90832090, '2022-11-04 03:54:55', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(175, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90842090, '2022-11-04 03:54:56', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(176, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90852090, '2022-11-04 03:54:56', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(177, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90862090, '2022-11-04 03:54:56', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(178, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90872090, '2022-11-04 03:54:56', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(179, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90882090, '2022-11-04 03:54:56', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(180, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90892090, '2022-11-04 03:54:56', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(181, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90902090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(182, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90912090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(183, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90922090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(184, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90932090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(185, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90942090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(186, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90952090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(187, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90962090, '2022-11-04 03:54:57', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(188, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90972090, '2022-11-04 03:54:58', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(189, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90982090, '2022-11-04 03:54:58', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(190, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 90992090, '2022-11-04 03:54:58', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(191, 'QOM77281', 'Bank', NULL, NULL, NULL, 8200000, 0, 99192090, '2022-11-04 03:55:07', 'Ti?n g?i $8200000 vào Tài kho?n Hi?n t?i'),
(192, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99202090, '2022-11-04 03:55:12', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(193, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99212090, '2022-11-04 03:55:15', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(194, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99222090, '2022-11-04 03:55:15', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(195, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99232090, '2022-11-04 03:55:15', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(196, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99242090, '2022-11-04 03:55:15', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(197, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99252090, '2022-11-04 03:55:16', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(198, 'QOM77281', 'Bank', NULL, NULL, NULL, 10000, 0, 99262090, '2022-11-04 03:55:17', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(199, 'LRR75545', 'Bank', NULL, NULL, NULL, 0, 100, 4500, '2022-11-04 03:56:29', 'Rút $100 t? Tài kho?n Hi?n t?i'),
(200, 'LRR75545', 'Bank', NULL, NULL, NULL, 10000, 0, 14400, '2022-11-04 03:56:32', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(201, 'LRR75545', 'Bank', NULL, NULL, NULL, 10000, 0, 24400, '2022-11-04 03:56:41', 'Ti?n g?i $10000 vào Tài kho?n Hi?n t?i'),
(202, 'LRR75545', 'Saving', NULL, NULL, NULL, 10000, 0, 10000, '2022-11-04 04:02:05', 'Chuy?n Tài kho?n Hi?n t?i sang Ti?t ki?m'),
(203, 'LRR75545', 'Saving', NULL, NULL, NULL, 0, 10000, 0, '2022-11-04 04:02:08', 'Chuy?n Ti?t ki?m sang Tài kho?n Hi?n t?i'),
(204, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99256610, '2022-11-04 08:47:13', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(205, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99246610, '2022-11-04 08:47:13', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(206, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99236610, '2022-11-04 08:47:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(207, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99226610, '2022-11-04 08:47:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(208, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99216610, '2022-11-04 08:47:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(209, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99206610, '2022-11-04 08:47:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(210, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99196610, '2022-11-04 08:47:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(211, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99186610, '2022-11-04 08:47:14', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(212, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99176610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(213, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99166610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(214, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99156610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(215, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99146610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(216, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99136610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(217, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99126610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(218, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99116610, '2022-11-04 08:47:15', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(219, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99106610, '2022-11-04 08:47:16', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(220, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99096610, '2022-11-04 08:47:16', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(221, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99086610, '2022-11-04 08:47:16', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(222, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99076610, '2022-11-04 08:47:16', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(223, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99066610, '2022-11-04 08:47:16', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(224, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99056610, '2022-11-04 08:47:16', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(225, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99046610, '2022-11-04 08:47:17', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(226, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99036610, '2022-11-04 08:47:17', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(227, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99026610, '2022-11-04 08:47:17', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(228, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99016610, '2022-11-04 08:47:17', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(229, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 99006610, '2022-11-04 08:47:17', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(230, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98996610, '2022-11-04 08:47:17', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(231, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98986610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(232, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98976610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(233, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98966610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(234, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98956610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(235, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98946610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(236, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98936610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(237, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98926610, '2022-11-04 08:47:18', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(238, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98916610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(239, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98906610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(240, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98896610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(241, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98886610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(242, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98876610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(243, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98866610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(244, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98856610, '2022-11-04 08:47:19', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(245, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98846610, '2022-11-04 08:47:20', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(246, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98836610, '2022-11-04 08:47:20', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(247, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98826610, '2022-11-04 08:47:20', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(248, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98816610, '2022-11-04 08:47:20', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(249, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98806610, '2022-11-04 08:47:20', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(250, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98796610, '2022-11-04 08:47:20', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(251, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98786610, '2022-11-04 08:47:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(252, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98776610, '2022-11-04 08:47:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(253, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98766610, '2022-11-04 08:47:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(254, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98756610, '2022-11-04 08:47:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(255, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98746610, '2022-11-04 08:47:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(256, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98736610, '2022-11-04 08:47:21', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(257, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98726610, '2022-11-04 08:47:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(258, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98716610, '2022-11-04 08:47:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(259, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98706610, '2022-11-04 08:47:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(260, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98696610, '2022-11-04 08:47:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(261, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98686610, '2022-11-04 08:47:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(262, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98676610, '2022-11-04 08:47:22', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(263, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98666610, '2022-11-04 08:47:23', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(264, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98656610, '2022-11-04 08:47:23', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(265, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98646610, '2022-11-04 08:47:23', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(266, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98636610, '2022-11-04 08:47:23', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(267, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98626610, '2022-11-04 08:47:23', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(268, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98616610, '2022-11-04 08:47:23', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(269, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98606610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(270, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98596610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(271, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98586610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(272, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98576610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(273, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98566610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(274, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98556610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(275, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98546610, '2022-11-04 08:47:24', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(276, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98536610, '2022-11-04 08:47:25', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(277, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98526610, '2022-11-04 08:47:25', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(278, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98516610, '2022-11-04 08:47:25', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(279, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98506610, '2022-11-04 08:47:25', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(280, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98496610, '2022-11-04 08:47:25', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(281, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98486610, '2022-11-04 08:47:25', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(282, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98476610, '2022-11-04 08:47:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(283, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98466610, '2022-11-04 08:47:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(284, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98456610, '2022-11-04 08:47:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(285, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98446610, '2022-11-04 08:47:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(286, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98436610, '2022-11-04 08:47:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(287, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98426610, '2022-11-04 08:47:26', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(288, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98416610, '2022-11-04 08:47:27', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(289, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98406610, '2022-11-04 08:47:27', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(290, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98396610, '2022-11-04 08:47:27', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(291, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98386610, '2022-11-04 08:47:27', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(292, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98376610, '2022-11-04 08:47:27', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(293, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98366610, '2022-11-04 08:47:27', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(294, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98356610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(295, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98346610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(296, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98336610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(297, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98326610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(298, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98316610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(299, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98306610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(300, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98296610, '2022-11-04 08:47:28', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(301, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98286610, '2022-11-04 08:47:29', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(302, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98276610, '2022-11-04 08:47:29', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(303, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98266610, '2022-11-04 08:47:29', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(304, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98256610, '2022-11-04 08:47:29', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(305, 'QOM77281', 'Bank', NULL, NULL, NULL, 0, 10000, 98246610, '2022-11-04 08:47:29', 'Rút $10000 t? Tài kho?n Hi?n t?i'),
(306, 'UEC26862', 'Bank', NULL, NULL, NULL, 0, 1000, 5150, '2022-11-07 02:44:48', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(307, 'UEC26862', 'Bank', NULL, NULL, NULL, 0, 1000, 4150, '2022-11-07 02:44:49', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(308, 'UEC26862', 'Bank', NULL, NULL, NULL, 0, 1000, 3150, '2022-11-07 02:44:50', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(309, 'UEC26862', 'Bank', NULL, NULL, NULL, 0, 1000, 2150, '2022-11-07 02:44:52', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(310, 'UEC26862', 'Bank', NULL, NULL, NULL, 0, 1000, 1150, '2022-11-07 02:44:53', 'Rút $1000 t? Tài kho?n Hi?n t?i'),
(311, 'ZPO22520', 'Bank', NULL, NULL, NULL, 500000, 0, 10504747, '2022-11-07 13:33:49', 'Ti?n g?i $500000 vào Tài kho?n Hi?n t?i'),
(312, 'ZPO22520', 'Bank', NULL, NULL, NULL, 100000, 0, 10604747, '2022-11-07 13:34:11', 'Ti?n g?i $100000 vào Tài kho?n Hi?n t?i');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cardealer_stock`
--

CREATE TABLE `cardealer_stock` (
  `category` text DEFAULT NULL,
  `vehicle` text DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `priceToOwners` int(11) DEFAULT NULL,
  `priceToCustomers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cardealer_stock`
--

INSERT INTO `cardealer_stock` (`category`, `vehicle`, `stock`, `priceToOwners`, `priceToCustomers`) VALUES
('Super', 't20', 1, 250000, 9999),
('Super', 'italirsx', 0, 250000, 500000),
('Dalili', 'italirsx', 0, 250000, 500000),
('Dalili', 't20', 1, 250000, 9999),
('Coupes', 'jackal', 0, 185000, 250000),
('Compacts', 'weevil', 0, 95000, 120000),
('SUV', 'mesa', 0, 155000, 205000),
('Coupes', 'previon', 0, 132000, 180000),
('Compacts', 'brioso', 0, 48000, 65000),
('SUV', 'dubsta2', 0, 415000, 525000),
('Muscle', 'dominator3', 0, 477000, 540000),
('Muscle', 'tulip', 0, 125000, 160000),
('SUV', 'patriot2', 0, 6950000, 815000),
('SUV', 'rebla', 0, 240000, 325000),
('Muscle', 'coquette3', 0, 315000, 450000),
('Coupes', 'windsor2', 0, 510000, 650000),
('SUV', 'toros', 0, 595000, 725000),
('Compacts', 'panto', 0, 29000, 42000),
('SUV', 'landstalker2', 0, 322000, 425000),
('Sedan', 'cog55', 0, 495000, 600000),
('Sedan', 'stretch', 0, 295000, 390000),
('Sedan', 'asterope', 0, 14000, 25000),
('Sedan', 'captaxi', 0, 9000, 15000),
('Sedan', 'washington', 0, 25000, 45000),
('Muscle', 'impaler', 0, 198000, 250000),
('Sedan', 'tailgater2', 0, 145000, 225000),
('Sport Classic', 'casco', 0, 895000, 1150000),
('Cargo', 'burrito4', 0, 65000, 95000),
('Cargo', 'kamacho', 0, 185000, 250000),
('Sports', 'neon', 0, 670000, 825000),
('Sports', 'italigto', 0, 875000, 1025000),
('Sport Classic', 'infernus2', 0, 1770000, 1990000),
('Sports', 'khamelion', 0, 965000, 1200000),
('Sport Classic', 'btype2', 0, 825000, 950000),
('Cargo', 'paradise', 0, 62000, 93000),
('Sports', 'bestiagts', 0, 745000, 900000),
('Sports', 'coquette4', 0, 1065000, 1320000),
('Super', 'furia', 0, 2320000, 2550000),
('Super', 'autarch', 0, 1950000, 2200000),
('Super', 'nero', 0, 2900000, 3250000),
('Super', 'entity2', 0, 2120000, 2450000),
('Cargo', 'everon', 0, 195000, 265000),
('Sports', 'comet5', 0, 925000, 1150000),
('Motorcycles', 'diablous2', 0, 188000, 225000),
('Off-road', 'outlaw', 0, 175000, 220000),
('Super', 'italigtb', 0, 1520000, 1750000),
('Motorcycles', 'faggio3', 0, 9000, 15000),
('Super', 'gp1', 0, 3320000, 3750000),
('XeMay', 'hevo', 0, 215000, 265000),
('Motorcycles', 'akuma', 0, 122000, 160000),
('Super', 'fmj', 0, 1900000, 2100000),
('Motorcycles', 'cliffhanger', 0, 109000, 142000),
('Motorcycles', 'delifer', 0, 115000, 165000),
('Off-road', 'brawler', 0, 290000, 325000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `crypto`
--

CREATE TABLE `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `crypto`
--

INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
('qbit', 1455, '[{\"PreviousWorth\":1446,\"NewWorth\":1446},{\"PreviousWorth\":1446,\"NewWorth\":1446},{\"PreviousWorth\":1446,\"NewWorth\":1446},{\"PreviousWorth\":1446,\"NewWorth\":1455}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `crypto_transactions`
--

CREATE TABLE `crypto_transactions` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `crypto_transactions`
--

INSERT INTO `crypto_transactions` (`id`, `citizenid`, `title`, `message`, `date`) VALUES
(1, 'FXB52191', 'Credit', 'Bạn có 1 Qbit đã mua!', '2022-11-06 01:10:18'),
(2, 'FXB52191', 'Depreciation', 'Bạn có 1 Qbit đã bán!', '2022-11-06 01:10:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gloveboxitems`
--

CREATE TABLE `gloveboxitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gloveboxitems`
--

INSERT INTO `gloveboxitems` (`id`, `plate`, `items`) VALUES
(2, '3PP446AY', '[]'),
(1, '5DO687CN', '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `houselocations`
--

CREATE TABLE `houselocations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `house_plants`
--

CREATE TABLE `house_plants` (
  `id` int(11) NOT NULL,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lapraces`
--

CREATE TABLE `lapraces` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `management_funds`
--

CREATE TABLE `management_funds` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `type` enum('boss','gang') NOT NULL DEFAULT 'boss'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `management_funds`
--

INSERT INTO `management_funds` (`id`, `job_name`, `amount`, `type`) VALUES
(1, 'police', 0, 'boss'),
(2, 'ambulance', 43000, 'boss'),
(3, 'realestate', 0, 'boss'),
(4, 'taxi', 0, 'boss'),
(5, 'cardealer', 32000, 'boss'),
(6, 'mechanic', 0, 'boss'),
(7, 'lostmc', 0, 'gang'),
(8, 'ballas', 10, 'gang'),
(9, 'vagos', 0, 'gang'),
(10, 'cartel', 0, 'gang'),
(11, 'families', 0, 'gang'),
(12, 'triads', 0, 'gang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `occasion_vehicles`
--

CREATE TABLE `occasion_vehicles` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone_gallery`
--

CREATE TABLE `phone_gallery` (
  `citizenid` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone_invoices`
--

CREATE TABLE `phone_invoices` (
  `id` int(10) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone_tweets`
--

CREATE TABLE `phone_tweets` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` varchar(512) DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phone_tweets`
--

INSERT INTO `phone_tweets` (`id`, `citizenid`, `firstName`, `lastName`, `message`, `date`, `url`, `picture`, `tweetId`) VALUES
(1, 'LRR75545', 'Hong', 'Kong', 'cuu', '2022-11-04 14:16:44', '', 'default', 'TWEET-39926123'),
(2, 'ZPO22520', 'LE', 'Diet', 'alo', '2022-11-04 14:18:27', '', 'default', 'TWEET-98448714'),
(3, 'FXB52191', 'nguyen', 'son', 'hi\n', '2022-11-06 08:11:52', '', 'default', 'TWEET-64092575');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tattoos` longtext DEFAULT NULL,
  `skills` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `players`
--

INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`, `tattoos`, `skills`) VALUES
(1434, 'CQL51031', 1, 'license:861db36f00e4a2a393afd11a7bfeccacea81e6f5', 'Mr Thu Hút', '{\"bank\":5270,\"crypto\":0,\"cash\":580}', '{\"nationality\":\"Viet Nam\",\"birthdate\":\"2022-11-19\",\"gender\":0,\"phone\":\"9409086765\",\"lastname\":\"thu hut\",\"backstory\":\"placeholder backstory\",\"account\":\"US02QBCore9967138745\",\"cid\":1,\"firstname\":\"mr\"}', '{\"label\":\"Civilian\",\"grade\":{\"name\":\"Freelancer\",\"level\":0},\"onduty\":true,\"isboss\":false,\"name\":\"unemployed\",\"payment\":10,\"type\":\"none\"}', '{\"name\":\"none\",\"grade\":{\"name\":\"none\",\"level\":0},\"label\":\"No Gang Affiliaton\",\"isboss\":false}', '{\"x\":1856.967041015625,\"y\":2582.24169921875,\"z\":45.6578369140625}', '{\"attachmentcraftingrep\":0,\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"sec\":9,\"year\":2022,\"wday\":1,\"min\":55,\"isdst\":false,\"hour\":15,\"yday\":310,\"month\":11,\"day\":6}},\"jobrep\":{\"hotdog\":0,\"taxi\":0,\"tow\":0,\"trucker\":0},\"inlaststand\":false,\"status\":[],\"armor\":0,\"fitbit\":[],\"phone\":[],\"dealerrep\":0,\"jailitems\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"stress\":0,\"craftingrep\":0,\"phonedata\":{\"SerialNumber\":33661942,\"InstalledApps\":[]},\"bloodtype\":\"O+\",\"commandbinds\":[],\"injail\":0,\"hunger\":95.8,\"isdead\":false,\"ishandcuffed\":false,\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-14563145\",\"thirst\":96.2,\"inside\":{\"apartment\":[]},\"fingerprint\":\"uD578k14uwS3315\"}', '[{\"name\":\"weapon_knife\",\"slot\":1,\"type\":\"weapon\",\"info\":{\"serie\":\"19Ztc7fR735jRap\",\"ammo\":0,\"quality\":100},\"amount\":1},{\"name\":\"id_card\",\"slot\":2,\"type\":\"item\",\"info\":{\"firstname\":\"mr\",\"citizenid\":\"CQL51031\",\"gender\":0,\"nationality\":\"Viet Nam\",\"lastname\":\"thu hut\",\"birthdate\":\"2022-11-19\"},\"amount\":1},{\"name\":\"lockpick\",\"slot\":3,\"type\":\"item\",\"info\":[],\"amount\":3},{\"name\":\"water_bottle\",\"slot\":4,\"type\":\"item\",\"info\":[],\"amount\":4},{\"name\":\"tosti\",\"slot\":5,\"type\":\"item\",\"info\":[],\"amount\":4},{\"name\":\"radio\",\"slot\":6,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"phone\",\"slot\":7,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"xengdaokhobau\",\"slot\":8,\"type\":\"item\",\"info\":[],\"amount\":1}]', '2022-11-06 09:03:01', NULL, '{\"Strength\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":10,\"RemoveAmount\":-0.3},\"Shooting\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.1},\"Driving\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0.7,\"RemoveAmount\":-0.5},\"Diving\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.3},\"Resistance\":{\"Stat\":\"MP0_STAMINA\",\"Current\":20,\"RemoveAmount\":-0.3},\"Raise front wheel\":{\"Stat\":\"MP0_WHEELIE_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.2}}'),
(1175, 'FXB52191', 1, 'license:269139e8160d6e1104bd797a966f55fd884958bc', 'son nguyen', '{\"cash\":135,\"crypto\":0,\"bank\":-300}', '{\"nationality\":\"viet nam\",\"birthdate\":\"2022-11-08\",\"firstname\":\"nguyen\",\"account\":\"US06QBCore5745307496\",\"lastname\":\"son\",\"backstory\":\"placeholder backstory\",\"gender\":0,\"cid\":1,\"phone\":\"1044897705\"}', '{\"label\":\"Cảnh Sát LSPD\",\"grade\":{\"name\":\"Trưởng phòng\",\"level\":4},\"onduty\":false,\"isboss\":true,\"name\":\"police\",\"payment\":150,\"type\":\"leo\"}', '{\"label\":\"No Gang Affiliaton\",\"grade\":{\"name\":\"none\",\"level\":0},\"name\":\"none\",\"isboss\":false}', '{\"x\":294.4879150390625,\"y\":-582.2769165039063,\"z\":43.1640625}', '{\"attachmentcraftingrep\":0,\"isdead\":false,\"jobrep\":{\"hotdog\":0,\"taxi\":0,\"tow\":0,\"trucker\":0},\"inlaststand\":false,\"status\":[],\"armor\":0,\"fitbit\":[],\"phone\":[],\"dealerrep\":0,\"jailitems\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"stress\":0,\"craftingrep\":0,\"phonedata\":{\"SerialNumber\":17323523,\"InstalledApps\":[]},\"criminalrecord\":{\"hasRecord\":false},\"commandbinds\":[],\"hunger\":74.79999999999999,\"injail\":0,\"thirst\":77.20000000000002,\"fingerprint\":\"rO729k46BUc3564\",\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-72942110\",\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"bloodtype\":\"A+\"}', '[]', '2022-11-06 16:03:36', NULL, '{\"Shooting\":{\"Current\":0,\"RemoveAmount\":-0.1,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Diving\":{\"Current\":0,\"RemoveAmount\":-0.3,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Resistance\":{\"Current\":19.4,\"RemoveAmount\":-0.3,\"Stat\":\"MP0_STAMINA\"},\"Strength\":{\"Current\":9.39999999999999,\"RemoveAmount\":-0.3,\"Stat\":\"MP0_STRENGTH\"},\"Driving\":{\"Current\":0,\"RemoveAmount\":-0.5,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Raise front wheel\":{\"Current\":0,\"RemoveAmount\":-0.2,\"Stat\":\"MP0_WHEELIE_ABILITY\"}}'),
(1571, 'KUC68081', 1, 'license:c2d4c1c7736500683cd5d19de042b9f2ad82f36d', 'KenInfer', '{\"cash\":500,\"crypto\":0,\"bank\":5060}', '{\"nationality\":\"VN\",\"birthdate\":\"1999-09-24\",\"account\":\"US08QBCore3776377861\",\"phone\":\"2669863821\",\"lastname\":\"Ken\",\"backstory\":\"placeholder backstory\",\"gender\":0,\"cid\":1,\"firstname\":\"Infer\"}', '{\"label\":\"Civilian\",\"payment\":10,\"onduty\":true,\"isboss\":false,\"name\":\"unemployed\",\"grade\":{\"name\":\"Freelancer\",\"level\":0},\"type\":\"none\"}', '{\"name\":\"none\",\"grade\":{\"name\":\"none\",\"level\":0},\"label\":\"No Gang Affiliaton\",\"isboss\":false}', '{\"x\":461.4857177734375,\"y\":-990.1846313476563,\"z\":30.6783447265625}', '{\"attachmentcraftingrep\":0,\"isdead\":false,\"jobrep\":{\"hotdog\":0,\"taxi\":0,\"tow\":0,\"trucker\":0},\"inlaststand\":false,\"status\":[],\"armor\":0,\"hunger\":83.19999999999999,\"phone\":[],\"dealerrep\":0,\"jailitems\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"stress\":0,\"ishandcuffed\":false,\"injail\":0,\"phonedata\":{\"SerialNumber\":69061813,\"InstalledApps\":[]},\"commandbinds\":[],\"fitbit\":[],\"criminalrecord\":{\"hasRecord\":false},\"craftingrep\":0,\"fingerprint\":\"sO555R10NLq3884\",\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-86507104\",\"thirst\":96.2,\"inside\":{\"apartment\":[]},\"bloodtype\":\"A-\"}', '[{\"name\":\"water_bottle\",\"slot\":1,\"type\":\"item\",\"info\":[],\"amount\":3},{\"name\":\"phone\",\"slot\":2,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"lockpick\",\"slot\":3,\"type\":\"item\",\"info\":[],\"amount\":5},{\"name\":\"id_card\",\"slot\":4,\"type\":\"item\",\"info\":{\"firstname\":\"Infer\",\"citizenid\":\"KUC68081\",\"gender\":0,\"nationality\":\"VN\",\"lastname\":\"Ken\",\"birthdate\":\"1999-09-24\"},\"amount\":1},{\"name\":\"tosti\",\"slot\":5,\"type\":\"item\",\"info\":[],\"amount\":5}]', '2022-11-06 09:34:26', NULL, NULL),
(106, 'LDC92434', 1, 'license:68dd4c37b04cb3ce99192ac1b6dcae09104efda4', 'BóngLongXuyen', '{\"cash\":500,\"bank\":5010,\"crypto\":0}', '{\"gender\":0,\"firstname\":\"Choi\",\"birthdate\":\"2022-10-24\",\"phone\":\"2954284622\",\"cid\":1,\"nationality\":\"VN\",\"backstory\":\"placeholder backstory\",\"account\":\"US01QBCore6495888122\",\"lastname\":\"Do Ha\"}', '{\"isboss\":false,\"name\":\"unemployed\",\"label\":\"Civilian\",\"payment\":10,\"type\":\"none\",\"onduty\":true,\"grade\":{\"level\":0,\"name\":\"Freelancer\"}}', '{\"isboss\":false,\"name\":\"none\",\"label\":\"No Gang Affiliaton\",\"grade\":{\"level\":0,\"name\":\"none\"}}', '{\"x\":-1208.6768798828126,\"y\":-357.70550537109377,\"z\":37.2835693359375}', '{\"tracker\":false,\"armor\":0,\"commandbinds\":[],\"ishandcuffed\":false,\"bloodtype\":\"O+\",\"phonedata\":{\"SerialNumber\":13456139,\"InstalledApps\":[]},\"isdead\":false,\"dealerrep\":0,\"craftingrep\":0,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"fingerprint\":\"Lb086a05RVq0346\",\"inlaststand\":false,\"jailitems\":[],\"walletid\":\"QB-57711866\",\"stress\":0,\"phone\":[],\"hunger\":87.39999999999999,\"status\":[],\"criminalrecord\":{\"hasRecord\":false},\"attachmentcraftingrep\":0,\"jobrep\":{\"tow\":0,\"trucker\":0,\"taxi\":0,\"hotdog\":0},\"callsign\":\"NO CALLSIGN\",\"injail\":0,\"inside\":{\"apartment\":[]},\"fitbit\":[],\"thirst\":88.60000000000001}', '[{\"slot\":1,\"info\":{\"lastname\":\"Do Ha\",\"firstname\":\"Choi\",\"birthdate\":\"2022-10-24\",\"type\":\"Class C Driver License\"},\"name\":\"driver_license\",\"amount\":1,\"type\":\"item\"},{\"slot\":2,\"info\":[],\"name\":\"water_bottle\",\"amount\":5,\"type\":\"item\"},{\"slot\":3,\"info\":[],\"name\":\"phone\",\"amount\":1,\"type\":\"item\"},{\"slot\":4,\"info\":{\"gender\":0,\"lastname\":\"Do Ha\",\"birthdate\":\"2022-10-24\",\"firstname\":\"Choi\",\"nationality\":\"VN\",\"citizenid\":\"LDC92434\"},\"name\":\"id_card\",\"amount\":1,\"type\":\"item\"},{\"slot\":5,\"info\":[],\"name\":\"tosti\",\"amount\":5,\"type\":\"item\"},{\"slot\":6,\"info\":[],\"name\":\"lockpick\",\"amount\":2,\"type\":\"item\"}]', '2022-10-30 06:10:38', NULL, NULL),
(47, 'LRR75545', 1, 'license:9109448fa2232a29669b399c8f2c226859153125', 'MityTin', '{\"cash\":638434,\"crypto\":0,\"bank\":3033119}', '{\"cid\":1,\"birthdate\":\"1997-03-20\",\"backstory\":\"placeholder backstory\",\"nationality\":\"VietNam\",\"card\":9578404399559120,\"account\":\"US08QBCore3408644616\",\"gender\":0,\"firstname\":\"Hong\",\"lastname\":\"Kong\",\"phone\":\"7318937198\"}', '{\"onduty\":true,\"name\":\"police\",\"grade\":{\"level\":4,\"name\":\"Trưởng phòng\"},\"type\":\"leo\",\"label\":\"Cảnh Sát LSPD\",\"isboss\":true,\"payment\":150}', '{\"label\":\"Ballas\",\"name\":\"ballas\",\"grade\":{\"level\":3,\"name\":\"Boss\"},\"isboss\":true}', '{\"x\":411.4285888671875,\"y\":-1650.5010986328126,\"z\":29.2799072265625}', '{\"ishandcuffed\":false,\"commandbinds\":[],\"walletid\":\"QB-53284047\",\"stress\":5,\"fingerprint\":\"LK109r29WpL4653\",\"injail\":0,\"inside\":{\"apartment\":[]},\"bloodtype\":\"O+\",\"thirst\":12.60000000000004,\"jailitems\":[],\"jobrep\":{\"hotdog\":0,\"trucker\":0,\"tow\":0,\"taxi\":0},\"attachmentcraftingrep\":0,\"inlaststand\":false,\"dealerrep\":0,\"tracker\":false,\"craftingrep\":0,\"isdead\":false,\"armor\":0,\"status\":[],\"phonedata\":{\"SerialNumber\":18113146,\"InstalledApps\":[]},\"fitbit\":[],\"phone\":{\"background\":\"https://hinhgaixinh.com/wp-content/uploads/2022/09/gai-xinh-khoe-tam-hon-dep-cuc-sexy.jpg\",\"profilepicture\":\"https://hinhgaixinh.com/wp-content/uploads/2022/08/co-em-khoe-lan-da-min-mang-nong-bong-trong-bo-bikini-do-7.jpg\"},\"hunger\":3.39999999999995,\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"min\":48,\"sec\":46,\"yday\":309,\"isdst\":false,\"wday\":7,\"month\":11,\"day\":5,\"hour\":7,\"year\":2022}},\"callsign\":\"NO CALLSIGN\",\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false}}', '[{\"type\":\"weapon\",\"name\":\"weapon_carbinerifle_mk2\",\"slot\":1,\"info\":{\"ammo\":86,\"quality\":85.14999999999945,\"serie\":\"85oLp8yI435jCMV\"},\"amount\":1},{\"type\":\"weapon\",\"name\":\"weapon_stungun\",\"slot\":2,\"info\":{\"ammo\":83,\"quality\":100,\"serie\":\"98wLW5dv746Wtcy\"},\"amount\":1},{\"type\":\"weapon\",\"name\":\"weapon_vintagepistol\",\"slot\":3,\"info\":{\"ammo\":0,\"quality\":98.19999999999992,\"serie\":\"37SKa1wa017OaQO\"},\"amount\":1},{\"type\":\"item\",\"name\":\"bandohoanchinh\",\"slot\":4,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"coca_leaf\",\"slot\":5,\"info\":[],\"amount\":20},{\"type\":\"item\",\"name\":\"visa\",\"slot\":6,\"info\":{\"cardNumber\":9578404399559120,\"name\":\"Hong Kong\",\"cardActive\":true,\"citizenid\":\"LRR75545\",\"cardPin\":1111,\"cardType\":\"visa\"},\"amount\":1},{\"type\":\"item\",\"name\":\"driver_license\",\"slot\":7,\"info\":{\"lastname\":\"Kong\",\"type\":\"Giấy phép lái xe Hạng C\",\"firstname\":\"Hong\",\"birthdate\":\"1997-03-20\"},\"amount\":1},{\"type\":\"item\",\"name\":\"id_card\",\"slot\":8,\"info\":{\"firstname\":\"Hong\",\"citizenid\":\"LRR75545\",\"lastname\":\"Kong\",\"nationality\":\"VietNam\",\"gender\":0,\"birthdate\":\"1997-03-20\"},\"amount\":1},{\"type\":\"item\",\"name\":\"radio\",\"slot\":9,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"cannabis\",\"slot\":10,\"info\":[],\"amount\":3},{\"type\":\"item\",\"name\":\"keepcompanionmtlion2\",\"slot\":11,\"info\":{\"level\":13,\"hash\":\"65pFh7sG054XmER\",\"age\":2550,\"thirst\":51.0,\"owner\":{\"firstname\":\"Hong\",\"lastname\":\"Kong\",\"phone\":\"7318937198\",\"cid\":1,\"account\":\"US08QBCore3408644616\",\"backstory\":\"placeholder backstory\",\"nationality\":\"VietNam\",\"gender\":0,\"birthdate\":\"1997-03-20\"},\"food\":0.0,\"name\":\"Leo\",\"XP\":278,\"health\":199.6,\"gender\":true,\"variation\":\"dark\"},\"amount\":1},{\"type\":\"item\",\"name\":\"phone\",\"slot\":12,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"lighter\",\"slot\":13,\"info\":[],\"amount\":4},{\"type\":\"item\",\"name\":\"lockpick\",\"slot\":14,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"recyclablematerial\",\"slot\":15,\"info\":[],\"amount\":67},{\"type\":\"item\",\"name\":\"emptycowbucket\",\"slot\":16,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"gasoline\",\"slot\":17,\"info\":[],\"amount\":2},{\"type\":\"item\",\"name\":\"steel\",\"slot\":18,\"info\":[],\"amount\":5},{\"type\":\"weapon\",\"name\":\"weapon_assaultrifle\",\"slot\":19,\"info\":{\"ammo\":0,\"quality\":100,\"serie\":\"45iPc4fE218jbrF\"},\"amount\":1},{\"type\":\"item\",\"name\":\"xengdaokhobau\",\"slot\":20,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"corncob\",\"slot\":21,\"info\":[],\"amount\":6},{\"type\":\"item\",\"name\":\"plastic\",\"slot\":22,\"info\":[],\"amount\":10},{\"type\":\"item\",\"name\":\"contract\",\"slot\":24,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"markedbills\",\"slot\":25,\"info\":{\"worth\":5579},\"amount\":2},{\"type\":\"item\",\"name\":\"collarpet\",\"slot\":26,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"beer\",\"slot\":27,\"info\":[],\"amount\":9},{\"type\":\"item\",\"name\":\"cryptostick\",\"slot\":28,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"cryptostick\",\"slot\":29,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"markedbills\",\"slot\":30,\"info\":{\"worth\":9668},\"amount\":1},{\"type\":\"item\",\"name\":\"cryptostick\",\"slot\":32,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"radio\",\"slot\":33,\"info\":[],\"amount\":2},{\"type\":\"weapon\",\"name\":\"weapon_knife\",\"slot\":34,\"info\":{\"quality\":100,\"serie\":\"63rrD9bm381Rdwb\"},\"amount\":1}]', '2022-11-07 07:06:28', '[{\"Count\":1,\"collection\":\"mpbiker_overlays\",\"nameHash\":\"MP_MP_Biker_Tat_051_F\"},{\"Count\":2,\"collection\":\"mpchristmas2017_overlays\",\"nameHash\":\"MP_Christmas2017_Tattoo_023_F\"},{\"Count\":3,\"collection\":\"mpheist3_overlays\",\"nameHash\":\"mpHeist3_Tat_014_F\"},{\"Count\":3,\"collection\":\"mpbiker_overlays\",\"nameHash\":\"MP_MP_Biker_Tat_038_F\"},{\"Count\":4,\"collection\":\"mpvinewood_overlays\",\"nameHash\":\"MP_Vinewood_Tat_002_F\"}]', '{\"Diving\":{\"RemoveAmount\":-0.3,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Resistance\":{\"RemoveAmount\":-0.3,\"Current\":19.09999999999999,\"Stat\":\"MP0_STAMINA\"},\"Strength\":{\"RemoveAmount\":-0.3,\"Current\":9.09999999999998,\"Stat\":\"MP0_STRENGTH\"},\"Shooting\":{\"RemoveAmount\":-0.1,\"Current\":0.1,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Raise front wheel\":{\"RemoveAmount\":-0.2,\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Driving\":{\"RemoveAmount\":-0.5,\"Current\":0,\"Stat\":\"MP0_DRIVING_ABILITY\"}}'),
(31, 'OWU19261', 1, 'license:811ab75d4f9352c9c55fd71c794d4f8120347860', 'Bảo 9 Ngón', '{\"bank\":7410,\"crypto\":0,\"cash\":1000500}', '{\"nationality\":\"Vietnam\",\"birthdate\":\"2022-10-26\",\"cid\":1,\"account\":\"US08QBCore5134826075\",\"lastname\":\"Bảo\",\"backstory\":\"placeholder backstory\",\"phone\":\"8364852532\",\"gender\":0,\"firstname\":\"Tony\"}', '{\"label\":\"Unemployed\",\"grade\":{\"name\":\"Freelancer\",\"level\":0},\"onduty\":true,\"isboss\":false,\"name\":\"unemployed\",\"payment\":30,\"type\":\"none\"}', '{\"label\":\"No Gang Affiliaton\",\"grade\":{\"name\":\"none\",\"level\":0},\"name\":\"none\",\"isboss\":false}', '{\"x\":-3039.560546875,\"y\":35.63077163696289,\"z\":10.104736328125}', '{\"attachmentcraftingrep\":0,\"isdead\":false,\"jobrep\":{\"hotdog\":0,\"taxi\":0,\"trucker\":0,\"tow\":0},\"inlaststand\":false,\"status\":[],\"armor\":0,\"fitbit\":[],\"phone\":[],\"dealerrep\":0,\"jailitems\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"stress\":2,\"craftingrep\":0,\"injail\":0,\"criminalrecord\":{\"hasRecord\":false},\"commandbinds\":[],\"thirst\":77.20000000000002,\"ishandcuffed\":false,\"fingerprint\":\"xu031H65UEd7343\",\"hunger\":74.79999999999999,\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-92018996\",\"bloodtype\":\"A-\",\"inside\":{\"apartment\":[]},\"phonedata\":{\"SerialNumber\":31497388,\"InstalledApps\":[]}}', '[{\"name\":\"weapon_raypistol\",\"slot\":1,\"type\":\"weapon\",\"info\":{\"serie\":\"96Uwv9ut590hawu\",\"ammo\":-1,\"quality\":100},\"amount\":1},{\"name\":\"water_bottle\",\"slot\":2,\"type\":\"item\",\"info\":[],\"amount\":5},{\"name\":\"driver_license\",\"slot\":3,\"type\":\"item\",\"info\":{\"birthdate\":\"2022-10-26\",\"type\":\"Class C Driver License\",\"lastname\":\"Bảo\",\"firstname\":\"Tony\"},\"amount\":1},{\"name\":\"phone\",\"slot\":4,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"lockpick\",\"slot\":5,\"type\":\"item\",\"info\":[],\"amount\":2},{\"name\":\"tosti\",\"slot\":6,\"type\":\"item\",\"info\":[],\"amount\":5},{\"name\":\"xengdaokhobau\",\"slot\":7,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"markedbills\",\"slot\":8,\"type\":\"item\",\"info\":{\"worth\":7561},\"amount\":1},{\"name\":\"cannabis\",\"slot\":9,\"type\":\"item\",\"info\":[],\"amount\":9},{\"name\":\"id_card\",\"slot\":10,\"type\":\"item\",\"info\":{\"birthdate\":\"2022-10-26\",\"lastname\":\"Bảo\",\"gender\":0,\"nationality\":\"Vietnam\",\"firstname\":\"Tony\",\"citizenid\":\"OWU19261\"},\"amount\":1}]', '2022-11-06 08:39:39', NULL, NULL),
(1, 'QOM77281', 1, 'license:1cb66026342598b4f682015d1841859ed3448850', 'Moah', '{\"cash\":305544,\"crypto\":0,\"bank\":84963471}', '{\"cid\":1,\"birthdate\":\"1997-12-25\",\"backstory\":\"placeholder backstory\",\"nationality\":\"Vietnam\",\"account\":\"US01QBCore8563824416\",\"phone\":\"3986615565\",\"firstname\":\"Sách\",\"lastname\":\"Mọt\",\"gender\":0}', '{\"onduty\":true,\"name\":\"unemployed\",\"grade\":{\"level\":0,\"name\":\"No Grades\"},\"type\":\"none\",\"label\":\"Dân thường\",\"isboss\":false,\"payment\":30}', '{\"label\":\"Ballas\",\"name\":\"ballas\",\"grade\":{\"level\":0,\"name\":\"No Grades\"},\"isboss\":false}', '{\"x\":425.5120849609375,\"y\":-806.7955932617188,\"z\":29.4820556640625}', '{\"ishandcuffed\":false,\"commandbinds\":[],\"walletid\":\"QB-91810258\",\"stress\":18,\"fingerprint\":\"kA188Q04Sol5715\",\"jailitems\":[],\"inside\":{\"apartment\":[]},\"injail\":0,\"thirst\":92.4,\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"isdead\":false,\"attachmentcraftingrep\":0,\"inlaststand\":false,\"dealerrep\":0,\"tracker\":false,\"craftingrep\":0,\"jobrep\":{\"hotdog\":0,\"trucker\":0,\"tow\":0,\"taxi\":0},\"armor\":0,\"status\":[],\"bloodtype\":\"O-\",\"fitbit\":[],\"phone\":{\"background\":\"https://media.discordapp.net/attachments/918199029899329570/1035592764584378378/unknown.png?width=577&height=577\",\"profilepicture\":\"https://media.discordapp.net/attachments/918199029899329570/1035592764584378378/unknown.png?width=577&height=577\"},\"hunger\":91.6,\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"min\":54,\"sec\":38,\"yday\":310,\"year\":2022,\"wday\":1,\"month\":11,\"day\":6,\"isdst\":false,\"hour\":15}},\"callsign\":\"NO CALLSIGN\",\"phonedata\":{\"SerialNumber\":72765263,\"InstalledApps\":[]}}', '[{\"type\":\"weapon\",\"name\":\"weapon_petrolcan\",\"slot\":1,\"info\":{\"quality\":100,\"serie\":\"94KaJ6Zy158RYrT\"},\"amount\":1},{\"type\":\"item\",\"name\":\"keepcompanionhusky\",\"slot\":2,\"info\":{\"level\":19,\"hash\":\"13HoK2YW603QtfB\",\"age\":3500,\"thirst\":70.0,\"owner\":{\"firstname\":\"Sách\",\"lastname\":\"Mọt\",\"phone\":\"3986615565\",\"cid\":1,\"account\":\"US01QBCore8563824416\",\"backstory\":\"placeholder backstory\",\"nationality\":\"Vietnam\",\"gender\":0,\"birthdate\":\"1997-12-25\"},\"food\":0.0,\"name\":\"Oreo\",\"gender\":true,\"XP\":492,\"health\":198.8,\"variation\":\"dark\"},\"amount\":1},{\"type\":\"item\",\"name\":\"vodka\",\"slot\":3,\"info\":[],\"amount\":5},{\"type\":\"item\",\"name\":\"tosti\",\"slot\":4,\"info\":[],\"amount\":5},{\"type\":\"item\",\"name\":\"radio\",\"slot\":5,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"driver_license\",\"slot\":6,\"info\":{\"lastname\":\"Mọt\",\"type\":\"Class C Driver License\",\"firstname\":\"Sách\",\"birthdate\":\"1997-12-25\"},\"amount\":1},{\"type\":\"item\",\"name\":\"id_card\",\"slot\":7,\"info\":{\"firstname\":\"Sách\",\"citizenid\":\"QOM77281\",\"lastname\":\"Mọt\",\"nationality\":\"Vietnam\",\"gender\":0,\"birthdate\":\"1997-12-25\"},\"amount\":1},{\"type\":\"item\",\"name\":\"whiskey\",\"slot\":8,\"info\":[],\"amount\":7},{\"type\":\"item\",\"name\":\"phone\",\"slot\":9,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"rifle_ammo\",\"slot\":10,\"info\":[],\"amount\":5},{\"type\":\"item\",\"name\":\"contract\",\"slot\":11,\"info\":[],\"amount\":1}]', '2022-11-07 06:43:18', '[{\"Count\":1,\"nameHash\":\"MP_Christmas2017_Tattoo_013_F\",\"collection\":\"mpchristmas2017_overlays\"},{\"Count\":1,\"nameHash\":\"MP_Christmas2017_Tattoo_004_F\",\"collection\":\"mpchristmas2017_overlays\"},{\"Count\":1,\"nameHash\":\"MP_Bea_F_Neck_000\",\"collection\":\"mpbeach_overlays\"},{\"Count\":1,\"nameHash\":\"FM_Tat_F_001\",\"collection\":\"multiplayer_overlays\"},{\"Count\":1,\"nameHash\":\"FM_Tat_Award_F_010\",\"collection\":\"multiplayer_overlays\"}]', '{\"Resistance\":{\"Current\":19.4,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.3},\"Raise front wheel\":{\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\",\"RemoveAmount\":-0.2},\"Diving\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.3},\"Shooting\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.1},\"Driving\":{\"Current\":0.6,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.5},\"Strength\":{\"Current\":9.7,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.3}}'),
(431, 'QXR63665', 1, 'license:ce0f29191b95e264bf569d50470e8a1068dd6efa', 'CasterCiu', '{\"cash\":500,\"bank\":5020,\"crypto\":0}', '{\"nationality\":\"Việt Nam\",\"phone\":\"3803779127\",\"gender\":0,\"birthdate\":\"1997-12-08\",\"firstname\":\"Nguyễn\",\"cid\":1,\"backstory\":\"placeholder backstory\",\"account\":\"US08QBCore5582990365\",\"lastname\":\"Duy Tuấn\"}', '{\"type\":\"none\",\"name\":\"unemployed\",\"grade\":{\"name\":\"Freelancer\",\"level\":0},\"label\":\"Civilian\",\"onduty\":true,\"payment\":10,\"isboss\":false}', '{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}', '{\"x\":214.91868591308595,\"y\":-809.7362670898438,\"z\":30.7457275390625}', '{\"armor\":0,\"hunger\":100,\"thirst\":100,\"commandbinds\":[],\"bloodtype\":\"O-\",\"inside\":{\"apartment\":[]},\"fitbit\":[],\"fingerprint\":\"IZ726v25vIe6066\",\"ishandcuffed\":false,\"callsign\":\"NO CALLSIGN\",\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"isdead\":false,\"stress\":0,\"injail\":0,\"phone\":[],\"status\":[],\"dealerrep\":0,\"jailitems\":[],\"inlaststand\":false,\"craftingrep\":0,\"walletid\":\"QB-23055725\",\"tracker\":false,\"criminalrecord\":{\"hasRecord\":false},\"jobrep\":{\"taxi\":0,\"tow\":0,\"trucker\":0,\"hotdog\":0},\"attachmentcraftingrep\":0,\"phonedata\":{\"SerialNumber\":98906825,\"InstalledApps\":[]}}', '[{\"name\":\"tosti\",\"info\":[],\"type\":\"item\",\"slot\":1,\"amount\":5},{\"name\":\"lockpick\",\"info\":[],\"type\":\"item\",\"slot\":2,\"amount\":2},{\"name\":\"id_card\",\"info\":{\"firstname\":\"Nguyễn\",\"lastname\":\"Duy Tuấn\",\"citizenid\":\"QXR63665\",\"nationality\":\"Việt Nam\",\"gender\":0,\"birthdate\":\"1997-12-08\"},\"type\":\"item\",\"slot\":3,\"amount\":1},{\"name\":\"phone\",\"info\":[],\"type\":\"item\",\"slot\":4,\"amount\":1},{\"name\":\"driver_license\",\"info\":{\"firstname\":\"Nguyễn\",\"lastname\":\"Duy Tuấn\",\"type\":\"Class C Driver License\",\"birthdate\":\"1997-12-08\"},\"type\":\"item\",\"slot\":5,\"amount\":1},{\"name\":\"water_bottle\",\"info\":[],\"type\":\"item\",\"slot\":6,\"amount\":5}]', '2022-11-02 01:20:31', NULL, NULL),
(1600, 'UEC26862', 1, 'license:de7252cb58ce69b2e291d02cc80d76c832684dd6', 'rotiensinh.81716', '{\"cash\":5000,\"crypto\":0,\"bank\":150}', '{\"nationality\":\"Việt Nam\",\"birthdate\":\"1997-05-09\",\"account\":\"US01QBCore7024830863\",\"phone\":\"9967584257\",\"lastname\":\"Bon\",\"backstory\":\"placeholder backstory\",\"gender\":0,\"cid\":1,\"firstname\":\"Boss\"}', '{\"label\":\"Civilian\",\"payment\":10,\"onduty\":true,\"isboss\":false,\"name\":\"unemployed\",\"grade\":{\"name\":\"Freelancer\",\"level\":0},\"type\":\"none\"}', '{\"name\":\"none\",\"grade\":{\"name\":\"none\",\"level\":0},\"label\":\"No Gang Affiliaton\",\"isboss\":false}', '{\"x\":110.43955993652344,\"y\":-1086.923095703125,\"z\":29.1787109375}', '{\"attachmentcraftingrep\":0,\"isdead\":false,\"jobrep\":{\"hotdog\":0,\"taxi\":0,\"tow\":0,\"trucker\":0},\"inlaststand\":false,\"status\":[],\"armor\":0,\"hunger\":74.79999999999999,\"phone\":[],\"dealerrep\":0,\"jailitems\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"stress\":0,\"ishandcuffed\":false,\"injail\":0,\"phonedata\":{\"SerialNumber\":39209845,\"InstalledApps\":[]},\"commandbinds\":[],\"fitbit\":[],\"criminalrecord\":{\"hasRecord\":false},\"craftingrep\":0,\"fingerprint\":\"kl879m66pTD7717\",\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-68075902\",\"thirst\":65.80000000000003,\"inside\":{\"apartment\":[]},\"bloodtype\":\"B+\"}', '[{\"name\":\"water_bottle\",\"slot\":1,\"type\":\"item\",\"info\":[],\"amount\":5},{\"name\":\"phone\",\"slot\":2,\"type\":\"item\",\"info\":[],\"amount\":1},{\"name\":\"lockpick\",\"slot\":3,\"type\":\"item\",\"info\":[],\"amount\":5},{\"name\":\"id_card\",\"slot\":4,\"type\":\"item\",\"info\":{\"firstname\":\"Boss\",\"citizenid\":\"UEC26862\",\"gender\":0,\"nationality\":\"Việt Nam\",\"lastname\":\"Bon\",\"birthdate\":\"1997-05-09\"},\"amount\":1},{\"name\":\"tosti\",\"slot\":5,\"type\":\"item\",\"info\":[],\"amount\":4},{\"name\":\"bandage\",\"slot\":6,\"type\":\"item\",\"info\":[],\"amount\":5}]', '2022-11-06 19:45:39', NULL, NULL),
(168, 'ZEP36379', 1, 'license:c1d87e33b23a88f19547668b529b3f0602f5a3e7', 'Ngọc Như', '{\"bank\":1240,\"cash\":496,\"crypto\":0}', '{\"lastname\":\"Nhimss\",\"gender\":1,\"account\":\"US05QBCore1846473123\",\"firstname\":\"Nguyen\",\"nationality\":\"Mặt trăng\",\"birthdate\":\"1990-09-24\",\"backstory\":\"placeholder backstory\",\"cid\":1,\"phone\":\"6483827454\"}', '{\"type\":\"none\",\"isboss\":false,\"name\":\"unemployed\",\"label\":\"Civilian\",\"grade\":{\"level\":0,\"name\":\"Freelancer\"},\"payment\":10,\"onduty\":true}', '{\"label\":\"No Gang Affiliaton\",\"grade\":{\"level\":0,\"name\":\"none\"},\"isboss\":false,\"name\":\"none\"}', '{\"x\":-3035.103271484375,\"y\":48.5274772644043,\"z\":10.1552734375}', '{\"callsign\":\"NO CALLSIGN\",\"injail\":0,\"phone\":[],\"isdead\":false,\"tracker\":false,\"attachmentcraftingrep\":0,\"walletid\":\"QB-42180723\",\"jailitems\":[],\"craftingrep\":0,\"commandbinds\":[],\"hunger\":53.79999999999997,\"jobrep\":{\"taxi\":0,\"tow\":0,\"trucker\":0,\"hotdog\":0},\"fitbit\":[],\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":62582881},\"bloodtype\":\"B+\",\"status\":[],\"ishandcuffed\":false,\"thirst\":58.20000000000003,\"inlaststand\":false,\"stress\":1,\"dealerrep\":0,\"criminalrecord\":{\"hasRecord\":false},\"inside\":{\"apartment\":[]},\"fingerprint\":\"uc458k01meq5388\",\"armor\":0,\"licences\":{\"weapon\":false,\"business\":false,\"driver\":true}}', '[{\"name\":\"weapon_switchblade\",\"slot\":1,\"type\":\"weapon\",\"amount\":1,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"64xCh7mo987UwoA\"}},{\"name\":\"weapon_battleaxe\",\"slot\":2,\"type\":\"weapon\",\"amount\":1,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"81qoD4yY723YmjG\"}},{\"name\":\"phone\",\"slot\":3,\"type\":\"item\",\"amount\":1,\"info\":[]},{\"name\":\"id_card\",\"slot\":4,\"type\":\"item\",\"amount\":1,\"info\":{\"firstname\":\"Nguyen\",\"nationality\":\"Mặt trăng\",\"citizenid\":\"ZEP36379\",\"lastname\":\"Nhimss\",\"gender\":1,\"birthdate\":\"1990-09-24\"}},{\"name\":\"tosti\",\"slot\":5,\"type\":\"item\",\"amount\":3,\"info\":[]},{\"name\":\"water_bottle\",\"slot\":6,\"type\":\"item\",\"amount\":5,\"info\":[]},{\"name\":\"casinochips\",\"slot\":7,\"type\":\"item\",\"amount\":2002,\"info\":[]},{\"name\":\"lockpick\",\"slot\":8,\"type\":\"item\",\"amount\":2,\"info\":[]},{\"name\":\"driver_license\",\"slot\":9,\"type\":\"item\",\"amount\":1,\"info\":{\"birthdate\":\"1990-09-24\",\"lastname\":\"Nhimss\",\"firstname\":\"Nguyen\",\"type\":\"Class C Driver License\"}},{\"name\":\"radio\",\"slot\":11,\"type\":\"item\",\"amount\":1,\"info\":[]},{\"name\":\"weapon_bat\",\"slot\":12,\"type\":\"weapon\",\"amount\":1,\"info\":{\"quality\":100,\"ammo\":0,\"serie\":\"97HOt7do724TDNd\"}}]', '2022-11-05 21:49:28', NULL, '{\"Driving\":{\"RemoveAmount\":-0.5,\"Current\":0.1,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Shooting\":{\"RemoveAmount\":-0.1,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Raise front wheel\":{\"RemoveAmount\":-0.2,\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Strength\":{\"RemoveAmount\":-0.3,\"Current\":10,\"Stat\":\"MP0_STRENGTH\"},\"Diving\":{\"RemoveAmount\":-0.3,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Resistance\":{\"RemoveAmount\":-0.3,\"Current\":20,\"Stat\":\"MP0_STAMINA\"}}'),
(155, 'ZPO22520', 1, 'license:82ed8c24aa667ee36dd76a834be776267d3497a1', 'Michael Tèo', '{\"cash\":56584,\"crypto\":0,\"bank\":10605147}', '{\"cid\":1,\"birthdate\":\"2022-10-08\",\"backstory\":\"placeholder backstory\",\"nationality\":\"VN\",\"card\":8148217498955737,\"lastname\":\"Diet\",\"gender\":0,\"firstname\":\"LE\",\"account\":\"US05QBCore1607186751\",\"phone\":\"8979022504\"}', '{\"onduty\":true,\"name\":\"mechanic\",\"grade\":{\"level\":3,\"name\":\"Phó Giám Đốc\"},\"type\":\"mechanic\",\"label\":\"Thợ Sửa Xe\",\"isboss\":false,\"payment\":125}', '{\"label\":\"No Gang Affiliaton\",\"name\":\"none\",\"grade\":{\"name\":\"none\",\"level\":0},\"isboss\":false}', '{\"x\":218.62417602539063,\"y\":-802.1538696289063,\"z\":30.7457275390625}', '{\"ishandcuffed\":false,\"commandbinds\":[],\"walletid\":\"QB-14736046\",\"stress\":7,\"fingerprint\":\"TP776y89QQT9291\",\"dealerrep\":0,\"isdead\":false,\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"thirst\":100,\"injail\":0,\"phone\":{\"background\":\"default-qbcore\",\"profilepicture\":\"default\"},\"attachmentcraftingrep\":0,\"inlaststand\":false,\"jobrep\":{\"hotdog\":0,\"tow\":0,\"trucker\":0,\"taxi\":0},\"tracker\":false,\"craftingrep\":0,\"phonedata\":{\"SerialNumber\":98800081,\"InstalledApps\":[]},\"armor\":0,\"status\":[],\"bloodtype\":\"AB-\",\"fitbit\":[],\"jailitems\":[],\"hunger\":100,\"criminalrecord\":{\"hasRecord\":false},\"callsign\":\"NO CALLSIGN\",\"inside\":{\"apartment\":[]}}', '[{\"type\":\"weapon\",\"name\":\"weapon_stungun\",\"slot\":1,\"info\":{\"ammo\":-1,\"quality\":100,\"serie\":\"63iJx4YV022MZVY\"},\"amount\":1},{\"type\":\"item\",\"name\":\"id_card\",\"slot\":2,\"info\":{\"firstname\":\"LE\",\"citizenid\":\"ZPO22520\",\"lastname\":\"Diet\",\"nationality\":\"VN\",\"gender\":0,\"birthdate\":\"2022-10-08\"},\"amount\":1},{\"type\":\"item\",\"name\":\"driver_license\",\"slot\":3,\"info\":{\"lastname\":\"Diet\",\"type\":\"Giấy phép lái xe Hạng C\",\"firstname\":\"LE\",\"birthdate\":\"2022-10-08\"},\"amount\":1},{\"type\":\"item\",\"name\":\"cryptostick\",\"slot\":4,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"radio\",\"slot\":5,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"phone\",\"slot\":6,\"info\":[],\"amount\":1},{\"type\":\"item\",\"name\":\"visa\",\"slot\":20,\"info\":{\"cardNumber\":8148217498955737,\"name\":\"LE Diet\",\"cardPin\":1111,\"citizenid\":\"ZPO22520\",\"cardActive\":true,\"cardType\":\"visa\"},\"amount\":1}]', '2022-11-07 07:06:28', NULL, '{\"Diving\":{\"RemoveAmount\":-0.3,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Strength\":{\"RemoveAmount\":-0.3,\"Current\":9.7,\"Stat\":\"MP0_STRENGTH\"},\"Raise front wheel\":{\"RemoveAmount\":-0.2,\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Driving\":{\"RemoveAmount\":-0.5,\"Current\":0.29999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Resistance\":{\"RemoveAmount\":-0.3,\"Current\":19.4,\"Stat\":\"MP0_STAMINA\"},\"Shooting\":{\"RemoveAmount\":-0.1,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `playerskins`
--

INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
(44, 'LDC92434', '1885233650', '{\"hair\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"accessory\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"blush\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"eyebrows\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"makeup\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"bag\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hat\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"decals\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"glass\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"beard\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"vest\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"ageing\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"ear\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"shoes\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"torso2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"lipstick\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"pants\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1}}', 1),
(58, 'QXR63665', '1885233650', '{\"beard\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"torso2\":{\"defaultTexture\":0,\"texture\":4,\"item\":296,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"pants\":{\"defaultTexture\":0,\"texture\":8,\"item\":28,\"defaultItem\":0},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":29,\"item\":6,\"defaultItem\":0},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"glass\":{\"defaultTexture\":0,\"texture\":1,\"item\":37,\"defaultItem\":0},\"t-shirt\":{\"defaultTexture\":0,\"texture\":2,\"item\":32,\"defaultItem\":1},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"face\":{\"defaultTexture\":0,\"texture\":0,\"item\":44,\"defaultItem\":0},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"item\":10,\"defaultItem\":1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"item\":38,\"defaultItem\":0}}', 1),
(116, 'ZEP36379', '-1667301416', '{\"ageing\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"makeup\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"eyebrows\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"torso2\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"t-shirt\":{\"defaultTexture\":0,\"item\":3,\"texture\":0,\"defaultItem\":1},\"beard\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"decals\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"glass\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"ear\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"hair\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"blush\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"arms\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"watch\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"vest\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"shoes\":{\"defaultTexture\":0,\"item\":1,\"texture\":0,\"defaultItem\":1},\"accessory\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"bracelet\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"mask\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"pants\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"bag\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"face\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0}}', 1),
(117, 'OWU19261', '1885233650', '{\"arms\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"decals\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"ear\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"glass\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"torso2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"makeup\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"accessory\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"ageing\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"hair\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrows\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"blush\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"beard\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"lipstick\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"shoes\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"pants\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hat\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"bag\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"mask\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0}}', 1),
(118, 'FXB52191', '1885233650', '{\"vest\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ageing\":{\"item\":15,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"face\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"shoes\":{\"item\":7,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"eyebrows\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"blush\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"bag\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ear\":{\"item\":2,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"hair\":{\"item\":21,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"torso2\":{\"item\":31,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"makeup\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"lipstick\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"t-shirt\":{\"item\":35,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"pants\":{\"item\":24,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"accessory\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hat\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"decals\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bracelet\":{\"item\":2,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"watch\":{\"item\":4,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"beard\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"glass\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"mask\":{\"item\":3,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"arms\":{\"item\":1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0}}', 1),
(121, 'ZPO22520', '1885233650', '{\"beard\":{\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1,\"texture\":1},\"lipstick\":{\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1,\"texture\":1},\"makeup\":{\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1,\"texture\":1},\"hair\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":21,\"texture\":33},\"bag\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":0,\"texture\":0},\"eyebrows\":{\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1,\"texture\":1},\"decals\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":0,\"texture\":0},\"mask\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":0,\"texture\":0},\"t-shirt\":{\"defaultTexture\":0,\"defaultItem\":1,\"item\":58,\"texture\":0},\"torso2\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":318,\"texture\":0},\"accessory\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":0,\"texture\":0},\"glass\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":29,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":31,\"defaultTexture\":0},\"bracelet\":{\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1,\"texture\":0},\"ageing\":{\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1,\"texture\":0},\"vest\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":0,\"texture\":0},\"shoes\":{\"defaultTexture\":0,\"defaultItem\":1,\"item\":10,\"texture\":0},\"hat\":{\"defaultTexture\":0,\"defaultItem\":-1,\"item\":46,\"texture\":0},\"watch\":{\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1,\"texture\":0},\"pants\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":28,\"texture\":0},\"blush\":{\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1,\"texture\":1},\"ear\":{\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1,\"texture\":0},\"arms\":{\"defaultTexture\":0,\"defaultItem\":0,\"item\":33,\"texture\":0}}', 1),
(123, 'LRR75545', '1885233650', '{\"ear\":{\"item\":2,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"item\":24,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"vest\":{\"item\":4,\"defaultItem\":0,\"texture\":1,\"defaultTexture\":0},\"makeup\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"blush\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"bracelet\":{\"item\":6,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"arms\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"watch\":{\"item\":3,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"hat\":{\"item\":65,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"item\":13,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"lipstick\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"hair\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"shoes\":{\"item\":7,\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"t-shirt\":{\"item\":15,\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0}}', 1),
(129, 'CQL51031', '1885233650', '{\"pants\":{\"defaultItem\":0,\"texture\":10,\"item\":97,\"defaultTexture\":0},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"decals\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"vest\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"texture\":17,\"item\":49,\"defaultTexture\":0},\"shoes\":{\"defaultItem\":1,\"texture\":1,\"item\":28,\"defaultTexture\":0},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"arms\":{\"defaultItem\":0,\"texture\":0,\"item\":33,\"defaultTexture\":0},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"bag\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"texture\":6,\"item\":51,\"defaultTexture\":0},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"texture\":12,\"item\":303,\"defaultTexture\":0},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"item\":15,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"face\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"item\":0,\"defaultTexture\":1},\"glass\":{\"defaultItem\":0,\"texture\":0,\"item\":6,\"defaultTexture\":0}}', 1),
(131, 'KUC68081', '1885233650', '{\"bag\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"watch\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"arms\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"eyebrows\":{\"defaultTexture\":1,\"item\":23,\"defaultItem\":-1,\"texture\":1},\"pants\":{\"defaultTexture\":0,\"item\":10,\"defaultItem\":0,\"texture\":0},\"blush\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"hair\":{\"defaultTexture\":0,\"item\":55,\"defaultItem\":0,\"texture\":0},\"face\":{\"defaultTexture\":0,\"item\":44,\"defaultItem\":0,\"texture\":0},\"torso2\":{\"defaultTexture\":0,\"item\":4,\"defaultItem\":0,\"texture\":0},\"beard\":{\"defaultTexture\":1,\"item\":10,\"defaultItem\":-1,\"texture\":1},\"mask\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"ageing\":{\"defaultTexture\":0,\"item\":15,\"defaultItem\":-1,\"texture\":0},\"accessory\":{\"defaultTexture\":0,\"item\":24,\"defaultItem\":0,\"texture\":12},\"bracelet\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"t-shirt\":{\"defaultTexture\":0,\"item\":4,\"defaultItem\":1,\"texture\":2},\"ear\":{\"defaultTexture\":0,\"item\":2,\"defaultItem\":-1,\"texture\":0},\"makeup\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"glass\":{\"defaultTexture\":0,\"item\":20,\"defaultItem\":0,\"texture\":1},\"hat\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"shoes\":{\"defaultTexture\":0,\"item\":3,\"defaultItem\":1,\"texture\":2},\"decals\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"vest\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0}}', 1),
(132, 'UEC26862', '1885233650', '{\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":56},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"pants\":{\"defaultTexture\":0,\"texture\":2,\"defaultItem\":0,\"item\":3},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"mask\":{\"defaultTexture\":0,\"texture\":3,\"defaultItem\":0,\"item\":68},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":41},\"torso2\":{\"defaultTexture\":0,\"texture\":2,\"defaultItem\":0,\"item\":7},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":1},\"hair\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0}}', 1),
(135, 'QOM77281', '1885233650', '{\"accessory\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"texture\":29,\"item\":57,\"defaultTexture\":0},\"glass\":{\"defaultItem\":0,\"texture\":10,\"item\":20,\"defaultTexture\":0},\"shoes\":{\"defaultItem\":1,\"texture\":0,\"item\":10,\"defaultTexture\":0},\"bag\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"pants\":{\"defaultItem\":0,\"texture\":0,\"item\":28,\"defaultTexture\":0},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"item\":32,\"defaultTexture\":0},\"vest\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"decals\":{\"defaultItem\":0,\"texture\":0,\"item\":0,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"arms\":{\"defaultItem\":0,\"texture\":0,\"item\":33,\"defaultTexture\":0},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"texture\":0,\"item\":296,\"defaultTexture\":0},\"face\":{\"defaultItem\":0,\"texture\":0,\"item\":31,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"item\":-1,\"defaultTexture\":1},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"item\":-1,\"defaultTexture\":0}}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player_contacts`
--

CREATE TABLE `player_contacts` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `player_contacts`
--

INSERT INTO `player_contacts` (`id`, `citizenid`, `name`, `number`, `iban`) VALUES
(1, 'ZPO22520', 'nguyen son', '1044897705', 'US06QBCore5745307496');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player_houses`
--

CREATE TABLE `player_houses` (
  `id` int(255) NOT NULL,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player_mails`
--

CREATE TABLE `player_mails` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `player_mails`
--

INSERT INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
(4, 'LRR75545', 'Turner’s Auto Wrecking', 'Vehicle List', 'You Can Only Demolish A Number Of Vehicles.<br />You Can Keep Everything You Demolish For Yourself As Long As You Dont Bother Me.<br /><br /><strong>Vehicle List:</strong><br />Enus Cognoscenti<br />Pfister Comet<br />Bollokan Prairie<br />Lampadati Felon<br />Vapid Blade<br />Declasse Asea<br />Annis Sandking<br />Dundreary Stretch<br />Ratloader2 ratloader2<br />Übermacht Zion<br />Declasse Rhapsody<br />Vapid Dominator<br />Gallivanter Baller<br />Cheval Picador<br />Dinka Jester<br />Obey Rocoto<br />Benefactor Serrano<br />Vapid Stanier<br />Benefactor Feltzer<br />Albany Alpha<br />Benefactor Schafter<br />Albany Virgo<br />Dinka Thrust<br />Gallivanter Baller<br />Pegassi Zentorno<br />Declasse Sabre Turbo<br />Übermacht Oracle XS<br />Imponte Ruiner<br />', 0, 890027, '2022-10-30 02:57:11', ''),
(5, 'LRR75545', 'Giám sát xưởng gỗ', 'Nhiệm vụ công việc', 'Bạn được giao nhiệm vụ thu thập gỗ gần nhà máy sản xuất gỗ ở vịnh paleto. Sau khi bạn thu thập xong gỗ, hãy nói chuyện với ông chủ xưởng để xử lý gỗ.', 0, 814930, '2022-10-30 03:10:19', NULL),
(6, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 809944, '2022-10-30 17:27:11', '[]'),
(7, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 248328, '2022-10-30 17:27:38', ''),
(9, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 936854, '2022-10-30 17:30:07', '[]'),
(10, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 397553, '2022-10-30 17:33:07', '[]'),
(11, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 593201, '2022-10-30 17:34:11', '[]'),
(12, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 275241, '2022-10-30 17:39:35', ''),
(13, 'LRR75545', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 756471, '2022-10-30 17:46:47', '[]'),
(14, 'LRR75545', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 346487, '2022-10-30 17:47:33', '[]'),
(15, 'LRR75545', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 590118, '2022-10-30 17:48:24', '[]'),
(16, 'LRR75545', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 772840, '2022-10-31 12:55:37', '[]'),
(17, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 511455, '2022-10-31 12:55:49', '[]'),
(18, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 856402, '2022-10-31 13:13:35', '[]'),
(19, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 544560, '2022-10-31 13:15:31', '[]'),
(20, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 157449, '2022-10-31 13:17:02', '[]'),
(21, 'ZPO22520', 'Tiệm cầm đồ', 'Vật phẩm nóng chảy', 'Chúng tôi đã hoàn thành việc nấu chảy các mặt hàng của bạn. Bạn có thể đến nhận chúng bất cứ lúc nào.', 0, 775724, '2022-10-31 13:21:17', ''),
(22, 'ZPO22520', 'Pawn Shop', 'Smelter Ting', 'Vi er færdige med at smelte dine varer. Du kan til enhver tid komme og hente dem.', 0, 114855, '2022-10-31 13:26:05', '[]'),
(25, 'LRR75545', 'Bệnh viện 6M City RP', 'Chi phí bệnh viện', 'Thân mến Mr. Kong, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 358842, '2022-11-03 02:19:40', '[]'),
(31, 'LRR75545', NULL, NULL, NULL, 0, 332451, '2022-11-03 02:44:16', NULL),
(33, 'LRR75545', 'Billing Department', 'Invoice Paid', 'Invoice Has Been Paid From Sách Mọt In The Amount Of $5000', 0, 977189, '2022-11-03 02:44:16', NULL),
(34, 'LRR75545', NULL, NULL, NULL, 0, 758079, '2022-11-03 02:47:37', NULL),
(36, 'LRR75545', 'Billing Department', 'Invoice Paid', 'Invoice Has Been Paid From Sách Mọt In The Amount Of $10000', 0, 661134, '2022-11-03 02:47:37', NULL),
(37, 'QOM77281', 'Bệnh viện PowPow City RP', 'Chi phí bệnh viện', 'Thân mến Mr. Mọt, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 883071, '2022-11-04 09:15:46', '[]'),
(38, 'LRR75545', 'Giám sát xưởng gỗ', 'Nhiệm vụ công việc', 'Bạn được giao nhiệm vụ thu thập gỗ gần nhà máy sản xuất gỗ ở vịnh paleto. Sau khi bạn thu thập xong gỗ, hãy nói chuyện với ông chủ xưởng để xử lý gỗ.', 0, 711072, '2022-11-05 00:08:41', NULL),
(39, 'ZPO22520', 'Bệnh viện PowPow City RP', 'Chi phí bệnh viện', 'Thân mến Mr. Diet, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 381079, '2022-11-05 00:27:25', '[]'),
(40, 'ZPO22520', 'Bệnh viện PowPow City RP', 'Chi phí bệnh viện', 'Thân mến Mr. Diet, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 264545, '2022-11-05 00:27:28', '[]'),
(41, 'DJD56142', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 443497, '2022-11-05 00:52:56', '[]'),
(42, 'SRI85140', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 236425, '2022-11-05 00:52:56', '[]'),
(43, 'DXT09752', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 920149, '2022-11-05 00:52:56', '[]'),
(44, 'DXT09752', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 394444, '2022-11-05 00:53:07', '[]'),
(45, 'DJD56142', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 500728, '2022-11-05 00:53:07', '[]'),
(46, 'SRI85140', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 252273, '2022-11-05 00:53:07', '[]'),
(47, 'SRI85140', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 273901, '2022-11-05 00:54:23', '[]'),
(48, 'DJD56142', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 197385, '2022-11-05 00:54:23', '[]'),
(49, 'DXT09752', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>Hong Kong<br />Số điện thoại: <strong>7318937198</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 444430, '2022-11-05 00:54:23', '[]'),
(50, 'DJD56142', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>LE Diet<br />Số điện thoại: <strong>8979022504</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 762538, '2022-11-05 00:55:25', '[]'),
(51, 'DXT09752', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>LE Diet<br />Số điện thoại: <strong>8979022504</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 884577, '2022-11-05 00:55:25', '[]'),
(52, 'SRI85140', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>LE Diet<br />Số điện thoại: <strong>8979022504</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 381645, '2022-11-05 00:55:25', '[]'),
(53, 'DJD56142', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>LE Diet<br />Số điện thoại: <strong>8979022504</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 483343, '2022-11-05 00:55:36', '[]'),
(54, 'DXT09752', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>LE Diet<br />Số điện thoại: <strong>8979022504</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 354308, '2022-11-05 00:55:36', '[]'),
(55, 'SRI85140', 'Township', 'Yêu cầu bài học lái xe', 'Xin chào,<br><br>Chúng tôi vừa nhận được thông báo rằng ai đó muốn học lái xe. <br> Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>LE Diet<br />Số điện thoại: <strong>8979022504</strong><br><br>Trân trọng,<br>PowPow City RP', 0, 833110, '2022-11-05 00:55:36', '[]'),
(56, 'FXB52191', 'Bệnh viện PowPow City RP', 'Chi phí bệnh viện', 'Thân mến Mr. son, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 744169, '2022-11-06 01:41:19', '[]'),
(57, 'FXB52191', 'Bệnh viện PowPow City RP', 'Chi phí bệnh viện', 'Thân mến Mr. son, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 706701, '2022-11-06 06:04:29', '[]'),
(58, 'FXB52191', 'Bệnh viện PowPow City RP', 'Chi phí bệnh viện', 'Thân mến Mr. son, <br /><br />Gần đây, bạn đã nhận được một email thông báo về chi phí của lần khám bệnh viện gần đây nhất.<br />Các chi phí cuối cùng đã trở thành: <strong>$2000</strong><br /><br />Chúc bạn mau chóng bình phục!', 0, 870241, '2022-11-06 15:33:20', '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `player_outfits`
--

INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `skin`, `outfitId`) VALUES
(13, 'QOM77281', 'vestnau', '1885233650', '{\"decals\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"defaultItem\":0,\"item\":38,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"torso2\":{\"texture\":9,\"defaultItem\":0,\"item\":296,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"hair\":{\"texture\":29,\"defaultItem\":0,\"item\":71,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"item\":36,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"face\":{\"texture\":0,\"defaultItem\":0,\"item\":31,\"defaultTexture\":0},\"glass\":{\"texture\":6,\"defaultItem\":0,\"item\":37,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"defaultItem\":1,\"item\":10,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"pants\":{\"texture\":0,\"defaultItem\":0,\"item\":28,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0}}', 'outfit-5-4755'),
(16, 'ZEP36379', 'Nhims', '-1667301416', '{\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":1},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":29},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":15},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":18,\"defaultItem\":0,\"item\":5},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":15},\"torso2\":{\"defaultTexture\":0,\"texture\":11,\"defaultItem\":0,\"item\":15},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":34},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"ear\":{\"defaultTexture\":0,\"texture\":12,\"defaultItem\":-1,\"item\":23},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":0},\"pants\":{\"defaultTexture\":0,\"texture\":11,\"defaultItem\":0,\"item\":15},\"shoes\":{\"defaultTexture\":0,\"texture\":21,\"defaultItem\":1,\"item\":109},\"lipstick\":{\"defaultTexture\":1,\"texture\":23,\"defaultItem\":-1,\"item\":2},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":5}}', 'outfit-4-3669'),
(17, 'ZEP36379', 'Nhims', '-1667301416', '{\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":1},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":29},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":15},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":18,\"defaultItem\":0,\"item\":5},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":15},\"torso2\":{\"defaultTexture\":0,\"texture\":11,\"defaultItem\":0,\"item\":15},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":34},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"ear\":{\"defaultTexture\":0,\"texture\":12,\"defaultItem\":-1,\"item\":23},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":0},\"pants\":{\"defaultTexture\":0,\"texture\":11,\"defaultItem\":0,\"item\":15},\"shoes\":{\"defaultTexture\":0,\"texture\":21,\"defaultItem\":1,\"item\":109},\"lipstick\":{\"defaultTexture\":1,\"texture\":23,\"defaultItem\":-1,\"item\":2},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":5}}', 'outfit-8-2085'),
(18, 'QXR63665', 'vest vippromax', '1885233650', '{\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"t-shirt\":{\"defaultTexture\":0,\"texture\":2,\"defaultItem\":1,\"item\":32},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"torso2\":{\"defaultTexture\":0,\"texture\":4,\"defaultItem\":0,\"item\":296},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"hair\":{\"defaultTexture\":0,\"texture\":29,\"defaultItem\":0,\"item\":6},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":38},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"glass\":{\"defaultTexture\":0,\"texture\":1,\"defaultItem\":0,\"item\":37},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":44},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":10},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"pants\":{\"defaultTexture\":0,\"texture\":8,\"defaultItem\":0,\"item\":28},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1}}', 'outfit-7-1798'),
(20, 'QOM77281', 'vest trang', '1885233650', '{\"beard\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"mask\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"torso2\":{\"defaultItem\":0,\"texture\":4,\"defaultTexture\":0,\"item\":296},\"vest\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"texture\":29,\"defaultTexture\":0,\"item\":71},\"arms\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":38},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"decals\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"bag\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"glass\":{\"defaultItem\":0,\"texture\":1,\"defaultTexture\":0,\"item\":37},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"face\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":31},\"shoes\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":10},\"t-shirt\":{\"defaultItem\":1,\"texture\":2,\"defaultTexture\":0,\"item\":32},\"pants\":{\"defaultItem\":0,\"texture\":8,\"defaultTexture\":0,\"item\":28},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1}}', 'outfit-3-7744'),
(23, 'ZPO22520', 'LQD', '1885233650', '{\"watch\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"hat\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"item\":1,\"defaultTexture\":0,\"defaultItem\":1},\"mask\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"shoes\":{\"texture\":0,\"item\":1,\"defaultTexture\":0,\"defaultItem\":1},\"blush\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"arms\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"pants\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 'outfit-4-4168'),
(26, 'ZPO22520', 'LQD', '1885233650', '{\"watch\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"hat\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"item\":32,\"defaultTexture\":0,\"defaultItem\":1},\"mask\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"item\":296,\"defaultTexture\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"shoes\":{\"texture\":0,\"item\":10,\"defaultTexture\":0,\"defaultItem\":1},\"blush\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"arms\":{\"texture\":0,\"item\":33,\"defaultTexture\":0,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"pants\":{\"texture\":0,\"item\":28,\"defaultTexture\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"texture\":10,\"item\":20,\"defaultTexture\":0,\"defaultItem\":0},\"face\":{\"item\":31,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 'outfit-8-1758'),
(27, 'ZPO22520', 'LQD', '1885233650', '{\"watch\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"hat\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"hair\":{\"texture\":33,\"item\":21,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"item\":32,\"defaultTexture\":0,\"defaultItem\":1},\"mask\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"item\":296,\"defaultTexture\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"shoes\":{\"texture\":0,\"item\":10,\"defaultTexture\":0,\"defaultItem\":1},\"blush\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"arms\":{\"texture\":0,\"item\":33,\"defaultTexture\":0,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"pants\":{\"texture\":0,\"item\":28,\"defaultTexture\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"texture\":10,\"item\":20,\"defaultTexture\":0,\"defaultItem\":0},\"face\":{\"item\":31,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 'outfit-1-6246'),
(28, 'QOM77281', 'vest', '1885233650', '{\"mask\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"pants\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":28},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"glass\":{\"texture\":10,\"defaultTexture\":0,\"defaultItem\":0,\"item\":20},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":10},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":1,\"item\":32},\"face\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":31},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":33},\"hair\":{\"texture\":29,\"defaultTexture\":0,\"defaultItem\":0,\"item\":57},\"hat\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":296},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0,\"item\":0},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"defaultItem\":-1,\"item\":-1}}', 'outfit-6-5883'),
(29, 'QOM77281', 'CS', '1885233650', '{\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":29,\"item\":57,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"item\":15,\"defaultItem\":1},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"torso2\":{\"defaultTexture\":0,\"texture\":1,\"item\":27,\"defaultItem\":0},\"glass\":{\"defaultTexture\":0,\"texture\":10,\"item\":20,\"defaultItem\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"item\":37,\"defaultItem\":0},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"face\":{\"defaultTexture\":0,\"texture\":0,\"item\":31,\"defaultItem\":0},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"defaultTexture\":0,\"texture\":5,\"item\":24,\"defaultItem\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"item\":97,\"defaultItem\":1}}', 'outfit-7-9054'),
(31, 'QOM77281', 'ao mua', '1885233650', '{\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":29,\"item\":57,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"t-shirt\":{\"defaultTexture\":0,\"texture\":7,\"item\":15,\"defaultItem\":1},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"torso2\":{\"defaultTexture\":0,\"texture\":2,\"item\":303,\"defaultItem\":0},\"glass\":{\"defaultTexture\":0,\"texture\":10,\"item\":20,\"defaultItem\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"item\":33,\"defaultItem\":0},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"item\":-1,\"defaultItem\":-1},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"face\":{\"defaultTexture\":0,\"texture\":0,\"item\":31,\"defaultItem\":0},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"item\":-1,\"defaultItem\":-1},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"defaultTexture\":0,\"texture\":11,\"item\":97,\"defaultItem\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"item\":28,\"defaultItem\":1}}', 'outfit-7-2526'),
(33, 'QOM77281', 'vest1', '1885233650', '{\"hat\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"torso2\":{\"defaultTexture\":0,\"item\":296,\"defaultItem\":0,\"texture\":0},\"mask\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"decals\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"bracelet\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"vest\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"t-shirt\":{\"defaultTexture\":0,\"item\":32,\"defaultItem\":1,\"texture\":0},\"hair\":{\"defaultTexture\":0,\"item\":57,\"defaultItem\":0,\"texture\":29},\"beard\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"bag\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"ageing\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"pants\":{\"defaultTexture\":0,\"item\":28,\"defaultItem\":0,\"texture\":0},\"blush\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"eyebrows\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"ear\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"glass\":{\"defaultTexture\":0,\"item\":20,\"defaultItem\":0,\"texture\":10},\"shoes\":{\"defaultTexture\":0,\"item\":10,\"defaultItem\":1,\"texture\":0},\"accessory\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"makeup\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"watch\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"face\":{\"defaultTexture\":0,\"item\":31,\"defaultItem\":0,\"texture\":0},\"arms\":{\"defaultTexture\":0,\"item\":33,\"defaultItem\":0,\"texture\":0}}', 'outfit-6-8946'),
(34, 'QOM77281', 'cam', '1885233650', '{\"hat\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"torso2\":{\"defaultItem\":0,\"item\":261,\"defaultTexture\":0,\"texture\":2},\"mask\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":57,\"defaultTexture\":0,\"texture\":29},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"bag\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"item\":20,\"defaultTexture\":0,\"texture\":10},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"item\":77,\"defaultTexture\":0,\"texture\":23},\"accessory\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"pants\":{\"defaultItem\":0,\"item\":28,\"defaultTexture\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":31,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0}}', 'outfit-1-9806'),
(36, 'QOM77281', 'grad', '1885233650', '{\"hat\":{\"defaultItem\":-1,\"item\":143,\"defaultTexture\":0,\"texture\":17},\"torso2\":{\"defaultItem\":0,\"item\":314,\"defaultTexture\":0,\"texture\":19},\"mask\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":57,\"defaultTexture\":0,\"texture\":29},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"bag\":{\"defaultItem\":0,\"item\":81,\"defaultTexture\":0,\"texture\":7},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"glass\":{\"defaultItem\":0,\"item\":20,\"defaultTexture\":0,\"texture\":10},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"item\":77,\"defaultTexture\":0,\"texture\":22},\"accessory\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"pants\":{\"defaultItem\":0,\"item\":28,\"defaultTexture\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":31,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0}}', 'outfit-8-4849'),
(37, 'FXB52191', 'dep zai', '1885233650', '{\"eyebrows\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"vest\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"torso2\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":31},\"glass\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"decals\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"arms\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":1},\"bag\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"beard\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"mask\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"makeup\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"pants\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":24},\"bracelet\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"ear\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"hat\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"blush\":{\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1,\"item\":-1},\"shoes\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":7},\"accessory\":{\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0,\"item\":0},\"watch\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1},\"t-shirt\":{\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0,\"item\":35},\"ageing\":{\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0,\"item\":-1}}', 'outfit-3-6403'),
(38, 'ZPO22520', 'cs', '1885233650', '{\"ear\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"defaultItem\":0,\"item\":29,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"defaultItem\":0,\"item\":28,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":58,\"texture\":0,\"defaultTexture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"arms\":{\"defaultItem\":0,\"item\":33,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"defaultItem\":0,\"item\":31,\"defaultTexture\":0},\"shoes\":{\"defaultItem\":1,\"item\":10,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"item\":21,\"texture\":33,\"defaultTexture\":0},\"hat\":{\"defaultItem\":-1,\"item\":46,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"item\":318,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"bag\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0}}', 'outfit-7-9002'),
(39, 'LRR75545', 'canh sat', '1885233650', '{\"ear\":{\"defaultItem\":-1,\"item\":2,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"defaultItem\":0,\"item\":24,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":6,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"shoes\":{\"defaultItem\":1,\"item\":7,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"decals\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"item\":13,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"defaultItem\":-1,\"item\":65,\"texture\":0,\"defaultTexture\":0},\"watch\":{\"defaultItem\":-1,\"item\":3,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"arms\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"vest\":{\"defaultItem\":0,\"item\":4,\"texture\":1,\"defaultTexture\":0}}', 'outfit-7-3842'),
(40, 'KUC68081', 'Suits', '1885233650', '{\"watch\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"item\":0,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"item\":10,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"t-shirt\":{\"item\":4,\"defaultItem\":1,\"texture\":2,\"defaultTexture\":0},\"blush\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"beard\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"arms\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"item\":24,\"defaultItem\":0,\"texture\":12,\"defaultTexture\":0},\"vest\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"lipstick\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"ear\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"item\":44,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"makeup\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"shoes\":{\"item\":56,\"defaultItem\":1,\"texture\":1,\"defaultTexture\":0},\"glass\":{\"item\":20,\"defaultItem\":0,\"texture\":1,\"defaultTexture\":0},\"hair\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"item\":4,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0}}', 'outfit-1-3353'),
(41, 'UEC26862', 'Bon', '1885233650', '{\"watch\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"item\":56,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"item\":68,\"defaultItem\":0,\"texture\":3,\"defaultTexture\":0},\"t-shirt\":{\"item\":1,\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0},\"blush\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"beard\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"arms\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"item\":41,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"shoes\":{\"item\":1,\"defaultItem\":1,\"texture\":0,\"defaultTexture\":0},\"ear\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"item\":-1,\"defaultItem\":-1,\"texture\":0,\"defaultTexture\":0},\"vest\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"item\":0,\"defaultItem\":0,\"texture\":0,\"defaultTexture\":0},\"makeup\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"torso2\":{\"item\":7,\"defaultItem\":0,\"texture\":2,\"defaultTexture\":0},\"eyebrows\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1},\"pants\":{\"item\":3,\"defaultItem\":0,\"texture\":2,\"defaultTexture\":0},\"lipstick\":{\"item\":-1,\"defaultItem\":-1,\"texture\":1,\"defaultTexture\":1}}', 'outfit-2-2479');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `id` int(11) NOT NULL,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `player_vehicles`
--

INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
(1, 'license:9109448fa2232a29669b399c8f2c226859153125', 'LRR75545', 't20', '1663218586', '{\"pearlescentColor\":3,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modFrame\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"modXenon\":false,\"modLivery\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"wheelColor\":0,\"wheels\":7,\"modRoof\":-1,\"engineHealth\":1000.0592475178704,\"modExhaust\":-1,\"model\":1663218586,\"modFrontBumper\":-1,\"dashboardColor\":0,\"modDial\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modSmokeEnabled\":false,\"interiorColor\":0,\"fuelLevel\":100.08535757525947,\"modTurbo\":false,\"bodyHealth\":1000.0592475178704,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modHood\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"tankHealth\":1000.0592475178704,\"modRightFender\":-1,\"modOrnaments\":-1,\"modTrimA\":-1,\"modCustomTiresF\":false,\"xenonColor\":255,\"color2\":7,\"modGrille\":-1,\"color1\":7,\"modHorns\":-1,\"extras\":[],\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"dirtLevel\":0.0,\"modWindows\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modStruts\":-1,\"plate\":\"83HYJ934\",\"modPlateHolder\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"plateIndex\":0}', '83HYJ934', NULL, NULL, 100, 1000, 1000, 1, 0, 1883, NULL, 0, 0, 0, 0),
(2, 'license:9109448fa2232a29669b399c8f2c226859153125', 'LRR75545', 'vigero', '-825837129', '{\"model\":-825837129,\"modPlateHolder\":-1,\"dirtLevel\":10.32626705141565,\"modRearBumper\":-1,\"modTrimA\":-1,\"modCustomTiresR\":false,\"modShifterLeavers\":-1,\"modAerials\":-1,\"modWindows\":-1,\"modEngine\":-1,\"modGrille\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"color1\":4,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":1000.0592475178704,\"modTank\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"color2\":0,\"fuelLevel\":100.08535757525947,\"pearlescentColor\":111,\"modSmokeEnabled\":false,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"xenonColor\":255,\"tankHealth\":1000.0592475178704,\"modHydrolic\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"interiorColor\":0,\"modCustomTiresF\":false,\"modTurbo\":false,\"modStruts\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"wheelColor\":156,\"modSideSkirt\":-1,\"modTransmission\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"engineHealth\":1000.0592475178704,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modFender\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modFrontWheels\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"dashboardColor\":0,\"wheels\":1,\"modHood\":-1,\"modFrontBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modOrnaments\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"plate\":\"8VW516YH\",\"modBackWheels\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"extras\":{\"10\":false,\"11\":true}}', '8VW516YH', NULL, 'ballas', 93, 999, 999, 1, 0, 5064, NULL, 0, 0, 0, 0),
(3, 'license:1cb66026342598b4f682015d1841859ed3448850', 'QOM77281', 'zentorno', '-1403128555', '{\"tankHealth\":4000.2369900714818,\"modHydrolic\":-1,\"modLivery\":-1,\"modTrunk\":-1,\"modTransmission\":2,\"modExhaust\":5,\"modStruts\":-1,\"modHorns\":2,\"modWindows\":-1,\"modEngineBlock\":-1,\"color2\":42,\"modFrontBumper\":0,\"xenonColor\":7,\"tyreSmokeColor\":[255,255,50],\"wheelColor\":13,\"modFrontWheels\":42,\"modTrimB\":-1,\"pearlescentColor\":111,\"bodyHealth\":1000.0592475178704,\"color1\":42,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"engineHealth\":1000.0592475178704,\"plateIndex\":1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modTank\":-1,\"modSideSkirt\":2,\"modCustomTiresF\":false,\"modRightFender\":0,\"modRoof\":-1,\"windowTint\":0,\"modDashboard\":-1,\"modEngine\":3,\"dirtLevel\":0.0,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"fuelLevel\":12.7092517555885,\"modPlateHolder\":-1,\"modAPlate\":-1,\"model\":-1403128555,\"modFrame\":-1,\"modSpoilers\":7,\"wheels\":12,\"modBrakes\":2,\"modRearBumper\":0,\"extras\":[],\"modGrille\":0,\"neonColor\":[255,62,0],\"modBackWheels\":-1,\"modAerials\":-1,\"modTurbo\":1,\"modSeats\":-1,\"modCustomTiresR\":false,\"modFender\":-1,\"modOrnaments\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modHood\":0,\"dashboardColor\":39,\"modSmokeEnabled\":1,\"modXenon\":1,\"interiorColor\":0,\"modDial\":-1,\"plate\":\"3PP446AY\",\"neonEnabled\":[1,1,1,1],\"modSteeringWheel\":-1}', '3PP446AY', NULL, 'pillboxgarage', 8, 1000, 1000, 1, 0, 30920, NULL, 0, 0, 0, 0),
(4, 'license:1cb66026342598b4f682015d1841859ed3448850', 'QOM77281', 'adder', '-1216765807', '{\"modRightFender\":-1,\"modSuspension\":3,\"neonColor\":[35,1,255],\"modBackWheels\":-1,\"xenonColor\":1,\"modCustomTiresR\":false,\"modRearBumper\":-1,\"modTrimA\":-1,\"dashboardColor\":149,\"plate\":\"3CU238IO\",\"modAPlate\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"tankHealth\":1000.0592475178704,\"modSeats\":-1,\"modHorns\":2,\"modDashboard\":-1,\"windowTint\":1,\"modCustomTiresF\":false,\"modAerials\":-1,\"modArchCover\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modSmokeEnabled\":1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"wheels\":12,\"pearlescentColor\":131,\"modArmor\":-1,\"modRoof\":-1,\"modTransmission\":2,\"modFrame\":-1,\"model\":-1216765807,\"modStruts\":-1,\"bodyHealth\":1000.0592475178704,\"modLivery\":-1,\"interiorColor\":0,\"fuelLevel\":70.69521289046105,\"modEngine\":3,\"extras\":{\"10\":false,\"1\":true,\"12\":true},\"wheelColor\":13,\"color1\":13,\"modEngineBlock\":-1,\"color2\":13,\"modFender\":-1,\"dirtLevel\":0.0,\"tyreSmokeColor\":[0,150,255],\"modXenon\":1,\"modGrille\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"engineHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"neonEnabled\":[1,1,1,1],\"modFrontWheels\":209,\"modHood\":-1,\"modBrakes\":2,\"modExhaust\":-1,\"modTurbo\":1,\"modTrunk\":-1,\"plateIndex\":1,\"modTrimB\":-1}', '3CU238IO', NULL, 'pillboxgarage', 59, 1000, 990, 1, 0, 74, NULL, 0, 0, 0, 0),
(5, 'license:9109448fa2232a29669b399c8f2c226859153125', 'LRR75545', 'speeder', '231083307', '{\"modCustomTiresR\":false,\"modTurbo\":false,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modGrille\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modCustomTiresF\":false,\"modHydrolic\":-1,\"dirtLevel\":6.35462587779425,\"modFrame\":-1,\"modHood\":-1,\"interiorColor\":0,\"extras\":[],\"modTrimB\":-1,\"fuelLevel\":100.08535757525947,\"model\":231083307,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modRoof\":-1,\"plate\":\"8ZS107FW\",\"modBackWheels\":-1,\"modFrontWheels\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"tankHealth\":1000.0592475178704,\"modTank\":-1,\"modFender\":-1,\"windowTint\":-1,\"modSmokeEnabled\":false,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modBrakes\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modHorns\":-1,\"color1\":73,\"pearlescentColor\":0,\"modXenon\":false,\"modDial\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0592475178704,\"engineHealth\":1000.0592475178704,\"dashboardColor\":0,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modEngine\":-1,\"modSpeakers\":-1,\"xenonColor\":255,\"modSpoilers\":-1,\"modRightFender\":-1,\"color2\":111,\"wheels\":0,\"modOrnaments\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1}', '8ZS107FW', NULL, 'lsymc', 98, 1000, 1000, 1, 0, 949, NULL, 0, 0, 0, 0),
(6, 'license:1cb66026342598b4f682015d1841859ed3448850', 'LRR75545', 'vigero', '-825837129', '{\"modCustomTiresR\":false,\"modTurbo\":false,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modCustomTiresF\":false,\"engineHealth\":1000.0592475178704,\"dirtLevel\":3.17731293889712,\"modFrame\":-1,\"modHood\":-1,\"interiorColor\":0,\"extras\":{\"10\":false,\"11\":false},\"modTrimB\":-1,\"fuelLevel\":100.08535757525947,\"model\":-825837129,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"modAPlate\":-1,\"plate\":\"3LD844RW\",\"modBackWheels\":-1,\"modFrontWheels\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"tankHealth\":1000.0592475178704,\"modTank\":-1,\"modFender\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modBrakes\":-1,\"plateIndex\":2,\"modVanityPlate\":-1,\"modHorns\":-1,\"color1\":66,\"modHydrolic\":-1,\"modEngineBlock\":-1,\"windowTint\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0592475178704,\"wheels\":1,\"dashboardColor\":0,\"modGrille\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modSpeakers\":-1,\"xenonColor\":255,\"modLivery\":-1,\"color2\":0,\"modRoof\":-1,\"pearlescentColor\":65,\"modOrnaments\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1}', '3LD844RW', NULL, 'pillboxgarage', 98, 996, 991, 0, 0, 6, NULL, 0, 0, 0, 0),
(7, 'license:1cb66026342598b4f682015d1841859ed3448850', 'LRR75545', 'hexer', '301427732', '{\"modCustomTiresR\":false,\"modTurbo\":false,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modCustomTiresF\":false,\"engineHealth\":1000.0592475178704,\"dirtLevel\":2.38298470417284,\"modFrame\":-1,\"modHood\":-1,\"interiorColor\":0,\"extras\":[],\"modTrimB\":-1,\"fuelLevel\":100.08535757525947,\"model\":301427732,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"modAPlate\":-1,\"plate\":\"5DO687CN\",\"modBackWheels\":-1,\"modFrontWheels\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"tankHealth\":1000.0592475178704,\"modTank\":-1,\"modFender\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modHorns\":-1,\"color1\":1,\"modHydrolic\":-1,\"modEngineBlock\":-1,\"windowTint\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0592475178704,\"wheels\":6,\"dashboardColor\":0,\"modGrille\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modSpeakers\":-1,\"xenonColor\":255,\"modLivery\":-1,\"color2\":1,\"modRoof\":-1,\"pearlescentColor\":2,\"modOrnaments\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1}', '5DO687CN', NULL, 'pillboxgarage', 93, 1000, 922, 1, 0, 6207, NULL, 0, 0, 0, 0),
(8, 'license:1cb66026342598b4f682015d1841859ed3448850', 'QOM77281', 'hexer', '301427732', '{\"modRightFender\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":1,\"xenonColor\":6,\"modCustomTiresR\":1,\"modRearBumper\":-1,\"modTrimA\":-1,\"dashboardColor\":0,\"plate\":\"7ZF569IX\",\"modAPlate\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"tankHealth\":1000.0592475178704,\"modSeats\":-1,\"modHorns\":1,\"modDashboard\":-1,\"windowTint\":-1,\"modCustomTiresF\":1,\"modAerials\":-1,\"modArchCover\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modSmokeEnabled\":1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"wheels\":6,\"pearlescentColor\":12,\"modArmor\":-1,\"modRoof\":-1,\"modTransmission\":2,\"modFrame\":-1,\"model\":301427732,\"modStruts\":-1,\"bodyHealth\":1000.0592475178704,\"modLivery\":-1,\"interiorColor\":131,\"fuelLevel\":88.96476228911952,\"modEngine\":3,\"extras\":[],\"wheelColor\":42,\"color1\":42,\"modEngineBlock\":-1,\"color2\":42,\"modFender\":-1,\"dirtLevel\":0.0,\"tyreSmokeColor\":[255,255,50],\"modXenon\":1,\"modGrille\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"engineHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":1,\"modHood\":-1,\"modBrakes\":2,\"modExhaust\":-1,\"modTurbo\":1,\"modTrunk\":-1,\"plateIndex\":1,\"modTrimB\":-1}', '7ZF569IX', NULL, 'pillboxgarage', 81, 1000, 818, 1, 0, 12377, NULL, 0, 0, 0, 0),
(9, 'license:82ed8c24aa667ee36dd76a834be776267d3497a1', 'ZPO22520', 'zentorno', '-1403128555', '{\"modRoof\":-1,\"bodyHealth\":1000.0592475178704,\"modArchCover\":-1,\"dashboardColor\":0,\"plateIndex\":0,\"modXenon\":false,\"modDashboard\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"color1\":75,\"xenonColor\":255,\"interiorColor\":0,\"modArmor\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modCustomTiresR\":false,\"modTank\":-1,\"modTurbo\":false,\"modCustomTiresF\":false,\"modVanityPlate\":-1,\"modFender\":-1,\"plate\":\"8LW528RM\",\"wheels\":7,\"modFrame\":-1,\"modFrontWheels\":-1,\"model\":-1403128555,\"tankHealth\":1000.0592475178704,\"engineHealth\":1000.0592475178704,\"modRightFender\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"modTransmission\":-1,\"modExhaust\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"wheelColor\":156,\"modSteeringWheel\":-1,\"modStruts\":-1,\"fuelLevel\":100.08535757525947,\"modEngineBlock\":-1,\"dirtLevel\":4.76596940834568,\"neonColor\":[255,0,255],\"modBrakes\":-1,\"modLivery\":-1,\"pearlescentColor\":68,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"extras\":[],\"color2\":41,\"modSmokeEnabled\":false,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimA\":-1,\"modGrille\":-1,\"modSpeakers\":-1}', '8LW528RM', NULL, 'pillboxgarage', 98, 998, 999, 0, 0, 201, NULL, 0, 0, 0, 0),
(10, 'license:1cb66026342598b4f682015d1841859ed3448850', 'QOM77281', 'rumpo', '1162065741', '{\"modOrnaments\":-1,\"modFender\":-1,\"modEngine\":3,\"engineHealth\":1000.0592475178704,\"modAPlate\":-1,\"pearlescentColor\":5,\"modRearBumper\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"interiorColor\":0,\"modLivery\":1,\"modTurbo\":1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modCustomTiresF\":false,\"modCustomTiresR\":false,\"modHood\":-1,\"modAirFilter\":-1,\"tankHealth\":4000.2369900714818,\"modGrille\":-1,\"plateIndex\":1,\"plate\":\"2BW775DF\",\"modFrontBumper\":-1,\"modSmokeEnabled\":1,\"modWindows\":-1,\"wheels\":12,\"modTransmission\":2,\"fuelLevel\":88.96476228911952,\"modArchCover\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[1,1,1,1],\"modTrunk\":-1,\"wheelColor\":156,\"tyreSmokeColor\":[255,102,178],\"dashboardColor\":0,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modDashboard\":-1,\"modXenon\":1,\"dirtLevel\":0.0,\"modBackWheels\":-1,\"modFrontWheels\":198,\"model\":1162065741,\"modHorns\":2,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modStruts\":-1,\"color1\":55,\"modBrakes\":2,\"xenonColor\":11,\"color2\":0,\"bodyHealth\":1000.0592475178704,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"windowTint\":1,\"neonColor\":[15,3,255],\"modSpoilers\":-1,\"modTrimA\":-1,\"modDial\":-1,\"modSuspension\":0,\"extras\":[],\"modAerials\":-1}', '2BW775DF', NULL, 'pillboxgarage', 78, 986, 985, 1, 0, 2641, NULL, 0, 0, 0, 0),
(11, 'license:9109448fa2232a29669b399c8f2c226859153125', 'LRR75545', 'bison', '-16948145', '{\"bodyHealth\":1000.0592475178704,\"modWindows\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"10\":false,\"11\":false},\"xenonColor\":255,\"modTurbo\":false,\"modHydrolic\":-1,\"modTrimA\":-1,\"modCustomTiresR\":false,\"modAerials\":-1,\"interiorColor\":0,\"wheelColor\":156,\"modExhaust\":-1,\"modXenon\":false,\"modHorns\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modStruts\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modTransmission\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"plate\":\"7VG476WS\",\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"dashboardColor\":0,\"modBrakes\":-1,\"pearlescentColor\":111,\"color2\":0,\"model\":-16948145,\"modBackWheels\":-1,\"modSeats\":-1,\"modAirFilter\":-1,\"dirtLevel\":6.35462587779425,\"plateIndex\":0,\"fuelLevel\":100.08535757525947,\"modTrunk\":-1,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"tankHealth\":1000.0592475178704,\"engineHealth\":1000.0592475178704,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"wheels\":3,\"modTrimB\":-1,\"color1\":4}', '7VG476WS', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 0, NULL, 0, 0, 0, 0),
(12, 'license:9109448fa2232a29669b399c8f2c226859153125', 'LRR75545', 'minivan', '-310465116', '{\"bodyHealth\":988.9386522317304,\"modWindows\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"2\":true,\"1\":false},\"xenonColor\":255,\"modTurbo\":false,\"modHydrolic\":-1,\"modTrimA\":-1,\"modCustomTiresR\":false,\"modAerials\":-1,\"interiorColor\":0,\"wheelColor\":156,\"modExhaust\":-1,\"modXenon\":false,\"modHorns\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modStruts\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modTransmission\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"plate\":\"9NL787ZT\",\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"dashboardColor\":0,\"modBrakes\":-1,\"pearlescentColor\":0,\"color2\":111,\"model\":-310465116,\"modBackWheels\":-1,\"modSeats\":-1,\"modAirFilter\":-1,\"dirtLevel\":6.35462587779425,\"plateIndex\":0,\"fuelLevel\":100.08535757525947,\"modTrunk\":-1,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"tankHealth\":994.4989498748004,\"engineHealth\":1000.0592475178704,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"wheels\":0,\"modTrimB\":-1,\"color1\":111}', '9NL787ZT', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 3, NULL, 0, 0, 0, 0),
(13, 'license:82ed8c24aa667ee36dd76a834be776267d3497a1', 'ZPO22520', 'bati', '-114291515', '{\"windowTint\":-1,\"pearlescentColor\":111,\"modRoof\":-1,\"modEngineBlock\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"wheelColor\":156,\"model\":-114291515,\"modFrontWheels\":-1,\"modExhaust\":-1,\"dirtLevel\":3.17731293889712,\"fuelLevel\":100.08535757525947,\"modDial\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"dashboardColor\":0,\"modBrakes\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modEngine\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"interiorColor\":0,\"modBackWheels\":-1,\"modTrunk\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0592475178704,\"modRearBumper\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modStruts\":-1,\"plate\":\"9XH424AK\",\"modSmokeEnabled\":false,\"modAPlate\":-1,\"modWindows\":-1,\"modCustomTiresR\":false,\"modTransmission\":-1,\"extras\":[],\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"tankHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"modGrille\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"modCustomTiresF\":false,\"modSeats\":-1,\"plateIndex\":3,\"modTurbo\":false,\"modFender\":-1,\"wheels\":6,\"color1\":5,\"modSpeakers\":-1,\"modHydrolic\":-1,\"color2\":41,\"bodyHealth\":1000.0592475178704,\"modTank\":-1,\"xenonColor\":255}', '9XH424AK', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 302195, NULL, 0, 0, 0, 0),
(14, 'license:9109448fa2232a29669b399c8f2c226859153125', 'LRR75545', 'SH350', '1315207860', '{\"modAPlate\":-1,\"model\":1315207860,\"plateIndex\":0,\"modHorns\":-1,\"modStruts\":-1,\"interiorColor\":0,\"modLivery\":0,\"plate\":\"1GU947NR\",\"modRearBumper\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"modGrille\":-1,\"xenonColor\":255,\"fuelLevel\":100.08535757525947,\"tankHealth\":1000.0592475178704,\"dashboardColor\":0,\"modAerials\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"pearlescentColor\":0,\"modBrakes\":-1,\"dirtLevel\":3.9716411736214,\"wheelColor\":0,\"color2\":0,\"modTank\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"color1\":0,\"windowTint\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"extras\":{\"6\":true,\"3\":false,\"2\":true,\"5\":false,\"4\":true},\"modCustomTiresF\":false,\"modCustomTiresR\":false,\"modWindows\":-1,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modEngine\":-1,\"bodyHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modHood\":-1,\"engineHealth\":1000.0592475178704,\"modDial\":-1,\"modSuspension\":-1,\"wheels\":6,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":false,\"modXenon\":false,\"modSpoilers\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modTransmission\":-1}', '1GU947NR', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 5, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player_warns`
--

CREATE TABLE `player_warns` (
  `id` int(11) NOT NULL,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stashitems`
--

CREATE TABLE `stashitems` (
  `id` int(11) NOT NULL,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `stashitems`
--

INSERT INTO `stashitems` (`id`, `stash`, `items`) VALUES
(18, '1 | Ngăn kéo 1', '[]'),
(2, 'ballasExtraStash', '[]'),
(1, 'boss_ballas', '[]'),
(17, 'boss_police', '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trunkitems`
--

CREATE TABLE `trunkitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trunkitems`
--

INSERT INTO `trunkitems` (`id`, `plate`, `items`) VALUES
(11, '2BW775DF', '[]'),
(1, '3CU238IO', '[]'),
(6, '3LD844RW', '[]'),
(2, '5DO687CN', '[]'),
(12, '7VG476WS', '[]'),
(10, '7ZF569IX', '[]'),
(13, '9NL787ZT', '[]');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `citizenid` (`citizenid`),
  ADD KEY `business` (`business`),
  ADD KEY `businessid` (`businessid`),
  ADD KEY `gangid` (`gangid`);

--
-- Chỉ mục cho bảng `bank_cards`
--
ALTER TABLE `bank_cards`
  ADD PRIMARY KEY (`citizenid`),
  ADD KEY `record_id` (`record_id`);

--
-- Chỉ mục cho bảng `bank_statements`
--
ALTER TABLE `bank_statements`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `business` (`business`),
  ADD KEY `businessid` (`businessid`),
  ADD KEY `gangid` (`gangid`);

--
-- Chỉ mục cho bảng `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`),
  ADD KEY `discord` (`discord`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `crypto`
--
ALTER TABLE `crypto`
  ADD PRIMARY KEY (`crypto`);

--
-- Chỉ mục cho bảng `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Chỉ mục cho bảng `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gloveboxitems`
--
ALTER TABLE `gloveboxitems`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `houselocations`
--
ALTER TABLE `houselocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `house_plants`
--
ALTER TABLE `house_plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building` (`building`),
  ADD KEY `plantid` (`plantid`);

--
-- Chỉ mục cho bảng `lapraces`
--
ALTER TABLE `lapraces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raceid` (`raceid`);

--
-- Chỉ mục cho bảng `management_funds`
--
ALTER TABLE `management_funds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_name` (`job_name`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occasionId` (`occasionid`);

--
-- Chỉ mục cho bảng `phone_invoices`
--
ALTER TABLE `phone_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Chỉ mục cho bảng `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `number` (`number`);

--
-- Chỉ mục cho bảng `phone_tweets`
--
ALTER TABLE `phone_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Chỉ mục cho bảng `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`citizenid`),
  ADD KEY `id` (`id`),
  ADD KEY `last_updated` (`last_updated`),
  ADD KEY `license` (`license`);

--
-- Chỉ mục cho bảng `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Chỉ mục cho bảng `player_contacts`
--
ALTER TABLE `player_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Chỉ mục cho bảng `player_houses`
--
ALTER TABLE `player_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house` (`house`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `identifier` (`identifier`);

--
-- Chỉ mục cho bảng `player_mails`
--
ALTER TABLE `player_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Chỉ mục cho bảng `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `outfitId` (`outfitId`);

--
-- Chỉ mục cho bảng `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plate` (`plate`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `license` (`license`);

--
-- Chỉ mục cho bảng `player_warns`
--
ALTER TABLE `player_warns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stashitems`
--
ALTER TABLE `stashitems`
  ADD PRIMARY KEY (`stash`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `trunkitems`
--
ALTER TABLE `trunkitems`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4154;

--
-- AUTO_INCREMENT cho bảng `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `record_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bank_cards`
--
ALTER TABLE `bank_cards`
  MODIFY `record_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bank_statements`
--
ALTER TABLE `bank_statements`
  MODIFY `record_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT cho bảng `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gloveboxitems`
--
ALTER TABLE `gloveboxitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `houselocations`
--
ALTER TABLE `houselocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `house_plants`
--
ALTER TABLE `house_plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lapraces`
--
ALTER TABLE `lapraces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `management_funds`
--
ALTER TABLE `management_funds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phone_invoices`
--
ALTER TABLE `phone_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phone_tweets`
--
ALTER TABLE `phone_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1653;

--
-- AUTO_INCREMENT cho bảng `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `player_contacts`
--
ALTER TABLE `player_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `player_houses`
--
ALTER TABLE `player_houses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `player_mails`
--
ALTER TABLE `player_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `player_warns`
--
ALTER TABLE `player_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stashitems`
--
ALTER TABLE `stashitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `trunkitems`
--
ALTER TABLE `trunkitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
