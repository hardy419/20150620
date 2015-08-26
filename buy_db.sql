-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015-07-21 16:39:04
-- 服务器版本: 5.1.73
-- PHP 版本: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `buy_business_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `buy_ads`
--

CREATE TABLE IF NOT EXISTS `buy_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TYPE` (`type`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `buy_ads`
--

INSERT INTO `buy_ads` (`id`, `type`, `image`, `href`, `status`) VALUES
(1, 1, './Uploads/ads/20150709/559ddfa5c5856.jpg', 'http://www.baidu.com', 0),
(2, 2, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `buy_banner`
--

CREATE TABLE IF NOT EXISTS `buy_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `buy_banner`
--

INSERT INTO `buy_banner` (`id`, `title`, `sid`, `url`, `href`, `status`) VALUES
(10, 'TEST111', 0, './Uploads/banners/20150715/55a60db0907df.png', 'http://www.sina.com', 1),
(11, '測試2', 0, './Uploads/banners/20150715/55a60da0d33ee.png', 'www.baidu.com', 1);

-- --------------------------------------------------------

--
-- 表的结构 `buy_category`
--

CREATE TABLE IF NOT EXISTS `buy_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `t` varchar(32) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TYPE` (`t`),
  KEY `POSITION` (`position`),
  KEY `NAME` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- 转存表中的数据 `buy_category`
--

INSERT INTO `buy_category` (`id`, `name`, `t`, `position`) VALUES
(1, '地區', '-', 0),
(2, '行業', '-', 0),
(3, '牌照', '-', 0),
(4, '東主參與程度', '-', 0),
(5, '經營場所類別', '-', 0),
(6, '轉讓形式', '-', 0),
(7, '地鐵沿線', '-', 0),
(8, '項目現況', '-', 0),
(9, '飲食業', '行業', 1),
(10, '菜式', '飲食業', 2),
(11, '食店', '飲食業', 2),
(12, '中式', '菜式', 3),
(13, '西式', '菜式', 3),
(14, '日式', '菜式', 3),
(15, '燒臘/茶餐廳', '食店', 3),
(16, '小食/串燒', '食店', 3),
(17, '教育業', '行業', 1),
(23, '持牌狀況', '教育業', 2),
(24, '類別', '教育業', 2),
(25, '持牌', '持牌狀況', 3),
(26, '非持牌', '持牌狀況', 3),
(27, '補習教育中心', '類別', 3),
(28, 'Playgroup', '類別', 3),
(29, '音樂 /舞蹈 教育中心', '類別', 3),
(30, '語言教育中心', '類別', 3),
(31, '興趣班教室', '類別', 3),
(32, '網上仲介', '類別', 3),
(33, '其他', '類別', 3),
(34, '東南亞', '菜式', 3),
(35, '其他', '菜式', 3),
(36, '小廚/大排檔', '食店', 3),
(37, '快餐店', '食店', 3),
(38, '雞煲/火鍋', '食店', 3),
(39, '食堂', '食店', 3),
(40, '米線/粥粉麵', '食店', 3),
(41, '車仔麵', '食店', 3),
(42, '點心/中式包點', '食店', 3),
(43, '外賣店', '食店', 3),
(44, '素食店', '食店', 3),
(45, '私房菜', '食店', 3),
(46, '酒吧', '食店', 3),
(47, '餐廳', '食店', 3),
(48, 'Café咖啡店', '食店', 3),
(49, '果汁店/三文治店', '食店', 3),
(50, '雪糕/甜品 /糖水店', '食店', 3),
(51, '麵飽西餅店', '食店', 3),
(52, '教室', '食店', 3),
(53, '食物工場', '食店', 3),
(54, '食品批發', '食店', 3),
(55, '其他', '食店', 3),
(56, '美容/美甲業', '行業', 1),
(57, '美容院', '美容/美甲業', 2),
(58, '美甲店', '美容/美甲業', 2),
(59, '按摩/足浴護理', '美容/美甲業', 2),
(60, '髮型設計', '美容/美甲業', 2),
(61, '其他', '美容/美甲業', 2),
(62, '零售業', '行業', 1),
(63, '時裝/服飾/鞋店', '零售業', 2),
(64, '化妝/美容用品', '零售業', 2),
(65, '零食/食品零售/便利店', '零售業', 2),
(66, '網上零售店', '零售業', 2),
(67, '其他', '零售業', 2),
(68, '童裝店', '零售業', 2),
(69, '孕婦/嬰兒用品店', '零售業', 2),
(70, '精品/玩具/禮品/文具店', '零售業', 2),
(71, '格仔舖', '零售業', 2),
(72, '健康食品店', '零售業', 2),
(73, '凍肉/冷凍食品', '零售業', 2),
(74, '電子/手機配件', '零售業', 2),
(75, '藥房 /藥行', '零售業', 2),
(76, '花店', '零售業', 2),
(77, '服務業', '行業', 1),
(78, '洗衣店/洗衣工場', '服務業', 2),
(79, '護老院', '服務業', 2),
(80, '僱傭中心', '服務業', 2),
(81, '婚禮/婚紗服務', '服務業', 2),
(82, '寵物店', '服務業', 2),
(83, '洗碗工場 /清潔公司', '服務業', 2),
(84, '商務中心 /工作坊', '服務業', 2),
(85, 'Studio/工作室', '服務業', 2),
(86, '迷你倉', '服務業', 2),
(87, '旅行社', '服務業', 2),
(88, '酒店/賓館', '服務業', 2),
(89, '找換店', '服務業', 2),
(90, 'I.T/網上服務公司', '服務業', 2),
(91, '其他', '服務業', 2),
(92, '其他行業', '行業', 1),
(93, '連鎖生意', '其他行業', 2),
(94, '特許經營', '其他行業', 2),
(95, 'B2B商業客戶公司', '其他行業', 2),
(96, '批發/貿易公司', '其他行業', 2),
(97, '其他', '其他行業', 2),
(99, '投資者', '東主參與程度', 1),
(100, '全職營運', '東主參與程度', 1),
(101, '兼職營運', '東主參與程度', 1),
(102, '小食食肆牌照', '牌照', 1),
(103, '普通食肆牌照(大牌)', '牌照', 1),
(104, '學校注冊證明書', '牌照', 1),
(105, '地舖', '經營場所類別', 1),
(106, '商場舖', '經營場所類別', 1),
(107, '樓上舖', '經營場所類別', 1),
(108, '商業大廈', '經營場所類別', 1),
(109, '網上店', '經營場所類別', 1),
(110, '其他', '經營場所類別', 1),
(111, '港島線', '地鐵沿線', 1),
(112, '西港島線', '地鐵沿線', 1),
(113, '觀塘線', '地鐵沿線', 1),
(114, '將軍澳線', '地鐵沿線', 1),
(115, '東鐵線', '地鐵沿線', 1),
(116, '馬鞍山線', '地鐵沿線', 1),
(117, '沙中線', '地鐵沿線', 1),
(118, '荃灣線', '地鐵沿線', 1),
(119, '西鐵線', '地鐵沿線', 1),
(120, '東涌 / 迪士尼線', '地鐵沿線', 1),
(121, '機場快線', '地鐵沿線', 1),
(122, '其他', '地鐵沿線', 1),
(123, '香港島', '地區', 1),
(124, '九龍', '地區', 1),
(125, '新界', '地區', 1),
(126, '香港境外', '地區', 1),
(127, '中西區', '香港島', 2),
(128, '灣仔區', '香港島', 2),
(129, '銅鑼灣', '香港島', 2),
(130, '港島東區', '香港島', 2),
(131, '港島南區', '香港島', 2),
(132, '油尖旺區', '九龍', 2),
(133, '深水埗區', '九龍', 2),
(134, '九龍城區', '九龍', 2),
(135, '黃大仙區', '九龍', 2),
(136, '觀塘區', '九龍', 2),
(137, '沙田區', '新界', 2),
(138, '馬鞍山', '新界', 2),
(139, '大埔區', '新界', 2),
(140, '西貢區', '新界', 2),
(141, '將軍澳', '新界', 2),
(142, '新界北區', '新界', 2),
(143, '葵青區', '新界', 2),
(144, '荃灣區', '新界', 2),
(145, '屯門區', '新界', 2),
(146, '天水圍', '新界', 2),
(147, '元朗區', '新界', 2),
(148, '東涌', '新界', 2),
(149, '離島區', '新界', 2),
(150, '中國內地', '香港境外', 2),
(151, '海外業務', '香港境外', 2),
(152, 'test', '轉讓形式', 1),
(153, '*歡迎查詢*', '項目現況', 1),
(154, '已售', '項目現況', 1);

-- --------------------------------------------------------

--
-- 表的结构 `buy_news`
--

