-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 年 12 朁E12 日 13:53
-- サーバのバージョン： 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iw32sql`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `m_day_mouth`
--

CREATE TABLE `m_day_mouth` (
  `Day_Mouth_ID` int(4) NOT NULL,
  `mouth` varchar(2) NOT NULL,
  `day` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_day_mouth`
--

INSERT INTO `m_day_mouth` (`Day_Mouth_ID`, `mouth`, `day`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '1', '3'),
(4, '1', '4'),
(5, '1', '5'),
(6, '1', '6'),
(7, '1', '7'),
(8, '1', '8'),
(9, '1', '9'),
(10, '1', '10'),
(11, '1', '11'),
(12, '1', '12'),
(13, '1', '13'),
(14, '1', '14'),
(15, '1', '15'),
(16, '1', '16'),
(17, '1', '17'),
(18, '1', '18'),
(19, '1', '19'),
(20, '1', '20'),
(21, '1', '21'),
(22, '1', '22'),
(23, '1', '23'),
(24, '1', '24'),
(25, '1', '25'),
(26, '1', '26'),
(27, '1', '27'),
(28, '1', '28'),
(29, '1', '29'),
(30, '1', '30'),
(31, '1', '31'),
(32, '2', '1'),
(33, '2', '2'),
(34, '2', '3'),
(35, '2', '4'),
(36, '2', '5'),
(37, '2', '6'),
(38, '2', '7'),
(39, '2', '8'),
(40, '2', '9'),
(41, '2', '10'),
(42, '2', '11'),
(43, '2', '12'),
(44, '2', '13'),
(45, '2', '14'),
(46, '2', '15'),
(47, '2', '16'),
(48, '2', '17'),
(49, '2', '18'),
(50, '2', '19'),
(51, '2', '20'),
(52, '2', '21'),
(53, '2', '22'),
(54, '2', '23'),
(55, '2', '24'),
(56, '2', '25'),
(57, '2', '26'),
(58, '2', '27'),
(59, '2', '28'),
(60, '3', '1'),
(61, '3', '2'),
(62, '3', '3'),
(63, '3', '4'),
(64, '3', '5'),
(65, '3', '6'),
(66, '3', '7'),
(67, '3', '8'),
(68, '3', '9'),
(69, '3', '10'),
(70, '3', '11'),
(71, '3', '12'),
(72, '3', '13'),
(73, '3', '14'),
(74, '3', '15'),
(75, '3', '16'),
(76, '3', '17'),
(77, '3', '18'),
(78, '3', '19'),
(79, '3', '20'),
(80, '3', '21'),
(81, '3', '22'),
(82, '3', '23'),
(83, '3', '24'),
(84, '3', '25'),
(85, '3', '26'),
(86, '3', '27'),
(87, '3', '28'),
(88, '3', '29'),
(89, '3', '30'),
(90, '3', '31'),
(91, '4', '1'),
(92, '4', '2'),
(93, '4', '3'),
(94, '4', '4'),
(95, '4', '5'),
(96, '4', '6'),
(97, '4', '7'),
(98, '4', '8'),
(99, '4', '9'),
(100, '4', '10'),
(101, '4', '11'),
(102, '4', '12'),
(103, '4', '13'),
(104, '4', '14'),
(105, '4', '15'),
(106, '4', '16'),
(107, '4', '17'),
(108, '4', '18'),
(109, '4', '19'),
(110, '4', '20'),
(111, '4', '21'),
(112, '4', '22'),
(113, '4', '23'),
(114, '4', '24'),
(115, '4', '25'),
(116, '4', '26'),
(117, '4', '27'),
(118, '4', '28'),
(119, '4', '29'),
(120, '4', '30'),
(121, '4', '31');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_employee`
--

CREATE TABLE `m_employee` (
  `employee_id` int(4) NOT NULL,
  `sei` varchar(30) DEFAULT NULL,
  `mei` varchar(30) DEFAULT NULL,
  `pass` int(4) DEFAULT NULL,
  `flg` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_employee`
--

