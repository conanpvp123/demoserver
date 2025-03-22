-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 04:55 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nja_account`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `content`) VALUES
(1, 'Chào mừng bạn đến với server Nso Hồi Ức \n       NSOHOIUC.SITE:\n-----------------------------------\n- X2 Exp và X2 nạp Coin ngày 13/12/2021\n- Tăng tỷ lệ rơi TTTT tại làng cổ\n- Update phân thân dùng được Nhân Sâm\n-----------------------------------\n- Nhận quà tân thủ tại NPC ADMIN\n- Gift code tân thử: NSOHOIUCTANTHU (Nhập tại NPC Rakki)\n- Kiếm Lượng: điểm danh ngày, hoàn thành NVHN, hoàn thành 2 lần hang động, hoàn thành LDGT\n- Kiếm Xu: hoàn thành NVHN, chiến thắng/vào top CHIẾN TRƯỜNG\n- Kiếm Yên: Farm quái thường 500k yên, tinh anh 1tr yên, thủ lĩnh 2tr yên');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `label` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dogecoin` text DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `player_id`, `label`, `address`, `dogecoin`, `coin`, `money`, `status`, `created_at`, `updated_at`) VALUES
(1, 367, 'w9wJk6a4uj_367', NULL, '3.2237', 20000, 20000, 0, '2021-11-01 12:39:28', '2021-11-01 12:39:28'),
(2, 1, 'sqw97r8prw_1', NULL, '8.1985', 50000, 50000, 0, '2021-11-01 18:25:44', '2021-11-01 18:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `exp` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `itemLevel` int(11) NOT NULL DEFAULT 0,
  `coin` int(11) NOT NULL DEFAULT 1000000,
  `reg_date` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '28/05/2003 16:05:22',
  `log` varchar(5000) COLLATE utf8_bin NOT NULL,
  `alert` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `use_card` tinyint(4) NOT NULL DEFAULT 4,
  `openDun` tinyint(4) NOT NULL DEFAULT 3,
  `debt` tinyint(4) NOT NULL DEFAULT 0,
  `members` longtext COLLATE utf8_bin NOT NULL,
  `items` varchar(5000) COLLATE utf8_bin NOT NULL DEFAULT '[]',
  `week` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '2003-05-28 22:22:1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `clone_ninja`
--

CREATE TABLE `clone_ninja` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `speed` tinyint(4) NOT NULL DEFAULT 4,
  `level` smallint(6) NOT NULL DEFAULT 1,
  `exp` bigint(20) NOT NULL DEFAULT 0,
  `expdown` bigint(20) NOT NULL DEFAULT 0,
  `pk` tinyint(4) NOT NULL DEFAULT 0,
  `ppoint` int(11) NOT NULL DEFAULT 0,
  `potential0` int(11) NOT NULL DEFAULT 15,
  `potential1` int(11) NOT NULL DEFAULT 5,
  `potential2` int(11) NOT NULL DEFAULT 5,
  `potential3` int(11) NOT NULL DEFAULT 5,
  `spoint` int(11) NOT NULL DEFAULT 0,
  `class` tinyint(4) NOT NULL DEFAULT 1,
  `skill` varchar(5000) NOT NULL DEFAULT '[]',
  `KSkill` varchar(100) NOT NULL DEFAULT '[-1,-1,-1]',
  `OSkill` varchar(100) NOT NULL DEFAULT '[-1,-1,-1,-1,-1]',
  `CSkill` smallint(6) NOT NULL DEFAULT -1,
  `ItemBody` longtext NOT NULL,
  `ItemMounts` longtext NOT NULL,
  `effect` varchar(1000) NOT NULL DEFAULT '[]',
  `info` varchar(1000) NOT NULL DEFAULT '[8,8,10,10,1,1]',
  `ID_HORSE` int(11) NOT NULL DEFAULT -1,
  `thoi-trang` varchar(500) DEFAULT '[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clone_ninja`
--

INSERT INTO `clone_ninja` (`id`, `name`, `speed`, `level`, `exp`, `expdown`, `pk`, `ppoint`, `potential0`, `potential1`, `potential2`, `potential3`, `spoint`, `class`, `skill`, `KSkill`, `OSkill`, `CSkill`, `ItemBody`, `ItemMounts`, `effect`, `info`, `ID_HORSE`, `thoi-trang`) VALUES
(-10000001, 'khiemdz', 4, 10, 80500, 0, 0, 0, 15, 5, 5, 5, 0, 0, '[{\"id\":0,\"point\":0}]', '[-1,-1,-1]', '[-1,-1,-1,-1,-1]', 0, '[{\"isLock\":true,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"index\":1,\"id\":194,\"sys\":0,\"isExpires\":false,\"option\":[]},{\"isLock\":true,\"expires\":1640948379757,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"index\":17,\"id\":799,\"sys\":0,\"isExpires\":true,\"option\":[{\"param\":15,\"id\":94},{\"param\":100,\"id\":92},{\"param\":200,\"id\":86}]},{\"isLock\":true,\"expires\":1640948377309,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"index\":18,\"id\":796,\"sys\":0,\"isExpires\":true,\"option\":[{\"param\":2992,\"id\":6},{\"param\":2991,\"id\":7},{\"param\":10,\"id\":94},{\"param\":100,\"id\":95},{\"param\":100,\"id\":96},{\"param\":100,\"id\":97}]},{\"isLock\":true,\"expires\":1640852648841,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"index\":26,\"id\":826,\"sys\":0,\"isExpires\":true,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":10,\"id\":58}]}]', '[{\"isLock\":true,\"expires\":1640948378435,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"index\":4,\"id\":828,\"sys\":0,\"isExpires\":true,\"option\":[{\"param\":15,\"id\":94},{\"param\":100,\"id\":92},{\"param\":200,\"id\":86},{\"param\":1000,\"id\":73},{\"param\":500,\"id\":6},{\"param\":50,\"id\":70},{\"param\":500,\"id\":7}]}]', '[]', '[8,8,10,10,1,1]', -1, '[40,41,42,44,-1,-1,63,-1,-1,-1]');

-- --------------------------------------------------------

--
-- Table structure for table `doi_coin`
--

CREATE TABLE `doi_coin` (
  `id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `old_coin` int(11) DEFAULT NULL,
  `new_coin` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_upload`
--

CREATE TABLE `file_upload` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_upload`
--

INSERT INTO `file_upload` (`id`, `type`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'NSO Hồi Ức HSL Fix NVHN (Java)', 'upload/file/uhQ71_NSO_HOI_UC_HSL.jar', '2021-11-01 12:02:36', '2021-11-01 19:34:13'),
(2, 1, 'NSO Hồi Ức HSL X3 Fix NVHN (Java)', 'upload/file/R0LUT_NSO_HOI_UC_HSL_X3.jar', '2021-11-01 12:02:45', '2021-11-01 19:34:23'),
(4, 1, 'NSO Hồi Ức AUTO HSL Speed  (Java)', 'upload/file/oQYe8_NsoHoiUcHSLSpeed2.jar', '2021-11-01 19:18:43', '2021-11-21 15:44:54'),
(8, 3, 'NSO Hồi Ức PC 180 (mod Hack)', 'upload/file/uhCcf_NinjaSchool_180 (mob hack).rar', '2021-12-01 09:50:22', '2021-12-01 09:50:22'),
(9, 1, 'NSO Hồi Ức 183 (Gốc)', 'upload/file/QMRiQ_NinjaSchool_183.jar', '2021-12-14 17:08:40', '2021-12-14 17:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `gift_code`
--

CREATE TABLE `gift_code` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_quantity` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_isLock` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_expires` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isPlayer` tinyint(4) DEFAULT 0,
  `player` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isTime` tinyint(4) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mã quà tặng';

--
-- Dumping data for table `gift_code`
--

INSERT INTO `gift_code` (`id`, `code`, `item_id`, `item_quantity`, `item_isLock`, `item_expires`, `isPlayer`, `player`, `isTime`, `time`, `created_at`, `updated_at`) VALUES
(1, '3', '[\"828\",\"547\",\"545\"]', '[\"1\",\"1\",\"1\"]', '[\"0\",\"0\",\"0\"]', '[\"-1\",\"-1\",\"-1\"]', 0, NULL, 0, NULL, '2021-11-01 10:56:15', '2021-11-01 10:56:15'),
(76, 'NSOHOIUCCTTOP1', '[\"-1\",\"-2\",\"251\"]', '[\"5000\",\"10000000\",\"2800\"]', '[\"0\",\"0\",\"0\"]', '[\"-1\",\"-1\",\"-1\"]', 1, '[\"chucongquan28\",\"otpgame\"]', 0, NULL, '2021-11-27 14:55:52', '2021-12-01 14:59:17'),
(77, 'NSOHOIUCCTTOP2', '[\"-1\",\"-2\",\"251\"]', '[\"3000\",\"5000000\",\"1700\"]', '[\"0\",\"0\",\"0\"]', '[\"-1\",\"-1\",\"-1\"]', 1, '[\"chucongquan28\",\"dapvaolol\"]', 0, NULL, '2021-11-27 15:00:06', '2021-12-01 15:00:26'),
(78, 'NSOHOIUCCTTOP3', '[\"-1\",\"-2\",\"251\"]', '[\"1000\",\"3000000\",\"600\"]', '[\"0\",\"0\",\"0\"]', '[\"-1\",\"-1\",\"-1\"]', 1, '[\"chucongquan28\",\"xitrumst1\"]', 0, NULL, '2021-11-27 15:02:55', '2021-12-01 14:59:52'),
(140, 'NSOHOIUC10KLUONG', '[\"-1\"]', '[\"10000\"]', '[\"0\"]', '[\"-1\"]', 1, '[\"admin\",\"zhengtu\",\"chucongquan28\",\"phuongnt\",\"viper1\",\"thienpro\",\"trongdz\",\"nttn95\",\"dapvaolol\",\"romcoca\",\"lmsf000\",\"anh123\",\"anhvannd112k\",\"vanvu111o\",\"haibangdz1\",\"haibangdz2\",\"vanvu112o\",\"hoangkhai\",\"haibangdz\",\"xitrumst1\",\"dodinhquyet\",\"s3bgvodoix8\",\"admin1\",\"acocmor\",\"acocmor2\",\"kuzu11\",\"kuzu12\",\"binh0312\",\"kiemvip1st\",\"playgirl\",\"0nedame\",\"onghoa1\",\"daucatmoi\",\"daube3\",\"nttn99\",\"emoii\",\"daucatmoi1\",\"playgirls\",\"phapdepzai1\",\"haibangdz3\",\"haibangdz4\",\"kuzu13\",\"anhvannd1120\",\"onghoa\",\"daube4\",\"sskjem\",\"thinhvotinh\",\"zzpumpim2k\",\"thuylinh\",\"acocmor3\",\"tiep9x\",\"annguyenqlns\",\"ssquat\",\"otpgame\",\"tiep9xx\",\"b0scute\",\"thinhthao\",\"ngandepgai\",\"nsohoiuct\",\"miximoi\",\"vip1xthoi\",\"daucatmoi2\",\"romcoca203\",\"maxkiem1\",\"0nedamepc\",\"trumzed\",\"tungdxb\",\"henxui\",\"nsohoiuc1\",\"giahuyk9\",\"tieuvip1st\",\"nghihost\",\"neity0911\",\"taonee\",\"otpgame2\",\"vuonghero98\",\"uyencutte\",\"nsohoiuc2\",\"nsohoiuc3\",\"nsohoiuc4\",\"dongkisot\",\"minhdienabc1\",\"minhdienabc2\",\"binhdoi3vn\",\"khiemne\",\"nsolau\",\"adim\",\"hgiap0108\",\"nhokti2003\",\"ohvxmm\",\"ohvxmm1\",\"cuopday\",\"20000\",\"duytan2096\",\"thuong1092\",\"playgirls2\",\"bacden\",\"ngtienqc\",\"ngocanh0802\",\"thinhgs1\",\"binhdoi3vnnn\",\"gamemobi\",\"nguyenlinh1972\",\"caothu\",\"haibangdz5\",\"boycaothu\",\"myslogan\",\"gamerpro\",\"dang1ki1\",\"cuongso1\",\"luffysang00\",\"24h01p\",\"poi098\",\"nhungsu\",\"quangne\",\"quanghai206\",\"nhanbanh\",\"tapchoi01\",\"trongkinh11\",\"volam2\",\"kimanh\",\"dummy\",\"phungkhoi\",\"huynhnu\",\"tienblue\",\"phuockute\",\"ngocnguyen\",\"cuongchala\",\"sptkevin\",\"gmenyenbai\",\"thanhdat2683\",\"nsobongdem\",\"bbbbbb\",\"narutooo\",\"troll\",\"tockadiay2\",\"huuokevip37\",\"ninjagame\",\"vu200176\",\"tungz\",\"ky2516\",\"kenlylove\",\"huongker123\",\"egame\",\"huyenthoai\",\"0946477740\",\"rinna123\",\"ducbin19n1\",\"sexanime\",\"mancityfc\",\"datxinloi1\",\"xitrum\",\"tiktok\",\"thang\",\"phongdaik\",\"minhthanh\",\"biken\",\"thangdaika\",\"trumn0b1t3\",\"mancuong\",\"hoangvn129\",\"ngcong\",\"boibaby\",\"tongngao\",\"jinow\",\"camenda1\",\"trumtieu130\",\"dinhminh\",\"shino1\",\"bong555\",\"thanghl123\",\"uydeptrai\",\"pansy2609\",\"banhbao\",\"nsonhadam\",\"vannguuen\",\"112233\",\"yasuo1201\",\"quandz\",\"trung0zk\",\"hieudz\",\"mrb1123\",\"anhduy12\",\"aquang\",\"lin59\",\"dunglachoi\",\"badgirl\",\"anhtien\",\"tuan1905\",\"iinhunglunii\",\"quanquattran\",\"hihii\",\"zkunaiz\",\"kocanbiet\",\"kun1479\",\"binhdoi3vnnnn\",\"binhdoi3vnnnnn\",\"neity1212\",\"neity2323\",\"huuokevip1\",\"huuokevip2\",\"zkunaiz1\",\"zkunaiz2\",\"ledinhthang2407\",\"001911\",\"mright98\",\"hasagii\",\"0napthe\",\"hoang2341\",\"vongdz1\",\"vongdz\",\"vongdz2\",\"kiencute2000\",\"kiencute2001\",\"neity1302\",\"nsohoiuc\",\"binhdoi3vnn\",\"huypkpro\",\"motthoidenho\",\"tuoiloll\",\"thang36\",\"cuibapvl\",\"sukien1\",\"sukien2\",\"sukien3\",\"sukien4\",\"sukien5\",\"nhatgiangz\",\"cungvip1st\",\"boynbb14\",\"taikhoan76\",\"hoaanh1708\",\"nguyenvanhuan\",\"vongdz3\",\"hasagiihut\",\"vdmtp111\",\"tbbhoang\",\"kunxt98\",\"abc123\",\"vongdz4\",\"vongdz5\",\"nhatgiangzz\",\"thangledinh\",\"anhhoa\",\"tanhmcute\",\"ngoquoc159\",\"thangnhun2426\",\"hasayoo\",\"upconcac\",\"tiendung02\",\"thanhhoang123\",\"giangdayy\",\"giangdayyy\",\"lam123\",\"hocsinhlop2\",\"siunhan\",\"taiking0022\",\"tonle998\",\"empheco\",\"empheco1\",\"inboxmenow\",\"laohat6789\",\"000911\"]', 0, NULL, '2021-12-11 13:28:07', '2021-12-11 13:28:07'),
(169, 'NSOHOIUC19122021', '[\"-1\"]', '[\"2000\"]', '[\"0\"]', '[\"-1\"]', 0, NULL, 1, '2021-12-19 23:50:00', '2021-12-18 13:57:09', '2021-12-18 13:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `history_coin`
--

CREATE TABLE `history_coin` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) DEFAULT 0,
  `coin` int(11) DEFAULT 0,
  `old_coin` int(11) DEFAULT 0,
  `new_coin` int(11) DEFAULT 0,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lịch sử nạp coin qua admin';

-- --------------------------------------------------------

--
-- Table structure for table `history_gift`
--

CREATE TABLE `history_gift` (
  `id` int(11) UNSIGNED NOT NULL,
  `player_id` int(11) DEFAULT 0,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lịch sử nhận gift code';

-- --------------------------------------------------------

--
-- Table structure for table `history_momo`
--

CREATE TABLE `history_momo` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `player_id` int(11) DEFAULT NULL,
  `sdt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  `coin` bigint(20) DEFAULT NULL,
  `old_coin` bigint(20) DEFAULT NULL,
  `new_coin` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lich su nap tien momo';

-- --------------------------------------------------------

--
-- Table structure for table `history_webshop`
--

CREATE TABLE `history_webshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) DEFAULT 0,
  `ten_vat_pham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='lịch sử mua đồ webshop';

-- --------------------------------------------------------

--
-- Table structure for table `nap_tien`
--

CREATE TABLE `nap_tien` (
  `id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `so_tien` bigint(20) DEFAULT NULL,
  `nha_mang` varchar(255) DEFAULT NULL,
  `menh_gia` bigint(20) DEFAULT NULL,
  `ma_the` text DEFAULT NULL,
  `ma_seri` text DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ninja`
--

CREATE TABLE `ninja` (
  `id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT -1,
  `taskId` smallint(6) NOT NULL DEFAULT 0,
  `taskHangNgay` varchar(500) DEFAULT '[-1, -1, -1, -1, -1, 0,0]',
  `taskTaThu` varchar(500) DEFAULT '[-1, -1, -1, -1, -1, 0,0]',
  `taskDanhVong` varchar(500) DEFAULT '[-1,-1,-1,0,20,6]',
  `head` tinyint(4) NOT NULL DEFAULT -1,
  `caiTrang` tinyint(4) NOT NULL DEFAULT -1,
  `speed` tinyint(4) NOT NULL DEFAULT 4,
  `level` smallint(6) NOT NULL DEFAULT 1,
  `saveBXH` int(11) DEFAULT 1,
  `exp` bigint(11) NOT NULL DEFAULT 0,
  `expdown` bigint(20) NOT NULL DEFAULT 0,
  `expSkillClone` bigint(20) DEFAULT 0,
  `timeRemoveClone` bigint(20) DEFAULT NULL,
  `pk` tinyint(4) NOT NULL DEFAULT 0,
  `ppoint` int(11) NOT NULL DEFAULT 0,
  `potential0` int(11) NOT NULL DEFAULT 15,
  `potential1` int(11) NOT NULL DEFAULT 5,
  `potential2` int(11) NOT NULL DEFAULT 5,
  `potential3` int(11) NOT NULL DEFAULT 5,
  `spoint` int(11) NOT NULL DEFAULT 0,
  `class` tinyint(4) NOT NULL DEFAULT 0,
  `skill` varchar(5000) NOT NULL DEFAULT '[]',
  `KSkill` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[-1,-1,-1]',
  `OSkill` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[-1,-1,-1,-1,-1]',
  `CSkill` smallint(6) NOT NULL DEFAULT 0,
  `xu` int(11) NOT NULL DEFAULT 0,
  `xuBox` int(11) NOT NULL DEFAULT 0,
  `yen` int(11) NOT NULL DEFAULT 0,
  `site` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[22,1678,264,22,0]',
  `maxluggage` bigint(20) NOT NULL DEFAULT 30,
  `levelBag` smallint(6) NOT NULL DEFAULT 0,
  `ItemBag` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ItemBox` longtext NOT NULL,
  `ItemBST` longtext NOT NULL,
  `ItemCaiTrang` longtext NOT NULL,
  `ItemBody` longtext DEFAULT NULL,
  `ItemMounts` longtext NOT NULL,
  `friend` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]',
  `friends` varchar(5000) NOT NULL DEFAULT '[]',
  `effect` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]',
  `clan` varchar(200) NOT NULL DEFAULT '["",0]',
  `newlogin` datetime NOT NULL DEFAULT '2020-11-11 22:15:12',
  `ddClan` tinyint(1) NOT NULL DEFAULT 0,
  `caveID` int(11) NOT NULL DEFAULT -1,
  `nCave` int(11) NOT NULL DEFAULT 1,
  `pointCave` int(11) DEFAULT 0,
  `useCave` int(11) DEFAULT 2,
  `bagCaveMax` int(11) DEFAULT 0,
  `itemIDCaveMax` smallint(6) DEFAULT -1,
  `isHangDong6x` smallint(6) DEFAULT 0,
  `ldgtID` tinyint(4) DEFAULT -1,
  `denbu` tinyint(11) DEFAULT 0,
  `exptype` tinyint(4) DEFAULT 1,
  `info` varchar(500) DEFAULT '[0,0,[0,0,0,0,0,0,0,0,0],0,1,1]',
  `countUseItem` varchar(100) DEFAULT '[1,8,8,10,10,0,0,0]',
  `char_info` varchar(500) DEFAULT '[0,0,0,0,0,0,0,0,0,0,0,0]',
  `buyX3` tinyint(4) DEFAULT 3,
  `chien_truong` varchar(50) DEFAULT '[-1,0]',
  `maxPointCT` bigint(20) DEFAULT 0,
  `sk_noel` varchar(50) DEFAULT '[1,0,0]',
  `pointBossTL` bigint(20) DEFAULT 0,
  `trai_nghiem` varchar(500) DEFAULT '[0,0,0,0]',
  `thoi-trang` varchar(500) DEFAULT '[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]',
  `rankTDB` int(11) DEFAULT 0,
  `isGiftTDB` int(11) DEFAULT 0,
  `countTDB` int(11) DEFAULT 99999,
  `countWin` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ninja`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `username` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` char(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `invite` varchar(50) DEFAULT '',
  `lock` tinyint(11) NOT NULL DEFAULT 0,
  `ban` tinyint(4) DEFAULT 0,
  `email` varchar(999) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `luong` bigint(20) NOT NULL DEFAULT 0,
  `ninja` varchar(500) NOT NULL DEFAULT '[]',
  `coin` bigint(20) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT -1,
  `role` int(11) DEFAULT 0,
  `online` tinyint(4) DEFAULT 0,
  `remember_token` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `slug` longtext DEFAULT NULL,
  `short_content` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `short_content`, `content`, `view`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Hướng dẫn nạp tiền', 'huong-dan-nap-tien', NULL, '<p>&nbsp;</p>\n\n<p>Hiện tại server nhận giao dịch qua phương thức MOMO hoặc thẻ điện thoại<br />\nC&aacute;c bạn c&oacute; thể truy cập v&agrave; nạp tiền tự động&nbsp; MOMO&nbsp;&nbsp;<a href=\"https://nsohoiuc.site/chuc-nang/nap-tien\">TẠI Đ&Acirc;Y</a>&nbsp; - Thẻ điện thoại&nbsp;<a href=\"https://nsohoiuc.site/chuc-nang/nap-the-dien-thoai\">TẠI Đ&Acirc;Y</a></p>\n\n<p>-------------------------------------------------------------------------------------------------------------------------------------</p>\n\n<p><a href=\"https://nsohoiuc.site/chuc-nang/nap-tien\">NẠP TỰ ĐỘNG MOMO</a></p>\n\n<p><span style=\"color:#e74c3c\">Lưu &yacute; khi nạp tiền qua momo</span>:</p>\n\n<p>- Thời gian xử l&yacute; từ 1-2 ph&uacute;t</p>\n\n<p><em>(*) Cần ghi đ&uacute;ng nội dung chuyển khoản (to&agrave;n bộ l&agrave; chữ viết thường)</em></p>\n\n<p><em>(**) Kiểm tra số điện thoại nhận tiền v&agrave; chủ t&agrave;i khoản</em></p>\n\n<p><em>(***) C&aacute;c trường hợp chuyển khoản sai ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; kh&ocirc;ng bồi thường.</em></p>\n\n<p>&nbsp;</p>\n\n<p>BẢNG GI&Aacute; QUY ĐỔI COIN</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.site/userfiles/files/banggia.png\" style=\"height:313px; width:426px\" /></p>\n\n<p>-------------------------------------------------------------------------------------------------------------------------------------</p>\n\n<p><a href=\"https://nsohoiuc.site/chuc-nang/nap-the-dien-thoai\">NẠP THẺ C&Agrave;O</a></p>\n\n<p><span style=\"color:#e74c3c\">Lưu &yacute; khi nạp tiền thẻ c&agrave;o</span>:</p>\n\n<p>- Thời gian xử l&yacute; từ 2-5 ph&uacute;t</p>\n\n<p>(*) Chọn đ&uacute;ng gi&aacute; trị thẻ, đ&uacute;ng số seri, m&atilde; thẻ</p>\n\n<p>(**) Những thẻ bị điền sai th&ocirc;ng tin ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; kh&ocirc;ng bồi thường.</p>\n\n<p>&nbsp;</p>\n\n<p>BẢNG GI&Aacute; CHIẾT KHẨU</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.site/userfiles/files/chietkhau.png\" style=\"height:371px; width:423px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>-------------------------------------------------------------------------------------------------------</p>\n\n<p>Mọi thắc mắc xin li&ecirc;n hệ qua QTV&nbsp;<a href=\"https://www.facebook.com/groups/386056276488774/\">GROUP FACEBOOK</a>&nbsp;hoặc trong&nbsp;<a href=\"https://zalo.me/g/kmaieh025\">BOX ZALO</a></p>\n\n<p>&nbsp;</p>', 0, NULL, '2021-12-03 15:37:37'),
(7, 1, 'upload/file/RPfWPjoF2d_logo.jpg', '[Open Server] Nso Hồi Ức sẽ được Open vào 19h ngày 01/11/2021', 'open-server-nso-hoi-uc-se-duoc-open-vao-19h-ngay-01112021', 'Server Nso Hồi Ức sẽ được Open vào 19h ngày 01/11/2021.\n\nMột số thông tin về server Nso Hồi Ức: \n\n- Server này không phải tgame cũ, và cũng không do đội ngũ tgame cũ xây dựng, vận hành và phát triển', '<p>Server Nso Hồi Ức sẽ được Open v&agrave;o 19h ng&agrave;y 01/11/2021.</p>\n\n<p>Một số th&ocirc;ng tin về server Nso Hồi Ức:&nbsp;</p>\n\n<p>- <strong>Server n&agrave;y kh&ocirc;ng phải tgame cũ, v&agrave; cũng kh&ocirc;ng do đội ngũ tgame cũ x&acirc;y dựng, vận h&agrave;nh v&agrave; ph&aacute;t triển</strong></p>\n\n<p><strong>- Giới hạn ban đầu của server l&agrave; lv110</strong></p>\n\n<p><strong>- Ho&agrave;n thiện to&agrave;n bộ Skill</strong></p>\n\n<p><strong>- Exp, damage, chỉ số của người chơi được fix gần như bản gốc <span style=\"color:#c0392b\">(N&Oacute;I KH&Ocirc;NG VỚI CHỈ SỐ ẢO)</span></strong></p>\n\n<p><strong><span style=\"color:#c0392b\">- K&iacute;ch hoạt t&agrave;i khoản: 10,000 coin</span></strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>- C&aacute;c chức năng ch&iacute;nh của Server:</strong></p>\n\n<p>+ Nhận qu&agrave; t&acirc;n thủ, Điểm danh h&agrave;ng ng&agrave;y, nhận qu&agrave; đi hang động (tại npc ADMIN l&agrave;ng Tone)</p>\n\n<p>+ Chức năng li&ecirc;n quan đến tinh n&acirc;ng cấp, tinh luyện</p>\n\n<p>+ Nhiệm vụ h&agrave;ng ng&agrave;y, nhiệm vụ t&agrave; th&uacute;</p>\n\n<p>+ Nhiệm vụ danh vọng, n&acirc;ng mắt (chat &quot;nvdv&quot; để xem th&ocirc;ng tin nhiệm vụ hiện tại)</p>\n\n<p>+ Hang động (3 lần 1 ng&agrave;y)</p>\n\n<p>+ VXMM</p>\n\n<p>+ Lật h&igrave;nh</p>\n\n<p>+ Th&uacute; cưỡi</p>\n\n<p>+ Pet</p>\n\n<p>+ Gia tộc</p>\n\n<p>+ L&atilde;nh địa gia tộc</p>\n\n<p>+ Chiến trường</p>\n\n<p>+ Tỷ th&iacute;</p>\n\n<p>+ L&ocirc;i đ&agrave;i</p>\n\n<p>+ Pk</p>\n\n<p>+ Nhận thưởng thăng cấp (lượng, ngọc rồng)</p>\n\n<p>+ Giftcode</p>\n\n<p>+ Tẩy điểm, ăn s&aacute;ch</p>\n\n<p>+ Chức năng li&ecirc;n quan đến n&acirc;ng cấp, tinh luyện,... <em>(lưu &yacute; về vấn đề n&acirc;ng cấp, ae kh&ocirc;ng n&ecirc;n để tổng số Y&ecirc;n v&agrave; Xu trong h&agrave;nh trang lớn hơn 2 tỷ khi thực hiện n&acirc;ng cấp)</em></p>\n\n<p>+ Tự động Update dữ liệu 15p / 1 lần</p>\n\n<p><strong>- C&aacute;c chức năng c&ograve;n lại sẽ được cập nhật theo thời gian hoạt động của server</strong></p>\n\n<p>&nbsp;</p>\n\n<p>- Khi bắt đầu tham gia, mng c&oacute; thể qua npc ADMIN tại l&agrave;ng Tone để nhận qu&agrave; t&acirc;n thủ bao gồm: lv10, 100tr xu, 100tr y&ecirc;n, 20k lượng, ngọc 1 sao, 3 nấm ng&agrave;n năm (kho&aacute;), 2 b&aacute;t bảo (kh&ocirc;ng kho&aacute;).</p>\n\n<p>- <strong>VỀ LƯỢNG</strong>: nhận lượng bằng c&aacute;ch l&ecirc;n level v&agrave; nhận thưởng, điểm danh mỗi ng&agrave;y tại npc ADMIN (500 lượng), đi 2 lần hang động (1000 lượng), ho&agrave;n th&agrave;nh&nbsp; nhiệm vụ h&agrave;ng ng&agrave;y c&oacute; thể nhận tối đa 100 lượng / 1 nhiệm vụ, ho&agrave;n th&agrave;nh l&atilde;nh địa gia tộc, c&aacute;c qu&agrave; tặng sự kiện.</p>\n\n<p>- <strong>VỀ XU</strong>: ho&agrave;n th&agrave;nh mỗi nvhn, ae sẽ được +250k xu (tổng cộng l&agrave; 5tr xu 1 ng&agrave;y). Đua top Chiến trường nhận xu.</p>\n\n<p>- <strong>VỀ Y&Ecirc;N</strong>: chỉ c&oacute; thể kiếm <strong>Y&Ecirc;N</strong> bằng c&aacute;ch farm qu&aacute;i (qu&aacute;i thường: 500k y&ecirc;n (tỷ lệ 15%), tinh anh: 1tr y&ecirc;n (100%), thủ lĩnh: 3tr y&ecirc;n (100%), boss: 10tr y&ecirc;n).</p>\n\n<p>-<strong> NVDV: </strong>được setup những nhiệm vụ si&ecirc;u DỄ để ae c&oacute; thể c&agrave;y cuốc, mỗi khi ho&agrave;n th&agrave;nh 1 nhiệm vụ, ae sẽ được ngẫu nhi&ecirc;n Đ&aacute; danh vọng từ 1-&gt;9.</p>\n\n<p>- Nhận ngọc rồng tại nhận thưởng level, hoặc mở rương hang động.</p>\n\n<p>- Mỗi khi ho&agrave;n th&agrave;nh NVHN, NVTT, NVDV, HD ae sẽ nhận được điểm hoạt động, c&oacute; thể đổi điểm hoạt động lấy B&iacute; k&iacute;p c&oacute; chỉ số tại Kagai.</p>\n\n<p>- Mỗi ng&agrave;y c&oacute; thể mua tối đa 3 lần nấm X3 tại Goosho</p>\n\n<p>- SVC 6x -&gt; 10x c&oacute; thể kiếm nhờ việc săn BOSS (hoặc AE th&iacute;ch nhanh ch&oacute;ng c&oacute; thể bỏ tiền mua tại Goosho <span style=\"color:#e74c3c\">nhưng m&igrave;nh kh&ocirc;ng khuyến kh&iacute;ch ae mua m&agrave; muốn ae rủ nhau săn boss hơn</span>.)</p>\n\n<p>- Săn boss sẽ rơi những vật phẩm qu&yacute; hiếm.</p>\n\n<p>- C&aacute;c vật phẩm hỗ trợ ae c&oacute; thể mua ở Webshop:&nbsp;<a href=\"https://nsohoiuc.site/chuc-nang/webshop\">TẠI Đ&Acirc;Y</a></p>\n\n<p>-......</p>\n\n<p>-----------------------------------------------------------------</p>\n\n<p>Tham gia group để cập nhật th&ocirc;ng tin:&nbsp;<a href=\"https://www.facebook.com/groups/386056276488774\">TẠI Đ&Acirc;Y</a></p>\n\n<p>Nh&oacute;m Zalo:&nbsp;<a href=\"https://zalo.me/g/kmaieh025\">TẠI Đ&Acirc;Y</a></p>', 18, '2021-11-01 10:31:03', '2021-12-05 08:42:32'),
(8, 1, 'upload/file/7rHzz2n8TR_windroye-screenshot-1449678385-copy.jpg', '[SỰ KIỆN ĐUA TOP] Sự kiện đua top Server NSO Hồi Ức', 'su-kien-dua-top-su-kien-dua-top-server-nso-hoi-uc', 'Sự kiện đua top Server NSO Hồi Ức kéo dài 1 tháng hoặc tìm được TOP CỦA MỖI PHÁI/CLASS', '<p>Sự kiện đua top Server NSO Hồi Ức k&eacute;o d&agrave;i <strong>1 th&aacute;ng</strong> hoặc t&igrave;m được <strong>TOP CỦA MỖI PH&Aacute;I/CLASS</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>- TOP 1 MỖI PH&Aacute;I:&nbsp;</strong></p>\n\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>+ 500tr y&ecirc;n, 50tr xu, 30k lượng</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ 7 b&aacute;nh Phong l&ocirc;i, 7 b&aacute;nh băng hoả</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+&nbsp; 3 rương huyền b&iacute;</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ 30 đan mỗi loại</p>\n\n<p><strong>- TOP 2 MỖI PH&Aacute;I:&nbsp;</strong></p>\n\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>+ 300tr y&ecirc;n, 30tr xu, 20k lượng</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ 5 b&aacute;nh Phong l&ocirc;i, 5 b&aacute;nh băng hoả</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+&nbsp; 2 rương huyền b&iacute;</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ 20 đan mỗi loại</p>\n\n<p><strong>- TOP 3 MỖI PH&Aacute;I:&nbsp;</strong></p>\n\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>+ 200tr y&ecirc;n, 20tr xu, 10k lượng</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ 3 b&aacute;nh Phong l&ocirc;i, 3 b&aacute;nh băng hoả</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+&nbsp; 2 rương huyền b&iacute;</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ 10 đan mỗi loại</p>\n\n<p>&nbsp;</p>\n\n<p>(*) Lưu &yacute;: Phần thưởng c&oacute; thể được tăng nếu server hoạt động đủ ổn định!</p>\n\n<p>&nbsp;</p>', 6, '2021-11-01 10:54:20', '2021-11-23 13:01:35'),
(9, 1, 'upload/file/gO85kiIeLf_logo.jpg', '[Thông báo] Kích hoạt tài khoản chỉ với 10,000 coin', 'thong-bao-kich-hoat-tai-khoan-chi-voi-10000-coin', 'Kích hoạt tài khoản chỉ với 15,000 coin', '<p>K&iacute;ch hoạt t&agrave;i khoản chỉ với 10,000 coin</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#c0392b\">&nbsp;K&Iacute;CH HOẠT CH&Iacute;NH THỨC CHỈ VỚI 10,000 COIN</span></p>\n\n<p>-------------------------------------------------------------------------</p>\n\n<p>Để ch&agrave;o mừng 1 m&ugrave;a Noel sắp đến, server Hồi Ức xin gửi đến ae v&agrave;i update nho nhỏ:</p>\n\n<p>- Ph&iacute; k&iacute;ch hoạt chỉ từ 10,000 coin</p>\n\n<p>- Update L&atilde;nh Địa Gia Độ Tộc</p>\n\n<p>- Mở sự kiện Noel (dự kiến từ ng&agrave;y 11/11)</p>\n\n<p>------------------------------------------------------------------------------------------</p>\n\n<p><strong>1. UPDATE L&Atilde;NH ĐỊA GIA TỘC</strong></p>\n\n<p>- Th&ocirc;ng tin về L&atilde;nh địa gia tộc&nbsp;<a href=\"https://nsohoiuc.site/tin-tuc/10/chi-tiet-thong-tin-ve-lanh-dia-gia-toc-server-hoi-uc\">TẠI Đ&Acirc;Y</a></p>\n\n<p>------------------------------------------------------------------------------------------</p>\n\n<p><strong>2. SỰ KIỆN NOEL</strong></p>\n\n<p>- Th&ocirc;ng tin về sự kiện Noel 2021 sẽ được update v&agrave;o ng&agrave;y 11/11/2021</p>', 27, '2021-11-09 17:11:02', '2021-12-05 08:41:01'),
(10, 1, 'upload/file/FXZGNFr7I5_logo.jpg', 'Chi tiết thông tin về Lãnh Địa Gia Tộc server Hồi Ức', 'chi-tiet-thong-tin-ve-lanh-dia-gia-toc-server-hoi-uc', 'Chi tiết thông tin về Lãnh Địa Gia Tộc server Hồi Ức', '<h2>ĐIỀU KIỆN THAM GIA L&Atilde;NH ĐỊA GIA TỘC</h2>\n\n<p>- Phải tham gia <strong>Gia tộc</strong>&nbsp;và có level tr&ecirc;n 10.</p>\n\n<p>- Đ&ocirc;́i với thành vi&ecirc;n thường phải được t&ocirc;̣c trưởng hoặc t&ocirc;̣c phó mời thì mới được vào. Đ&ecirc;̉ vào LĐGT các bạn hãy gặp&nbsp;<strong>NPC Kanata</strong>&nbsp;để mở cửa LDGT.</p>\n\n<p>- Chỉ t&ocirc;̣c trưởng hoặc t&ocirc;̣c phó mới có quy&ecirc;̀n mở cửa LĐGT. Sau khi mở cửa, gia t&ocirc;̣c sẽ có 10 phút đ&ecirc;̉ t&acirc;̣p hợp thành vi&ecirc;n vào đợi trong Cửa chờ. Trong vòng 10 phút đó thì người mở phải cắm chìa khoá thì mới đi được, n&ecirc;́u quá sẽ bị out ra.</p>\n\n<p>- Những ai kh&ocirc;ng vào cửa chờ đi&ecirc;̉m danh sẽ kh&ocirc;ng đi được lượt đó.</p>\n\n<p>------------------------------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<h2>SƠ ĐỒ V&Agrave; C&Aacute;CH ĐI L&Atilde;NH ĐỊA GIA TỘC</h2>\n\n<p>Đ&acirc;̀u ti&ecirc;n vào LĐGT là cửa chờ, ti&ecirc;́p đó l&acirc;̀n lượt đ&ecirc;́n các cửa sau:</p>\n\n<p>- B&ecirc;n trái: cửa si&ecirc;u t&ocirc;́c &ndash; cửa hoả (quái có skill bỏng) &ndash; cửa sa mạc.</p>\n\n<p>- B&ecirc;n dưới: cửa né tránh (quái có khả năng né cao) &ndash; cửa phong (quái có skill choáng) &ndash; cửa đ&ocirc;̀i núi.</p>\n\n<p>- B&ecirc;n phải: cửa phản đòn (map này thằng nào cũng như nhau, quái cho vài hit là die) &ndash; cửa băng (quái có skill đóng băng) &ndash; cửa đ&acirc;̀m l&acirc;̀y.</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.site/userfiles/files/ldgt.PNG\" style=\"height:458px; width:724px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Cu&ocirc;́i cùng cả ba cửa đ&ecirc;̀u d&acirc;̃n đ&ecirc;́n cửa bùa chú (boss cu&ocirc;́i Bạo qu&acirc;n).</p>\n\n<p>- Đ&ocirc;́i với các cửa, khi ti&ecirc;u di&ecirc;̣t h&ecirc;́t quái sẽ xu&acirc;́t hi&ecirc;̣n tinh anh, ti&ecirc;u di&ecirc;̣t tinh anh sẽ nh&acirc;̣n được chìa khoá cơ quan đ&ecirc;̉ mở cửa ti&ecirc;́p. Các bạn nhớ khi có chìa khoá là cắm lu&ocirc;n nhé, kẻo qu&ecirc;n là kh&ocirc;ng đi được nữa đ&acirc;u:</p>\n\n<p>- Khi ti&ecirc;u di&ecirc;̣t h&ecirc;́t ba cửa cu&ocirc;́i cùng sẽ xu&acirc;́t hi&ecirc;̣n thảo dược, các bạn hãy đánh chúng đ&ecirc;̉ nh&acirc;̣n lam thảo, sử dụng chúng đ&ecirc;̉ đánh cửa cu&ocirc;́i cùng.</p>\n\n<p>- Cửa cu&ocirc;́i cùng là thủ lĩnh Bạo qu&acirc;n, quái này r&acirc;́t mạnh và sử dụng được cả ba skill bỏng, băng, choáng. Vì v&acirc;̣y mà toàn gia t&ocirc;̣c đoàn k&ecirc;́t cùng đánh, những ninja quạt y&ecirc;́u n&ecirc;n đứng ở b&acirc;̣c tr&ecirc;n h&ocirc;̀i sinh, ti&ecirc;u di&ecirc;̣t bạo qu&acirc;n sẽ có r&acirc;́t nhi&ecirc;̀u y&ecirc;n và đá n&acirc;ng c&acirc;́p</p>\n\n<p>-----------------------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<h2>C&Aacute;C LƯU &Yacute; KHI THAM GIA L&Atilde;NH ĐỊA GIA TỘC</h2>\n\n<p>- Thời gian tham gia t&ocirc;́i đa&nbsp;L&atilde;nh địa gia tộc là 1h30</p>\n\n<p>- M&ocirc;̃i tu&acirc;̀n, gia t&ocirc;̣c có 3 lượt đi mi&ecirc;̃n phí và 4 lượt đi bằng L&ecirc;̣nh Bài Gia T&ocirc;̣c c&oacute; thể mua tại NPC Goosho bằng xu gia t&ocirc;̣c. Vì v&acirc;̣y t&ocirc;̣c trưởng th&ocirc;ng báo rõ cho thành vi&ecirc;n thời gian đi nhé.</p>\n\n<p>- T&acirc;́t cả thành vi&ecirc;n trong gia t&ocirc;̣c khi tham gia đ&ecirc;̀u nh&acirc;̣n đ&ocirc;̀ng ti&ecirc;̀n gia t&ocirc;̣c. Đủ 500 đ&ocirc;̀ng hãy đ&ecirc;́n gặp NPC Kanata nh&acirc;̣n quà. (trung bình m&ocirc;̃i l&acirc;̀n chiến thắng được hơn 300 đ&ocirc;̀ng).</p>\n\n<p>- M&ocirc;̃i cửa chứa t&ocirc;́i đa 8 người, trừ cửa đ&acirc;̀u, cửa cu&ocirc;́i.</p>', 5, '2021-11-09 17:36:07', '2021-12-01 10:27:36'),
(11, 1, 'upload/file/M6Rp7jjKqo_bxh.PNG', 'Sự kiện NOEL 2021', 'su-kien-noel-2021', 'Thông tin về sự kiện Noel 2021 tại server Hồi Ức', '<p>TH&Ocirc;NG TIN VỀ SỰ KIỆN NOEL 2021 TẠI SERVER HỒI ỨC</p>\n\n<p>- Thời gian: 0h ng&agrave;y 11/11/2021 đến ng&agrave;y 15/01/2022</p>\n\n<p>- Đối tượng tham gia: To&agrave;n bộ nh&acirc;n vật từ lv 20 trở l&ecirc;n</p>\n\n<p>- Nội dung sự kiện:</p>\n\n<p>--------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<p>1.&nbsp;C&Acirc;Y TH&Ocirc;NG MAY MẮN</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.xyz/userfiles/files/caythong.PNG\" style=\"height:209px; width:251px\" /></p>\n\n<p>- M&ugrave;a Noel năm nay sẽ c&oacute; những c&acirc;y th&ocirc;ng may mắn sẽ xuất hiện tại c&aacute;c l&agrave;ng v&agrave; trường. Mỗi ng&agrave;y c&aacute;c ninja c&oacute; cấp độ lớn hơn 40 sẽ c&oacute; thể gặp c&acirc;y th&ocirc;ng noel nhận qu&agrave; miễn ph&iacute; 1 lần 1 ng&agrave;y.</p>\n\n<p>- Để tiếp tục nhận thưởng tại c&acirc;y th&ocirc;ng may mắn, c&aacute;c bạn cần phải c&oacute; Qu&agrave; Trang Tr&iacute;, với mỗi Qu&agrave; trang tr&iacute; đặt tại c&acirc;y th&ocirc;ng bạn sẽ nhận th&ecirc;m được một phần thưởng kinh nghiệm c&ugrave;ng với một phần qu&agrave; ngẫu nhi&ecirc;n.</p>\n\n<p>- Qu&agrave; trang tr&iacute; c&oacute; thể kiếm được khi Săn boss, mở Hộp qu&agrave; noel, Sử dụng b&aacute;nh d&acirc;u t&acirc;y</p>\n\n<p>--------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<p>2.&nbsp;B&Aacute;NH KH&Uacute;C C&Acirc;Y NOEL</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.xyz/userfiles/files/banhkhuc.PNG\" style=\"height:212px; width:431px\" /></p>\n\n<p>- Trong thời gian sự kiện diễn ra, khi tham gia ti&ecirc;u diệt qu&aacute;i vật c&aacute;c bạn sẽ c&oacute; cơ hội nhận được c&aacute;c loại nguy&ecirc;n liệu như Bơ, Kem, Đường Bột. Cộng th&ecirc;m 2 loại nguy&ecirc;n liệu l&agrave; Chocolate v&agrave; D&acirc;u t&acirc;y được b&aacute;n tại c&aacute;c thương nh&acirc;n trong trường học.</p>\n\n<p>+ B&aacute;nh Chocolate: 2 Bơ + 2 Kem + 3 Đường bột + 1 Socola + 5000 y&ecirc;n<br />\n+ B&aacute;nh D&acirc;u t&acirc;y:&nbsp; 3 Bơ + 3 Kem + 4 Đường bột + 1 D&acirc;u t&acirc;y + 10000 y&ecirc;n</p>\n\n<p>+ Socola mua tại Tabemono, D&acirc;y t&acirc;y mua tại Goosho<br />\n&nbsp;</p>\n\n<p>- Sử dụng b&aacute;nh D&acirc;u T&acirc;y c&oacute; thể ra Rương huyền b&iacute;, rường bạch ng&acirc;n, b&aacute;t bảo, Đồ tranh tr&iacute;, b&ocirc;ng tuyết, exp xe, s&oacute;i,....</p>\n\n<p>&nbsp;</p>\n\n<p>- C&oacute; đủ c&aacute;c loại Nguy&ecirc;n liệu c&aacute;c bạn c&oacute; thể tới trường học gặp NPC Ti&ecirc;n nữ để l&agrave;m một trong hai loại b&aacute;nh l&agrave; B&aacute;nh Kh&uacute;c c&acirc;y Chocolate hoặc B&aacute;nh Kh&uacute;c C&acirc;y D&acirc;u T&acirc;y.</p>\n\n<p>- Sử dụng c&aacute;c loại b&aacute;nh đ&oacute; sẽ nhận được một phần thưởng kinh nghiệm v&agrave; một m&oacute;n qu&agrave; ngẫu nhi&ecirc;n gi&aacute; trị.</p>\n\n<p>--------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<p>3.&nbsp;BOSS TUẦN LỘC</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.xyz/userfiles/files/boss.PNG\" style=\"height:169px; width:294px\" /></p>\n\n<p>- Thương Nh&acirc;n Goosho c&ograve;n mang đến một vật phẩm mới l&agrave; Tuần th&uacute; lệnh. Sử dụng vật phẩm n&agrave;y bạn sẽ được đưa đi săn 1 Boss Vua Tuần Lộc, ti&ecirc;u diệt boss bạn sẽ nhận được c&aacute;c phần thưởng gi&aacute; trị .</p>\n\n<p>- Boss tuần lộc sẽ rơi ra T&uacute;i qu&agrave; noel v&agrave; Hộp qu&agrave; noel:</p>\n\n<p>- Sử dụng Hộp qu&agrave; noel c&oacute; thể ra Rương huyền b&iacute;, rường bạch ng&acirc;n, b&aacute;t bảo, Đồ tranh tr&iacute;, b&ocirc;ng tuyết, exp xe, s&oacute;i,....</p>\n\n<p>--------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<p>4. ĐỔI QU&Agrave; SỰ KIỆN</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.xyz/userfiles/files/onggianoel.PNG\" style=\"height:412px; width:591px\" /></p>\n\n<p>Trong thời gian diễn ra sự kiện:</p>\n\n<p>- Mỗi lần Nhận qu&agrave; tại C&acirc;y th&ocirc;ng Noel bạn sẽ được cộng <span style=\"color:#27ae60\">1 điểm sự kiện</span>;</p>\n\n<p>+ Trang tr&iacute; c&acirc;y th&ocirc;ng sẽ được cộng <span style=\"color:#27ae60\">10 điểm sự kiện</span>;</p>\n\n<p>+ Ti&ecirc;u diệt 1 Boss Tuần Lộc được cộng <span style=\"color:#27ae60\">5 điểm sự kiện</span>.</p>\n\n<p>Sau khi đủ điểm h&atilde;y đến gặp npc Ti&ecirc;n Nữ đ&ecirc; đổi Mặt nạ Super hoặc Pet hoả long .</p>\n\n<p>&nbsp;</p>\n\n<p>- Sử dụng C&aacute;c loại T&uacute;i qu&agrave;, hộp qu&agrave;, c&aacute;c loại b&aacute;nh, ti&ecirc;u diệt Boss tuần lộc, trang tr&iacute; sẽ c&oacute; cơ hội nhận vật phẩm Hoa Tuyết. Thu thập đủ 1000 hoa tuyết v&agrave; di chuyển tới Npc &Ocirc;ng Gi&agrave; Noel tại l&agrave;ng Tone để đổi lấy mặt nạ Satan (<span style=\"color:#e74c3c\">5000 tấn c&ocirc;ng, 5000 HP, 20% khi đ&aacute;nh qu&aacute;i, th&ecirc;m 50% y&ecirc;n nhặt được</span>)</p>\n\n<p>--------------------------------------------------------------------------------------------------------</p>\n\n<p>&nbsp;</p>\n\n<p>5. ĐUA TOP DIỆT BOSS TUẦN LỘC</p>\n\n<p><img alt=\"\" src=\"https://nsohoiuc.xyz/userfiles/files/bxh.PNG\" style=\"height:371px; width:425px\" /></p>\n\n<p>- Mỗi khi ti&ecirc;u diệt 1 boss Tuần Lộc, bạn sẽ được 1 điểm diệt boss</p>\n\n<p>- Phần thưởng</p>\n\n<p>+ TOP 1: 2 rương huyền b&iacute;, 30tr xu, 300tr y&ecirc;n, 10k lượng, Mắt +5 (30 ng&agrave;y)</p>\n\n<p>+ TOP 2: 1 rương huyền b&iacute;, 15trxu, 150tr y&ecirc;n, 5k lượng, Mắt +5 (15 ng&agrave;y)</p>', 18, '2021-11-10 17:37:18', '2021-11-23 12:40:42'),
(12, 1, 'upload/file/z2ayX18OAX_FXZGNFr7I5_logo.jpg', 'Chi tiết về chức năng Thiên Địa bảng server Hồi Ức', 'chi-tiet-ve-chuc-nang-thien-dia-bang-server-hoi-uc', 'Thiên Địa Bảng sẽ được mở hàng tuần. Bắt đầu từ thứ 2 và tổng kết vào chủ nhật.', '<p><span style=\"color:#c0392b\">Chức năng Thi&ecirc;n Địa Bảng được mở từ ng&agrave;y 06/12/2021</span></p>\n\n<p><span style=\"color:#c0392b\"><img alt=\"\" src=\"http://nsohoiuc.site/userfiles/files/Capture.png\" style=\"height:343px; width:518px\" /></span></p>\n\n<p>---------------------------------------------------------------------------------------</p>\n\n<pre>\n- Thi&ecirc;n Địa Bảng sẽ được mở h&agrave;ng tuần. Bắt đầu từ thứ 2 v&agrave; tổng kết v&agrave;o chủ nhật.\n- Thi&ecirc;n Địa Bảng sẽ được mở đăng k&yacute; v&agrave; ch&iacute;nh phục từ 00h05&#39; đến 23h45&#39; h&agrave;ng ng&agrave;y. \nMỗi ng&agrave;y sẽ c&oacute; 20p để tổng kết ng&agrave;y, trong thời gian n&agrave;y sẽ kh&ocirc;ng thể đăng k&yacute; v&agrave; chinh phục\n<span style=\"color:#c0392b\">- V&agrave;o ng&agrave;y thường sẽ kh&ocirc;ng giới hạn số lượt th&aacute;ch đầu.\n- Thứ 7 v&agrave; Chủ Nhật mỗi Ninja sẽ c&oacute; 5 lượt th&aacute;ch đấu, Th&aacute;ch đấu thắng sẽ kh&ocirc;ng m&acirc;t lượt, thua sẽ bị trừ 1 lượt</span>\n- Địa Bảng d&agrave;nh cho ninja từ cấp độ 50-69.\n- Thi&ecirc;n Bảng d&agrave;nh cho ninja từ cấp độ tr&ecirc;n 70\n- Sau khi đăng k&yacute; th&agrave;nh c&ocirc;ng, h&atilde;y Chinh Phục ngay để gi&agrave;nh lấy vị tr&iacute; top đầu.\n- Mỗi lần chiến thắng, nếu vị tr&iacute; của đối thủ trước bạn, bạn sẽ đổi vị tr&iacute; của m&igrave;nh cho đối thủ, \nnếu thua vị tr&iacute; của bạn sẽ được giữ nguy&ecirc;n.\n- Phần thưởng sẽ được trả thưởng v&agrave;o mỗi tuần mới \n(Lưu &yacute;: H&atilde;y nhận thưởng ngay trong tuần mới đ&oacute;, nếu sang tuần sau phần thưởng sẽ bị reset).\n\n<span style=\"color:#c0392b\">- PHẦN THƯỞNG:</span> \nTop 1: H&agrave;o quang Rank 1 + 2 B&aacute;nh Phong L&ocirc;i, 2 B&aacute;nh Băng Hoả, 2 Nấm x4, 3 Nấm x3, 1 Rương bạch ng&acirc;n, 2 B&aacute;t bảo, 20,000 Lượng, 20,000,000 xu.\n\nTop 2: H&agrave;o quang Rank 2 + 1 B&aacute;nh Phong L&ocirc;i, 1 B&aacute;nh Băng Hoả, 1 Nấm x4, 2 Nấm x3, 1 Rương bạch ng&acirc;n, 1 B&aacute;t bảo, 10,000 Lượng, 10,000,000 xu.\n\nTop 3: H&agrave;o quang Rank 3 + 1 Nấm x4, 1 Nấm x3, 2 B&aacute;t bảo, 5,000 Lượng, 5,000,000 xu.\n\nTop 4-10: 1 Nấm x3, 1 B&aacute;t bảo, 3,000 Lượng, 3,000,000 xu.\nTop 11-20: 1,000 Lượng, 1,000,000 xu.\nC&ograve;n lại: 500 Lượng, 500,000 xu.</pre>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#e74c3c\">*Lưu &yacute;: H&agrave;o quang c&oacute; thời hạn 1 tuần, muốn giữ lại h&agrave;o quang, bạn phải gi&agrave;nh lại vị tr&iacute; Rank trong tuần đ&oacute;.</span></p>\n\n<p>--------------------------------------------------------------------------------</p>\n\n<p>Box Zalo:&nbsp;<a href=\"https://zalo.me/g/kmaieh025\">Zalo</a></p>', 0, '2021-12-05 08:55:57', '2021-12-09 05:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `id` int(11) NOT NULL,
  `server` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shinwa`
--

CREATE TABLE `shinwa` (
  `id` int(11) DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shinwa`
--

INSERT INTO `shinwa` (`id`, `data`) VALUES
(-1, '[[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582746527,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582750481,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582846422,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582850531,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582901140,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582905093,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582949234,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582953281,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582997530,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583001593,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583021565,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583025584,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639554741349,\"top1diabang\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639554784511,\"top1diabang\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":374,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":26},{\"param\":200,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]},1639575399172,\"5aesiunhan\",40000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":369,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":8},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":21},{\"param\":200,\"id\":19},{\"param\":12,\"id\":27},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":55}]},1639621637855,\"binhbutnghien\",60000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":374,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":26},{\"param\":200,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]},1639621832831,\"5aesiunhan\",70000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":324,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":5},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":12},{\"param\":90,\"id\":14},{\"param\":10,\"id\":30},{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":34},{\"param\":800,\"id\":52}]},1639555305080,\"trumsv\",30000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":360,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":5},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":12},{\"param\":100,\"id\":17},{\"param\":12,\"id\":30},{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":33},{\"param\":800,\"id\":51}]},1639555266830,\"trumsv\",60000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":357,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":28,\"id\":47},{\"param\":40,\"id\":3},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":12},{\"param\":100,\"id\":15},{\"param\":12,\"id\":27},{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]},1639621662823,\"binhbutnghien\",40000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":130,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":8,\"id\":47},{\"param\":20,\"id\":4},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":13},{\"param\":56,\"id\":16},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639554768371,\"top1diabang\",3500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":317,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":2},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":11},{\"param\":58,\"id\":16},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]},1639616940637,\"nohope\",3000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":502,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":18,\"id\":47},{\"param\":50,\"id\":5},{\"param\":100,\"id\":6},{\"param\":100,\"id\":7},{\"param\":50,\"id\":13},{\"param\":50,\"id\":20},{\"param\":14,\"id\":30},{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":36},{\"param\":45,\"id\":46}]},1639555108295,\"trumsv\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":376,\"sys\":0,\"isExpires\":false,\"option\":[]},1639564835185,\"chubapi1st\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":547,\"sys\":0,\"isExpires\":false,\"option\":[]},1639569364132,\"nghingimay\",5000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573827177,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573850782,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573904243,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573930560,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":547,\"sys\":0,\"isExpires\":false,\"option\":[]},1639578844188,\"tamcast1\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583413437,\"tieuvust1\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":94,\"id\":73},{\"param\":-5,\"id\":114},{\"param\":0,\"id\":107},{\"param\":9,\"id\":124},{\"param\":-82,\"id\":73},{\"param\":0,\"id\":108},{\"param\":8,\"id\":115},{\"param\":-4,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639584285484,\"trumsv\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":280,\"sys\":0,\"isExpires\":false,\"option\":[]},1639585911903,\"nghingimay\",300000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639588635851,\"vanvu111o\",9999999],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639589340452,\"vanvu111o\",9999999],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639589958670,\"vanvu111o\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":376,\"sys\":0,\"isExpires\":false,\"option\":[]},1639616925780,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":377,\"sys\":0,\"isExpires\":false,\"option\":[]},1639616966059,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":312,\"sys\":0,\"isExpires\":false,\"option\":[]},1639618006059,\"hungsakoj\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":380,\"sys\":0,\"isExpires\":false,\"option\":[]},1639632399100,\"hungsakoj\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639632424074,\"hungsakoj\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639635526373,\"vanvu111o\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":314,\"sys\":0,\"isExpires\":false,\"option\":[]},1639639927165,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":316,\"sys\":0,\"isExpires\":false,\"option\":[]},1639639927165,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":553,\"sys\":0,\"isExpires\":false,\"option\":[]},1639639927165,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582744434,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582844375,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582899035,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582947218,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582995530,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583019575,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639632436661,\"hungsakoj\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639554776392,\"top1diabang\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":14,\"id\":374,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":220,\"id\":9},{\"param\":110,\"id\":10},{\"param\":3100,\"id\":26},{\"param\":220,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]},1639565261554,\"bequat1st\",80000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":14,\"id\":324,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":5},{\"param\":270,\"id\":6},{\"param\":270,\"id\":7},{\"param\":100,\"id\":13},{\"param\":100,\"id\":14},{\"param\":10,\"id\":30},{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":35},{\"param\":800,\"id\":53}]},1639569489176,\"tieuvust1\",30000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":14,\"id\":360,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":5},{\"param\":290,\"id\":6},{\"param\":290,\"id\":7},{\"param\":110,\"id\":11},{\"param\":110,\"id\":17},{\"param\":12,\"id\":30},{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":35},{\"param\":800,\"id\":53}]},1639565273882,\"bequat1st\",50000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":357,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":28,\"id\":47},{\"param\":40,\"id\":3},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":12},{\"param\":100,\"id\":15},{\"param\":12,\"id\":27},{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]},1639621682855,\"binhbutnghien\",40000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573815889,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573892712,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573945169,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":0,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583433140,\"tieuvust1\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639589438514,\"vanvu111o\",9999999],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":380,\"sys\":0,\"isExpires\":false,\"option\":[]},1639616941624,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":376,\"sys\":0,\"isExpires\":false,\"option\":[]},1639632415837,\"hungsakoj\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":442,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639637301740,\"yanghomom\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":555,\"sys\":0,\"isExpires\":false,\"option\":[]},1639639927165,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":315,\"sys\":0,\"isExpires\":false,\"option\":[]},1639639939103,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582748496,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582903031,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582999639,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":322,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":5},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":13},{\"param\":90,\"id\":17},{\"param\":10,\"id\":30},{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":34},{\"param\":800,\"id\":52}]},1639616959905,\"nohope\",5000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573914060,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":284,\"sys\":0,\"isExpires\":false,\"option\":[]},1639584256210,\"trumsv\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639588761358,\"vanvu111o\",9999999],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639617218090,\"tieuvuong\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":442,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639629631782,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":-2,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582848438,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639583023732,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639573839723,\"emgalam\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":383,\"sys\":0,\"isExpires\":false,\"option\":[]},1639586271307,\"vanvu111o\",9999999],[{\"isLock\":false,\"sale\":0,\"quantity\":-1,\"upgrade\":0,\"id\":6,\"sys\":0,\"isExpires\":false,\"option\":[]},1639582951171,\"tieuvust1\",5000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":374,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":26},{\"param\":200,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]},1639621814674,\"5aesiunhan\",70000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":547,\"sys\":0,\"isExpires\":false,\"option\":[]},1639578858664,\"tamcast1\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639635510373,\"vanvu111o\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639591615661,\"vanvu111o\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":554,\"sys\":0,\"isExpires\":false,\"option\":[]},1639639927165,\"hungsakoj\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":10000,\"upgrade\":0,\"id\":666,\"sys\":0,\"isExpires\":false,\"option\":[]},1639646510813,\"top1diabang\",25000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":635,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":478,\"id\":0},{\"param\":500,\"id\":1},{\"param\":150,\"id\":9},{\"param\":56,\"id\":10},{\"param\":1978,\"id\":24},{\"param\":198,\"id\":19},{\"param\":16,\"id\":27},{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":56}]},1639650738273,\"vanvu1\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":633,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":462,\"id\":0},{\"param\":492,\"id\":1},{\"param\":150,\"id\":9},{\"param\":59,\"id\":10},{\"param\":2000,\"id\":22},{\"param\":193,\"id\":19},{\"param\":16,\"id\":27},{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":55}]},1639650763438,\"vanvu1\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":488,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]},1639651760764,\"haibangdz\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":442,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639655974862,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":488,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]},1639661008761,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":442,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639661047622,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":442,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639661056307,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":487,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":77}]},1639661068247,\"vanvu111o\",10000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":485,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639673435551,\"chuuniyuon\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":355,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":3},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":12},{\"param\":60,\"id\":16},{\"param\":12,\"id\":27},{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]},1639674835683,\"trumsv\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":16,\"id\":369,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":240,\"id\":8},{\"param\":120,\"id\":10},{\"param\":3400,\"id\":21},{\"param\":240,\"id\":19},{\"param\":12,\"id\":27},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":55}]},1639677129120,\"samurai99\",200000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":442,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639697105101,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":781,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":5000,\"id\":87},{\"param\":5000,\"id\":6}]},1639710670644,\"chubapi1st\",800000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":370,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":22},{\"param\":200,\"id\":19},{\"param\":12,\"id\":27},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":55}]},1639712072243,\"miximoi\",4000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":370,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":22},{\"param\":200,\"id\":19},{\"param\":12,\"id\":27},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":55}]},1639712080727,\"miximoi\",4000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":506,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":280,\"id\":0},{\"param\":280,\"id\":1},{\"param\":100,\"id\":8},{\"param\":50,\"id\":10},{\"param\":1400,\"id\":21},{\"param\":100,\"id\":19},{\"param\":14,\"id\":27},{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":55}]},1639712230342,\"miximoi\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639718982432,\"hungsakoj\",50000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":315,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722424446,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":316,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722450349,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":563,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722494581,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":561,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722502566,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":562,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722509488,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":311,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722516878,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":313,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722530788,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":558,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722537304,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":560,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722545370,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":315,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722711144,\"bequat1st\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":316,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722726368,\"bequat1st\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":311,\"sys\":0,\"isExpires\":false,\"option\":[]},1639722733283,\"bequat1st\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":559,\"sys\":0,\"isExpires\":false,\"option\":[]},1639727043305,\"nsobongdem\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":552,\"sys\":0,\"isExpires\":false,\"option\":[]},1639728169181,\"chubapi1st\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":558,\"sys\":0,\"isExpires\":false,\"option\":[]},1639728211382,\"chubapi1st\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":488,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]},1639732826033,\"yanghomom\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":380,\"sys\":0,\"isExpires\":false,\"option\":[]},1639735610722,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":315,\"sys\":0,\"isExpires\":false,\"option\":[]},1639735625028,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":555,\"sys\":0,\"isExpires\":false,\"option\":[]},1639735643091,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":554,\"sys\":0,\"isExpires\":false,\"option\":[]},1639735657731,\"hungsakoj\",6000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639735666513,\"hungsakoj\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":330,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":3},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":12},{\"param\":90,\"id\":17},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]},1639736797944,\"concacnecacban\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":443,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639742871905,\"tieuvust1\",10000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":443,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639742875842,\"tieuvust1\",10000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":443,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639743282255,\"tieuvust1\",10000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":443,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639743286645,\"tieuvust1\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":227,\"sys\":0,\"isExpires\":false,\"option\":[]},1639744232044,\"tieuvust1\",4999999],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":364,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":2},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":11},{\"param\":60,\"id\":16},{\"param\":12,\"id\":27},{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]},1639744264022,\"tieuvust1\",16000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":620,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":36,\"id\":47},{\"param\":58,\"id\":3},{\"param\":141,\"id\":6},{\"param\":142,\"id\":7},{\"param\":60,\"id\":12},{\"param\":60,\"id\":15},{\"param\":16,\"id\":27},{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]},1639746211604,\"nsobongdem\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":629,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":22,\"id\":47},{\"param\":58,\"id\":5},{\"param\":143,\"id\":6},{\"param\":144,\"id\":7},{\"param\":56,\"id\":11},{\"param\":60,\"id\":14},{\"param\":16,\"id\":30},{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":34},{\"param\":800,\"id\":52}]},1639746234249,\"nsobongdem\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639746627834,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":439,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":77}]},1639748055285,\"vanvu111o\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":14,\"id\":358,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":5},{\"param\":290,\"id\":6},{\"param\":290,\"id\":7},{\"param\":110,\"id\":11},{\"param\":110,\"id\":14},{\"param\":12,\"id\":30},{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":34},{\"param\":800,\"id\":52}]},1639748829098,\"bin1st\",30000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639749164778,\"emgalam\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":331,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":21},{\"param\":180,\"id\":19},{\"param\":10,\"id\":27},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":55}]},1639751912901,\"topcansv\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":333,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":23},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]},1639752928209,\"diablo\",4000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":333,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":23},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]},1639753067021,\"diablo\",3000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754758415,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754774000,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754790688,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754824697,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754841369,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754857136,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754872724,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754886709,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639754901803,\"tieuvust1\",2500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":311,\"sys\":0,\"isExpires\":false,\"option\":[]},1639757239049,\"empheco\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":440,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]},1639757365566,\"vanvu111o\",25000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":486,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]},1639757373457,\"vanvu111o\",25000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":223,\"sys\":0,\"isExpires\":false,\"option\":[]},1639757853771,\"onghoa\",50000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":16,\"id\":325,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":3},{\"param\":300,\"id\":6},{\"param\":300,\"id\":7},{\"param\":110,\"id\":12},{\"param\":110,\"id\":17},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]},1639758394994,\"5aesiunhan\",300000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639765236467,\"haibangdz\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639771969696,\"caothu\",30000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639778937075,\"daucatmoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639778966375,\"daucatmoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639778983306,\"daucatmoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639778999634,\"daucatmoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639779016279,\"daucatmoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":655,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":493,\"id\":105},{\"param\":-8,\"id\":116},{\"param\":0,\"id\":107},{\"param\":46,\"id\":125},{\"param\":-48,\"id\":117},{\"param\":0,\"id\":108},{\"param\":46,\"id\":117},{\"param\":-10,\"id\":124},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639779354496,\"badao1sv\",100000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639787516233,\"dannrosang\",400000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639787557750,\"dannrosang\",400000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639787570083,\"dannrosang\",400000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639787581222,\"dannrosang\",400000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639789342096,\"dannrosang\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":377,\"sys\":0,\"isExpires\":false,\"option\":[]},1639794306613,\"empheco\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":162,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":24,\"id\":47},{\"param\":25,\"id\":2},{\"param\":230,\"id\":6},{\"param\":230,\"id\":7},{\"param\":85,\"id\":11},{\"param\":85,\"id\":15},{\"param\":9,\"id\":27},{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]},1639798022068,\"badao1sv\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":162,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":24,\"id\":47},{\"param\":25,\"id\":4},{\"param\":230,\"id\":6},{\"param\":230,\"id\":7},{\"param\":85,\"id\":13},{\"param\":85,\"id\":15},{\"param\":9,\"id\":27},{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]},1639798036037,\"badao1sv\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":486,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]},1639801570720,\"vanvu111o\",25000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639804277057,\"melody\",500000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":443,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639804277057,\"melody\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639804278651,\"melody\",500000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":485,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639804277057,\"melody\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639804280791,\"melody\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":8,\"sys\":0,\"isExpires\":false,\"option\":[]},1639804322850,\"melody\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":336,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":9},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":26},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":54}]},1639808769445,\"moitapchoi\",3000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":123,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":180,\"id\":0},{\"param\":180,\"id\":1},{\"param\":170,\"id\":9},{\"param\":85,\"id\":10},{\"param\":2300,\"id\":26},{\"param\":170,\"id\":19},{\"param\":9,\"id\":30},{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]},1639808783851,\"moitapchoi\",3000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":486,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]},1639809680159,\"haibangdz\",25000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":486,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]},1639809699487,\"haibangdz\",25000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":441,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]},1639809718313,\"haibangdz\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":489,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639810050330,\"yanghomom\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":356,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":5},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":12},{\"param\":100,\"id\":20},{\"param\":12,\"id\":30},{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":36},{\"param\":35,\"id\":46}]},1639812372609,\"dowhatyoulike\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639815472633,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639815476711,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639815478617,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":374,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":26},{\"param\":200,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]},1639815873797,\"moitapchoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639816074797,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":374,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":200,\"id\":9},{\"param\":100,\"id\":10},{\"param\":2800,\"id\":26},{\"param\":200,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]},1639816460589,\"moitapchoi\",20000001],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":323,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":26,\"id\":47},{\"param\":30,\"id\":3},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":12},{\"param\":90,\"id\":15},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]},1639816474948,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":333,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":23},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]},1639816487573,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639816714250,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639816828319,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817013642,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817235568,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817261329,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817263266,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817275946,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817293922,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817306391,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817324416,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817337963,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817348720,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817376704,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":540,\"sys\":0,\"isExpires\":false,\"option\":[]},1639817386251,\"neity11\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639818233961,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":362,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":5},{\"param\":260,\"id\":6},{\"param\":260,\"id\":7},{\"param\":100,\"id\":11},{\"param\":100,\"id\":14},{\"param\":12,\"id\":30},{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":33},{\"param\":800,\"id\":51}]},1639818499953,\"moitapchoi\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":82,\"id\":73},{\"param\":-5,\"id\":114},{\"param\":0,\"id\":107},{\"param\":9,\"id\":124},{\"param\":-75,\"id\":73},{\"param\":0,\"id\":108},{\"param\":10,\"id\":115},{\"param\":-5,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639820229874,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":86,\"id\":73},{\"param\":-5,\"id\":114},{\"param\":0,\"id\":107},{\"param\":8,\"id\":124},{\"param\":-97,\"id\":73},{\"param\":0,\"id\":108},{\"param\":9,\"id\":115},{\"param\":-5,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639820276023,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":94,\"id\":73},{\"param\":-5,\"id\":114},{\"param\":0,\"id\":107},{\"param\":9,\"id\":124},{\"param\":-63,\"id\":73},{\"param\":0,\"id\":108},{\"param\":10,\"id\":115},{\"param\":-4,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639820305157,\"tapchoinso\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":94,\"id\":73},{\"param\":-4,\"id\":114},{\"param\":0,\"id\":107},{\"param\":10,\"id\":124},{\"param\":-88,\"id\":73},{\"param\":0,\"id\":108},{\"param\":9,\"id\":115},{\"param\":-4,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639820317945,\"tapchoinso\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":385,\"sys\":0,\"isExpires\":false,\"option\":[]},1639822603436,\"empheco\",150000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639822632411,\"empheco\",20000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":488,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]},1639823265687,\"nsobongdem\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":333,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":23},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]},1639824498863,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":324,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":5},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":11},{\"param\":90,\"id\":14},{\"param\":10,\"id\":30},{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":33},{\"param\":800,\"id\":51}]},1639824642610,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":317,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":2},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":11},{\"param\":58,\"id\":16},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]},1639824663313,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":317,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":2},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":11},{\"param\":58,\"id\":16},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]},1639824680076,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":323,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":26,\"id\":47},{\"param\":30,\"id\":2},{\"param\":240,\"id\":6},{\"param\":240,\"id\":7},{\"param\":90,\"id\":11},{\"param\":90,\"id\":15},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]},1639824689823,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":333,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":23},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]},1639824748953,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":333,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":180,\"id\":8},{\"param\":90,\"id\":10},{\"param\":2400,\"id\":23},{\"param\":180,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]},1639827038638,\"diablo\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":405,\"id\":102},{\"param\":-9,\"id\":115},{\"param\":0,\"id\":107},{\"param\":8,\"id\":126},{\"param\":-313,\"id\":105},{\"param\":0,\"id\":108},{\"param\":4,\"id\":114},{\"param\":-8,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639827535928,\"emgalam\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":401,\"id\":102},{\"param\":-9,\"id\":115},{\"param\":0,\"id\":107},{\"param\":8,\"id\":126},{\"param\":-483,\"id\":105},{\"param\":0,\"id\":108},{\"param\":5,\"id\":114},{\"param\":-9,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639827573272,\"emgalam\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":654,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":196,\"id\":103},{\"param\":-48,\"id\":125},{\"param\":0,\"id\":107},{\"param\":5,\"id\":121},{\"param\":-5,\"id\":120},{\"param\":0,\"id\":108},{\"param\":9,\"id\":116},{\"param\":-10,\"id\":126},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639827591087,\"emgalam\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639828927347,\"dannrosang\",700000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":655,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":424,\"id\":105},{\"param\":-10,\"id\":116},{\"param\":0,\"id\":107},{\"param\":48,\"id\":125},{\"param\":-46,\"id\":117},{\"param\":0,\"id\":108},{\"param\":43,\"id\":117},{\"param\":-10,\"id\":124},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639829105491,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":654,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":180,\"id\":103},{\"param\":-41,\"id\":125},{\"param\":0,\"id\":107},{\"param\":4,\"id\":121},{\"param\":-4,\"id\":120},{\"param\":0,\"id\":108},{\"param\":9,\"id\":116},{\"param\":-10,\"id\":126},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639829142652,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":654,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":184,\"id\":103},{\"param\":-47,\"id\":125},{\"param\":0,\"id\":107},{\"param\":4,\"id\":121},{\"param\":-4,\"id\":120},{\"param\":0,\"id\":108},{\"param\":8,\"id\":116},{\"param\":-8,\"id\":126},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639829158074,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":655,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":449,\"id\":105},{\"param\":-9,\"id\":116},{\"param\":0,\"id\":107},{\"param\":50,\"id\":125},{\"param\":-49,\"id\":117},{\"param\":0,\"id\":108},{\"param\":47,\"id\":117},{\"param\":-10,\"id\":124},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639829170871,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":655,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":454,\"id\":105},{\"param\":-8,\"id\":116},{\"param\":0,\"id\":107},{\"param\":47,\"id\":125},{\"param\":-43,\"id\":117},{\"param\":0,\"id\":108},{\"param\":42,\"id\":117},{\"param\":-10,\"id\":124},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639829237760,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639829467955,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639829477457,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639829489598,\"dannrosang\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":10,\"sys\":0,\"isExpires\":false,\"option\":[]},1639829588492,\"dannrosang\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":14,\"id\":355,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":14,\"id\":47},{\"param\":40,\"id\":2},{\"param\":290,\"id\":6},{\"param\":290,\"id\":7},{\"param\":110,\"id\":11},{\"param\":66,\"id\":16},{\"param\":12,\"id\":27},{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]},1639831081964,\"tapchoinso\",7000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":100,\"id\":73},{\"param\":-4,\"id\":114},{\"param\":0,\"id\":107},{\"param\":8,\"id\":124},{\"param\":-70,\"id\":73},{\"param\":0,\"id\":108},{\"param\":10,\"id\":115},{\"param\":-4,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831231802,\"tapchoinso\",10000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":489,\"id\":102},{\"param\":-10,\"id\":115},{\"param\":0,\"id\":107},{\"param\":8,\"id\":126},{\"param\":-372,\"id\":105},{\"param\":0,\"id\":108},{\"param\":4,\"id\":114},{\"param\":-8,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831256884,\"tapchoinso\",4000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":411,\"id\":102},{\"param\":-9,\"id\":115},{\"param\":0,\"id\":107},{\"param\":8,\"id\":126},{\"param\":-400,\"id\":105},{\"param\":0,\"id\":108},{\"param\":5,\"id\":114},{\"param\":-8,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831266275,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":85,\"id\":73},{\"param\":-4,\"id\":114},{\"param\":0,\"id\":107},{\"param\":9,\"id\":124},{\"param\":-83,\"id\":73},{\"param\":0,\"id\":108},{\"param\":9,\"id\":115},{\"param\":-5,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831278712,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":653,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":88,\"id\":73},{\"param\":-4,\"id\":114},{\"param\":0,\"id\":107},{\"param\":10,\"id\":124},{\"param\":-70,\"id\":73},{\"param\":0,\"id\":108},{\"param\":10,\"id\":115},{\"param\":-4,\"id\":119},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831286603,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":494,\"id\":102},{\"param\":-8,\"id\":115},{\"param\":0,\"id\":107},{\"param\":10,\"id\":126},{\"param\":-480,\"id\":105},{\"param\":0,\"id\":108},{\"param\":4,\"id\":114},{\"param\":-10,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831299446,\"tapchoinso\",4000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":408,\"id\":102},{\"param\":-10,\"id\":115},{\"param\":0,\"id\":107},{\"param\":10,\"id\":126},{\"param\":-371,\"id\":105},{\"param\":0,\"id\":108},{\"param\":4,\"id\":114},{\"param\":-9,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831310033,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":407,\"id\":102},{\"param\":-10,\"id\":115},{\"param\":0,\"id\":107},{\"param\":9,\"id\":126},{\"param\":-359,\"id\":105},{\"param\":0,\"id\":108},{\"param\":5,\"id\":114},{\"param\":-9,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831322719,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":1,\"id\":652,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":106},{\"param\":407,\"id\":102},{\"param\":-10,\"id\":115},{\"param\":0,\"id\":107},{\"param\":8,\"id\":126},{\"param\":-427,\"id\":105},{\"param\":0,\"id\":108},{\"param\":4,\"id\":114},{\"param\":-8,\"id\":118},{\"param\":0,\"id\":104},{\"param\":800000,\"id\":123}]},1639831333875,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639831511010,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":524,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639831520370,\"tapchoinso\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639837108072,\"bequat1st\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639837123832,\"bequat1st\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639837138878,\"bequat1st\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639836108330,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639836134762,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639838685823,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639838817662,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839027182,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839360547,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839533906,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839641680,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":160,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":16,\"id\":47},{\"param\":20,\"id\":2},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":11},{\"param\":80,\"id\":15},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839375330,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":140,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":16,\"id\":47},{\"param\":20,\"id\":4},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":13},{\"param\":80,\"id\":15},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839037508,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":140,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":16,\"id\":47},{\"param\":20,\"id\":3},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":12},{\"param\":80,\"id\":15},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839382690,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":16,\"id\":317,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":12,\"id\":47},{\"param\":30,\"id\":4},{\"param\":300,\"id\":6},{\"param\":300,\"id\":7},{\"param\":110,\"id\":13},{\"param\":70,\"id\":16},{\"param\":10,\"id\":27},{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]},1639832386410,\"peduyen\",500000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":130,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":8,\"id\":47},{\"param\":20,\"id\":3},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":13},{\"param\":56,\"id\":16},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839665973,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639833042657,\"haibangdzvcl\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639835393459,\"vanvu111o\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639835432886,\"vanvu111o\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639836428460,\"vanvu111o\",2000000],[{\"isLock\":false,\"sale\":5,\"quantity\":1,\"upgrade\":0,\"id\":485,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]},1639836726263,\"superme\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":487,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":500,\"id\":77}]},1639837442015,\"caothu\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639838033826,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639838051251,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848095538,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848116380,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848143920,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639837116152,\"bequat1st\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639837150436,\"bequat1st\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639836119423,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639838696458,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":103,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":180,\"id\":0},{\"param\":180,\"id\":1},{\"param\":170,\"id\":8},{\"param\":85,\"id\":10},{\"param\":2300,\"id\":23},{\"param\":170,\"id\":19},{\"param\":9,\"id\":30},{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]},1639839173535,\"fullhd0\",1234567],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839627027,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":160,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":16,\"id\":47},{\"param\":20,\"id\":3},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":12},{\"param\":80,\"id\":15},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839649937,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":140,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":16,\"id\":47},{\"param\":20,\"id\":4},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":13},{\"param\":80,\"id\":15},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839259613,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":130,\"sys\":3,\"isExpires\":false,\"option\":[{\"param\":8,\"id\":47},{\"param\":20,\"id\":3},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":13},{\"param\":56,\"id\":16},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639838883787,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639835386877,\"vanvu111o\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":384,\"sys\":0,\"isExpires\":false,\"option\":[]},1639836405746,\"vanvu111o\",15000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":489,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]},1639837423964,\"caothu\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639838042189,\"chubapi1st\",500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848108663,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848155469,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1639837130707,\"bequat1st\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639838674694,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":102,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":23},{\"param\":160,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839475554,\"tieutop1server\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":140,\"sys\":2,\"isExpires\":false,\"option\":[{\"param\":16,\"id\":47},{\"param\":20,\"id\":3},{\"param\":220,\"id\":6},{\"param\":220,\"id\":7},{\"param\":80,\"id\":12},{\"param\":80,\"id\":15},{\"param\":8,\"id\":27},{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]},1639839617887,\"anhbanh\",1000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639835418229,\"vanvu111o\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":488,\"sys\":0,\"isExpires\":false,\"option\":[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]},1639837454239,\"caothu\",5000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848128936,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839019828,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":454,\"sys\":0,\"isExpires\":false,\"option\":[]},1639836435741,\"vanvu111o\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":12,\"id\":97,\"sys\":1,\"isExpires\":false,\"option\":[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":160,\"id\":8},{\"param\":80,\"id\":10},{\"param\":2200,\"id\":21},{\"param\":160,\"id\":19},{\"param\":8,\"id\":27},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]},1639839659404,\"anhbanh\",2000000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":545,\"sys\":0,\"isExpires\":false,\"option\":[]},1639848085395,\"nsobongdem\",1500000],[{\"isLock\":false,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":9,\"sys\":0,\"isExpires\":false,\"option\":[]},1640610558754,\"khiemdz\",2323232]]');
INSERT INTO `shinwa` (`id`, `data`) VALUES
(0, '[]'),
(1, '[]'),
(2, '[]'),
(3, '[]'),
(4, '[]'),
(5, '[]'),
(6, '[]'),
(7, '[]'),
(8, '[]'),
(9, '[]'),
(10, '[]'),
(11, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `thiendia`
--

CREATE TABLE `thiendia` (
  `id` int(10) UNSIGNED NOT NULL,
  `week` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `data` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thiendia`
--

INSERT INTO `thiendia` (`id`, `week`, `type`, `data`) VALUES
(1, '2021-11-29 02:04:19', 1, '[[\"melody\",1,10],[\"trumdiabang\",1,1],[\"death21\",1,8],[\"b0yka99\",1,3],[\"konaptien\",1,2],[\"hungsakoj\",1,6],[\"quanquattran\",1,9],[\"quangne\",1,5],[\"trungoq\",1,7],[\"trelac\",1,4]]'),
(2, '2021-11-29 02:04:19', 2, '[[\"server\",1,16],[\"tieuvust1\",1,19],[\"dalachet\",1,8],[\"tieupk1st\",1,3],[\"admin\",1,11],[\"trumkunai\",1,18],[\"chubapi1st\",1,14],[\"samurai\",1,21],[\"vanvu111o\",1,15],[\"hinata\",1,4],[\"nhatkiemqt\",1,12],[\"duongtien\",1,10],[\"nghingimay\",1,24],[\"nhattieuqt\",1,6],[\"kiemvip1st\",1,2],[\"bequat1st\",1,23],[\"caothu\",1,13],[\"ahnxkx\",1,5],[\"thosansoi\",1,17],[\"genius\",1,9],[\"fuckboy\",1,22],[\"neity11\",1,1],[\"nhatduongtieu\",1,20],[\"onghoa\",1,7],[\"trumkiem\",1,25]]'),
(3, '2021-12-06 00:00:00', 1, '[[\"so1sever\",1,10],[\"melody\",1,7],[\"trumdiabang\",1,1],[\"death21\",1,3],[\"trumsv\",1,8],[\"konaptien\",1,4],[\"b0yka99\",1,9],[\"theshyz\",1,5],[\"hungsakoj\",1,2],[\"quangne\",1,6],[\"trelac\",1,11]]'),
(4, '2021-12-06 00:00:00', 2, '[[\"tieuvust1\",1,5],[\"dalachet\",1,4],[\"nsobongdem\",1,6],[\"tieupk1st\",1,3],[\"admin\",1,17],[\"chubapi1st\",1,12],[\"daucatmoi\",1,13],[\"haibangdz\",1,1],[\"morebube\",1,16],[\"tamcast1\",1,7],[\"anhnongdan\",1,18],[\"nhatkiemqt\",1,19],[\"kiemvip1st\",1,2],[\"bequat1st\",1,14],[\"ahnxkx\",1,9],[\"thosansoi\",1,11],[\"neity11\",1,10],[\"onghoa\",1,8],[\"superme\",1,15]]'),
(5, '2021-12-07 14:00:03', 1, '[]'),
(6, '2021-12-07 14:00:03', 2, '[]'),
(7, '2021-12-07 14:01:23', 1, '[]'),
(8, '2021-12-07 14:01:23', 2, '[]'),
(9, '2021-12-07 14:06:59', 1, '[]'),
(10, '2021-12-07 14:06:59', 2, '[]'),
(11, '2021-12-07 14:08:46', 1, '[]'),
(12, '2021-12-07 14:08:46', 2, '[]'),
(13, '2021-12-07 14:11:42', 1, '[[\"so1sever\",1,19],[\"thangnhun2426\",1,20],[\"trumdiabang\",1,1],[\"hasagiihut\",1,10],[\"death21\",1,7],[\"tieudongst1\",1,11],[\"konaptien\",1,4],[\"badboy\",1,8],[\"vdmtp222\",1,15],[\"nhunxinh\",1,21],[\"tieuvuong\",1,17],[\"tanmhs\",1,18],[\"trelac\",1,9],[\"melody\",1,14],[\"thangnhun\",1,2],[\"khoabug\",1,16],[\"kakashi\",1,13],[\"anhhoa\",1,6],[\"hungsakoj\",1,5],[\"5aesiunhan\",1,12],[\"themoon\",1,3]]'),
(14, '2021-12-07 14:11:42', 2, '[[\"server\",1,8],[\"tieuvust1\",1,6],[\"dalachet\",1,5],[\"shadow\",1,29],[\"nsobongdem\",1,16],[\"tieupk1st\",1,12],[\"admin\",1,13],[\"daucatmoi\",1,18],[\"chubapi1st\",1,11],[\"haibangdz\",1,7],[\"vanvu111o\",1,4],[\"vipkoae1st\",1,32],[\"tamcast1\",1,17],[\"anhnongdan\",1,15],[\"nghingimay\",1,25],[\"sakura\",1,24],[\"binhbutnghien\",1,31],[\"vongdz\",1,26],[\"kiemvip1st\",1,1],[\"bequat1st\",1,27],[\"neity1302\",1,28],[\"vdmtp111\",1,10],[\"vanvu1\",1,22],[\"caothu\",1,3],[\"filter\",1,19],[\"genius\",1,14],[\"neity11\",1,2],[\"vanvu2\",1,20],[\"onghoa\",1,9],[\"trumkiem\",1,21],[\"quangne\",1,30],[\"kimochi\",1,23]]'),
(15, '2021-12-13 00:00:00', 1, '[[\"thangnhun2426\",1,11],[\"trumdiabang\",1,1],[\"moitapchoi\",1,7],[\"death21\",1,3],[\"b0yka99\",1,14],[\"konaptien\",1,4],[\"siunhangao\",1,6],[\"tieuvuong\",1,5],[\"trelac\",1,9],[\"khoabug\",1,8],[\"anhhoa\",1,10],[\"hungsakoj\",1,2],[\"moichoigame\",1,12],[\"hoiuc017\",1,13]]'),
(16, '2021-12-13 00:00:00', 2, '[[\"tieuvust1\",1,3],[\"cungx00\",1,46],[\"dalachet\",1,22],[\"nsobongdem\",1,4],[\"nhunxinh\",1,40],[\"daucatmoi\",1,9],[\"chubapi1st\",1,13],[\"haibangdz\",1,12],[\"vanvu111o\",1,5],[\"bestmeme\",1,47],[\"hitman\",1,43],[\"omicron\",1,33],[\"vipkoae1st\",1,28],[\"trumsv\",1,21],[\"anhnongdan\",1,11],[\"tamcast1\",1,27],[\"ninjaschool\",1,39],[\"galaxy\",1,35],[\"nghingimay\",1,20],[\"thesun\",1,18],[\"giangzz\",1,42],[\"sakura\",1,29],[\"kiemvip1st\",1,8],[\"binhbutnghien\",1,37],[\"vongdz\",1,25],[\"neity1302\",1,7],[\"bequat1st\",1,38],[\"vdmtp111\",1,10],[\"tieudongst1\",1,26],[\"vanvu1\",1,14],[\"caothu\",1,19],[\"zingme\",1,44],[\"vongdz1\",1,34],[\"hasagii\",1,24],[\"belanxinhgai\",1,31],[\"chuuniyuon\",1,32],[\"genius\",1,2],[\"neity11\",1,1],[\"thangnhun\",1,15],[\"samurai99\",1,36],[\"onghoa\",1,17],[\"tuoiloll\",1,30],[\"5aesiunhan\",1,45],[\"quangne\",1,41],[\"trumsever\",1,6],[\"superme\",1,16],[\"themoon\",1,23]]'),
(17, '2021-12-17 11:45:24', 1, '[[\"melody\",1,4],[\"trumdiabang\",1,2],[\"itachi\",1,5],[\"konaptien\",1,3],[\"badboy\",1,7],[\"anhhoa\",1,6],[\"hungsakoj\",1,1]]'),
(18, '2021-12-17 11:45:24', 2, '[[\"chuuniyuon\",1,5],[\"genius\",1,2],[\"server\",1,10],[\"neity11\",1,3],[\"tieuvust1\",1,8],[\"kiemvip1st\",1,7],[\"dalachet\",1,1],[\"nsobongdem\",1,4],[\"chubapi1st\",1,6],[\"bin1st\",1,9]]'),
(19, '2021-12-17 21:12:10', 1, '[[\"melody\",1,3],[\"trumdiabang\",1,6],[\"itachi\",1,9],[\"death21\",1,10],[\"badboy\",1,2],[\"konaptien\",1,7],[\"anhhoa\",1,1],[\"crazyguy\",1,8],[\"trumkunailvt\",1,11],[\"hungsakoj\",1,4],[\"hoiuc017\",1,5]]'),
(20, '2021-12-17 21:12:10', 2, '[[\"empheco\",1,5],[\"tieuvust1\",1,10],[\"dalachet\",1,1],[\"nsobongdem\",1,12],[\"vdmtp111\",1,15],[\"caothu\",1,4],[\"daucatmoi\",1,7],[\"vanvu111o\",1,2],[\"tuoithotoi\",1,13],[\"genius\",1,9],[\"neity11\",1,6],[\"hinata\",1,3],[\"anhthich69\",1,11],[\"thangnhun\",1,16],[\"anhnongdan\",1,8],[\"5aesiunhan\",1,14],[\"tuoiloll\",1,17],[\"trumsever\",1,18]]'),
(21, '2021-12-20 12:34:58', 1, '[]'),
(22, '2021-12-20 12:34:58', 2, '[]'),
(23, '2021-12-27 15:03:51', 1, '[]'),
(24, '2021-12-27 15:03:51', 2, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `webshop`
--

CREATE TABLE `webshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `hinh_anh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_vat_pham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chi_tiet_webshop` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chi_tiet_game` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gia_coin` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='webshop';

--
-- Dumping data for table `webshop`
--

INSERT INTO `webshop` (`id`, `hinh_anh`, `ten_vat_pham`, `chi_tiet_webshop`, `chi_tiet_game`, `gia_coin`, `created_at`, `updated_at`) VALUES
(1, 'upload/file/bFqsyumJRk_Small1588.png', 'Mặt nạ Super Broly (Khoá)', '<p>-&nbsp;Mặt nạ Super Broly (<span style=\"color:#e74c3c\">Kho&aacute;</span>)</p>\n\n<p>- Level sử dụng: <span style=\"color:#e74c3c\">20</span></p>\n\n<p>- Giới t&iacute;nh: <span style=\"color:#e74c3c\">NAM</span></p>\n\n<p>- Trạng th&aacute;i:<span style=\"color:#e74c3c\"> KHO&Aacute;</span></p>\n\n<p>- Số lượng: <span style=\"color:#e74c3c\">1</span></p>\n\n<p><span style=\"color:#3498db\">- Tăng điểm tiềm năng: +20%</span></p>\n\n<p><span style=\"color:#3498db\">- HP tối đa: +1000</span></p>\n\n<p>- Thời gian sử dụng: <span style=\"color:#e74c3c\"><strong>5 ng&agrave;y</strong></span></p>', '{\"isLock\":true,\"expires\":432000000,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":407,\"sys\":0,\"isExpires\":true,\"option\":[{\"id\":58,\"param\":20},{\"id\":6,\"param\":1000}]}', 3000, '2021-10-26 19:58:27', '2021-11-03 07:42:37'),
(2, 'upload/file/NrA7wH9Fy4_Small1603.png', 'Mặt nạ Onna Bugeisha (Khoá)', '<p>-&nbsp;Mặt nạ Onna Bugeisha (<span style=\"color:#e74c3c\">Kho&aacute;</span>)</p>\n\n<p>- Level sử dụng: <span style=\"color:#e74c3c\">20</span></p>\n\n<p>- Trạng th&aacute;i: <span style=\"color:#e74c3c\">KHO&Aacute;</span></p>\n\n<p>- Giới t&iacute;nh: <span style=\"color:#e74c3c\">NỮ</span></p>\n\n<p>- Số lượng: <span style=\"color:#e74c3c\">1</span></p>\n\n<p><span style=\"color:#3498db\">- Tăng điểm tiềm năng: +20%</span></p>\n\n<p><span style=\"color:#3498db\">- HP tối đa: +1000</span></p>\n\n<p>- Thời gian sử dụng:<span style=\"color:#e74c3c\"> <strong>5 ng&agrave;y</strong></span></p>', '{\"isLock\":true,\"expires\":432000000,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":408,\"sys\":0,\"isExpires\":true,\"option\":[{\"id\":58,\"param\":20},{\"id\":6,\"param\":1000}]}', 3000, '2021-10-26 19:59:20', '2021-11-03 07:42:47'),
(3, 'upload/file/EUMdg1g9aW_Small2505.png', 'Pet Hoả long (Khoá)', '<p>- Pet Hoả Long (<span style=\"color:#e74c3c\">Kho&aacute;</span>)</p>\n\n<p>- Level sử dụng: <span style=\"color:#e74c3c\">20</span></p>\n\n<p>- Giới t&iacute;nh:</p>\n\n<p>- Trạng th&aacute;i: <span style=\"color:#e74c3c\">KHO&Aacute;</span></p>\n\n<p>- Số lượng: <span style=\"color:#e74c3c\">1</span></p>\n\n<p><span style=\"color:#3498db\">- Tấn c&ocirc;ng: +10,000</span></p>\n\n<p><span style=\"color:#3498db\">- N&eacute; đ&ograve;n: +1,000</span></p>\n\n<p><span style=\"color:#3498db\">- Mỗi nửa gi&acirc;y hồi phục 200 Hp m&agrave; Mp</span></p>\n\n<p><span style=\"color:#3498db\">- Hp: +1500</span></p>\n\n<p>- Thời gian sử dụng: <span style=\"color:#e74c3c\">5 ng&agrave;y</span></p>', '{\"isLock\":true,\"expires\":432000000,\"sale\":0,\"quantity\":1,\"upgrade\":0,\"id\":583,\"sys\":0,\"isExpires\":true,\"option\":[{\"id\":87,\"param\":10000},{\"id\":84,\"param\":1000},{\"id\":99,\"param\":200},{\"id\":6,\"param\":1500}]}', 4500, '2021-10-26 20:02:12', '2021-12-01 01:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `xep_hang_level`
--

CREATE TABLE `xep_hang_level` (
  `id` int(11) NOT NULL,
  `ninja_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT '2020-10-10 22:15:12'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xep_hang_level`
--

INSERT INTO `xep_hang_level` (`id`, `ninja_id`, `name`, `level`, `class`, `time`) VALUES
(1, 9, 'kiemvip1st', 110, 'Ninja Kiếm', '2021-11-10 22:15:12'),
(2, 15, 'vanvu111o', 110, 'Ninja Phi Tiêu', '2021-11-13 01:30:33'),
(3, 12, 'nhatduongtieu', 110, 'Ninja Phi Tiêu', '2021-11-19 21:34:32'),
(4, 17, 'vanvu2', 110, 'Ninja Cung', '2021-11-20 04:26:32'),
(5, 14, 'haibangdz', 110, 'Ninja Ki?m', '2021-11-20 04:50:18'),
(6, 22, 'onghoa', 110, 'Ninja Kunai', '2021-11-20 21:28:26'),
(7, 16, 'vanvu1', 110, 'Ninja Qu?t', '2021-11-21 01:24:40'),
(8, 4, 'sasuke', 110, 'Ninja Phi Tiêu', '2021-11-23 12:18:46'),
(9, 13, 'duongtien', 110, 'Ninja Cung', '2021-11-25 16:29:48'),
(10, 11, 'genius', 110, 'Ninja Phi Tiêu', '2021-11-26 20:23:19'),
(11, 71, 'tieupk1st', 110, 'Ninja Phi Tiêu', '2021-11-27 07:55:38'),
(12, 73, 'neity11', 110, 'Ninja Cung', '2021-11-27 10:43:38'),
(13, 70, 'nhatkiemqt', 110, 'Ninja Ki?m', '2021-11-28 05:08:00'),
(14, 51, 'server', 110, 'Ninja Phi Tiêu', '2021-11-28 19:40:06'),
(15, 2, 'songoku', 110, 'Ninja ?ao', '2021-11-29 16:16:24'),
(16, 19, 'quaytay', 110, 'Ninja Kunai', '2021-11-30 19:11:52'),
(17, 56, 'filter', 110, 'Ninja Qu?t', '2021-11-30 19:33:03'),
(18, 58, 'yanghomom', 110, 'Ninja Phi Tiêu', '2021-12-04 13:13:50'),
(19, 20, 'yanghoco', 110, 'Ninja ?ao', '2021-12-04 13:50:17'),
(20, 78, 'nhattieuqt', 110, 'Ninja Phi Tiêu', '2021-12-05 20:05:08'),
(21, 194, 'zeus11', 110, 'Ninja Qu?t', '2021-12-06 12:17:56'),
(22, 138, 'trumkunai', 110, 'Ninja Kunai', '2021-12-07 20:26:33'),
(23, 104, 'anhnongdan', 110, 'Ninja Phi Tiêu', '2021-12-08 00:42:25'),
(24, 32, 'dalachet', 110, 'Ninja Kunai', '2021-12-08 07:51:43'),
(25, 42, 'caothu', 110, 'Ninja Ki?m', '2021-12-09 03:21:41'),
(26, 254, 'empheco', 110, 'Ninja Ki?m', '2021-12-11 20:34:42'),
(27, 211, 'neity1302', 110, 'Ninja Ki?m', '2021-12-12 21:02:56'),
(28, 63, 'chubapi1st', 110, 'Ninja Phi Tiêu', '2021-12-13 13:30:13'),
(29, 27, 'daucatmoi', 110, 'Ninja Phi Tiêu', '2021-12-15 10:38:44'),
(30, 64, 'bequat1st', 110, 'Ninja Qu?t', '2021-12-15 11:44:47'),
(31, 64, 'bequat1st', 110, 'Ninja Qu?t', '2021-12-15 13:41:22'),
(32, 205, 'vdmtp111', 110, 'Ninja ?ao', '2021-12-16 15:26:03'),
(33, 373, 'adminzz', 130, 'Chưa vào lớp', '2021-12-25 10:58:04'),
(34, 1, 'khiemdz', 130, 'Ninja Kunai', '2021-12-27 15:04:02'),
(35, 1, 'khiemdz', 130, 'Ninja Kunai', '2021-12-27 15:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `xep_hang_phan_than`
--

CREATE TABLE `xep_hang_phan_than` (
  `id` int(11) NOT NULL,
  `clone_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clone_ninja`
--
ALTER TABLE `clone_ninja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doi_coin`
--
ALTER TABLE `doi_coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_upload`
--
ALTER TABLE `file_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_code`
--
ALTER TABLE `gift_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_coin`
--
ALTER TABLE `history_coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_gift`
--
ALTER TABLE `history_gift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_momo`
--
ALTER TABLE `history_momo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_webshop`
--
ALTER TABLE `history_webshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nap_tien`
--
ALTER TABLE `nap_tien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ninja`
--
ALTER TABLE `ninja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`username`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thiendia`
--
ALTER TABLE `thiendia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webshop`
--
ALTER TABLE `webshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xep_hang_level`
--
ALTER TABLE `xep_hang_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xep_hang_phan_than`
--
ALTER TABLE `xep_hang_phan_than`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `doi_coin`
--
ALTER TABLE `doi_coin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_upload`
--
ALTER TABLE `file_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gift_code`
--
ALTER TABLE `gift_code`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `history_coin`
--
ALTER TABLE `history_coin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_gift`
--
ALTER TABLE `history_gift`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_momo`
--
ALTER TABLE `history_momo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_webshop`
--
ALTER TABLE `history_webshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nap_tien`
--
ALTER TABLE `nap_tien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ninja`
--
ALTER TABLE `ninja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5309;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thiendia`
--
ALTER TABLE `thiendia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `webshop`
--
ALTER TABLE `webshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xep_hang_level`
--
ALTER TABLE `xep_hang_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `xep_hang_phan_than`
--
ALTER TABLE `xep_hang_phan_than`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