CREATE TABLE IF NOT EXISTS `buy_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `order` int(11) NOT NULL,
  `info` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ORDER` (`order`),
  KEY `STATUS` (`status`),
  KEY `DATE` (`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `buy_news`
--

INSERT INTO `buy_news` (`id`, `title`, `description`, `link`, `pdf`, `date`, `order`, `info`, `status`) VALUES
(1, '樓市「雙辣招」，投資者資金另覓新出路', '面對香港特區政府推出樓市「雙辣招」壓抑樓價，加上投資市場對美國聯儲局退市時間及加息周期而作出不同的預測，令大量投機資金準備退岀樓市，尋找資金新出路。由於受惠國內旅客帶動本港內銷市場(例如:餐飲業及零售業)，加上相關行業投資回報相對穩定可觀，從而吸引投資者把資金轉向投資收購生意(如餐飲業)，作為長遠投資工具。', 'www.baidu.com', './Uploads/document/55acb4c409e06.pdf', '2015-07-01 05:14:41', 1, '', 1),
(2, '測試添加2', '測試添加2\r\nhahaha\r\nHardy', 'TEST2', './Uploads/document/559f6637aa6b1.pdf', '2015-07-10 10:10:56', 2, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `buy_page`
--

CREATE TABLE IF NOT EXISTS `buy_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `buy_page`
--

INSERT INTO `buy_page` (`id`, `title`, `menu`, `banner`, `content`, `status`) VALUES
(1, '公司簡介', '關於我們 頁面管理', './Uploads/banners/20150710/559f9594583b5.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;&lt;a href=&quot;http://localhost/buy_business/BuyBusiness.com.hk&quot;&gt;BuyBusiness.com.hk&lt;/a&gt;&lt;/strong&gt;為&lt;span class=&quot;highLight02&quot;&gt;創富易業務轉讓有限公司&lt;/span&gt;&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;(BuyBusinessLtd.)&lt;/strong&gt;旗下之網站，為創業人士及投資者提供專業的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;資訊平台，深受創業人士及投資者推崇。現時網站每天不斷更新，點擊率亦不斷上升。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;創富易業務轉讓有限公司&lt;/span&gt;&lt;/strong&gt;為天域國際投資控股有限公司&lt;br /&gt;\r\n&lt;strong&gt;(Sky Vision International Investment Holdings Ltd.)&lt;/strong&gt;全資附屬公司。始於2005，一直堅持為創業人士及投資者落實「創基立業、富裕人生、易如反掌」之理念，提供商業管理顧問服務及處理各項&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;事宜，致力提供專業全方位「業務轉讓」服務，務求讓創業人士及投資者能夠輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(2, '熱門推介', '主頁管理', '', '&lt;h3&gt;熱門推介&lt;/h3&gt;', 1),
(3, '最新消息', '主頁管理', './Uploads/banners/20150624/558a27ac457e8.jpg', '&lt;h3&gt;\r\n	&lt;img src=&quot;http://202.74.0.45/temp/buy_business/Public/Js/kindeditor/attached/image/20150624/20150624115315_82695.jpg&quot; width=&quot;200&quot; height=&quot;150&quot; alt=&quot;&quot; /&gt;最新消息\r\n&lt;/h3&gt;', 0),
(4, '主頁廣告', '主頁管理', '', '&lt;h3&gt;主頁廣告&lt;/h3&gt;', 1),
(5, '我們的價值觀', '關於我們 頁面管理', './Uploads/banners/20150717/55a86e21dd1fb.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h3&gt;\r\n		願景(Vision)\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		&lt;em&gt;“&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;，您的創富必然選擇”&lt;/em&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		致力在本港及海外主要市場成為最傑出的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;機構，成為業務東主、創業人士和投資者首選的「業務轉讓」專家和策略顧問機構。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		使命(Mission)\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		要實踐這個願景(Vision)，我們致力落實以下的使命(Mission):\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;em&gt;「為好買家尋找好生意•為好生意尋找好買家」！&lt;/em&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		並提供親切、專業和高效率的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;服務，致力推廣「業務轉讓」創業模式，提倡&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;之理念！\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		信念(Values)\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		在背後推動我們達成使命(Mission)的，是一套我們堅持的經營信念(Values)&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;&lt;/strong&gt;之經營信念(Values)-「以客為先」！貫徹承諾致力為每位客人提供最優質、最專業的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;服務，以配合客人不同之創富目標和需要，竭誠為客人實現個人夢想與抱負，即時輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		我們目標是要成為香港領先的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;機構，管理層及每位員工深明必須用心聆聽每位客人需要並以實務實幹、用心專注及不斷創新才可保持領導地位。作為買賣雙方首選之「業務轉讓」機構，我們致力提供最全面及達致國際級水平的「業務轉讓」服務。除了以高效率的運作流程和合理收費見稱外，與客戶的長遠良好互動關係亦一直為&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;&lt;/strong&gt;所自豪。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		加上，我們深明中立角色是&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;行業的獨立優勢，讓我們堅守不偏不倚的原則為買賣雙方處理各項「業務轉讓」事宜。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		我們深信&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;&lt;/strong&gt;的每位員工是公司最重要的資產。故此，我們視員工為合作伙伴，並致力培育優秀人才。憑著我們團隊之實戰經驗及創新緊貼時代脈搏精神，融合專業管理及先進科技網络平台設施，致力提供專業、準確以及誠懇的優質服務，為買賣雙方提供最具效益的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;方案。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		竭誠為客人實現夢想與抱負-&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;，是作為衡量我們成功的基準。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(6, '服務範圍', '關於我們 頁面管理', './Uploads/banners/20150717/55a86e30f41de.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h4&gt;\r\n		嚴格挑選及發掘優質具潛力業務\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		讓買家能夠買入優質及極具潛力之生意業務，實現個人夢想與抱負，即時輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		專業推介以客為尊\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問會細心聆聽買賣雙方之要求及需要，以雙方利益為依歸，為買賣雙方尋找最合適之業務轉讓對象，促成交易。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		「業務概覽」業務資料一目了然\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		由我們的「業務評審委員會」所撰寫的「業務概覽」，於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下向買家提供業務重點資料以作參考，讓買家了解業務，促成收購決定。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		「業務估值」確保售價合理\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		所有出讓項目均須由我們的「業務評審委員會」進行「業務估值」，讓買賣雙方於最合理價格下作出正確的交易決定。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		確保買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下洽談轉讓事宜\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		安排買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下洽談業務轉讓事宜，避免影响現有顧客、供應商和影响員工士氣，確保現有業務繼續穩定經營。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		專業談判達致「雙嬴局面」\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業談判方式，能夠協助買賣雙方爭取於最合理情況下，達成最佳交易條件和價格，互惠互利將業務成功轉讓，達致「雙嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		「一站式」專業服務協助買賣雙方處理業務轉讓過程\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問及專業人仕會以不偏不倚及公平公正之原則下提供「一站式」服務，有系統地辦理各項業務轉讓事宜，以保障買賣雙方利益，將業務成功轉讓。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		售後服務倍感安心\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問憑著多年豐富經驗，誠意為買賣雙方提供售後顧問服務，務求令雙方於業務成功轉讓後平穩過渡。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		堅守「不成功不收費」原則\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們堅守以客為先「不成功•不收費」原則，並以合理服務收費提供專業優質業務轉讓服務，致力協助買賣雙方將業務成功轉讓。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(7, '創富做老闆', '創富須知 頁面管理', './Uploads/banners/20150718/55a9cb0b82031.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;img class=&quot;left_big_image&quot; src=&quot;http://localhost/buy_business/Public/Img/Buy/business04.jpg&quot; alt=&quot;business04&quot; /&gt; \r\n	&lt;h3&gt;\r\n		為何要&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;?\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		閣下有否感到現時從事之工作既枯燥乏味又要受氣，工作時間又長又悶，經常加班，工作量跟收入根本不成正比。同時，更要經常面對辦公室政治，是是非非，權力鬥爭及爾虞我詐等問題，甚至遇上減薪裁員，引致收入驟降或失業等問題，有感前路茫茫，不知如何面對。與此同時，工作上亦未能盡展所長，埋沒個人興趣、天分和理想，勞勞碌碌虛度光陰，鬱鬱不得志等待退休，白白浪費一生，實在可惜！\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		閣下既然感到「工字不出頭」……何不&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;呢?&lt;br /&gt;\r\n閣下是否曾經夢想為自己創造美好人生，早日脫離「打工仔」生崖，憑著個人興趣和天分，一展所長，努力創立屬於自己嘅生意，為理想創造一番成功事業，達成「做老闆」心願，獲取工作滿足感之餘，同時賺取豐厚利潤，為自己及家人開拓更美好將來，不枉此生呢?\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		但要創業「做老闆」談何容易呢?\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		正所謂：「萬事起頭難！」尤其要「由零開始」創業，談何容易呢？當中確實涉及不少繁複及瑣碎問題。以開設一間食肆為例，當中涉及尋找合適店舖、申請相關飲食牌照、招聘及培訓員工、購置生財工具及裝修設備……等，不免令缺乏相關經驗創業人士卻步。同時，創業人士亦往往感到自己欠乏該業務之日常實際營運管理經驗，正所謂「唔熟唔做」，因此擔心自己未能掌握日常營運竅門而影响生意及利潤，甚至導致生意失敗。基於上述種種原因，最終令大部份打算創業人士放棄創業念頭，繼續過其鬱鬱不得志之「打工仔」生崖，閣下是否感到十分可惜嗎？\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		如何以最有效方法&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;?創業有何種模式?\r\n	&lt;/h3&gt;\r\n&lt;img class=&quot;right_big_image&quot; src=&quot;http://localhost/buy_business/Public/Img/Buy/business04_2.jpg&quot; alt=&quot;business04 2&quot; /&gt; \r\n	&lt;p&gt;\r\n		創業模式有3B-「由零開始」(Build)、「特許經營」(Borrow)及&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;(Buy)(即收購現成生意業務)\r\n	&lt;/p&gt;\r\n	&lt;ol&gt;\r\n		&lt;li&gt;\r\n			&lt;span style=&quot;letter-spacing:0.2em;line-height:1.25em;word-spacing:0.2em;&quot;&gt;「由零開始」(Build)從「零」開始建立自己生意業務，創業人士根據個人目標和興趣，建立屬於自己的風格和品牌的生意業務。但創業人士必須對市場及產品有充分的認識，所謂「唔熟唔做」。同時，必須擁有相關經驗、充足資本和營運知識。&lt;/span&gt; \r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;span style=&quot;letter-spacing:0.2em;line-height:1.25em;word-spacing:0.2em;&quot;&gt;「特許經營」(Borrow)借助特許經營商(Franchisor)已建立的商譽、產品及服務，於其他地點開設相同商號之生意業務。&lt;/span&gt; \r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;span style=&quot;letter-spacing:0.2em;line-height:1.25em;word-spacing:0.2em;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;letter-spacing:0.2em;line-height:1.25em;word-spacing:0.2em;&quot;&gt;&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;(Buy)(收購現成生意業務)以「業務轉讓」方式收購現成正在營運及有盈利的生意，通常該業務已有一定的客戶基礎及商譽。同時，可借助現有傳統老字號的優勢，減低入行的阻力，即時&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。&lt;/span&gt; \r\n		&lt;/li&gt;\r\n	&lt;/ol&gt;\r\n	&lt;p&gt;\r\n		衆所周知，要在競爭激烈的行業突圍而出，需具備相應的競爭力和優勢，因此，近年來，以&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;模式&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;已成為創業人士及投資者首選。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(8, '創業模式之比較', '創富須知 頁面管理', './Uploads/banners/20150718/55a9c6ec51d49.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;table class=&quot;table_3col&quot;&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;th class=&quot;title&quot;&gt;\r\n					&amp;nbsp;\r\n				&lt;/th&gt;\r\n				&lt;td class=&quot;title&quot;&gt;\r\n					由零開始\r\n				&lt;/td&gt;\r\n				&lt;td class=&quot;title&quot;&gt;\r\n					特許經營\r\n				&lt;/td&gt;\r\n				&lt;td class=&quot;title&quot;&gt;\r\n					業務轉讓&lt;br /&gt;\r\n&lt;span&gt;買入現成生意業務&lt;/span&gt; \r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					裝修及牌照申請\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					裝修可根據創業人士喜好，加入個人風格。但裝修除了要美觀，亦要配合牌照申請。由於創業人士缺乏經驗，往往作出錯誤選擇而影响牌照申請，對業務造成很大的影響。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					裝修及牌照申請可經由總店提供相關的資源和經驗，較易控制有關成本及成功申請牌照。但特許經營店已有一套固定的裝修及生財工具的規格，因此，裝修不能根據創業人士之個人風格理念。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					裝修雖然未必即時完全配合創業人士之個人風格。但創業人士可省卻前期裝修費用及時間，只需辦理牌照轉名手續，便可即時營業賺取利潤。日後賺錢之後，可再根據創業人士之個人風格，重新裝修。\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					營運管理\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					創業人士可根據個人管理風格意念，訂立嶄新的經營管理模式。但由於創業初期屬於「摸索期」，創業人士屬新手，經驗較少，在經營方針和技巧方面都需要邊做邊學。同時，「新班底」亦需時熟習新環境和營運流程，因此營運初期難於有效管理。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					特許經營者必須依照總店的要求及規定經營，營運必須使用總店已有的經營系統，同時，總店亦可能會提供有關員工招聘及培訓。雖然運作效率較有保證，但彈性較小而未能實現創業人士個人管理意念。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					創業人士可即時聘用現有豐富經驗的「舊班底」。「新老闆」只要向「舊老闆」了解舊員工之特性，加強彼此溝通，上下一心，定能發揮舊員工之應有本色。 再者，創業人士只要根據現有經營管理模式再注入個人嶄新管理意念，提升營運效率，定能令生意業務更上一層樓。\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					貨品供應\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					創業人士可根據個人喜好選擇材料及供應商。但創業人士未必具備豐富的入貨經驗和資源。同時仍未跟供應商建立合作關係，未能享有賒帳期而影响現金週轉 。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					特許經營者入貨必須依照總店的要求由總店供應，雖然質量有保證，但種類受到限制，入貨價亦須由總店決定，不能議價。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					創業人士可要求現有供應商繼續供應貨品 ，不愁尋找貨源。同時，由於已跟供應商建立合作關係，因此入貨可能享有賒帳期，有利現金週轉。\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					創業風險\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					雖然顧客對新選擇有新鮮感。但創業初期業務基礎不足，建立新公司商譽或產品口碑及累積顧客需時，不易留住顧客，生意沒有保障，不明朗因素較多，創業風險也較大。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					由於總店已有一定的客源。特許經營者可利用「商號」已有的優勢，較易開展業務。但總店及其他分店的服務水準亦會影響創業人士之業務。\r\n				&lt;/td&gt;\r\n				&lt;td&gt;\r\n					創業人士收購現成生意業務，基於已有一定數目熟客基礎及商譽，可即時營業賺取利潤 ，不愁開業時生意不足 ，創業風險大大降低 。\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;p&gt;\r\n		基於上述比較，要穩操勝券，成功開創個人事業&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;，以&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;模式&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;已成為創業人仕及投資者首選。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(9, '何謂「業務轉讓」', '創富須知 頁面管理', './Uploads/banners/20150718/55a9cb20d4f24.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;img class=&quot;right_big_image&quot; style=&quot;margin-top:60px;&quot; src=&quot;http://localhost/buy_business/Public/Img/Buy/business05.jpg&quot; alt=&quot;business05&quot; /&gt; \r\n	&lt;h3&gt;\r\n		何謂&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;?\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;是指創業人士及投資者用較低投資成本，收購一間現成有盈利及正在營運之生意業務，並按照其現有經營模式整體延續經營下去，讓自己即時營業&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。&lt;br /&gt;\r\n由於該業務已擁有商譽、經驗員工、穩定供應商及客源，買家除可省卻裝修、添置生財設備、申請相關牌照、尋找供應商、建立客源、聘請及培訓員工所花之時間及成本外，最重要是買家可即時借助已建立之商譽承接現有客源，穩定生意收入，即時賺取利潤，省卻創業時所需之備用現金儲備，大大提升競爭能力。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		同時，買家更可直接了解現有業務之經營模式及營運情況，根據該業務過往業績及發展記錄，評估及預測該業務之市場及盈利潛力，從而準確評估其投資價值。再者，賣家亦會提供交接培訓期予買家，傳授營運實務知識，務求令初入行之買家即時獲取其商業秘密(例如:獨有秘方)及掌握營運竅門，大大減低創業風險。因此，&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;已成為&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;新趨勢。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;適合哪些人仕?\r\n	&lt;/h3&gt;\r\n	&lt;h4&gt;\r\n		1.全職經營者(Full-time Operator)\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		全職經營者可選擇以較低成本，收購一間現成有盈利及正在營運之生意業務，即時創立自己事業「做老闆」。根據賣家所提供之交接培訓期，全情投入吸取營運實務知識，掌握營運竅門，積極參與日常業務運作及注入個人新概念，將業務發揚光大更上一層樓，獲取工作滿足感之餘，亦可賺取豐厚利潤，為理想創造一番成功事業。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		2.兼職經營者(Part-time Operator)\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		兼職經營者可根據個人興趣和天分，以兼職角色收購現成有盈利及正在營運之生意業務，利用工餘時間，嘗試掌握該業務之日常運作模式及營運竅門，一展所長，無懼減薪裁員等問題，為未來事業前途早日鋪路。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		3.投資者(Investor)\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		投資者以收購一間現成有盈利及正在營運之生意業務，作為分散投資風險之工具。投資者可根據該業務過往業績及發展記錄，推算回本期(Payback Period)及投資回報Returnon Investment(ROI)，同時評估及預測該業務之未來市場潛力及盈利能力，從而準確評估其投資價值。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(10, '為何選擇業務轉讓', '創富須知 頁面管理', './Uploads/banners/20150718/55a9cb3394da8.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h3&gt;\r\n		為 何 選 擇「 業 務 轉 讓 」?\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;a href=&quot;http://localhost/buy_business/index.php?option=com_content&amp;amp;view=article&amp;amp;id=16&amp;amp;Itemid=177&quot;&gt;「 業 務 轉 讓 」&lt;/a&gt;是指創業人士及投資者用較低投資成本，收購一間現成有盈利及正在營運之生意業務，並按照其現有經營模式整體延續經營下去，讓自己即時營業&lt;a href=&quot;http://localhost/buy_business/index.php?option=com_content&amp;amp;view=article&amp;amp;id=7&amp;amp;Itemid=175&quot;&gt;「 創 富 做 老 闆 」&lt;/a&gt; \r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			由於該業務已擁有商譽、經驗員工、穩定供應商及客源，買家除可省卻裝修、添置生財設備、申請相關牌照、尋找供應商、建立客源、聘請及培訓員工所花之時間及成本外，最重要是買家可即時借助已建立之商譽承接現有客源，穩定生意收入，即時賺取利潤，省卻創業時所需之備用現金儲備，大大提升競爭能力。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			同時，買家更可直接了解現有業務之經營模式及營運情況，根據該業務過往業績及發展記錄，評估及預測該業務之市場及盈利潛力，從而準確評估其投資價值。再者，賣家亦會提供交接培訓期予買家，傳授營運實務知識，務求令初入行之買家即時獲取其商業秘密(例如:獨有秘方)及掌握營運竅門，大大減低創業風險。因此，&lt;a href=&quot;http://localhost/buy_business/index.php?option=com_content&amp;amp;view=article&amp;amp;id=16&amp;amp;Itemid=177&quot;&gt;「 業 務 轉 讓 」&lt;/a&gt;已成為&lt;a href=&quot;http://localhost/buy_business/index.php?option=com_content&amp;amp;view=article&amp;amp;id=7&amp;amp;Itemid=175&quot;&gt;「 創 富 做 老 闆 」&lt;/a&gt;新趨勢。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		「 業 務 轉 讓 」適 合 哪 些 人 仕 ?\r\n	&lt;/h3&gt;\r\n	&lt;h4&gt;\r\n		1. 全 職 經 營 者 (Full-time Operator)\r\n	&lt;/h4&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			全 職 經 營 者可 選 擇 以 較 低 成 本 ，收 購 一 間 現 成 有 盈 利 及 正 在 營 運 之 生 意 業 務 ， 即 時 創 立 自 己 事 業 「 做 老 闆 」。 根 據 賣 家 所 提 供 之 交 接 培 訓 期 ， 全 情 投 入 吸 取 營 運 實 務 知 識 ， 掌 握 營 運 竅 門 ， 積 極 參 與 日 常 業 務 運 作 及 注 入 個 人 新 概 念 ， 將 業 務 發 揚 光 大 更 上 一 層 樓 ， 獲 取 工 作 滿 足 感 之 餘 ， 亦 可 賺 取 豐 厚 利 潤 ， 為 理 想 創 造 一 番 成 功 事 業 。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h4&gt;\r\n		2. 兼 職 經 營 者 (Part-time Operator)\r\n	&lt;/h4&gt;\r\n	&lt;h4&gt;\r\n		3. 投 資 者 (Investor)\r\n	&lt;/h4&gt;\r\n&lt;/div&gt;', 0),
(11, '常見問題', '創富須知 頁面管理', './Uploads/banners/20150718/55a9c72ae4ed4.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h3&gt;\r\n		1.何謂&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;?\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p style=&quot;line-height:18.75px;word-spacing:3px;&quot;&gt;\r\n			&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;是指創業人士及投資者用較低投資成本，收購一間現成有盈利及正在營運之生意業務，並按照其現有經營模式整體延續經營下去，讓自己即時&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n		&lt;/p&gt;\r\n		&lt;p style=&quot;line-height:18.75px;word-spacing:3px;&quot;&gt;\r\n			由於該業務已擁有商譽、經驗員工、穩定供應商及客源，買家除可省卻裝修、添置生財設備、申請相關牌照、尋找供應商、建立客源、聘請及培訓員工所花之時間及成本外，最重要是買家可即時借助已建立之商譽承接現有客源，穩定生意收入，即時賺取利潤，省卻創業時所需之備用現金儲備，大大提升競爭能力。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			同時，買家更可直接了解現有業務之經營模式及營運情況，根據該業務過往業績及發展記錄，評估及預測該業務之市場及盈利潛力，從而準確評估其投資價值。再者，賣家亦會提供交接培訓期予買家，傳授營運實務知識，務求令初入行之買家即時獲取其商業秘密(例如:獨有秘方)及掌握營運竅門，大大減低創業風險。因此，&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;已成為&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;新趨勢。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		2.生意既有盈利，為何仍要出讓呢？\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			事實上，為何東主願意出讓其經營多年既有盈利之生意，主要原因是：\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			a.因現時業務之日常營運或未來發展方向跟合夥人意見分歧甚至不和\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			b.年介退休之年，而子女亦有自己個人事業理想，不願繼承現有生意業務；\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			c.想擴充或發展其他生意業務，同時亦想改變現有生活方式；\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			d.因身體健康問題，難以繼續打理現有的生意業務\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			e.打算即將移民海外……等\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		3.如何為生意業務進行「業務估值」?\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			正確的「業務估值」能讓買賣雙方於合理售價下作出正確的交易決定，有效把握時機將業務成功轉讓。生意業務的價值可根據業務之&lt;span class=&quot;highLight03&quot;&gt;「過去投資」&lt;/span&gt;、「現在營運狀況」及「未來發展潛力」三方面作評估。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			a.&lt;span class=&quot;highLight03&quot;&gt;「過去投資」&lt;/span&gt;是根據出讓業務由開業至今所投放的資金，其中包括&lt;span class=&quot;highLight03&quot;&gt;「有形資產」&lt;/span&gt;及&lt;span class=&quot;highLight03&quot;&gt;「無形資產」&lt;/span&gt;。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;span class=&quot;highLight03&quot;&gt;「有形資產」&lt;/span&gt;是較易作出估值的實質資源，例如裝修、牌照、設備和生財工具等(計算「有形資產」時必須扣除折舊率)\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;span class=&quot;highLight03&quot;&gt;「無形資產」&lt;/span&gt;是指一些較難估值卻又並非實質資源，包括商譽（goodwill）、商標(Trademark)、客戶(Customers)及供應商關係(SupplierRelationship)、知識產權(IntellectualPropertyRight)、商業網絡(BusinessNetwork)、營運竅門(BusinessSecret)(例如獨有秘方)、業務資料庫(Database)(顧客及供應商名單)……等。假設該業務擁有多年良好商譽，顧客及供應商對其服務水平與信心均有保證，興此同時，其商譽更可協助開拓新客源，因此業務之價值相對較高。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			b.「現在營運狀況」是根據出讓業務目前之盈利狀況，從而推算回本期(paybackperiod)，藉此確定盈利及回本期是否合理。一般採用EBITDA方式計算。(EBITDA=EarningsBeforeInterest,Tax,DepreciationandAmortization)是指未計利息、稅項、折舊及攤銷前的盈利。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			再者，如出讓業務之各項會計賬目清晰或單據記錄齊備，不單方便專業核數師查核，亦有助提升準買家對該業務之盈利可信程度，確保業務的價值。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			c.「未來發展潛力」是根據出讓業務目前之營運狀況、東主參與及投入程度、市場趨勢、產品服務及宣傳推廣策略，預計該業務之未來改善空間及發展潛力，從而評估其價值。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			除可根據上述三方面作評估，亦可根據近期同類業務之放盤價或成交個案以作參考。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		4.&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;有何種途徑?\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			a.東主自讓 透過刋登報章廣告或經由東主私人網絡出讓業務予親戚朋友\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			b.業務轉讓顧問(BusinessBrokerageConsultant) 透過業務轉讓顧問(BusinessBrokerageConsultant)出讓其業務予有志&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;人士。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		5.&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;過程是否很繁複呢？\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			事實上，業務轉讓過程中涉及繁複流程及文件，當中包括業務估值、財務審查、簽訂新租約、牌照轉名、處理法律文件及員工合約等問題，費時失事。由買賣雙方直接洽談往往基於雙方立場對立及意見分歧，難以達致共識而導致交易取消。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		6.如何化繁為簡成功順利進行&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;呢？\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			閣下選擇透過業務轉讓顧問(Business Brokerage Consultant)進行。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		7.何謂「業務轉讓顧問」(BusinessBrokerageConsultant)？\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			「業務轉讓顧問」(Business Brokerage Consultant)，其職能主要提供全面「一站式」服務，協助買賣雙方處理業務轉讓過程中所涉及的繁複交易流程及細節(例如：財務審查、簽訂新租約、牌照轉名、處理法律文件及員工合約等相關問題)，務求令業務轉讓交易順利進行及成功完成。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		8.為何要選擇「業務轉讓顧問」，而不選擇以「東主自讓」方式，由買賣雙方直接洽談呢？\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;(Confidentially)是轉讓業務時首要關注的問題。買賣雙方必須於「保密」情況下洽談業務轉讓事宜，避免驚動員工而影响士氣，同時亦須確保顧客及供應商之穩定性，務求令現有業務持續穩定營運。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			如透過東主刋登報章廣告自讓其生意業務，買賣雙方於查詢業務或洽談轉讓過程中難以確保過程保密，往往驚動員工而影响士氣，甚至引致員工即時離職而影响業務；同時，於買賣雙方直接洽談過程中，往往基於買賣雙方互信不足，交易條件及售價意見分歧，雙方難以達成共識，最終導致交易取消。再者，如東主透過個人網絡轉讓其生意業務予親戚朋友，由於進行「財務審查」及洽談交易條件售價時雙方難以啟齒而感到尷尬，最終亦難以達成共識而取消交易，十分可惜!\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			而選擇由「業務轉讓顧問」處理業務轉讓事宜，專業顧問首先會向業務東主了解整個業務營運狀況，然後讓東主了解出售其生意業務之可行性及流程；再進行「業務估值」及建議具體方案，制定「業務概覽」讓買家參考業務相關資料及安排買家進行「實地考察」，讓買家體驗整個業務實際營運。其後專業顧問更會安排買賣雙方直接會面洽談，讓買方進一步了解該業務的日常營運細節。同時，憑著專業顧問多年豐富經驗，以專業談判方式協助買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下磋商交易條件及價格，於最合理情况下達成共識，務求令買賣雙方達致「雙嬴局面」。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		9.為何選擇我們?\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			請參考「&lt;a href=&quot;http://localhost/buy_business/index.php?option=com_content&amp;amp;view=article&amp;amp;id=19&amp;amp;Itemid=154&quot;&gt;為何選擇我們?&lt;/a&gt;」\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		10.我們的服務收費如何?\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			我們堅守以客為先「不成功•不收費」原則，並以合理收費提供專業優質業務轉讓服務，致力協助買賣雙方將業務成功轉讓。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 0),
(12, '買家收購程序', '買家收購業務 頁面管理', './Uploads/banners/20150710/559f95d3915e0.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		收購程序可分為以下三個階段：\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;mt10&quot;&gt;\r\n		&lt;img src=&quot;http://202.74.0.45/temp/buy_business/Public/zh/images/Buyers_01.jpg&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;C_003399&quot;&gt;\r\n		1.洽談了解準買家之「創富」目標推介合適業務\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		首先我們的專業顧問會跟各準買家洽談了解其「創富」目標，然後根據其投資預算、感興趣之業務及營運地點等要求，推介合適業務以作選擇。同時，讓各準買家了解購入業務之流程。\r\n          (準買家所提供的資料只用作尋找合適業務之用途，所有資料絕對保密。)\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;C_003399&quot;&gt;\r\n		2.簽署「保密協議」　提供「業務概覽」以作參考\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		因應賣家要求，各準買家需簽署一份「保密協議書」承諾不會對外洩露我們所提供之業務營運資料及數據。確保該業務能夠繼續穩定經營。然後，我們會根據準買家之要求，推介合適業務及提供「業務概覽」以作參考，讓準買家獲取該業務之初步日常營運資料及數據。\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;C_003399&quot;&gt;\r\n		3.準買家進行「實地考察」　親身體驗業務實際營運\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;mb32&quot;&gt;\r\n		當準買家參考「業務概覽」後認為初步符合基本要求，我們的專業顧問便會安排及陪同準買家到該業務進行實地考察。由準買家親身體驗及了解該業務之周邊環境、日常營運模式、競爭對手及未來發展空間。我們跟準買家會以「顧客身份」進行實地考察，避免驚動員工而影響士氣。\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;mt10&quot;&gt;\r\n		&lt;img src=&quot;http://202.74.0.45/temp/buy_business/Public/zh/images/Buyers_02.jpg&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;C_003399&quot;&gt;\r\n		1.買賣雙方會面　了解業務營運細節\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		當準買家完成「實地考察」後對該業務感興趣，我們便會安排買賣雙方會面，讓雙方直接洽談互相了解彼此要求。同時，讓準買家進一步了解該業務具體的日常運作細節及營運竅門。\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;C_003399&quot;&gt;\r\n		2.磋商交易條件及價格　簽訂買賣協議書\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;mb32&quot;&gt;\r\n		於買賣雙方直接洽談期間，我們的專業顧問會盡力協助買賣雙方磋商交易條件及價格，爭取雙方最佳條件；同時，我們會根據雙方所共識的交易條款細節，草擬買賣協議書，務求雙方於最合理公平條件及感到滿意情況下取得共識簽訂買賣協議書，達致「雙嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;mt10&quot;&gt;\r\n		&lt;img src=&quot;http://202.74.0.45/temp/buy_business/Public/zh/images/Buyers_03.jpg&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;C_003399&quot;&gt;\r\n		處理各項「業務轉讓」事宜令業務順利移交\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		當雙方簽訂買賣協議書後，我們的專業顧問及專業人仕會堅守不偏不倚公平公正的原則下，即時為買賣雙方安排及處理各項「業務轉讓」交收事宜，以保障買賣雙方利益。透過專業獨立核數師核實該業務的財務資料，確保資料屬實。同時，我們亦會協助安排買方簽訂新租約及辦理相關牌照轉名手續，務求令業務順利移交。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(13, '為何選擇我們', '買家收購業務 頁面管理', './Uploads/banners/20150717/55a8b0dd74d4c.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		「业务转让」是专业而严肃的课题，如果由个人独自办理，不单费时失事，更因买卖双方意见分歧，难以达成共识而导致交易取消。倘若稍一不慎，甚至会导致血本无归。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		严格挑选及发掘优质具潜力业务\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我们坚守「严格挑选及发掘优质具潜力业务」原则，务求让各买家以最快捷有效方式收购现有盈利及极具潜力之生意业务，实现个人梦想与抱负，轻轻鬆鬆「创富做老板」。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「一站式全方位」专业服务协助买卖双方处理业务转让过程\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业顾问及专业人仕会以不偏不倚及公平公正之原则下提供「一站式全方位」服务，有系统地办理各项业务转让事宜，以保障买卖双方利益，将业务成功转让。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「业务概览」业务资料一目了然\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		由我们的「业务评审委员会」所撰写的「业务概览」，於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下向买家提供业务重点资料以作参考，让买家了解业务，促成收购决定。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「业务估值」确保售价合理\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		所有出让项目均须由我们的「业务评审委员会」进行「业务估值」，让买卖双方於最合理价格下作出正确的交易决定。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		确保买卖双方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下洽谈转让事宜\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		安排买卖双方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下洽谈业务转让事宜，避免影响现有顾客、供应商和影响员工士气，确保现有业务继续稳定经营。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		专业谈判达致「双嬴局面」\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业谈判方式，能够协助买卖双方争取於最合理情况下，达成最佳交易条件和价格，互惠互利将业务成功转让，达致「双嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「一站式全方位」专业服务协助买卖双方处理业务转让过程\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业顾问及专业人仕会以不偏不倚及公平公正之原则下提供「一站式全方位」服务，有系统地办理各项业务转让事宜，以保障买卖双方利益，将业务成功转让。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		售后服务倍感安心\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业顾问凭著多年丰富经验，诚意為买卖双方提供售后顾问服务，务求令双方於业务成功转让后平稳过渡。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		坚守「不成功•不收费」原则\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们坚守「不成功•不收费」原则，并以合理服务收费提供专业优质业务转让服务，致力协助买卖双方将业务成功转让。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(14, '買家查詢', '買家收購業務 頁面管理', './Uploads/banners/20150717/55a8b0f6378c9.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;div class=&quot;Contact_Us&quot;&gt;\r\n		&lt;div class=&quot;ch&quot;&gt;\r\n			阁下如有任何查询，欢迎填写及传送以下资料。如需跟进，我们将尽可能於接获阁下意见后尽快回复。\r\n		&lt;/div&gt;\r\n&lt;br /&gt;\r\n		&lt;form action=&quot;index.php?c=Index&amp;amp;a=BuyersQuery&quot; onsubmit=&quot;return check_form(''input-name|input-email|input-tel'');&quot; name=&quot;sellerInquiries&quot; id=&quot;chronoform_sellerInquiries&quot; method=&quot;post&quot; class=&quot;hasValidation&quot;&gt;\r\n			&lt;table width=&quot;100%&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;enquiry_form&quot; style=&quot;width:520px;margin-left:32px;&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;10&quot; align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td width=&quot;110&quot; align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;姓名&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_11_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-name&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_1&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_1&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;電郵&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_21_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-email&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''email'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_2&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_2&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;電話號碼&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_31_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-tel&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''number'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_3&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_3&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;意見&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_141_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-suggest&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot;&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_14&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_14&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;最方便之聯絡時間&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_datetime&quot; id=&quot;input_datetime_151_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-contact-date&quot; maxlength=&quot;150&quot; size=&quot;16&quot; class=&quot;cf_date_picker&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_datetime_15&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_datetime_15&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;日後透過電郵接收 &lt;a href=&quot;http://localhost/buy_business/BuyBusiness.com.hk&quot;&gt;BuyBusiness.com.hk&lt;/a&gt; 的最新資訊&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_radio&quot; id=&quot;input_radio_191_container_div&quot;&gt;\r\n								&lt;input type=&quot;hidden&quot; name=&quot;input_radio_19&quot; value=&quot;&quot; alt=&quot;ghost&quot; /&gt; \r\n								&lt;div style=&quot;float:left;clear:none;&quot;&gt;\r\n									&lt;input type=&quot;radio&quot; name=&quot;input_radio_19&quot; id=&quot;input_radio_19_0&quot; title=&quot;&quot; value=&quot;Yes&quot; class=&quot;validate[''required'']&quot; /&gt; &lt;label for=&quot;input_radio_19_0&quot;&gt;同意&lt;/label&gt; \r\n								&lt;/div&gt;\r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_radio_19&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;div style=&quot;padding-left:180px;margin-top:15px;&quot;&gt;\r\n				&lt;div class=&quot;ccms_form_element cfdiv_submit&quot; id=&quot;input_submit_51_container_div&quot; style=&quot;text-align:left;&quot;&gt;\r\n					&lt;input name=&quot;input_submit_5&quot; class=&quot;enquiry_bottom&quot; value=&quot;傳送&quot; type=&quot;submit&quot; /&gt;&amp;nbsp;&lt;input type=&quot;reset&quot; name=&quot;reset&quot; value=&quot;重寫&quot; class=&quot;enquiry_bottom&quot; /&gt; \r\n					&lt;div class=&quot;clear&quot;&gt;\r\n					&lt;/div&gt;\r\n					&lt;div id=&quot;error-message-input_submit_5&quot;&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n&lt;input type=&quot;hidden&quot; name=&quot;142d3311098ee88c333fd9eee6f4e4a9&quot; value=&quot;1&quot; /&gt; \r\n		&lt;/form&gt;\r\n		&lt;div class=&quot;chronoform&quot;&gt;\r\n			&lt;a href=&quot;http://www.chronoengine.com&quot;&gt;Powered By ChronoForms - ChronoEngine.com&lt;/a&gt; \r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 0);
INSERT INTO `buy_page` (`id`, `title`, `menu`, `banner`, `content`, `status`) VALUES
(15, '賣家出讓程序', '賣家出讓業務 頁面管理', './Uploads/banners/20150718/55a9c74cdb741.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		出讓程序可分為三階段\r\n	&lt;/p&gt;\r\n	&lt;h3 class=&quot;step1&quot;&gt;\r\n		第一階段\r\n	&lt;/h3&gt;\r\n	&lt;h4&gt;\r\n		1.洽談了解賣家之「出讓」要求‧尋找合適買家\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		首先我們的專業顧問會跟各準賣家洽談了解其業務之「出讓」要求及可行性；同時，讓各準賣家了解出讓業務之流程，然後我們會根據其要求，尋找合適買家。&lt;br /&gt;\r\n(準賣家所提供的資料只用作尋找合適買家之用途，所有資料絕對保密。)\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		2.簽署「出讓業務委託協議」　制定「業務概覽」以供買家參考\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		各準賣家需簽署一份「出讓業務委託協議書」，委託我們作為其業務之「出讓」代理，並承諾將提供一切真實的業務營運資料及數據予我們。例如：營業時間、東主參與角色、收入、租金、員工數目、薪金、牌照及盈利狀況……等。其後，根據上述資料經由我們「業務評審委員會」進行「業務估值」及根據賣家之要求，制定「業務概覽」以供買家參考。&lt;br /&gt;\r\n我們的專業顧問於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下透過不同渠道接觸各準買家，推介有關業務及提供「業務概覽」予各準買家以作參考。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		3.安排準買家以「顧客身份」進行「實地考察」\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		當準買家參考「業務概覽」後認為初步符合基本要求，我們的專業顧問便會安排及陪同準買家到該業務進行實地考察。由準買家親身體驗及了解該業務之周邊環境、日常營運模式、競爭對手及未來發展空間。我們跟準買家會以「顧客身份」進行實地考察，避免驚動員工而影响士氣。\r\n	&lt;/p&gt;\r\n	&lt;h3 class=&quot;step2&quot;&gt;\r\n		第二階段\r\n	&lt;/h3&gt;\r\n	&lt;h4&gt;\r\n		1.買賣雙方會面　了解業務營運細節\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		當準買家完成「實地考察」後對該業務感興趣，我們便會安排買賣雙方會面，讓雙方直接洽談互相了解彼此要求。同時，讓準買家進一步了解該業務具體的日常運作細節及營運竅門。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		2.磋商交易條件及價格　簽訂買賣協議書\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		於買賣雙方直接洽談期間，我們的專業顧問會盡力協助買賣雙方磋商交易條件及價格，爭取雙方最佳條件；同時，我們會根據雙方所共識的交易條款細節，草擬買賣協議書，務求雙方於最合理公平條件及感到滿意情况下取得共識簽訂買賣協議書，達致「雙嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;h3 class=&quot;step3&quot;&gt;\r\n		第三階段\r\n	&lt;/h3&gt;\r\n	&lt;h4&gt;\r\n		處理各項&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;事宜　令業務順利移交\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		當雙方簽訂買賣協議書後，我們的專業顧問及專業人仕會堅守不偏不倚公平公正的原則下，即時為買賣雙方安排及處理各項&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;交收事宜，以保障買賣雙方利益。透過專業獨立核數師核實該業務的財務資料，確保資料屬實。同時，我們亦會協助安排買方簽訂新租約及辦理相關牌照轉名手續，務求令業務順利移交。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(16, '業務估值', '賣家出讓業務 頁面管理', './Uploads/banners/20150718/55a9c75e81d98.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		正確的「業務估值」能讓買賣雙方於合理售價下作出正確的交易決定，有效把握時機將業務成功轉讓。生意業務的價值可根據業務之&lt;span class=&quot;highLight03&quot;&gt;「過去投資」&lt;/span&gt;、「現在營運狀況」及「未來發展潛力」三方面作評估。\r\n	&lt;/p&gt;\r\n	&lt;ol&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;highLight03&quot;&gt;「過去投資」&lt;/span&gt;是根據出讓業務由開業至今所投放的資金，其中包括&lt;span class=&quot;highLight03&quot;&gt;「有形資產」&lt;/span&gt;及&lt;span class=&quot;highLight03&quot;&gt;「無形資產」&lt;/span&gt;。\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;highLight03&quot;&gt;「有形資產」&lt;/span&gt;是較易作出估值的實質資源，例如裝修、牌照、設備和生財工具等(計算「有形資產」時必須扣除折舊率)\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;highLight03&quot;&gt;「無形資產」&lt;/span&gt;是指一些較難估值卻又並非實質資源，包括商譽（good will）、商標(Trade mark)、客戶(Customers)及供應商關係(Supplier Relationship)、知識產權(Intellectual Property Right)、商業網絡(Business Network)、營運竅門(Business Secret)(例如獨有秘方)、業務資料庫(Data base)(顧客及供應商名單)……等。假設該業務擁有多年良好商譽，顧客及供應商對其服務水平與信心均有保證，興此同時，其商譽更可協助開拓新客源，因此業務之價值相對較高。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				「現在營運狀況」是根據出讓業務目前之盈利狀況，從而推算回本期(payback period)，藉此確定盈利及回本期是否合理。一般採用EBITDA方式計算。(EBITDA=Earnings Before Interest, Tax, Depreciation and Amortization)是指未計利息、稅項、折舊及攤銷前的盈利。\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				再者，如出讓業務之各項會計賬目清晰或單據記錄齊備，不單方便專業核數師查核，亦有助提升準買家對該業務之盈利可信程度，確保業務的價值。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				「未來發展潛力」是根據出讓業務目前之營運狀況、東主參與及投入程度、市場趨勢、產品服務及宣傳推廣策略，預計該業務之未來改善空間及發展潛力，從而評估其價值。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n	&lt;/ol&gt;\r\n	&lt;p&gt;\r\n		除可根據上述三方面作評估，亦可根據近期同類業務之放盤價或成交個案以作參考。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(17, '為何選擇我們(賣家)', '賣家出讓業務 頁面管理', './Uploads/banners/20150718/55a9c7d2cfd9c.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;是專業而嚴肅的課題，如果由個人獨自辦理，不單費時失事，更因買賣雙方意見分歧，難以達成共識而導致交易取消。倘若稍一不慎，甚至會導致血本無歸。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		嚴格挑選及發掘優質具潛力業務\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們堅守「嚴格挑選及發掘優質具潛力業務」原則，務求讓各買家以最快捷有效方式收購現有盈利及極具潛力之生意業務，實現個人夢想與抱負，輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「一站式全方位」專業服務協助買賣雙方處理業務轉讓過程\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問及專業人仕會以不偏不倚及公平公正之原則下提供「一站式全方位」服務，有系統地辦理各項業務轉讓事宜，以保障買賣雙方利益，將業務成功轉讓。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「業務概覽」業務資料一目了然\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		由我們的「業務評審委員會」所撰寫的「業務概覽」，於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下向買家提供業務重點資料以作參考，讓買家了解業務，促成收購決定。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「業務估值」確保售價合理\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		所有出讓項目均須由我們的「業務評審委員會」進行「業務估值」，讓買賣雙方於最合理價格下作出正確的交易決定。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		確保買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下洽談轉讓事宜\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		安排買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下洽談業務轉讓事宜，避免影响現有顧客、供應商和影响員工士氣，確保現有業務繼續穩定經營。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		專業談判達致「雙嬴局面」\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我們的專業談判方式，能夠協助買賣雙方爭取於最合理情況下，達成最佳交易條件和價格，互惠互利將業務成功轉讓，達致「雙嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「一站式全方位」專業服務協助買賣雙方處理業務轉讓過程\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問及專業人仕會以不偏不倚及公平公正之原則下提供「一站式全方位」服務，有系統地辦理各項業務轉讓事宜，以保障買賣雙方利益，將業務成功轉讓。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		售後服務倍感安心\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問憑著多年豐富經驗，誠意為買賣雙方提供售後顧問服務，務求令雙方於業務成功轉讓後平穩過渡。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		堅守「不成功•不收費」原則\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我們堅守「不成功•不收費」原則，並以合理服務收費提供專業優質業務轉讓服務，致力協助買賣雙方將業務成功轉讓。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(18, '賣家查詢', '賣家出讓業務 頁面管理', './Uploads/banners/20150718/55a9c7f7ce534.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;div class=&quot;Contact_Us&quot;&gt;\r\n		&lt;div class=&quot;ch&quot;&gt;\r\n			閣下如有任何查詢，歡迎填寫及傳送以下資料。如需跟進，我們將盡可能於接獲閣下意見後盡快回覆。\r\n		&lt;/div&gt;\r\n&lt;br /&gt;\r\n		&lt;form action=&quot;index.php?c=Index&amp;amp;a=SellersQuery&quot; onsubmit=&quot;return check_form(''input-name|input-email|input-tel'');&quot; name=&quot;Sellers&quot; id=&quot;chronoform_sellerInquiries&quot; method=&quot;post&quot; class=&quot;hasValidation&quot;&gt;\r\n			&lt;table width=&quot;100%&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;enquiry_form&quot; style=&quot;width:520px;margin-left:32px;&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;10&quot; align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td width=&quot;110&quot; align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;姓名&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_11_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-name&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_1&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_1&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;電郵&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_21_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-email&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''email'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_2&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_2&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;電話號碼&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_31_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-tel&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''number'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_3&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_3&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;意見&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_141_container_div&quot;&gt;\r\n								&lt;input maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot;&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_14&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_14&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;最方便之聯絡時間&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_datetime&quot; id=&quot;input_datetime_151_container_div&quot;&gt;\r\n								&lt;input maxlength=&quot;150&quot; size=&quot;16&quot; class=&quot;cf_date_picker&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_datetime_15&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_datetime_15&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;日後透過電郵接收 &lt;a href=&quot;http://localhost/buy_business/BuyBusiness.com.hk&quot;&gt;BuyBusiness.com.hk&lt;/a&gt; 的最新資訊&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_radio&quot; id=&quot;input_radio_191_container_div&quot;&gt;\r\n								&lt;input type=&quot;hidden&quot; name=&quot;input_radio_19&quot; value=&quot;&quot; alt=&quot;ghost&quot; /&gt; \r\n								&lt;div style=&quot;float:left;clear:none;&quot;&gt;\r\n									&lt;input type=&quot;radio&quot; name=&quot;input_radio_19&quot; id=&quot;input_radio_19_0&quot; title=&quot;&quot; value=&quot;Yes&quot; class=&quot;validate[''required'']&quot; /&gt; &lt;label for=&quot;input_radio_19_0&quot;&gt;同意&lt;/label&gt; \r\n								&lt;/div&gt;\r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_radio_19&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;div style=&quot;padding-left:180px;margin-top:15px;&quot;&gt;\r\n				&lt;div class=&quot;ccms_form_element cfdiv_submit&quot; id=&quot;input_submit_51_container_div&quot; style=&quot;text-align:left;&quot;&gt;\r\n					&lt;input name=&quot;input_submit_5&quot; class=&quot;enquiry_bottom&quot; value=&quot;傳送&quot; type=&quot;submit&quot; /&gt;&amp;nbsp;&lt;input type=&quot;reset&quot; name=&quot;reset&quot; value=&quot;重寫&quot; class=&quot;enquiry_bottom&quot; /&gt; \r\n					&lt;div class=&quot;clear&quot;&gt;\r\n					&lt;/div&gt;\r\n					&lt;div id=&quot;error-message-input_submit_5&quot;&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n&lt;input type=&quot;hidden&quot; name=&quot;dfeadf252b43ebea7e4b107cdfd49b15&quot; value=&quot;1&quot; /&gt; \r\n		&lt;/form&gt;\r\n		&lt;div class=&quot;chronoform&quot;&gt;\r\n			&lt;a href=&quot;http://www.chronoengine.com&quot;&gt;Powered By ChronoForms - ChronoEngine.com&lt;/a&gt; \r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 0),
(19, '開業資料庫', '營商須知 頁面管理', './Uploads/banners/20150718/55a9cb8af071b.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h3&gt;\r\n		商 業 登 記 及 註 冊 成 立 本 地 有 限 公 司\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			《商 業 登 記 條 例》 規 定 ， 任 何 在 香 港 經 營 業 務 的 人 士 ， 均 須 在 開 業 後 1 個 月 內 ， 為 業 務 申 請 &lt;a href=&quot;http://www.gov.hk/tc/business/registration/businesscompany/index.htm&quot; target=&quot;_blank&quot;&gt;商 業 登 記&lt;/a&gt; ， 並 將 有 效 的 商 業 登 記 證 在 營 業 地 點 展 示 。 如 想 在 香 港 註 冊 成 立 本 地 有 限 公 司 ， 須 向 &lt;a href=&quot;http://www.cr.gov.hk/&quot; target=&quot;_blank&quot;&gt;公 司 註 冊 處 申 請&lt;/a&gt;。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		商 業 牌 照\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			在 港 開 業 時 ， 無 論 各 行 各 業 均 需 要 相 關 的 商 業 牌 照 ， 否 則 便 是 無 牌 經 營 。 為 節 省 時 間 及 減 低 其 觸 犯 政 府 有 關 條 例 的 機 會 ， 企 業 可 使 用 &lt;a href=&quot;http://www.tid.gov.hk/&quot; target=&quot;_blank&quot;&gt;工 業 貿 易 署&lt;/a&gt; 管 理 的 &lt;a href=&quot;https://www.success.tid.gov.hk/tid/tcchi/blics/index.jsp&quot; target=&quot;_blank&quot;&gt;商 業 牌 照 資 料 搜 尋&lt;/a&gt; 。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		商 標、設 計、產 品 註 冊\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			假 如 閣 下 的 業 務 涉 及 創 作 ， 必 須 為 你 的 商 標 、 設 計 、 產 品 等 申 請 &lt;a href=&quot;http://www.ipd.gov.hk/chi/intellectual_property.htm#01&quot; target=&quot;_blank&quot;&gt;知 識 產 權 註 冊&lt;/a&gt; 以 保 障 你 的 創 作 心 血。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		3. 投 資 者 (Investor)\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			創 業 資 金 包 括 開 業 資 金（Initial Capital）、營 運 成 本（Operating Expenses）及 備 用 流 動 資 金 (Reserved Captial)\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;1. 開 業 資 金 （Initial Capital） &lt;/strong&gt;&lt;br /&gt;\r\n「 開 業 資 金 」指 籌 備 開 業 所 需 的 金 錢 ，包 括 ： 營 運 地 點 （ 店 舖 或 寫 字 樓 ） 的 按 金 、 用 於 裝 修 和 購 買 設 備 的 費 用 ， 屬 一 次 性 的 。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;2. 營 運 成 本（Operating Expenses）&lt;/strong&gt;&lt;br /&gt;\r\n「 成 本 」 則 指 業 務 營 運 中 所 需 的 金 錢， 包 括 ：租 金、 工 資、 用 於 購 貨 / 原 料 、 生 產 或 運 作 的 費 用 、 市 場 推 廣 支 出 、 水 電 雜 費 等 ， 屬 經 常 性 支 出。\r\n		&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;3. 備 用 流 動 資 金 (Reserved Captial)&lt;/strong&gt;&lt;br /&gt;\r\n創 業 人 士 及 投 資 者 於 開 業 初 期 需 面 對 創 業 風 險 ，而 需 預 留 大 約 3 – 6 個 月「 備 用 流 動 資 金 」* ， 以 應 付 開 業 初 期 收 入 未 能 平 衡 「 成 本 」或 現 金 收 入 未 足 夠 支 付 各 項 支 出 費 用 等 情 況 ， 以 備 不 時 之 需 。&lt;br /&gt;\r\n* (備 用 流 動 資 金 以 固 定 支 出 計 算 ， 包 括 ： 租 金、 人 工、 水、 電 、 煤 等 基 本 營 運 開 支。)\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		物 業 租 賃\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			店 舖 面 積 及 座 落 地 區 ， 將 直 接 影 響 創 業 資 金 和 每 月 租 金 ， 商 場 與 街 舖 的 租 金 亦 有 分 別 。 因 此 ，如 閣 下 初 次 進 行 物 業 租 賃，有 很 多 注 意 事 項，例 如 租 約、租 金 和 按 金 等 。 商 舖 還 要 繳 交 &lt;a href=&quot;http://www.gov.hk/tc/residents/taxes/stamp/index.htm&quot; target=&quot;_blank&quot;&gt;印 花 稅&lt;/a&gt; 、&lt;a href=&quot;http://www.gov.hk/tc/residents/housing/rate/index.htm&quot; target=&quot;_blank&quot;&gt; 差 餉 及 地 稅 &lt;/a&gt;，稍 一 不 慎 ，都 會 令 營 運 成 本 失 去 預 算 。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		人 力 資 源\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			僱 員 是 一 所 公 司 的 重 要 資 產 ， 也 是 成 功 因 素 之 一 。 閣 下 無 論 創 立 哪 種 行 業 都 需 要 &lt;a href=&quot;http://www.jobs.gov.hk/big5/employer/post_vacancy/unreg_create_job.aspx&quot; target=&quot;_blank&quot;&gt;招 聘 人 手&lt;/a&gt; ， 僱 主 可 從 &lt;a href=&quot;http://www.labour.gov.hk/front.htm&quot; target=&quot;_blank&quot;&gt;勞 工 處&lt;/a&gt; 招 聘 合 適 員 工 輔 助 業 務 的 營 運 和 發 展 。 如 要 做 個 好 僱 主 ，便 要 提 供 &lt;a href=&quot;http://www.eoc.org.hk/EOC/GraphicsFolder/CoPs.aspx&quot; target=&quot;_blank&quot;&gt;平 等 機 會&lt;/a&gt; 給 求 職 者 及 &lt;a href=&quot;http://www.pcpd.org.hk/chinese/ordinance/code_faq.html&quot; target=&quot;_blank&quot;&gt;保 護 私 隱&lt;/a&gt; 。同 時 ， 亦 必 須 根 據 香 港 的 &lt;a href=&quot;http://www.labour.gov.hk/labour/content1.htm&quot; target=&quot;_blank&quot;&gt;僱 傭 條 例&lt;/a&gt; 聘 用 員 工 ， 否 則 便 很 容 易 發 生 勞 資 糾 紛 ， 影 響 &lt;a href=&quot;http://www.labour.gov.hk/labour/content.htm&quot; target=&quot;_blank&quot;&gt;勞 資 關 係&lt;/a&gt; ，令 僱 主 蒙 受 損 失 。僱 主 更 必 須 &lt;a href=&quot;http://www.ird.gov.hk/chi/tax/ere.htm#01&quot; target=&quot;_blank&quot;&gt;履 行 僱 主 的 稅 務 責 任&lt;/a&gt; 。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;h3&gt;\r\n		市 場 推 廣\r\n	&lt;/h3&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			市 場 競 爭 大，同 一 商 場 內，不 少 店 舖 售 賣 的 商 品 都 可 能 很 相 似 ，即 使 手 上 有 好 產 品 或 服 務，也 要 懂 得 &lt;a href=&quot;http://www.success.tid.gov.hk/misc/sgbook/chapter_08.htm&quot; target=&quot;_blank&quot;&gt;市 場 推 廣 途 徑&lt;/a&gt;，才 可 以 突 圍 而 出。\r\n		&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 0),
(20, '營商資料庫', '營商須知 頁面管理', './Uploads/banners/20150718/55a9cb95e20e2.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h3&gt;\r\n		&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;的優點：\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		定義：創業人士及投資者用較低投資成本，買入一間現成有盈利及正在營運之生意業務，並按照其現有經營模式整體延續經營下去，讓自己即時營業&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		優點：\r\n	&lt;/p&gt;\r\n	&lt;ol&gt;\r\n		&lt;li&gt;\r\n			業務已擁有商譽、經驗員工、穩定供應商及客源；\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			可省卻裝修、添置生財設備、申請相關牌照、尋找供應商、建立客源、聘請及培訓員工所花之時間和成本；\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			即時借助已建立之商譽承接現有客源，穩定生意收入，即時賺取利潤；\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			省卻創業時所需之備用現金儲備，大提升競爭能力；\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			可直接現場了解日常業務之經營模式及營運情況；\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			根據該業務過往業績及發展記錄，評估及預測該業務之市場及盈利潛力，從而準確評估其投資價值；\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			賣家亦會提供「交接培訓期」予買家，傳授營運實務知識，務求令初入行之買家即時獲取其商業秘密(例如:獨有秘方)及掌握營運竅門，大減低創業風險。\r\n		&lt;/li&gt;\r\n	&lt;/ol&gt;\r\n	&lt;p&gt;\r\n		故此，&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;已成為&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;新趨勢\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(21, '相關連結', '相關連結 頁面管理', './Uploads/banners/20150718/55a9c860d59a8.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;table class=&quot;table_logos&quot;&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.ird.gov.hk/chi/tax/bre.htm&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/br.gif&quot; alt=&quot;br&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.ird.gov.hk/chi/tax/bre.htm&quot; target=&quot;_blank&quot;&gt;商業登記&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						《商業登記條例》規定，任何在香港經營業務的人士，均須在開業後1個月內，為業務申請商業登記，並將有效的商業登記證在營業地點展示。\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.cr.gov.hk/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/cr.gif&quot; alt=&quot;cr&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.cr.gov.hk/&quot; target=&quot;_blank&quot;&gt;公司註冊處&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						在香港註冊成立本地有限公司，須向公司註冊處申請。\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.hkcg.com/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/gas.gif&quot; alt=&quot;gas&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.hkcg.com/&quot; target=&quot;_blank&quot;&gt;香港中華煤氣有限公司&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						提供煤氣及處理有關煤氣申請事宜。\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;https://www.clpgroup.com/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/clp.gif&quot; alt=&quot;clp&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;https://www.clpgroup.com/&quot; target=&quot;_blank&quot;&gt;中華電力有限公司&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						提供非港島區電力及處理有關電力申請事宜。\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.hkelectric.com/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/hke.gif&quot; alt=&quot;hke&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.hkelectric.com/&quot; target=&quot;_blank&quot;&gt;香港電燈有限公司&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						提供港島區電力及處理有關電力申請事宜。\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.wsd.gov.hk&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/water.gif&quot; alt=&quot;water&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.wsd.gov.hk&quot; target=&quot;_blank&quot;&gt;香港水務署&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						處理有關工商業食水申請事宜。\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.gov.hk/tc/about/govdirectory/govwebsite/index.htm&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/hkgov.gif&quot; alt=&quot;hkgov&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.gov.hk/tc/about/govdirectory/govwebsite/index.htm&quot; target=&quot;_blank&quot;&gt;香港政府一站通&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						提供各政府部門查詢\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.fehd.gov.hk/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/fehd.gif&quot; alt=&quot;fehd&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.fehd.gov.hk/&quot; target=&quot;_blank&quot;&gt;食物環境衞生署&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						有關食物業發牌事宜，可向食物環境衞生署查詢\r\n					&lt;/p&gt;\r\n					&lt;p&gt;\r\n						&lt;a href=&quot;http://www.fehd.gov.hk/tc_chi/licensing/guide.html&quot; target=&quot;_blank&quot;&gt;&amp;gt;申請牌照指南&lt;/a&gt; \r\n					&lt;/p&gt;\r\n					&lt;p&gt;\r\n						&lt;a href=&quot;http://www.fehd.gov.hk/tc_chi/licensing/licence-centre.html&quot; target=&quot;_blank&quot;&gt;&amp;gt;食肆牌照資源中心及牌照簽發辦事處&lt;/a&gt; \r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.edb.gov.hk&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/hkgov.gif&quot; alt=&quot;hkgov&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.edb.gov.hk&quot; target=&quot;_blank&quot;&gt;教育局&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						處理有關學校註冊申請事宜\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.police.gov.hk/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/police.gif&quot; alt=&quot;police&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.police.gov.hk/ppp_tc/11_useful_info/licences/index.html&quot; target=&quot;_blank&quot;&gt;警察牌照課&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						有關臨時酒牌、按摩院牌照及當押商牌照，可向警察牌照課查詢\r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;a href=&quot;http://www.had.gov.hk/&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/license.gif&quot; alt=&quot;license&quot; /&gt;&lt;/a&gt; \r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://www.had.gov.hk/&quot; target=&quot;_blank&quot;&gt;民政事務總署&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n					&lt;p&gt;\r\n						制定有關旅館、床位寓所、卡拉OK場所發牌以及簽發會社合格證明書的政策\r\n					&lt;/p&gt;\r\n					&lt;p&gt;\r\n						&lt;a href=&quot;http://www.had.gov.hk/tc/public_services/licensing/office.htm&quot; target=&quot;_blank&quot;&gt;&amp;gt;牌照事務處&lt;/a&gt; \r\n					&lt;/p&gt;\r\n					&lt;p&gt;\r\n						&lt;a href=&quot;http://www.had.gov.hk/tc/public_forms/forms.htm&quot; target=&quot;_blank&quot;&gt;&amp;gt;民政事務總署工作有關的常用表格&lt;/a&gt; \r\n					&lt;/p&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&amp;nbsp;\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;h5&gt;\r\n						&lt;a href=&quot;http://localhost/buy_business/index.php?c=News&amp;amp;a=index&quot;&gt;最新消息&lt;/a&gt; \r\n					&lt;/h5&gt;\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n&lt;/div&gt;', 0),
(22, '聯絡我們', '聯絡我們 頁面管理', './Uploads/banners/20150718/55a9ca860b295.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;div class=&quot;gmap&quot; style=&quot;height:375px;&quot;&gt;\r\n		&lt;div class=&quot;gmap&quot; style=&quot;height:450px;&quot;&gt;\r\n			&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.028509998657!2d114.21768344999998!3d22.314761499999975!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340401485058b95b%3A0x9e265d66bbd83f06!2z5ZCM5Yip5bel5qWt5aSn5buI!5e0!3m2!1szh-TW!2s!4v1400837688631&quot; width=&quot;350&quot; height=&quot;350&quot; style=&quot;border:0;&quot;&gt;\r\n			&lt;/iframe&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p&gt;\r\n		&lt;img style=&quot;display:block;margin-left:auto;margin-right:auto;&quot; src=&quot;http://localhost/buy_business/Public/Img/Buy/logo.png&quot; alt=&quot;logo for page&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;table class=&quot;infotable&quot; style=&quot;margin:20px;&quot; align=&quot;center&quot;&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;th style=&quot;text-align:center;&quot; colspan=&quot;2&quot;&gt;\r\n					&lt;div style=&quot;font-family:''arial black'', ''avant garde'';text-align:left;&quot;&gt;\r\n						&lt;strong&gt;&lt;span style=&quot;font-size:28px;color:#ff0000;&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;熱線:&lt;span style=&quot;font-size:21px;&quot;&gt;&lt;strong style=&quot;font-family:''arial black'', ''avant garde'';text-align:center;&quot;&gt;&lt;span style=&quot;color:#ff0000;&quot;&gt;(&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:21px;&quot;&gt;852) 8108 0303&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; &lt;/strong&gt; \r\n					&lt;/div&gt;\r\n				&lt;/th&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;p&gt;\r\n						&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/phone.png&quot; alt=&quot;phone&quot; /&gt;電話:\r\n					&lt;/p&gt;\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					(852) 3188 2898\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;p&gt;\r\n						&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/fax.png&quot; alt=&quot;fax&quot; width=&quot;16&quot; height=&quot;16&quot; /&gt;Fax:\r\n					&lt;/p&gt;\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					(852) 3585 0003\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;p&gt;\r\n						&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/map.png&quot; alt=&quot;map&quot; /&gt;地址:\r\n					&lt;/p&gt;\r\n				&lt;/th&gt;\r\n				&lt;td style=&quot;font-size:14px;&quot;&gt;\r\n					九龍觀塘勵業街9號 同利大廈10樓1006室 (牛頭角鐵路站B6出口)\r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;p&gt;\r\n						&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/email.png&quot; alt=&quot;email&quot; /&gt;電郵:\r\n					&lt;/p&gt;\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n &lt;!--\r\n var prefix = ''&amp;#109;a'' + ''i&amp;#108;'' + ''&amp;#116;o'';\r\n var path = ''hr'' + ''ef'' + ''='';\r\n var addy37856 = ''&amp;#101;nq&amp;#117;&amp;#105;ry'' + ''&amp;#64;'';\r\n addy37856 = addy37856 + ''b&amp;#117;yb&amp;#117;s&amp;#105;n&amp;#101;ss'' + ''&amp;#46;'' + ''c&amp;#111;m'' + ''&amp;#46;'' + ''hk'';\r\n var addy_text37856 = ''&amp;#101;nq&amp;#117;&amp;#105;ry'' + ''&amp;#64;'' + ''b&amp;#117;yb&amp;#117;s&amp;#105;n&amp;#101;ss'' + ''&amp;#46;'' + ''c&amp;#111;m'' + ''&amp;#46;'' + ''hk'';\r\n document.write(''&lt;a '' + path + ''\\'''' + prefix + '':'' + addy37856 + ''\\''&gt;'');\r\n document.write(addy_text37856);\r\n document.write(''&lt;\\/a&gt;'');\r\n //--&gt;\\n &lt;/script&gt;\r\n&lt;a href=&quot;mailto:enquiry@buybusiness.com.hk&quot;&gt;enquiry@buybusiness.com.hk&lt;/a&gt; \r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n &lt;!--\r\n document.write(''&lt;span style=\\''display: none;\\''&gt;'');\r\n //--&gt;\r\n &lt;/script&gt;\r\n&lt;span style=&quot;display:none;&quot;&gt;Email住址會使用灌水程式保護機制。你需要啟動Javascript才能觀看它\r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n &lt;!--\r\n document.write(''&lt;/'');\r\n document.write(''span&gt;'');\r\n //--&gt;\r\n &lt;/script&gt;\r\n&lt;/span&gt; \r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;th&gt;\r\n					&lt;p&gt;\r\n						&lt;img src=&quot;http://localhost/buy_business/Public/Img/Buy/web.png&quot; alt=&quot;web&quot; /&gt;網址:\r\n					&lt;/p&gt;\r\n				&lt;/th&gt;\r\n				&lt;td&gt;\r\n					&lt;a href=&quot;http://218.255.227.19:8110/buynew&quot;&gt;www.buybusiness.com.hk&lt;/a&gt; \r\n				&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;\r\n	&lt;h4&gt;\r\n		歡迎閣下的寶貴意見\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;致力為客戶提供優質&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;服務，我們一直以各種形式與客戶保持緊密的聯繫，我們樂於聽取客戶的意見，從而令我們的服務更臻完善。閣下可透過下列電郵向我們反映意見，我們將盡可能於接獲閣下意見後盡快回覆，閣下的意見均會向管理層反映。\r\n	&lt;/p&gt;\r\n	&lt;div class=&quot;con_form&quot;&gt;\r\n		&lt;form action=&quot;index.php?c=Index&amp;amp;a=contactSubmit&quot; onsubmit=&quot;return check_form(''guestname|guesttel|guestemail'');&quot; name=&quot;Enquiry_Email&quot; id=&quot;chronoform_Enquiry_Email&quot; method=&quot;post&quot; class=&quot;hasValidation&quot;&gt;\r\n			&lt;div class=&quot;jshop_cat_con&quot;&gt;\r\n				&lt;table width=&quot;100%&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;enquiry_form&quot;&gt;\r\n					&lt;tbody&gt;\r\n						&lt;tr&gt;\r\n							&lt;td align=&quot;center&quot; class=&quot;icon&quot;&gt;\r\n								&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n							&lt;/td&gt;\r\n							&lt;td align=&quot;right&quot; class=&quot;tit&quot;&gt;\r\n								&lt;b&gt;姓名&lt;/b&gt; \r\n							&lt;/td&gt;\r\n							&lt;td&gt;\r\n								&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;guestname_container_div&quot;&gt;\r\n									&lt;label for=&quot;guestname&quot;&gt;&amp;nbsp;&lt;/label&gt; &lt;input id=&quot;guestname&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;guestname&quot; /&gt; \r\n									&lt;div class=&quot;clear&quot;&gt;\r\n									&lt;/div&gt;\r\n									&lt;div id=&quot;error-message-guestname&quot;&gt;\r\n									&lt;/div&gt;\r\n								&lt;/div&gt;\r\n							&lt;/td&gt;\r\n						&lt;/tr&gt;\r\n						&lt;tr&gt;\r\n							&lt;td align=&quot;center&quot; class=&quot;icon&quot;&gt;\r\n								&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n							&lt;/td&gt;\r\n							&lt;td align=&quot;right&quot; class=&quot;tit&quot;&gt;\r\n								&lt;b&gt;聯繫電話&lt;/b&gt; \r\n							&lt;/td&gt;\r\n							&lt;td&gt;\r\n								&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;guesttel_container_div&quot;&gt;\r\n									&lt;label for=&quot;guesttel&quot;&gt;&amp;nbsp;&lt;/label&gt; &lt;input id=&quot;guesttel&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''number'',''phone'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;guesttel&quot; /&gt; \r\n									&lt;div class=&quot;clear&quot;&gt;\r\n									&lt;/div&gt;\r\n									&lt;div id=&quot;error-message-guesttel&quot;&gt;\r\n									&lt;/div&gt;\r\n								&lt;/div&gt;\r\n							&lt;/td&gt;\r\n						&lt;/tr&gt;\r\n						&lt;tr&gt;\r\n							&lt;td align=&quot;center&quot; class=&quot;icon&quot;&gt;\r\n								&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n							&lt;/td&gt;\r\n							&lt;td align=&quot;right&quot; class=&quot;tit&quot;&gt;\r\n								&lt;b&gt;電郵&lt;/b&gt; \r\n							&lt;/td&gt;\r\n							&lt;td&gt;\r\n								&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;guestemail_container_div&quot;&gt;\r\n									&lt;label for=&quot;guestemail&quot;&gt;&amp;nbsp;&lt;/label&gt; &lt;input id=&quot;guestemail&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''email'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;guestemail&quot; /&gt; \r\n									&lt;div class=&quot;clear&quot;&gt;\r\n									&lt;/div&gt;\r\n									&lt;div id=&quot;error-message-guestemail&quot;&gt;\r\n									&lt;/div&gt;\r\n								&lt;/div&gt;\r\n							&lt;/td&gt;\r\n						&lt;/tr&gt;\r\n						&lt;tr&gt;\r\n							&lt;td align=&quot;center&quot; class=&quot;icon&quot;&gt;\r\n								&amp;nbsp;\r\n							&lt;/td&gt;\r\n							&lt;td align=&quot;right&quot; class=&quot;tit&quot;&gt;\r\n								&lt;b&gt;其它意見&lt;/b&gt; \r\n							&lt;/td&gt;\r\n							&lt;td&gt;\r\n								&lt;div class=&quot;ccms_form_element cfdiv_textarea&quot; id=&quot;other_container_div&quot;&gt;\r\n									&lt;label for=&quot;other&quot;&gt;&amp;nbsp;&lt;/label&gt; &lt;textarea id=&quot;other&quot; cols=&quot;45&quot; rows=&quot;12&quot; class=&quot;&quot; title=&quot;&quot; name=&quot;other&quot; style=&quot;margin:13px 2px 5px;width:332px;height:60px;&quot;&gt;&lt;/textarea&gt; \r\n									&lt;div class=&quot;clear&quot;&gt;\r\n									&lt;/div&gt;\r\n									&lt;div id=&quot;error-message-other&quot;&gt;\r\n									&lt;/div&gt;\r\n								&lt;/div&gt;\r\n							&lt;/td&gt;\r\n						&lt;/tr&gt;\r\n					&lt;/tbody&gt;\r\n				&lt;/table&gt;\r\n				&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_51_container_div&quot;&gt;\r\n					&lt;textarea name=&quot;jshop_value&quot; class=&quot;jshop_value&quot; style=&quot;display:none;&quot;&gt;&lt;/textarea&gt; \r\n					&lt;div class=&quot;clear&quot;&gt;\r\n					&lt;/div&gt;\r\n					&lt;div id=&quot;error-message-input_text_5&quot;&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;ccms_form_element cfdiv_submit&quot; id=&quot;id1_container_div&quot;&gt;\r\n					&lt;input name=&quot;&quot; class=&quot;enquiry_bottom&quot; value=&quot;傳送&quot; type=&quot;submit&quot; /&gt; &amp;nbsp; &lt;input type=&quot;reset&quot; name=&quot;reset&quot; value=&quot;重寫&quot; class=&quot;enquiry_bottom&quot; /&gt; \r\n					&lt;div class=&quot;clear&quot;&gt;\r\n					&lt;/div&gt;\r\n					&lt;div id=&quot;error-message-&quot;&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;ccms_form_element cfdiv_empty&quot; id=&quot;empty_container_div&quot;&gt;\r\n					&lt;div class=&quot;clear&quot;&gt;\r\n					&lt;/div&gt;\r\n					&lt;div id=&quot;error-message-empty&quot;&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;pcontent_bottom&quot;&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n&lt;input type=&quot;hidden&quot; name=&quot;b77e58a682964b25953039bdd1c226e4&quot; value=&quot;1&quot; /&gt; \r\n		&lt;/form&gt;\r\n		&lt;div class=&quot;chronoform&quot;&gt;\r\n			&lt;a href=&quot;http://www.chronoengine.com&quot;&gt;Powered By ChronoForms - ChronoEngine.com&lt;/a&gt; \r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;p class=&quot;label&quot;&gt;\r\n		歡迎瀏覽&lt;a href=&quot;http://localhost/buy_business/BuyBusiness.com.hk&quot;&gt;BuyBusiness.com.hk&lt;/a&gt;網站&lt;br /&gt;\r\n多謝閣下瀏覽本公司網站，如對本網站內容及服務有任何意見，歡迎填寫及以電郵傳送以下資料至\r\n	&lt;/p&gt;\r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n &lt;!--\r\n var prefix = ''&amp;#109;a'' + ''i&amp;#108;'' + ''&amp;#116;o'';\r\n var path = ''hr'' + ''ef'' + ''='';\r\n var addy96727 = ''cs'' + ''&amp;#64;'';\r\n addy96727 = addy96727 + ''b&amp;#117;yb&amp;#117;s&amp;#105;n&amp;#101;ss'' + ''&amp;#46;'' + ''c&amp;#111;m'' + ''&amp;#46;'' + ''hk'';\r\n document.write(''&lt;a '' + path + ''\\'''' + prefix + '':'' + addy96727 + ''\\''&gt;'');\r\n document.write(addy96727);\r\n document.write(''&lt;\\/a&gt;'');\r\n //--&gt;\\n &lt;/script&gt;\r\n&lt;a href=&quot;mailto:cs@buybusiness.com.hk&quot;&gt;cs@buybusiness.com.hk&lt;/a&gt; \r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n &lt;!--\r\n document.write(''&lt;span style=\\''display: none;\\''&gt;'');\r\n //--&gt;\r\n &lt;/script&gt;\r\n&lt;span style=&quot;display:none;&quot;&gt;Email住址會使用灌水程式保護機制。你需要啟動Javascript才能觀看它\r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n &lt;!--\r\n document.write(''&lt;/'');\r\n document.write(''span&gt;'');\r\n //--&gt;\r\n &lt;/script&gt;\r\n&lt;/span&gt;閣下之寶貴意見將有助我們作出改善。\r\n	&lt;p&gt;\r\n		&lt;br /&gt;\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0);

-- --------------------------------------------------------

--
-- 表的结构 `buy_project`
--

CREATE TABLE IF NOT EXISTS `buy_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL,
  `title_zh` varchar(255) NOT NULL,
  `title_cn` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `visible` varchar(4) NOT NULL,
  `hot_recomm` varchar(4) NOT NULL,
  `estate_recomm` varchar(4) NOT NULL,
  `small_business` varchar(4) NOT NULL,
  `first_choice` varchar(4) NOT NULL,
  `c_field` varchar(255) NOT NULL,
  `c_field1` varchar(255) NOT NULL,
  `c_field2` varchar(255) NOT NULL,
  `codename_zh` varchar(64) NOT NULL,
  `codename_cn` varchar(64) NOT NULL,
  `codename_en` varchar(64) NOT NULL,
  `c_area` varchar(255) NOT NULL,
  `c_area1` varchar(255) NOT NULL,
  `business_focus_zh` text NOT NULL,
  `business_focus_cn` text NOT NULL,
  `business_focus_en` text NOT NULL,
  `c_certificate` varchar(255) NOT NULL,
  `reason_zh` varchar(255) NOT NULL,
  `reason_cn` varchar(255) NOT NULL,
  `reason_en` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `store_zh` varchar(64) NOT NULL,
  `store_cn` varchar(64) NOT NULL,
  `store_en` varchar(64) NOT NULL,
  `turnover` int(11) NOT NULL,
  `profit_option` tinyint(4) NOT NULL,
  `profit` int(11) NOT NULL,
  `profit_text_zh` varchar(64) NOT NULL,
  `profit_text_cn` varchar(64) NOT NULL,
  `profit_text_en` varchar(64) NOT NULL,
  `recovery_period` float NOT NULL,
  `square` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `c_participation` varchar(255) NOT NULL,
  `c_location` varchar(255) NOT NULL,
  `c_transfer` varchar(255) NOT NULL,
  `c_metro` varchar(255) NOT NULL,
  `downpay` int(11) NOT NULL,
  `allowance` int(11) NOT NULL,
  `allowance_period` int(11) NOT NULL,
  `c_situation` int(11) NOT NULL,
  `investment` enum('HK$100,000或以下','HK$100,001-300,000','HK$300,001-500,000','HK$500,001-800,000','HK$800,001-1,500,000','HK$1,500,001-2,500,000','HK$2,500,000以上') NOT NULL,
  `status` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `POSITION` (`position`),
  KEY `C_FIELD` (`c_field`),
  KEY `PROFIT` (`profit_option`,`profit`),
  KEY `PRICE` (`price`),
  KEY `RECOVERY_PERIOD` (`recovery_period`),
  KEY `STATUS` (`status`),
  KEY `VISIBLE` (`visible`),
  KEY `HOT_RECOMM` (`hot_recomm`),
  KEY `ESTATE_RECOMM` (`estate_recomm`),
  KEY `SMALL_BUSINESS` (`small_business`),
  KEY `FIRST_CHOICE` (`first_choice`),
  KEY `C_PARTICIPATION` (`c_participation`),
  KEY `SQUARE` (`square`),
  KEY `RENT` (`rent`),
  KEY `C_FIELD1` (`c_field1`),
  KEY `C_FIELD2` (`c_field2`),
  KEY `C_AREA` (`c_area`),
  KEY `C_AREA1` (`c_area1`),
  KEY `TITLE_ZH` (`title_zh`),
  KEY `title_cn` (`title_cn`),
  KEY `title_en` (`title_en`),
  KEY `codename_zh` (`codename_zh`),
  KEY `codename_cn` (`codename_cn`),
  KEY `codename_en` (`codename_en`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `buy_projectphoto`
--

CREATE TABLE IF NOT EXISTS `buy_projectphoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- 转存表中的数据 `buy_projectphoto`
--

INSERT INTO `buy_projectphoto` (`id`, `title`, `pic`, `sid`, `status`, `pid`) VALUES
(34, '', '/projectphoto/20150416/552f506193302.jpg', 34, 1, 24),
(35, '', '/project/20150416/552f5045b121b.jpg', 35, 1, 24),
(36, '', '/projectphoto/20150416/552f509e4de3e.jpg', 36, 1, 25),
(37, '', '/projectphoto/20150416/552f50a1a6bc1.jpg', 37, 1, 25),
(38, '', '/projectphoto/20150416/552f50a789d18.jpg', 38, 1, 25),
(39, '', '/projectphoto/20150416/552f50a7c125e.jpg', 39, 1, 25),
(40, '', '/projectphoto/20150416/552f50aeae5a5.jpg', 40, 1, 25),
(41, '', '/projectphoto/20150416/552f50b5232ae.jpg', 41, 1, 25),
(42, '', '/project/20150416/552f509266069.jpg', 42, 1, 25),
(43, '', '/projectphoto/20150416/552f513e0c02a.jpg', 43, 1, 26),
(44, '', '/projectphoto/20150416/552f514126b1a.jpg', 44, 1, 26),
(45, '', '/project/20150416/552f5131cd07d.jpg', 45, 1, 26),
(46, '', '/projectphoto/20150416/552f527cc0251.jpg', 46, 1, 27),
(47, '', '/projectphoto/20150416/552f52802ae08.jpg', 47, 1, 27),
(48, '', '/projectphoto/20150416/552f528289951.jpg', 48, 1, 27),
(49, '', '/projectphoto/20150416/552f52842f801.jpg', 49, 1, 27),
(50, '', '/projectphoto/20150416/552f528dded70.jpg', 50, 1, 27),
(51, '', '/projectphoto/20150416/552f52905c266.jpg', 51, 1, 27),
(52, '', '/projectphoto/20150416/552f52924033f.jpg', 52, 1, 27),
(53, '', '/project/20150416/552f51e3387e5.jpg', 53, 1, 27),
(54, '', '/projectphoto/20150416/552f530ad3309.jpg', 54, 1, 28),
(55, '', '/projectphoto/20150416/552f530d03977.jpg', 55, 1, 28),
(56, '', '/projectphoto/20150416/552f530f19c6f.jpg', 56, 1, 28),
(57, '', '/projectphoto/20150416/552f53131b959.jpg', 57, 1, 28),
(58, '', '/projectphoto/20150416/552f53199dec8.jpg', 58, 1, 28),
(59, '', '/projectphoto/20150416/552f531bf1b97.jpg', 59, 1, 28),
(60, '', '/project/20150416/552f530278435.jpg', 60, 1, 28),
(61, '', '/project/20150416/552f536823c58.JPG', 61, 1, 29),
(62, '', '/projectphoto/20150416/552f540d87285.JPG', 62, 1, 29),
(63, '', '/projectphoto/20150416/552f540fc14d3.JPG', 63, 1, 29),
(64, '', '/projectphoto/20150416/552f540ba03f6.JPG', 64, 1, 29),
(65, '', '/projectphoto/20150416/552f5518a940a.JPG', 65, 1, 29),
(66, '', '/projectphoto/20150416/552f546f7e6a2.JPG', 66, 1, 29),
(67, '', '/projectphoto/20150416/552f546f95d7c.JPG', 67, 1, 29),
(68, '', '/projectphoto/20150416/552f547419a5b.JPG', 68, 1, 29),
(69, '', '/projectphoto/20150416/552f71b854f4f.jpg', 69, 1, 19),
(70, '', '/projectphoto/20150416/552f71eca1272.jpg', 70, 1, 20),
(71, '', '/projectphoto/20150416/552f71f075169.jpg', 71, 1, 20),
(72, '', '/projectphoto/20150416/552f71f807263.jpg', 72, 1, 20),
(73, '', '/projectphoto/20150416/552f71fa9bb24.jpg', 73, 1, 20),
(74, '', '/projectphoto/20150416/552f720371559.jpg', 74, 1, 20),
(75, '', '/projectphoto/20150416/552f7206580ab.jpg', 75, 1, 20),
(76, '', '/projectphoto/20150416/552f720f8c23a.jpg', 76, 1, 20),
(77, '', '/projectphoto/20150416/552f7216ea22f.jpg', 77, 1, 20),
(78, '', '/projectphoto/20150416/552f722f5400d.jpg', 78, 1, 20),
(79, '', '/projectphoto/20150416/552f7232266c8.jpg', 79, 1, 20),
(80, '', '/projectphoto/20150416/552f723054826.jpg', 80, 1, 20),
(81, '', '/projectphoto/20150416/552f723058a58.jpg', 81, 1, 20),
(82, '', '/projectphoto/20150416/552f7763c195e.jpg', 82, 1, 21),
(83, '', '/projectphoto/20150416/552f7768ac21f.jpg', 83, 1, 21),
(84, '', '/projectphoto/20150416/552f7787e3e47.jpg', 84, 1, 22),
(85, '', '/projectphoto/20150416/552f7789d29e2.jpg', 85, 1, 22),
(86, '', '/projectphoto/20150416/552f77ac454c1.jpg', 86, 1, 23),
(87, '', '/projectphoto/20150416/552f77adadbd6.jpg', 87, 1, 23),
(88, '', '/projectphoto/20150416/552f77b480b1d.jpg', 88, 1, 23),
(89, '', '/projectphoto/20150416/552f77b48a017.jpg', 89, 1, 23),
(90, '', '/projectphoto/20150416/552f77bc2d1de.jpg', 90, 1, 23),
(92, '', '/projectphoto/20150416/552f8c5596d53.jpg', 92, 1, 30),
(93, '', '/projectphoto/20150416/552f8c57b3ed7.jpg', 93, 1, 30),
(94, '', '/project/20150416/552f8c4bb3146.jpg', 94, 1, 30),
(95, '', '/projectphoto/20150416/552f8cd00c6ee.jpg', 95, 1, 31),
(96, '', '/projectphoto/20150416/552f8cd25c362.jpg', 96, 1, 31),
(97, '', '/projectphoto/20150416/552f8cd7a51c9.png', 97, 1, 31),
(98, '', '/projectphoto/20150416/552f8cd839173.jpg', 98, 1, 31),
(99, '', '/project/20150416/552f8cc22003a.jpg', 99, 1, 31);

-- --------------------------------------------------------

--
-- 表的结构 `buy_user`
--

CREATE TABLE IF NOT EXISTS `buy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acct_name` varchar(32) NOT NULL,
  `account` varchar(50) NOT NULL,
  `login_count` varchar(50) NOT NULL,
  `last_login_time` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `nickname` varchar(255) NOT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `buy_user`
--

INSERT INTO `buy_user` (`id`, `acct_name`, `account`, `login_count`, `last_login_time`, `password`, `status`, `nickname`, `last_login_ip`) VALUES
(1, 'CEO', 'admin', '222', '1437705921', 'b59c67bf196a4758191e42f76670ceba', 1, '', '127.0.0.1'),
(2, 'Manager', 'admin2', '3', '1437706124', '934b535800b1cba8f96a5d72f72f1611', 1, '', NULL),
(3, '', 'Danny Yeung', '', '', '4236e4b04826528c8b9901d80f5adef7', 0, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `buy_userb`
--

CREATE TABLE IF NOT EXISTS `buy_userb` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `current` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `buy_userb`
--

INSERT INTO `buy_userb` (`id`, `user`, `pass`, `created`, `current`, `last`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2012-10-09 16:22:02', '2014-12-22 07:28:41', '2014-11-23 07:32:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
