-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 02, 2015 at 09:44 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buy_business_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_banner`
--

CREATE TABLE IF NOT EXISTS `buy_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `buy_banner`
--

INSERT INTO `buy_banner` (`id`, `title`, `sid`, `url`) VALUES
(1, 'Banner for page contact us', 1, 'Public/Img/GC/banners/banner_contactus.png'),
(2, 'Banner for page client list', 2, 'Public/Img/GC/banners/banner_clientlist.png'),
(3, 'Banner for page what we do', 3, 'Public/Img/GC/banners/banner_whatwedo.png'),
(4, 'Banner for page who we are', 4, 'Public/Img/GC/banners/banner_whoweare.png'),
(5, 'Banner for home page', 80001, './Uploads/banners/20150416/552f9222c8c62.jpg'),
(6, 'Banner for home page', 80002, './Uploads/banners/20150416/552f8404a0dd4.jpg'),
(7, 'Banner for home page', 80003, './Uploads/banners/20150416/552f8412a7faa.jpg'),
(8, 'Banner for home page', 80004, './Uploads/banners/20150416/552f8422b9cf9.jpg'),
(9, 'Banner for home page', 80005, './Uploads/banners/20150416/552f842dd9909.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buy_category`
--

CREATE TABLE IF NOT EXISTS `buy_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `t` varchar(32) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `NAME` (`name`),
  KEY `TYPE` (`t`),
  KEY `POSITION` (`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

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
(8, '項目現況', '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `buy_page`
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
(1, '公司簡介', '關於我們 頁面管理', './Uploads/banners/20150710/559f87279044c.jpg', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;&lt;a href=&quot;http://localhost/buy_business/BuyBusiness.com.hk&quot;&gt;BuyBusiness.com.hk&lt;/a&gt;&lt;/strong&gt;為&lt;span class=&quot;highLight02&quot;&gt;創富易業務轉讓有限公司&lt;/span&gt;&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;(BuyBusinessLtd.)&lt;/strong&gt;旗下之網站，為創業人士及投資者提供專業的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;資訊平台，深受創業人士及投資者推崇。現時網站每天不斷更新，點擊率亦不斷上升。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;創富易業務轉讓有限公司&lt;/span&gt;&lt;/strong&gt;為天域國際投資控股有限公司&lt;br /&gt;\r\n&lt;strong&gt;(Sky Vision International Investment Holdings Ltd.)&lt;/strong&gt;全資附屬公司。始於2005，一直堅持為創業人士及投資者落實「創基立業、富裕人生、易如反掌」之理念，提供商業管理顧問服務及處理各項&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;事宜，致力提供專業全方位「業務轉讓」服務，務求讓創業人士及投資者能夠輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。&lt;br /&gt;\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(2, '熱門推介', '主頁管理', '', '&lt;h3&gt;熱門推介&lt;/h3&gt;', 1),
(3, '最新消息', '主頁管理', '', '&lt;h3&gt;最新消息&lt;/h3&gt;', 1),
(4, '主頁廣告', '主頁管理', '', '&lt;h3&gt;主頁廣告&lt;/h3&gt;', 1),
(5, '我們的價值觀', '關於我們 頁面管理', '', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h3&gt;\r\n		願景(Vision)\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		&lt;em&gt;“&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;，您的創富必然選擇”&lt;/em&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		致力在本港及海外主要市場成為最傑出的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;機構，成為業務東主、創業人士和投資者首選的「業務轉讓」專家和策略顧問機構。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		使命(Mission)\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		要實踐這個願景(Vision)，我們致力落實以下的使命(Mission):\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;em&gt;「為好買家尋找好生意•為好生意尋找好買家」！&lt;/em&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		並提供親切、專業和高效率的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;服務，致力推廣「業務轉讓」創業模式，提倡&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;之理念！\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		信念(Values)\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		在背後推動我們達成使命(Mission)的，是一套我們堅持的經營信念(Values)&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;&lt;/strong&gt;之經營信念(Values)-「以客為先」！貫徹承諾致力為每位客人提供最優質、最專業的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;服務，以配合客人不同之創富目標和需要，竭誠為客人實現個人夢想與抱負，即時輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		我們目標是要成為香港領先的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;機構，管理層及每位員工深明必須用心聆聽每位客人需要並以實務實幹、用心專注及不斷創新才可保持領導地位。作為買賣雙方首選之「業務轉讓」機構，我們致力提供最全面及達致國際級水平的「業務轉讓」服務。除了以高效率的運作流程和合理收費見稱外，與客戶的長遠良好互動關係亦一直為&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;&lt;/strong&gt;所自豪。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		加上，我們深明中立角色是&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;行業的獨立優勢，讓我們堅守不偏不倚的原則為買賣雙方處理各項「業務轉讓」事宜。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		我們深信&lt;strong&gt;&lt;span class=&quot;highLight02&quot;&gt;「創富易」&lt;/span&gt;&lt;/strong&gt;的每位員工是公司最重要的資產。故此，我們視員工為合作伙伴，並致力培育優秀人才。憑著我們團隊之實戰經驗及創新緊貼時代脈搏精神，融合專業管理及先進科技網络平台設施，致力提供專業、準確以及誠懇的優質服務，為買賣雙方提供最具效益的&lt;span class=&quot;highLight01&quot;&gt;「業務轉讓」&lt;/span&gt;方案。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		竭誠為客人實現夢想與抱負-&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;，是作為衡量我們成功的基準。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(6, '服務範圍', '關於我們 頁面管理', '', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;h4&gt;\r\n		嚴格挑選及發掘優質具潛力業務\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		讓買家能夠買入優質及極具潛力之生意業務，實現個人夢想與抱負，即時輕輕鬆鬆&lt;span class=&quot;highLight02&quot;&gt;「創富做老闆」&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		專業推介以客為尊\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問會細心聆聽買賣雙方之要求及需要，以雙方利益為依歸，為買賣雙方尋找最合適之業務轉讓對象，促成交易。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		「業務概覽」業務資料一目了然\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		由我們的「業務評審委員會」所撰寫的「業務概覽」，於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下向買家提供業務重點資料以作參考，讓買家了解業務，促成收購決定。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		「業務估值」確保售價合理\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		所有出讓項目均須由我們的「業務評審委員會」進行「業務估值」，讓買賣雙方於最合理價格下作出正確的交易決定。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		確保買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下洽談轉讓事宜\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		安排買賣雙方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情況下洽談業務轉讓事宜，避免影响現有顧客、供應商和影响員工士氣，確保現有業務繼續穩定經營。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		專業談判達致「雙嬴局面」\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業談判方式，能夠協助買賣雙方爭取於最合理情況下，達成最佳交易條件和價格，互惠互利將業務成功轉讓，達致「雙嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		「一站式」專業服務協助買賣雙方處理業務轉讓過程\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問及專業人仕會以不偏不倚及公平公正之原則下提供「一站式」服務，有系統地辦理各項業務轉讓事宜，以保障買賣雙方利益，將業務成功轉讓。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		售後服務倍感安心\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們的專業顧問憑著多年豐富經驗，誠意為買賣雙方提供售後顧問服務，務求令雙方於業務成功轉讓後平穩過渡。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		堅守「不成功不收費」原則\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我們堅守以客為先「不成功•不收費」原則，並以合理服務收費提供專業優質業務轉讓服務，致力協助買賣雙方將業務成功轉讓。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(7, '創富做老闆', '創富須知 頁面管理', '', '&lt;h3&gt;創富做老闆&lt;/h3&gt;', 1),
(8, '創業模式之比較', '創富須知 頁面管理', '', '&lt;h3&gt;創業模式之比較&lt;/h3&gt;', 1),
(9, '何謂「業務轉讓」', '創富須知 頁面管理', '', '&lt;h3&gt;何謂「業務轉讓」&lt;/h3&gt;', 1),
(10, '為何選擇業務轉讓', '創富須知 頁面管理', '', '&lt;h3&gt;為何選擇業務轉讓&lt;/h3&gt;', 1),
(11, '常見問題', '創富須知 頁面管理', '', '&lt;h3&gt;常見問題&lt;/h3&gt;', 1),
(12, '買家收購程序', '買家收購業務 頁面管理', './Uploads/banners/20150710/559f90d0ebb32.jpg', '&lt;p&gt;\r\n	收購程序可分為以下三個階段：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;mt10&quot;&gt;\r\n	&lt;img src=&quot;Public/zh/images/Buyers_01.jpg&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;C_003399&quot;&gt;\r\n	1.洽談了解準買家之「創富」目標推介合適業務\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	首先我們的專業顧問會跟各準買家洽談了解其「創富」目標，然後根據其投資預算、感興趣之業務及營運地點等要求，推介合適業務以作選擇。同時，讓各準買家了解購入業務之流程。\r\n          (準買家所提供的資料只用作尋找合適業務之用途，所有資料絕對保密。)\r\n&lt;/p&gt;\r\n&lt;p class=&quot;C_003399&quot;&gt;\r\n	2.簽署「保密協議」　提供「業務概覽」以作參考\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	因應賣家要求，各準買家需簽署一份「保密協議書」承諾不會對外洩露我們所提供之業務營運資料及數據。確保該業務能夠繼續穩定經營。然後，我們會根據準買家之要求，推介合適業務及提供「業務概覽」以作參考，讓準買家獲取該業務之初步日常營運資料及數據。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;C_003399&quot;&gt;\r\n	3.準買家進行「實地考察」　親身體驗業務實際營運\r\n&lt;/p&gt;\r\n&lt;p class=&quot;mb32&quot;&gt;\r\n	當準買家參考「業務概覽」後認為初步符合基本要求，我們的專業顧問便會安排及陪同準買家到該業務進行實地考察。由準買家親身體驗及了解該業務之周邊環境、日常營運模式、競爭對手及未來發展空間。我們跟準買家會以「顧客身份」進行實地考察，避免驚動員工而影響士氣。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;mt10&quot;&gt;\r\n	&lt;img src=&quot;Public/zh/images/Buyers_02.jpg&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;C_003399&quot;&gt;\r\n	1.買賣雙方會面　了解業務營運細節\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	當準買家完成「實地考察」後對該業務感興趣，我們便會安排買賣雙方會面，讓雙方直接洽談互相了解彼此要求。同時，讓準買家進一步了解該業務具體的日常運作細節及營運竅門。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;C_003399&quot;&gt;\r\n	2.磋商交易條件及價格　簽訂買賣協議書\r\n&lt;/p&gt;\r\n&lt;p class=&quot;mb32&quot;&gt;\r\n	於買賣雙方直接洽談期間，我們的專業顧問會盡力協助買賣雙方磋商交易條件及價格，爭取雙方最佳條件；同時，我們會根據雙方所共識的交易條款細節，草擬買賣協議書，務求雙方於最合理公平條件及感到滿意情況下取得共識簽訂買賣協議書，達致「雙嬴局面」。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;mt10&quot;&gt;\r\n	&lt;img src=&quot;Public/zh/images/Buyers_03.jpg&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;C_003399&quot;&gt;\r\n	處理各項「業務轉讓」事宜令業務順利移交\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	當雙方簽訂買賣協議書後，我們的專業顧問及專業人仕會堅守不偏不倚公平公正的原則下，即時為買賣雙方安排及處理各項「業務轉讓」交收事宜，以保障買賣雙方利益。透過專業獨立核數師核實該業務的財務資料，確保資料屬實。同時，我們亦會協助安排買方簽訂新租約及辦理相關牌照轉名手續，務求令業務順利移交。\r\n&lt;/p&gt;', 0),
(13, '為何選擇我們', '買家收購業務 頁面管理', '', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;p&gt;\r\n		「业务转让」是专业而严肃的课题，如果由个人独自办理，不单费时失事，更因买卖双方意见分歧，难以达成共识而导致交易取消。倘若稍一不慎，甚至会导致血本无归。\r\n	&lt;/p&gt;\r\n	&lt;h4&gt;\r\n		严格挑选及发掘优质具潜力业务\r\n	&lt;/h4&gt;\r\n	&lt;p&gt;\r\n		我们坚守「严格挑选及发掘优质具潜力业务」原则，务求让各买家以最快捷有效方式收购现有盈利及极具潜力之生意业务，实现个人梦想与抱负，轻轻鬆鬆「创富做老板」。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「一站式全方位」专业服务协助买卖双方处理业务转让过程\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业顾问及专业人仕会以不偏不倚及公平公正之原则下提供「一站式全方位」服务，有系统地办理各项业务转让事宜，以保障买卖双方利益，将业务成功转让。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「业务概览」业务资料一目了然\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		由我们的「业务评审委员会」所撰写的「业务概览」，於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下向买家提供业务重点资料以作参考，让买家了解业务，促成收购决定。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「业务估值」确保售价合理\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		所有出让项目均须由我们的「业务评审委员会」进行「业务估值」，让买卖双方於最合理价格下作出正确的交易决定。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		确保买卖双方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下洽谈转让事宜\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		安排买卖双方於&lt;span class=&quot;highLight04&quot;&gt;「保密」&lt;/span&gt;情况下洽谈业务转让事宜，避免影响现有顾客、供应商和影响员工士气，确保现有业务继续稳定经营。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		专业谈判达致「双嬴局面」\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业谈判方式，能够协助买卖双方争取於最合理情况下，达成最佳交易条件和价格，互惠互利将业务成功转让，达致「双嬴局面」。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		「一站式全方位」专业服务协助买卖双方处理业务转让过程\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业顾问及专业人仕会以不偏不倚及公平公正之原则下提供「一站式全方位」服务，有系统地办理各项业务转让事宜，以保障买卖双方利益，将业务成功转让。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		售后服务倍感安心\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们的专业顾问凭著多年丰富经验，诚意為买卖双方提供售后顾问服务，务求令双方於业务成功转让后平稳过渡。\r\n	&lt;/p&gt;\r\n	&lt;h3&gt;\r\n		坚守「不成功•不收费」原则\r\n	&lt;/h3&gt;\r\n	&lt;p&gt;\r\n		我们坚守「不成功•不收费」原则，并以合理服务收费提供专业优质业务转让服务，致力协助买卖双方将业务成功转让。\r\n	&lt;/p&gt;\r\n&lt;/div&gt;', 0),
(14, '買家查詢', '買家收購業務 頁面管理', '', '&lt;div class=&quot;article-info&quot;&gt;\r\n	&lt;div class=&quot;Contact_Us&quot;&gt;\r\n		&lt;div class=&quot;ch&quot;&gt;\r\n			阁下如有任何查询，欢迎填写及传送以下资料。如需跟进，我们将尽可能於接获阁下意见后尽快回复。\r\n		&lt;/div&gt;\r\n		&lt;p&gt;\r\n			&amp;nbsp;\r\n		&lt;/p&gt;\r\n&lt;br /&gt;\r\n		&lt;form action=&quot;index.php?c=Index&amp;amp;a=BuyersQuery&quot; onsubmit=&quot;return check_form(''input-name|input-email|input-tel'');&quot; name=&quot;sellerInquiries&quot; id=&quot;chronoform_sellerInquiries&quot; method=&quot;post&quot; class=&quot;hasValidation&quot;&gt;\r\n			&lt;table width=&quot;100%&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;enquiry_form&quot; style=&quot;width:520px;margin-left:32px;&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td width=&quot;10&quot; align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td width=&quot;110&quot; align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;姓名&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_11_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-name&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_1&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_1&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;電郵&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_21_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-email&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''email'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_2&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_2&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;span class=&quot;required&quot;&gt;* &lt;/span&gt; \r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;電話號碼&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_31_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-tel&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot; validate[''required'',''number'']&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_3&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_3&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;意見&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_text&quot; id=&quot;input_text_141_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-suggest&quot; maxlength=&quot;150&quot; size=&quot;30&quot; class=&quot;&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_text_14&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_text_14&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;最方便之聯絡時間&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_datetime&quot; id=&quot;input_datetime_151_container_div&quot;&gt;\r\n								&lt;input id=&quot;input-contact-date&quot; maxlength=&quot;150&quot; size=&quot;16&quot; class=&quot;cf_date_picker&quot; title=&quot;&quot; type=&quot;text&quot; value=&quot;&quot; name=&quot;input_datetime_15&quot; /&gt; \r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_datetime_15&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;tr&gt;\r\n						&lt;td align=&quot;center&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&amp;nbsp;\r\n						&lt;/td&gt;\r\n						&lt;td align=&quot;right&quot; class=&quot;bcolor_f7f7f7&quot;&gt;\r\n							&lt;b&gt;日後透過電郵接收 &lt;a href=&quot;http://localhost/buy_business/BuyBusiness.com.hk&quot;&gt;BuyBusiness.com.hk&lt;/a&gt; 的最新資訊&lt;/b&gt; \r\n						&lt;/td&gt;\r\n						&lt;td&gt;\r\n							&lt;div class=&quot;ccms_form_element cfdiv_radio&quot; id=&quot;input_radio_191_container_div&quot;&gt;\r\n								&lt;input type=&quot;hidden&quot; name=&quot;input_radio_19&quot; value=&quot;&quot; alt=&quot;ghost&quot; /&gt; \r\n								&lt;div style=&quot;float:left;clear:none;&quot;&gt;\r\n									&lt;input type=&quot;radio&quot; name=&quot;input_radio_19&quot; id=&quot;input_radio_19_0&quot; title=&quot;&quot; value=&quot;Yes&quot; class=&quot;validate[''required'']&quot; /&gt; &lt;label for=&quot;input_radio_19_0&quot;&gt;同意&lt;/label&gt; \r\n								&lt;/div&gt;\r\n								&lt;div class=&quot;clear&quot;&gt;\r\n								&lt;/div&gt;\r\n								&lt;div id=&quot;error-message-input_radio_19&quot;&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;div style=&quot;padding-left:180px;margin-top:15px;&quot;&gt;\r\n				&lt;div class=&quot;ccms_form_element cfdiv_submit&quot; id=&quot;input_submit_51_container_div&quot; style=&quot;text-align:left;&quot;&gt;\r\n					&lt;input name=&quot;input_submit_5&quot; class=&quot;enquiry_bottom&quot; value=&quot;傳送&quot; type=&quot;submit&quot; /&gt;&amp;nbsp;&lt;input type=&quot;reset&quot; name=&quot;reset&quot; value=&quot;重寫&quot; class=&quot;enquiry_bottom&quot; /&gt; \r\n					&lt;div class=&quot;clear&quot;&gt;\r\n					&lt;/div&gt;\r\n					&lt;div id=&quot;error-message-input_submit_5&quot;&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n&lt;input type=&quot;hidden&quot; name=&quot;142d3311098ee88c333fd9eee6f4e4a9&quot; value=&quot;1&quot; /&gt; \r\n		&lt;/form&gt;\r\n		&lt;div class=&quot;chronoform&quot;&gt;\r\n			&lt;a href=&quot;http://www.chronoengine.com&quot;&gt;Powered By ChronoForms - ChronoEngine.com&lt;/a&gt; \r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;', 0),
(15, '賣家出讓程序', '賣家出讓業務 頁面管理', '', '&lt;h3&gt;賣家出讓程序&lt;/h3&gt;', 1),
(16, '業務估值', '賣家出讓業務 頁面管理', '', '&lt;h3&gt;業務估值&lt;/h3&gt;', 1),
(17, '為何選擇我們', '賣家出讓業務 頁面管理', '', '&lt;h3&gt;為何選擇我們&lt;/h3&gt;', 1),
(18, '賣家查詢', '賣家出讓業務 頁面管理', '', '&lt;h3&gt;賣家查詢&lt;/h3&gt;', 1),
(19, '開業資料庫', '營商須知 頁面管理', '', '&lt;h3&gt;開業資料庫&lt;/h3&gt;', 1),
(20, '營商資料庫', '營商須知 頁面管理', '', '&lt;h3&gt;營商資料庫&lt;/h3&gt;', 1),
(21, '相關連結', '相關連結 頁面管理', '', '&lt;h3&gt;相關連結&lt;/h3&gt;', 1),
(22, '聯絡我們', '聯絡我們 頁面管理', '', '&lt;h3&gt;聯絡我們&lt;/h3&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `buy_project`
--

CREATE TABLE IF NOT EXISTS `buy_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `visible` varchar(4) NOT NULL,
  `hot_recomm` varchar(4) NOT NULL,
  `estate_recomm` varchar(4) NOT NULL,
  `small_business` varchar(4) NOT NULL,
  `first_choice` varchar(4) NOT NULL,
  `c_field` int(11) NOT NULL,
  `c_field1` int(11) NOT NULL,
  `c_field2` int(11) NOT NULL,
  `codename` varchar(64) NOT NULL,
  `c_area` int(11) NOT NULL,
  `c_area1` int(11) NOT NULL,
  `business_focus` text NOT NULL,
  `c_certificate` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `store` varchar(64) NOT NULL,
  `turnover` int(11) NOT NULL,
  `profit_option` tinyint(4) NOT NULL,
  `profit` int(11) NOT NULL,
  `profit_text` varchar(64) NOT NULL,
  `recovery_period` float NOT NULL,
  `square` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `c_participation` int(11) NOT NULL,
  `c_location` int(11) NOT NULL,
  `c_transfer` int(11) NOT NULL,
  `c_metro` int(11) NOT NULL,
  `downpay` int(11) NOT NULL,
  `allowance` int(11) NOT NULL,
  `allowance_period` int(11) NOT NULL,
  `c_situation` int(11) NOT NULL,
  `investment` enum('HK$100,000或以下','HK$100,001-300,000','HK$300,001-500,000','HK$500,001-800,000','HK$800,001-1,500,000','HK$1,500,001-2,500,000','HK$2,500,000以上') NOT NULL,
  `status` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `POSITION` (`position`),
  KEY `TITLE` (`title`),
  KEY `C_FIELD` (`c_field`),
  KEY `CODENAME` (`codename`),
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
  KEY `INVESTMENT` (`investment`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `buy_projectphoto`
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
-- Dumping data for table `buy_projectphoto`
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
(1, 1, '', '', 0),
(2, 2, '', '', 0);

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
(1, '樓市「雙辣招」，投資者資金另覓新出路', '面對香港特區政府推出樓市「雙辣招」壓抑樓價，加上投資市場對美國聯儲局退市時間及加息周期而作出不同的預測，令大量投機資金準備退岀樓市，尋找資金新出路。由於受惠國內旅客帶動本港內銷市場(例如:餐飲業及零售業)，加上相關行業投資回報相對穩定可觀，從而吸引投資者把資金轉向投資收購生意(如餐飲業)，作為長遠投資工具。', 'www.baidu.com', './Uploads/document/559f685ad31cc.pdf', '2015-07-01 05:14:41', 1, '', 1),
(2, '測試添加2', '測試添加2\r\nhahaha\r\nHardy', 'TEST2', './Uploads/document/559f6637aa6b1.pdf', '2015-07-10 10:10:56', 2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `buy_user`
--

CREATE TABLE IF NOT EXISTS `buy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `login_count` varchar(50) NOT NULL,
  `last_login_time` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `nickname` varchar(255) NOT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `buy_user`
--

INSERT INTO `buy_user` (`id`, `account`, `login_count`, `last_login_time`, `password`, `status`, `nickname`, `last_login_ip`) VALUES
(1, 'admin', '164', '1432001401', 'b59c67bf196a4758191e42f76670ceba', 1, '', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `buy_userb`
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
-- Dumping data for table `buy_userb`
--

INSERT INTO `buy_userb` (`id`, `user`, `pass`, `created`, `current`, `last`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2012-10-10 00:22:02', '2014-12-22 15:28:41', '2014-11-23 15:32:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