INSERT INTO `m_employee` (`employee_id`, `sei`, `mei`, `pass`, `flg`) VALUES
(1, '秋山', '隆', 1223, 1),
(2, '佐伯', '遥', 1111, 0),
(3, '滝岡', '理央', 6666, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_fee`
--

CREATE TABLE `m_fee` (
  `fee_id` int(4) NOT NULL,
  `employee_id` int(4) NOT NULL,
  `fee_name` varchar(20) DEFAULT NULL,
  `fee_plan` varchar(100) DEFAULT NULL,
  `fee_price` varchar(10) DEFAULT NULL,
  `week_flg` int(1) DEFAULT NULL,
  `day_flg` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_fee`
--

INSERT INTO `m_fee` (`fee_id`, `employee_id`, `fee_name`, `fee_plan`, `fee_price`, `week_flg`, `day_flg`) VALUES
(1, 2, 'ファーストサービスデー', '毎月1日', '1,100円', 8, 1),
(2, 3, '女性サービスデー', '毎週金曜日・女性', '1,100円', 5, 0),
(3, 3, 'シニアデー', '５０歳以上', '1,300円', 0, 0),
(4, 3, '夫婦デー', '５０歳以上　夫婦', '1,100円', 0, 0),
(5, 2, '一般', '　', '1800円', 0, 0),
(6, 3, '学生（大高生）', '', '1500円', 0, 0),
(7, 3, '小中学生', '　', '800円', 0, 0),
(8, 3, '幼児（3歳～６歳）', '　', '500円', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_member`
--

CREATE TABLE `m_member` (
  `member_id` int(5) NOT NULL,
  `sei` varchar(30) DEFAULT NULL,
  `mei` varchar(30) DEFAULT NULL,
  `sei_kana` varchar(30) DEFAULT NULL,
  `mei_kana` varchar(30) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `card_no` varchar(16) DEFAULT NULL,
  `card_pass` varchar(4) DEFAULT NULL,
  `card_year` year(4) DEFAULT NULL,
  `card_month` varchar(2) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_member`
--

INSERT INTO `m_member` (`member_id`, `sei`, `mei`, `sei_kana`, `mei_kana`, `mail`, `pass`, `sex`, `birthday`, `card_no`, `card_pass`, `card_year`, `card_month`, `tel`) VALUES
(1, '浜本 ', '毅彦 ', 'はまもと ', 'たけひこ ', 'iida@docomo.ne.jp', '5432', 1, '1991-06-05', '1234398754324440', '9043', 2014, '12', '09054542344'),
(2, '坂根 ', '晴菜 ', 'さかね ', 'はるな ', 'rnevnerp@live.jp', '6666', 1, '1995-03-03', '1234398754324660', '1223', 2010, '1', '09054542555'),
(3, '谷口 ', '慶太 ', 'たにぐち ', 'けいた ', 'hal@docomo.ne.jp', '7900', 1, '1989-03-04', '1234387543334600', '7889', 2004, '3', '09054542322'),
(4, '妹尾 ', '理香 ', 'せお ', 'りか ', 'ThemHaruna@Qualified.com ', '9134', 0, '1991-06-06', '1234383806338060', '1111', 1970, '4', '09054542344'),
(5, '小沢 ', '蘭 ', 'おざわ ', 'らん ', 'Keita0136Taniguchi@Rejoice.ne.', '10368', 0, '1995-03-04', '1234378200843140', '1112', 1980, '3', '09054542555'),
(6, '高沢 ', '花奈 ', 'たかざわ ', 'かな ', 'Kanbayashi@Abronia.com ', '11602', 0, '1989-03-05', '1234372595348220', '1113', 1981, '11', '09054542322'),
(7, '玉井 ', '紗知 ', 'たまい ', 'さち ', 'Worthy@Cleanser.ne.jp ', '12836', 0, '1991-06-07', '1234366989853300', '1114', 1982, '4', '09054542344'),
(8, '赤羽 ', '千夜 ', 'あかばね ', 'ちよ ', '568Tomomi@Worthy.co.jp ', '14070', 0, '1995-03-05', '1234361384358380', '1115', 1983, '6', '09054542555'),
(9, '上林 ', '信男 ', 'かんばやし ', 'のぶお ', '457Yuuta@Puberty.ne.jp ', '15304', 1, '1989-03-06', '1234355778863460', '1116', 1984, '5', '09054542322'),
(10, '三田 ', '晃平 ', 'みた ', 'こうへい ', 'Matsumura-1568@Biceps.ne.jp ', '16538', 1, '1991-06-08', '1234350173368540', '1117', 1985, '11', '09054542344'),
(11, '遠山 ', '朋美 ', 'とおやま ', 'ともみ ', 'Aliceblue@Betrayal.com ', '17772', 1, '1995-03-06', '1234344567873620', '1118', 1986, '8', '09054542555'),
(12, '吉川 ', '悠太 ', 'よしかわ ', 'ゆうた ', 'MasakoYamaji@Remain.org ', '19006', 1, '1989-03-07', '1234338962378700', '1119', 1987, '5', '09054542322'),
(13, '北島 ', '隆光 ', 'きたじま ', 'たかみつ ', 'Makoto@Aliceblue.com ', '20240', 1, '1991-06-09', '1234333356883780', '1120', 1988, '3', '09054542344'),
(14, '小峰 ', '賢三 ', 'こみね ', 'けんぞう ', 'Taigo@Olive.com ', '21474', 1, '1995-03-07', '1234327751388860', '1121', 1989, '9', '09054542555'),
(15, '松村 ', '浅夫 ', 'まつむら ', 'あさお ', 'Tomomi_Anecdote@Anecdote.org ', '22708', 0, '1989-03-08', '1234322145893940', '1122', 1990, '10', '09054542322'),
(16, '上村 ', '恵津子 ', 'うえむら ', 'えつこ ', 'Colt@Colt.org ', '23942', 0, '1991-06-10', '1234316540399020', '1123', 1991, '4', '09054542344'),
(17, '浦野 ', '翔子 ', 'うらの ', 'しょうこ ', 'Komuro0347@Frustrate.co.jp ', '25176', 0, '1995-03-08', '1234310934904100', '1124', 1992, '3', '09054542555'),
(18, '山路 ', '昌子 ', 'やまじ ', 'まさこ ', '', '26410', 0, '1989-03-09', '1234305329409180', '1125', 1993, '12', '09054542322'),
(19, '西野 ', '真 ', 'にしの ', 'まこと ', '', '27644', 0, '1991-06-11', '1234299723914260', '1126', 1994, '1', '09054542344'),
(20, '森本 ', '大悟 ', 'もりもと ', 'たいご ', '', '28878', 1, '1995-03-09', '1234294118419340', '1127', 1995, '4', '09054542555'),
(21, '浅見 ', '里菜 ', 'あさみ ', 'りな ', '', '30112', 1, '1989-03-10', '1234288512924420', '1128', 1996, '12', '09054542322'),
(22, '河田 ', '麻梨 ', 'かわだ ', 'まり ', '', '31346', 1, '1991-06-12', '1234282907429500', '1129', 1997, '11', '09054542344'),
(23, '半沢 ', '一美 ', 'はんざわ ', 'かずみ ', '', '32580', 1, '1995-03-10', '1234277301934580', '1130', 1998, '3', '09054542555'),
(24, '岩井 ', '庸子 ', 'いわい ', 'ようこ ', '', '33814', 0, '1989-03-11', '1234271696439660', '1131', 1999, '10', '09054542322'),
(25, '新村 ', '彩女 ', 'にいむら ', 'あやめ ', '', '35048', 0, '1991-06-13', '1234266090944740', '1132', 2000, '9', '09054542344');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_movie`
--

CREATE TABLE `m_movie` (
  `movie_id` int(4) NOT NULL,
  `movie_title` varchar(100) DEFAULT NULL,
  `movie_director` varchar(40) DEFAULT NULL,
  `movie_production` varchar(17) DEFAULT NULL,
  `movie_cost` int(10) DEFAULT NULL,
  `put_movie` varchar(6) DEFAULT NULL,
  `registration_day` date DEFAULT NULL,
  `update_day` date DEFAULT NULL,
  `movie_production_id` int(4) NOT NULL,
  `movie_genre_id` int(4) NOT NULL,
  `employee_id` int(4) NOT NULL,
  `movie_detai` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_movie`
--

INSERT INTO `m_movie` (`movie_id`, `movie_title`, `movie_director`, `movie_production`, `movie_cost`, `put_movie`, `registration_day`, `update_day`, `movie_production_id`, `movie_genre_id`, `employee_id`, `movie_detai`) VALUES
(1, '君の名は', '深海誠', '20151108～20160608', 1000000000, '107', '2016-08-20', '2016-08-20', 1, 24, 1, ''),
(2, 'ウシジマくん', 'ウシジマくん', '20151008～20160608', 100000, '107', '2016-08-20', '2016-08-20', 1, 24, 1, '');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_movie_genre`
--

CREATE TABLE `m_movie_genre` (
  `movie_genre_id` int(4) NOT NULL,
  `genre_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_movie_genre`
--

INSERT INTO `m_movie_genre` (`movie_genre_id`, `genre_name`) VALUES
(1, 'アクション映画'),
(2, '冒険映画'),
(3, 'アニメーション映画'),
(4, '伝記映画'),
(5, 'コメディ映画'),
(6, '犯罪映画'),
(7, 'ドキュメンタリー映画'),
(8, 'ドラマ'),
(9, 'ファミリー映画'),
(10, 'ファンタジー映画'),
(11, 'フィルムノワール'),
(12, '歴史映画'),
(13, 'ホラー映画'),
(14, '音楽'),
(15, 'ミュージカル映画'),
(16, 'ミステリー映画'),
(17, 'ロマンス'),
(18, 'SF映画'),
(19, '短編映画'),
(20, 'スポーツ'),
(21, 'スリラー映画'),
(22, '戦争映画'),
(23, '西部劇'),
(24, '恋愛映画');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_movie_img`
--

CREATE TABLE `m_movie_img` (
  `movie_id` int(4) NOT NULL,
  `num` int(11) NOT NULL,
  `img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_movie_img`
--

INSERT INTO `m_movie_img` (`movie_id`, `num`, `img`) VALUES
(1, 1, 'kiminona_detail_1-1.jpg'),
(2, 1, 'usijima_detail_1-1.jpg'),
(1, 2, 'kiminona_detail_1-2.jpg'),
(2, 2, 'usijima_detail_1-2.jpg'),
(1, 3, 'kiminona_detail_1-3.jpg'),
(2, 3, 'usijima_detail_1-3.jpg'),
(1, 4, 'kiminona_detail_1-4.jpg'),
(2, 4, 'usijima_detail_1-4.jpg'),
(1, 5, 'kiminona_detail_1-5.jpg'),
(2, 5, 'usijima_detail_1-5.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_movie_production`
--

CREATE TABLE `m_movie_production` (
  `movie_production_id` int(4) NOT NULL,
  `movie_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_movie_production`
--

INSERT INTO `m_movie_production` (`movie_production_id`, `movie_name`) VALUES
(1, 'コミックス・ウェーブ・フィルム');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_performer`
--

CREATE TABLE `m_performer` (
  `num` int(2) NOT NULL,
  `movie_id` int(4) NOT NULL,
  `performer_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_performer`
--

INSERT INTO `m_performer` (`num`, `movie_id`, `performer_name`) VALUES
(1, 1, '神木隆之介'),
(2, 2, '上白石萌音'),
(3, 3, '長澤まさみ'),
(4, 4, '市原悦子');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_put_movie`
--

CREATE TABLE `m_put_movie` (
  `put_id` int(4) NOT NULL,
  `employee_id` int(4) NOT NULL,
  `movie_id` int(4) NOT NULL,
  `put_flg` int(1) DEFAULT NULL,
  `put_period_start` date DEFAULT NULL,
  `put_period_end` date DEFAULT NULL,
  `registration_day` date DEFAULT NULL,
  `update_day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_put_movie`
--

INSERT INTO `m_put_movie` (`put_id`, `employee_id`, `movie_id`, `put_flg`, `put_period_start`, `put_period_end`, `registration_day`, `update_day`) VALUES
(1, 1, 1, 1, '2016-08-26', '2017-08-26', '2016-08-20', '2016-08-20'),
(2, 1, 2, 1, '2016-08-26', '2017-08-26', '2016-08-20', '2016-08-20');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_put_time`
--

CREATE TABLE `m_put_time` (
  `put_time_id` int(4) NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_put_time`
--

INSERT INTO `m_put_time` (`put_time_id`, `time`) VALUES
(1, '09:00:00'),
(2, '09:15:00'),
(3, '09:30:00'),
(4, '09:45:00'),
(5, '10:00:00'),
(6, '10:15:00'),
(7, '10:30:00'),
(8, '10:45:00'),
(9, '11:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_screen`
--

CREATE TABLE `m_screen` (
  `screen_id` int(4) NOT NULL,
  `number_seat` varchar(2) DEFAULT NULL,
  `flg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_screen`
--

INSERT INTO `m_screen` (`screen_id`, `number_seat`, `flg`) VALUES
(1, '18', NULL),
(2, '17', NULL),
(3, '99', NULL),
(4, '96', NULL),
(5, '99', NULL),
(6, '15', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_seat`
--

CREATE TABLE `m_seat` (
  `seat_id` int(4) NOT NULL,
  `seat_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_seat`
--

INSERT INTO `m_seat` (`seat_id`, `seat_name`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5'),
(6, 'A6'),
(7, 'A7'),
(8, 'A8'),
(9, 'A9'),
(10, 'A10'),
(11, 'B1'),
(12, 'B2'),
(13, 'B3'),
(14, 'B4'),
(15, 'B5'),
(16, 'B6'),
(17, 'B7'),
(18, 'B8'),
(19, 'B9'),
(20, 'B10'),
(21, 'C1'),
(22, 'C2'),
(23, 'C3'),
(24, 'C4'),
(25, 'C5'),
(26, 'C6'),
(27, 'C7'),
(28, 'C8'),
(29, 'C9'),
(30, 'C10'),
(31, 'D1'),
(32, 'D2'),
(33, 'D3'),
(34, 'D4'),
(35, 'D5'),
(36, 'D6'),
(37, 'D7'),
(38, 'D8'),
(39, 'D9'),
(40, 'D10'),
(41, 'E1'),
(42, 'E2'),
(43, 'E3'),
(44, 'E4'),
(45, 'E5'),
(46, 'E6'),
(47, 'E7'),
(48, 'E8'),
(49, 'E9'),
(50, 'E10'),
(51, 'F1'),
(52, 'F2'),
(53, 'F3'),
(54, 'F4'),
(55, 'F5'),
(56, 'F6'),
(57, 'F7'),
(58, 'F8'),
(59, 'F9'),
(60, 'F10'),
(61, 'G1'),
(62, 'G2'),
(63, 'G3'),
(64, 'G4'),
(65, 'G5'),
(66, 'G6'),
(67, 'G7'),
(68, 'G8'),
(69, 'G9'),
(70, 'G10'),
(71, 'H1'),
(72, 'H2'),
(73, 'H3'),
(74, 'H4'),
(75, 'H5'),
(76, 'H6'),
(77, 'H7'),
(78, 'H8'),
(79, 'H9'),
(80, 'H10'),
(81, 'I1'),
(82, 'I2'),
(83, 'I3'),
(84, 'I4'),
(85, 'I5'),
(86, 'I6'),
(87, 'I7'),
(88, 'I8'),
(89, 'I9'),
(90, 'I10'),
(91, 'J1'),
(92, 'J2'),
(93, 'J3'),
(94, 'J4'),
(95, 'J5'),
(96, 'J6'),
(97, 'J7'),
(98, 'J8'),
(99, 'J9'),
(100, 'J10');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_put_schedule`
--

CREATE TABLE `t_put_schedule` (
  `put_schedule_id` int(4) NOT NULL,
  `num` int(3) NOT NULL,
  `put_id` int(4) NOT NULL,
  `employee_id` int(4) NOT NULL,
  `put_time_id` int(4) NOT NULL,
  `Day_Mouth_ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_put_schedule`
--

INSERT INTO `t_put_schedule` (`put_schedule_id`, `num`, `put_id`, `employee_id`, `put_time_id`, `Day_Mouth_ID`) VALUES
(1, 1, 1, 1, 1, 1),
(1, 2, 1, 2, 2, 1),
(1, 3, 1, 3, 3, 1),
(2, 1, 2, 1, 7, 5),
(2, 2, 2, 1, 9, 5);


-- --------------------------------------------------------

--
-- テーブルの構造 `t_reservation`
--

CREATE TABLE `t_reservation` (
  `reservation_id` int(4) NOT NULL,
  `member_id` int(5) NOT NULL,
  `reservation_day` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `put_schedule_id` int(4) NOT NULL,
  `num` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_reservation`
--

INSERT INTO `t_reservation` (`reservation_id`, `member_id`, `reservation_day`, `reservation_time`, `put_schedule_id`, `num`) VALUES
(1, 1, '2016-11-09', '11:00:00', 1, 1),
(2, 1, '2016-12-27', '19:00:00', 1, 1),
(3, 1, '2016-12-27', '19:00:00', 1, 1),
(4, 1, '2016-12-27', '19:00:00', 1, 1),
(5, 1, '2016-12-27', '19:00:00', 1, 1),
(6, 1, '2016-12-27', '19:00:00', 1, 1),
(7, 1, '2016-12-27', '19:00:00', 1, 1),
(8, 1, '2016-12-27', '19:00:00', 1, 1),
(9, 1, '2016-12-27', '19:00:00', 1, 1),
(10, 1, '2016-12-27', '19:00:00', 1, 1),
(11, 1, '2016-12-27', '19:00:00', 1, 1),
(12, 1, '2016-12-27', '19:00:00', 1, 1),
(13, 1, '2016-12-27', '19:00:00', 1, 1),
(14, 1, '2016-12-27', '19:00:00', 1, 1),
(15, 1, '2016-12-27', '19:00:00', 1, 1),
(16, 1, '2016-12-27', '19:00:00', 1, 1),
(17, 1, '2016-12-27', '19:00:00', 1, 1),
(18, 1, '2016-12-27', '19:00:00', 1, 1),
(19, 1, '2016-12-27', '19:00:00', 1, 1),
(20, 1, '2016-12-27', '19:00:00', 1, 1),
(21, 1, '2016-12-27', '19:00:00', 1, 1),
(22, 1, '2016-12-27', '19:00:00', 1, 1),
(23, 1, '2016-12-27', '19:00:00', 1, 1),
(24, 1, '2016-12-27', '19:00:00', 1, 1),
(25, 1, '2016-12-27', '19:00:00', 1, 1),
(26, 1, '2016-12-27', '19:00:00', 1, 1),
(27, 1, '2016-12-27', '19:00:00', 1, 1),
(28, 1, '2016-12-27', '19:00:00', 1, 1),
(29, 1, '2016-12-27', '19:00:00', 1, 1),
(30, 1, '2016-12-27', '19:00:00', 1, 1),
(31, 1, '2016-12-27', '19:00:00', 1, 1),
(32, 1, '2016-12-27', '19:00:00', 1, 1),
(33, 1, '2016-12-27', '19:00:00', 1, 1),
(34, 1, '2016-12-27', '19:00:00', 1, 1),
(35, 1, '2016-12-27', '19:00:00', 1, 1),
(36, 1, '2016-12-27', '19:00:00', 1, 1),
(37, 1, '2016-12-27', '19:00:00', 1, 1),
(38, 1, '2016-12-27', '19:00:00', 1, 1),
(39, 1, '2016-12-27', '19:00:00', 1, 1),
(40, 1, '2016-12-27', '19:00:00', 1, 1),
(42, 1, '2016-12-27', '19:00:00', 1, 1),
(43, 1, '2016-12-27', '19:00:00', 1, 1),
(44, 1, '2016-12-27', '19:00:00', 1, 1),
(45, 1, '2016-12-27', '19:00:00', 1, 1),
(48, 1, '2016-12-27', '19:00:00', 1, 1),
(49, 1, '2016-12-27', '19:00:00', 1, 1),
(50, 1, '2016-12-27', '19:00:00', 1, 1),
(51, 1, '2016-12-27', '19:00:00', 1, 1),
(52, 1, '2016-12-27', '19:00:00', 1, 1),
(53, 1, '2016-12-27', '19:00:00', 1, 1),
(54, 1, '2016-12-27', '19:00:00', 1, 1),
(55, 1, '2016-12-27', '19:00:00', 1, 1),
(56, 1, '2016-12-27', '19:00:00', 1, 1),
(57, 1, '2016-12-27', '19:00:00', 1, 1),
(58, 1, '2016-12-27', '19:00:00', 1, 1),
(59, 1, '2016-12-27', '19:00:00', 1, 1),
(60, 1, '2016-12-27', '19:00:00', 1, 1),
(61, 1, '2016-12-27', '19:00:00', 1, 1),
(62, 1, '2016-12-27', '19:00:00', 1, 1),
(63, 1, '2016-12-27', '19:00:00', 1, 1),
(64, 1, '2016-12-27', '19:00:00', 1, 1),
(65, 1, '2016-12-27', '19:00:00', 1, 1),
(66, 1, '2016-12-27', '19:00:00', 1, 1),
(67, 1, '2016-12-27', '19:00:00', 1, 1),
(68, 1, '2016-12-27', '19:00:00', 1, 1),
(69, 1, '2016-12-27', '19:00:00', 1, 1),
(70, 1, '2016-12-27', '19:00:00', 1, 1),
(71, 1, '2016-12-27', '19:00:00', 1, 1),
(72, 1, '2016-12-27', '19:00:00', 1, 1),
(73, 1, '2016-12-27', '19:00:00', 1, 1),
(74, 1, '2016-12-27', '19:00:00', 1, 1),
(75, 1, '2016-12-27', '19:00:00', 1, 1),
(76, 1, '2016-12-27', '19:00:00', 1, 1),
(77, 1, '2016-12-27', '19:00:00', 1, 1),
(78, 1, '2016-12-27', '19:00:00', 1, 1),
(79, 1, '2016-12-27', '19:00:00', 1, 1),
(80, 1, '2016-12-27', '19:00:00', 1, 1),
(81, 1, '2016-12-27', '19:00:00', 1, 1),
(82, 1, '2016-12-27', '19:00:00', 1, 1),
(83, 1, '2016-12-27', '19:00:00', 1, 1),
(84, 1, '2016-12-27', '19:00:00', 1, 1),
(85, 1, '2016-12-27', '19:00:00', 1, 1),
(86, 1, '2016-12-27', '19:00:00', 1, 1),
(87, 1, '2016-12-27', '19:00:00', 1, 1),
(88, 1, '2016-12-27', '19:00:00', 1, 1),
(89, 1, '2016-12-27', '19:00:00', 1, 1),
(90, 1, '2016-12-27', '19:00:00', 1, 1),
(91, 1, '2016-12-27', '19:00:00', 1, 1),
(92, 1, '2016-12-27', '19:00:00', 1, 1),
(93, 1, '2016-12-27', '19:00:00', 1, 1),
(94, 1, '2016-12-27', '19:00:00', 1, 1),
(95, 1, '2016-12-27', '19:00:00', 1, 1),
(96, 1, '2016-12-27', '19:00:00', 1, 1),
(97, 1, '2016-12-27', '19:00:00', 1, 1),
(98, 1, '2016-12-27', '19:00:00', 1, 1),
(99, 1, '2016-12-27', '19:00:00', 1, 1),
(100, 1, '2016-12-27', '19:00:00', 1, 1),
(101, 1, '2016-12-27', '19:00:00', 1, 1),
(102, 1, '2016-12-27', '19:00:00', 1, 1),
(103, 1, '2016-12-27', '19:00:00', 1, 1),
(104, 1, '2016-12-27', '19:00:00', 1, 1),
(105, 1, '2016-12-27', '19:00:00', 1, 1),
(106, 1, '2016-12-27', '19:00:00', 1, 1),
(107, 1, '2016-12-27', '19:00:00', 1, 1),
(108, 1, '2016-12-27', '19:00:00', 1, 1),
(109, 1, '2016-12-27', '19:00:00', 1, 1),
(110, 1, '2016-12-27', '19:00:00', 1, 1),
(111, 1, '2016-12-27', '19:00:00', 1, 1),
(112, 1, '2016-12-27', '19:00:00', 1, 1),
(113, 1, '2016-12-27', '19:00:00', 1, 1),
(114, 1, '2016-12-27', '19:00:00', 1, 1),
(115, 1, '2016-12-27', '19:00:00', 1, 1),
(116, 1, '2016-12-27', '19:00:00', 1, 1),
(117, 1, '2016-12-27', '19:00:00', 1, 1),
(118, 1, '2016-12-27', '19:00:00', 1, 1),
(119, 1, '2016-12-27', '19:00:00', 1, 1),
(120, 1, '2016-12-27', '19:00:00', 1, 1),
(121, 1, '2016-12-27', '19:00:00', 1, 1),
(122, 1, '2016-12-27', '19:00:00', 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `t_reservation_detail`
--

CREATE TABLE `t_reservation_detail` (
  `detail_num` int(2) NOT NULL,
  `reservation_id` int(4) NOT NULL,
  `fee_id` int(4) NOT NULL,
  `seat_id` int(4) NOT NULL,
  `tiket_number` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_reservation_detail`
--

INSERT INTO `t_reservation_detail` (`detail_num`, `reservation_id`, `fee_id`, `seat_id`, `tiket_number`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 1, 1),
(3, 41, 1, 1, 1),
(4, 42, 1, 1, 1),
(5, 43, 1, 1, 1),
(6, 44, 1, 1, 1),
(7, 44, 1, 1, 1),
(8, 44, 1, 1, 1),
(9, 44, 1, 1, 1),
(10, 44, 1, 1, 1),
(11, 44, 1, 1, 1),
(12, 44, 1, 1, 1),
(13, 45, 1, 1, 1),
(14, 45, 1, 1, 1),
(15, 45, 1, 1, 1),
(16, 45, 1, 1, 1),
(17, 45, 1, 1, 1),
(18, 45, 1, 1, 1),
(19, 48, 1, 1, 123),
(20, 48, 1, 1, 124),
(21, 48, 1, 1, 123),
(22, 48, 1, 1, 123),
(23, 48, 1, 1, 123),
(24, 48, 1, 1, 123),
(25, 49, 1, 1, 123),
(26, 49, 1, 1, 123),
(27, 49, 1, 1, 123),
(28, 49, 1, 1, 123),
(29, 49, 1, 1, 123),
(30, 49, 1, 1, 123),
(31, 50, 1, 1, 123),
(32, 50, 1, 1, 123),
(33, 50, 1, 1, 123),
(34, 50, 1, 1, 123),
(35, 50, 1, 1, 123),
(36, 50, 1, 1, 123),
(37, 51, 1, 1, 123),
(38, 51, 1, 1, 123),
(39, 51, 1, 1, 123),
(40, 51, 1, 1, 123),
(41, 51, 1, 1, 123),
(42, 51, 1, 1, 123),
(43, 52, 1, 1, 123),
(44, 52, 1, 1, 123),
(45, 52, 1, 1, 123),
(46, 52, 1, 1, 123),
(47, 52, 1, 1, 123),
(48, 52, 1, 1, 123),
(52, 59, 1, 1, 124),
(53, 59, 1, 1, 124),
(54, 59, 1, 1, 124),
(55, 59, 1, 1, 124),
(56, 59, 1, 1, 124),
(57, 59, 1, 1, 124),
(58, 60, 1, 1, 124),
(59, 60, 1, 1, 124),
(60, 60, 1, 1, 124),
(61, 60, 1, 1, 124),
(62, 60, 1, 1, 124),
(63, 60, 1, 1, 124),
(64, 61, 1, 1, 124),
(65, 61, 1, 1, 125),
(66, 61, 1, 1, 126),
(67, 61, 1, 1, 127),
(68, 61, 1, 1, 128),
(69, 61, 1, 1, 129),
(70, 62, 1, 1, 129),
(71, 62, 1, 1, 130),
(72, 62, 1, 1, 131),
(73, 62, 1, 1, 132),
(74, 62, 1, 1, 133),
(75, 62, 1, 1, 134),
(76, 63, 1, 1, 134),
(77, 63, 1, 1, 135),
(78, 63, 1, 1, 136),
(79, 63, 1, 1, 137),
(80, 63, 1, 1, 138),
(81, 63, 1, 1, 139),
(82, 64, 1, 1, 139),
(83, 64, 1, 1, 140),
(84, 64, 1, 1, 141),
(85, 64, 1, 1, 142),
(86, 64, 1, 1, 143),
(87, 64, 1, 1, 144),
(88, 65, 1, 1, 144),
(89, 65, 1, 1, 145),
(90, 65, 1, 1, 146),
(91, 65, 1, 1, 147),
(92, 65, 1, 1, 148),
(93, 65, 1, 1, 149),
(94, 66, 1, 1, 149),
(95, 66, 1, 1, 150),
(96, 66, 1, 1, 151),
(97, 66, 1, 1, 152),
(98, 66, 1, 1, 153),
(99, 66, 1, 1, 154),
(100, 67, 1, 1, 154),
(101, 67, 1, 1, 155),
(102, 67, 1, 1, 156),
(103, 67, 1, 1, 157),
(104, 67, 1, 1, 158),
(105, 67, 1, 1, 159),
(106, 68, 1, 1, 159),
(107, 68, 1, 1, 160),
(108, 68, 1, 1, 161),
(109, 68, 1, 1, 162),
(110, 68, 1, 1, 163),
(111, 68, 1, 1, 164),
(112, 69, 1, 1, 164),
(113, 69, 1, 1, 165),
(114, 69, 1, 1, 166),
(115, 69, 1, 1, 167),
(116, 69, 1, 1, 168),
(117, 70, 1, 1, 168),
(118, 70, 1, 1, 169),
(119, 70, 1, 1, 170),
(120, 70, 1, 1, 171),
(121, 70, 1, 1, 172),
(122, 71, 1, 1, 172),
(123, 71, 1, 1, 173),
(124, 71, 1, 1, 174),
(125, 71, 1, 1, 175),
(126, 71, 1, 1, 176),
(127, 72, 1, 1, 176),
(128, 72, 1, 1, 177),
(129, 72, 1, 1, 178),
(130, 72, 1, 1, 179),
(131, 72, 1, 1, 180),
(132, 73, 1, 1, 180),
(133, 73, 1, 1, 181),
(134, 73, 1, 1, 182),
(135, 73, 1, 1, 183),
(136, 73, 1, 1, 184),
(137, 74, 1, 1, 184),
(138, 74, 1, 1, 185),
(139, 74, 1, 1, 186),
(140, 74, 1, 1, 187),
(141, 74, 1, 1, 188),
(142, 75, 1, 1, 188),
(143, 75, 1, 1, 189),
(144, 75, 1, 1, 190),
(145, 75, 1, 1, 191),
(146, 75, 1, 1, 192),
(147, 76, 1, 1, 192),
(148, 76, 1, 1, 193),
(149, 76, 1, 1, 194),
(150, 76, 1, 1, 195),
(151, 76, 1, 1, 196),
(152, 77, 1, 1, 196),
(153, 77, 1, 1, 197),
(154, 77, 1, 1, 198),
(155, 77, 1, 1, 199),
(156, 77, 1, 1, 200),
(157, 78, 1, 1, 200),
(158, 78, 1, 1, 201),
(159, 78, 1, 1, 202),
(160, 78, 1, 1, 203),
(161, 78, 1, 1, 204),
(162, 79, 1, 1, 204),
(163, 79, 1, 1, 205),
(164, 79, 1, 1, 206),
(165, 79, 1, 1, 207),
(166, 79, 1, 1, 208),
(167, 80, 1, 1, 208),
(168, 80, 1, 1, 209),
(169, 80, 1, 1, 210),
(170, 80, 1, 1, 211),
(171, 80, 1, 1, 212),
(172, 81, 1, 1, 212),
(173, 81, 1, 1, 213),
(174, 81, 1, 1, 214),
(175, 81, 1, 1, 215),
(176, 81, 1, 1, 216),
(177, 82, 1, 1, 216),
(178, 82, 1, 1, 217),
(179, 82, 1, 1, 218),
(180, 82, 1, 1, 219),
(181, 82, 1, 1, 220),
(182, 83, 1, 1, 220),
(183, 83, 1, 1, 221),
(184, 83, 1, 1, 222),
(185, 83, 1, 1, 223),
(186, 83, 1, 1, 224),
(187, 84, 1, 1, 224),
(188, 84, 1, 1, 225),
(189, 84, 1, 1, 226),
(190, 84, 1, 1, 227),
(191, 84, 1, 1, 228),
(192, 85, 1, 1, 228),
(193, 85, 1, 1, 229),
(194, 85, 1, 1, 230),
(195, 85, 1, 1, 231),
(196, 85, 1, 1, 232),
(197, 88, 1, 1, 232),
(198, 88, 1, 1, 233),
(199, 88, 1, 1, 234),
(200, 88, 1, 1, 235),
(201, 88, 1, 1, 236),
(202, 89, 1, 1, 236),
(203, 89, 1, 1, 237),
(204, 89, 1, 1, 238),
(205, 89, 1, 1, 239),
(206, 89, 1, 1, 240),
(207, 90, 1, 1, 240),
(208, 90, 1, 1, 241),
(209, 90, 1, 1, 242),
(210, 90, 1, 1, 243),
(211, 90, 1, 1, 244),
(212, 91, 1, 1, 244),
(213, 91, 1, 1, 245),
(214, 91, 1, 1, 246),
(215, 91, 1, 1, 247),
(216, 91, 1, 1, 248),
(217, 92, 1, 1, 248),
(218, 92, 1, 1, 249),
(219, 92, 1, 1, 250),
(220, 92, 1, 1, 251),
(221, 92, 1, 1, 252),
(222, 93, 1, 1, 252),
(223, 93, 1, 1, 253),
(224, 93, 1, 1, 254),
(225, 93, 1, 1, 255),
(226, 93, 1, 1, 256),
(227, 94, 1, 1, 256),
(228, 94, 1, 1, 257),
(229, 94, 1, 1, 258),
(230, 94, 1, 1, 259),
(231, 94, 1, 1, 260),
(232, 95, 1, 1, 260),
(233, 95, 1, 1, 261),
(234, 95, 1, 1, 262),
(235, 95, 1, 1, 263),
(236, 95, 1, 1, 264),
(237, 96, 1, 1, 264),
(238, 96, 1, 1, 265),
(239, 96, 1, 1, 266),
(240, 96, 1, 1, 267),
(241, 96, 1, 1, 268),
(242, 97, 1, 1, 268),
(243, 97, 1, 1, 269),
(244, 97, 1, 1, 270),
(245, 97, 1, 1, 271),
(246, 97, 1, 1, 272),
(247, 98, 1, 1, 272),
(248, 98, 1, 1, 273),
(249, 98, 1, 1, 274),
(250, 98, 1, 1, 275),
(251, 98, 1, 1, 276),
(252, 99, 1, 1, 276),
(253, 99, 1, 1, 277),
(254, 99, 1, 1, 278),
(255, 99, 1, 1, 279),
(256, 99, 1, 1, 280),
(257, 100, 1, 1, 280),
(258, 100, 1, 1, 281),
(259, 100, 1, 1, 282),
(260, 100, 1, 1, 283),
(261, 100, 1, 1, 284),
(262, 101, 1, 1, 284),
(263, 101, 1, 1, 285),
(264, 101, 1, 1, 286),
(265, 101, 1, 1, 287),
(266, 101, 1, 1, 288),
(267, 102, 1, 1, 288),
(268, 102, 1, 1, 289),
(269, 102, 1, 1, 290),
(270, 102, 1, 1, 291),
(271, 102, 1, 1, 292),
(272, 103, 1, 1, 292),
(273, 103, 1, 1, 293),
(274, 103, 1, 1, 294),
(275, 103, 1, 1, 295),
(276, 103, 1, 1, 296),
(277, 104, 1, 1, 296),
(278, 104, 1, 1, 297),
(279, 104, 1, 1, 298),
(280, 104, 1, 1, 299),
(281, 104, 1, 1, 300),
(282, 105, 1, 1, 300),
(283, 105, 1, 1, 301),
(284, 105, 1, 1, 302),
(285, 105, 1, 1, 303),
(286, 105, 1, 1, 304),
(287, 106, 1, 1, 304),
(288, 106, 1, 1, 305),
(289, 106, 1, 1, 306),
(290, 106, 1, 1, 307),
(291, 106, 1, 1, 308),
(292, 107, 1, 1, 308),
(293, 107, 1, 1, 309),
(294, 107, 1, 1, 310),
(295, 107, 1, 1, 311),
(296, 107, 1, 1, 312),
(297, 108, 1, 1, 312),
(298, 108, 1, 1, 313),
(299, 108, 1, 1, 314),
(300, 108, 1, 1, 315),
(301, 108, 1, 1, 316),
(302, 109, 1, 1, 316),
(303, 109, 1, 1, 317),
(304, 109, 1, 1, 318),
(305, 109, 1, 1, 319),
(306, 109, 1, 1, 320),
(307, 110, 1, 12, 320),
(308, 110, 1, 13, 321),
(309, 110, 1, 14, 322),
(310, 110, 1, 15, 323),
(311, 110, 1, 16, 324),
(312, 111, 1, 33, 324),
(313, 111, 1, 34, 325),
(314, 111, 1, 35, 326),
(315, 111, 1, 36, 327),
(316, 111, 1, 37, 328),
(317, 117, 3, 33, 328),
(318, 117, 4, 34, 329),
(319, 117, 5, 35, 330),
(320, 117, 6, 36, 331),
(321, 117, 7, 37, 332),
(322, 118, 4, 23, 332),
(323, 119, 4, 23, 332),
(324, 120, 3, 23, 332),
(325, 121, 5, 12, 332),
(326, 121, 5, 13, 333),
(327, 122, 3, 3, 333),
(328, 122, 5, 4, 334);

-- --------------------------------------------------------

--
-- テーブルの構造 `t_schedule_detail`
--

CREATE TABLE `t_schedule_detail` (
  `put_schedule_id` int(4) NOT NULL,
  `num` int(3) NOT NULL,
  `screen_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_schedule_detail`
--

INSERT INTO `t_schedule_detail` (`put_schedule_id`, `num`, `screen_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `t_screen_detail`
--

CREATE TABLE `t_screen_detail` (
  `screen_num` int(5) NOT NULL,
  `screen_id` int(4) NOT NULL,
  `seat_id` int(4) NOT NULL,
  `flg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_screen_detail`
--

INSERT INTO `t_screen_detail` (`screen_num`, `screen_id`, `seat_id`, `flg`) VALUES
(1, 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_day_mouth`
--
ALTER TABLE `m_day_mouth`
  ADD PRIMARY KEY (`Day_Mouth_ID`);

--
-- Indexes for table `m_employee`
--
ALTER TABLE `m_employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `m_fee`
--
ALTER TABLE `m_fee`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `m_member`
--
ALTER TABLE `m_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `m_movie`
--
ALTER TABLE `m_movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `movie_genre_id` (`movie_genre_id`),
  ADD KEY `movie_production_id` (`movie_production_id`);

--
-- Indexes for table `m_movie_genre`
--
ALTER TABLE `m_movie_genre`
  ADD PRIMARY KEY (`movie_genre_id`);

--
-- Indexes for table `m_movie_img`
--
ALTER TABLE `m_movie_img`
  ADD PRIMARY KEY (`num`,`movie_id`);

--
-- Indexes for table `m_movie_production`
--
ALTER TABLE `m_movie_production`
  ADD PRIMARY KEY (`movie_production_id`);

--
-- Indexes for table `m_performer`
--
ALTER TABLE `m_performer`
  ADD PRIMARY KEY (`num`,`movie_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `m_put_movie`
--
ALTER TABLE `m_put_movie`
  ADD PRIMARY KEY (`put_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `m_put_time`
--
ALTER TABLE `m_put_time`
  ADD PRIMARY KEY (`put_time_id`);

--
-- Indexes for table `m_screen`
--
ALTER TABLE `m_screen`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `m_seat`
--
ALTER TABLE `m_seat`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `t_put_schedule`
--
ALTER TABLE `t_put_schedule`
  ADD PRIMARY KEY (`put_schedule_id`,`num`),
  ADD KEY `Day_Mouth_ID` (`Day_Mouth_ID`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `put_id` (`put_id`),
  ADD KEY `put_time_id` (`put_time_id`);

--
-- Indexes for table `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `put_schedule_id` (`put_schedule_id`,`num`);

--
-- Indexes for table `t_reservation_detail`
--
ALTER TABLE `t_reservation_detail`
  ADD PRIMARY KEY (`detail_num`,`reservation_id`),
  ADD KEY `fee_id` (`fee_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `t_schedule_detail`
--
ALTER TABLE `t_schedule_detail`
  ADD KEY `screen_id` (`screen_id`),
  ADD KEY `put_schedule_id` (`put_schedule_id`,`num`);

--
-- Indexes for table `t_screen_detail`
--
ALTER TABLE `t_screen_detail`
  ADD PRIMARY KEY (`screen_num`,`screen_id`),
  ADD KEY `screen_id` (`screen_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_day_mouth`
--
ALTER TABLE `m_day_mouth`
  MODIFY `Day_Mouth_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `m_employee`
--
ALTER TABLE `m_employee`
  MODIFY `employee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_fee`
--
ALTER TABLE `m_fee`
  MODIFY `fee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `m_member`
--
ALTER TABLE `m_member`
  MODIFY `member_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `m_movie`
--
ALTER TABLE `m_movie`
  MODIFY `movie_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_movie_genre`
--
ALTER TABLE `m_movie_genre`
  MODIFY `movie_genre_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `m_movie_production`
--
ALTER TABLE `m_movie_production`
  MODIFY `movie_production_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_performer`
--
ALTER TABLE `m_performer`
  MODIFY `num` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_put_movie`
--
ALTER TABLE `m_put_movie`
  MODIFY `put_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_screen`
--
ALTER TABLE `m_screen`
  MODIFY `screen_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_reservation`
--
ALTER TABLE `t_reservation`
  MODIFY `reservation_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `t_reservation_detail`
--
ALTER TABLE `t_reservation_detail`
  MODIFY `detail_num` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;
--
-- AUTO_INCREMENT for table `t_screen_detail`
--
ALTER TABLE `t_screen_detail`
  MODIFY `screen_num` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `m_fee`
--
ALTER TABLE `m_fee`
  ADD CONSTRAINT `m_fee_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `m_movie`
--
ALTER TABLE `m_movie`
  ADD CONSTRAINT `m_movie_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `m_movie_ibfk_2` FOREIGN KEY (`movie_genre_id`) REFERENCES `m_movie_genre` (`movie_genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `m_movie_ibfk_3` FOREIGN KEY (`movie_production_id`) REFERENCES `m_movie_production` (`movie_production_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `m_performer`
--
ALTER TABLE `m_performer`
  ADD CONSTRAINT `m_performer_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `m_movie` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `m_put_movie`
--
ALTER TABLE `m_put_movie`
  ADD CONSTRAINT `m_put_movie_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `m_put_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `m_movie` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_put_schedule`
--
ALTER TABLE `t_put_schedule`
  ADD CONSTRAINT `t_put_schedule_ibfk_1` FOREIGN KEY (`Day_Mouth_ID`) REFERENCES `m_day_mouth` (`Day_Mouth_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_put_schedule_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_put_schedule_ibfk_3` FOREIGN KEY (`put_id`) REFERENCES `m_put_movie` (`put_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_put_schedule_ibfk_4` FOREIGN KEY (`put_time_id`) REFERENCES `m_put_time` (`put_time_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD CONSTRAINT `t_reservation_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`member_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_reservation_ibfk_2` FOREIGN KEY (`put_schedule_id`,`num`) REFERENCES `t_put_schedule` (`put_schedule_id`, `num`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_reservation_detail`
--
ALTER TABLE `t_reservation_detail`
  ADD CONSTRAINT `t_reservation_detail_ibfk_1` FOREIGN KEY (`fee_id`) REFERENCES `m_fee` (`fee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_reservation_detail_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `m_seat` (`seat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_reservation_detail_ibfk_3` FOREIGN KEY (`reservation_id`) REFERENCES `t_reservation` (`reservation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_schedule_detail`
--
ALTER TABLE `t_schedule_detail`
  ADD CONSTRAINT `t_schedule_detail_ibfk_1` FOREIGN KEY (`screen_id`) REFERENCES `m_screen` (`screen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_schedule_detail_ibfk_2` FOREIGN KEY (`put_schedule_id`,`num`) REFERENCES `t_put_schedule` (`put_schedule_id`, `num`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_screen_detail`
--
ALTER TABLE `t_screen_detail`
  ADD CONSTRAINT `t_screen_detail_ibfk_1` FOREIGN KEY (`screen_id`) REFERENCES `m_screen` (`screen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_screen_detail_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `m_seat` (`seat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
