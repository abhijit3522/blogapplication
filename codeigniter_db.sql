-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 02:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `type`, `status`, `created_at`) VALUES
(25, 'Film', 1, 'product', 1, '2020-12-11 10:08:10'),
(26, 'Sports', 1, 'product', 1, '2020-12-11 10:08:32'),
(27, 'Technologhy', 1, 'product', 1, '2020-12-11 10:09:04'),
(28, 'Business', 1, 'product', 1, '2020-12-11 10:10:04'),
(29, 'Politics', 1, 'product', 1, '2020-12-11 10:10:29'),
(31, 'Abhijit', 1, '', 0, '2020-12-11 10:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `username`, `email`, `comment`, `comment_type`, `status`, `created_at`) VALUES
(1, 4, 'Astha Sharma', 'astha@yopmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a lobortis metus. Mauris eget turpis consectetur, gravida elit ac, gravida nibh. Maecenas massa eros, finibus id leo vitae, tempor tristique elit. Vestibulum vel nunc porttitor, feugiat quam nec, luctus justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ullamcorper at tellus non elementum. Fusce vestibulum magna odio, eget efficitur lacus mattis ut. Integer lacinia tortor id mattis porta. ', 'blog', 1, '2017-08-01 18:35:45'),
(2, 26, 'akshay khot', 'akki@gmail.com', 'nice blog', '', 0, '2020-12-11 09:59:45'),
(3, 20, 'cfv', 'nbjmbnvnv', 'vjnkmk,k', '', 0, '2020-12-11 10:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `faq_cat_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_cat_id`, `question`, `answer`, `datetime`, `status`) VALUES
(1, 7, 'How to uses', '<p>go to registration page and registred yourself...</p>\r\n', '2017-08-14 21:04:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `file_name`, `created_at`) VALUES
(39, 'gallery', '19120392_488748308124181_1356232594835898368_n.jpg', '0000-00-00 00:00:00'),
(40, 'gallery', '20066031_249507905540880_3425795962604355584_n.jpg', '0000-00-00 00:00:00'),
(41, 'gallery', '15877061_119553495224327_312221402042204160_n.jpg', '0000-00-00 00:00:00'),
(42, 'gallery', '16123278_175559819590919_7196532057399361536_n.jpg', '0000-00-00 00:00:00'),
(43, 'gallery', '16583116_1739753663021127_1111287715137060864_n.jpg', '0000-00-00 00:00:00'),
(44, 'gallery', '14574113_652781028238295_278229033701867520_n.jpg', '0000-00-00 00:00:00'),
(45, 'gallery', '15403505_270429253371351_6273410913949188096_n.jpg', '0000-00-00 00:00:00'),
(46, 'gallery', '15538121_1018367098290603_1806110868400766976_n.jpg', '0000-00-00 00:00:00'),
(47, 'gallery', '15538471_145984329220644_613923239470563328_n.jpg', '0000-00-00 00:00:00'),
(48, 'gallery', '15538718_217169452072899_4305560102691143680_n.jpg', '0000-00-00 00:00:00'),
(49, 'gallery', '15538789_241209666312136_5682089248384090112_n.jpg', '0000-00-00 00:00:00'),
(50, 'gallery', '15623741_814558755361976_817742299776679936_n.jpg', '0000-00-00 00:00:00'),
(51, 'gallery', '15625408_1148559301925971_939940647698169856_n.jpg', '0000-00-00 00:00:00'),
(53, 'gallery', '15802415_1849186702026963_3549623829707882496_n.jpg', '0000-00-00 00:00:00'),
(56, 'gallery', 'IMG_9388.JPG', '0000-00-00 00:00:00'),
(57, 'gallery', 'IMG_9169.JPG', '0000-00-00 00:00:00'),
(58, 'gallery', 'IMG_9093.JPG', '0000-00-00 00:00:00'),
(59, 'gallery', 'IMG_90931.JPG', '0000-00-00 00:00:00'),
(60, 'gallery', 'IMG_7927.JPG', '0000-00-00 00:00:00'),
(62, 'gallery', '20181220_122535(0).jpg', '0000-00-00 00:00:00'),
(63, 'gallery', '20190920_180858.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`id`, `page_name`, `content`, `datetime`, `updated_datetime`) VALUES
(1, 'About-Us', '<p>skdjshds dusdj sd sjd</p>\r\n', '0000-00-00 00:00:00', '2017-08-16 18:03:05'),
(2, 'Term And Condition', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Privacy policy', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Contact-Us', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `user_id`, `post_image`, `body`, `status`, `created_at`) VALUES
(6, 'Lorem Ipsum Blog Post', 'lorem-ipsum-blog-post', 3, 1, 'Jellyfish.jpg', '<p><em>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc</em>.</p>\r\n', 1, '2017-08-03 15:56:07'),
(8, 'Gym Management System', 'gym-management-system', 2, 1, 'ESP8266-NodeMCU-kit-12-E-pinout-gpio-pin.png', '<p>test</p>\r\n', 1, '2020-12-08 15:41:33'),
(11, 'Nozomi Okuhara clinches Women\'s Singles title at Denmark Open', 'nozomi-okuhara-clinches-womens-singles-title-at-denmark-open', 21, 10, 'download.jpg', '<p>In Badminton, former Japanese World Champion Nozomi Okuhara clinched the Denmark Open title beating three-time world champion Carolina Marin in women&#39;s singles. Highlights: &diams; The Japanese star took 56 minutes to get the better of the Olympic gold medallist Spaniard in two games 21-19, 21-17, at Odense.&nbsp; &diams; With reigning world champion PV Sindhu of India opting to sit out the event, two of her biggest rivals made it through to the final. &diams; In the men&#39;s singles final, world number seven Anders Antonsen of Denmark defeated his compatriot Rasmus Gemke by 18-21, 21-19, 21-12.&nbsp; &nbsp;&diams; In the mixed doubles, fourth seeds Mark Lamsfuss and Isabel Herttrich became the first German mixed doubles players to win a Super Series event after defeating Chris and Gabby Adcock of England in the final 18-21, 21-11, 21-14. &diams; In an all-Japan women&#39;s doubles final, top seeds Yuki Fukushima and Sayaka Hirota downed second seeds Mayu Matsumoto and Wakana Nagahara 21-10, 16-21, 21-18. &diams; Marcus Ellis and Chris Langridge of England defeated Russian pair Valdimir Ivanov and Ivan Sozonov 20-22, 21-17, 21-18, becoming the first England pair to clinch the title of men&#39;s doubles in the Denmark Open for 45 years.</p>\r\n', 0, '2020-12-09 07:49:23'),
(13, '\'Proud and at peace\', Parthiv Patel retires from competitive cricket', 'proud-and-at-peace-parthiv-patel-retires-from-competitive-cricket', 21, 10, 'down.jpg', '<p>Parthiv debuted in the year 2002 against England at Trent Bridge at 17 years and 153 days to become Test Cricket&#39;s youngest wicketkeeper. He had replaced the injured Ajay Ratra and eclipsed st wicketkeeper, previously held by Pakistan&#39;s Hanif Mohammed (17 years and 300 days). He played out an hour in the match while batting and hence saved India from defeat. However, with the emergence of Dhoni and poor wicketkeeping, he was sidelined for a few matches in 2004.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-12\">[12]</a></sup></p>\r\n\r\n<p><strong>Parthiv Ajay Patel</strong>&nbsp;(born 9 March 1985) is a former Indian&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cricket\">cricketer</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wicketkeeper\">wicketkeeper</a>-<a href=\"https://en.wikipedia.org/wiki/Batsman\">batsman</a>, and was a member of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Indian_national_cricket_team\">Indian national cricket team</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-1\">[1]</a></sup>&nbsp;He is a left-handed batsman. He plays for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gujarat\">Gujarat</a>&nbsp;in domestic cricket.</p>\r\n\r\n<p>Parthiv announced his retirement from all formats of International Cricket on 9 December, 2020.</p>\r\n\r\n<p>On 23 November 2016, Parthiv Patel was called up as a replacement for the regular wicket-keeper&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wriddhiman_Saha\">Wriddhiman Saha</a>&nbsp;who had a thigh strain, for the third Test (at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Punjab_Cricket_Association_IS_Bindra_Stadium\">Mohali</a>) of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/English_cricket_team_in_India_in_2016%E2%80%9317\">India-England home series</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-13\">[13]</a></sup>&nbsp;He played his first Test in eight years, having missed 83 Test matches between appearances.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-14\">[14]</a></sup></p>\r\n\r\n<p>Patel made his&nbsp;<a href=\"https://en.wikipedia.org/wiki/One_Day_International\">ODI</a>&nbsp;debut against&nbsp;<a href=\"https://en.wikipedia.org/wiki/New_Zealand_cricket_team\">New Zealand</a>&nbsp;in January 2003.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-15\">[15]</a></sup>&nbsp;He was selected in the Indian squad for the&nbsp;<a href=\"https://en.wikipedia.org/wiki/2003_Cricket_World_Cup\">2003 Cricket World Cup</a>&nbsp;but did not play any games, with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rahul_Dravid\">Rahul Dravid</a>&nbsp;being used as a makeshift wicket-keeper to allow the use of an extra batsman or bowler. With this policy in place, Patel only made intermittent appearances in ODIs, usually when Dravid was injured or being rested (in full or from wicket-keeping duties). He played 13 ODIs in a two-year span, and during an interrupted career managed only an average of 14.66 and a top-score of 28 and was dropped thereafter. Parthiv returned to the Indian team in 2010 in the 4th and 5th Odi vs New Zealand. He celebrated this moment by hitting two back to back half centuries. Later on he was called up for replacing injured Sachin Tendulkar in India tour South Africa .<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-16\">[16]</a></sup></p>\r\n\r\n<h3>Tour of West Indies 201</h3>\r\n', 0, '2020-12-09 08:04:36'),
(14, 'Ronaldo scores twice as Juve crush Messi\'s Barcelona to top CL group', 'ronaldo-scores-twice-as-juve-crush-messis-barcelona-to-top-cl-group', 21, 10, 'downloaddd.jpg', '<p><strong>BARCELONA</strong>: Cristiano&nbsp;<strong>Ronaldo</strong>&nbsp;struck&nbsp;<strong>twice</strong>&nbsp;from the penalty spot to win his battle with rival Lionel&nbsp;<strong>Messi</strong>&nbsp;and guide&nbsp;<strong>Juventus</strong>&nbsp;to a 3-0 win over&nbsp;<strong>Barcelona</strong>&nbsp;on Tuesday, earning the Italians&nbsp;<strong>top</strong>&nbsp;spot in&nbsp;<strong>Champions League Group</strong></p>\r\n\r\n<p>BARCELONA: Cristiano Ronaldo struck twice from the penalty spot to win his battle with rival Lionel Messi and information Juventus to a 3-0 win over Barcelona on Tuesday, incomes the Italians top spot in Champions League Group G.<br />\r\nThe former Real Madrid striker and his Argentina counterpart traded Ballon d&rsquo;Or wins for a decade between 2008-2017 and had been figureheads for the duelling Spanish giants, however there was just one winner on the Camp Nou as they met for the primary time since Ronaldo&rsquo;s departure for Juve in 2018.<br />\r\nAndrea Pirlo&rsquo;s Juventus misplaced 2-0 at residence in opposition to Barcelona in October with out Ronaldo, sidelined with Covid-19, however had been vastly improved and earned the primary Champions League away win in opposition to Barcelona since Bayern Munich triumphed in 2013.<br />\r\nBoth sides, tied on 15 factors, had been assured of qualification earlier than kick-off, however Juve&rsquo;s three-aim victory handed them a superior head-to-head file.</p>\r\n', 0, '2020-12-09 08:42:31'),
(15, 'Shiv Sena\'s Sanjay Raut slams BJP in Saamana column, says MVA govt will \'stay on\'', 'shiv-senas-sanjay-raut-slams-bjp-in-saamana-column-says-mva-govt-will-stay-on', 20, 10, 'downloadaaaa.jpg', '<p>The Shiv Sena MP made the remarks after former Maharashtra chief minister Devendra Fadnavis termed the ruling Maha Vikas Aghadi (MVA), which comprises the Shiv Sena, NCP and Congress, as an &#39;unnatural alliance&#39;</p>\r\n\r\n<p><strong>Mumbai:&nbsp;</strong>Shiv Sena MP Sanjay Raut on Sunday slammed the BJP for calling the MVA government in Maharashtra &quot;unnatural&quot;, and said a government is natural till it exists.</p>\r\n\r\n<p>In his weekly column &#39;&#39;Rokthok&#39;&#39; in the Sena mouthpiece &#39;&#39;Saamana&#39;&#39;, Raut recalled that during alliance talks last year, NCP chief Sharad Pawar and senior Congress leader Mallikarjun Kharge had a heated argument over the Assembly Speaker&#39;s post.</p>\r\n\r\n<p>&quot;He (Pawar) collected his papers and left the room in anger. I have never seen Pawar so angry,&quot; he said.</p>\r\n\r\n<p>Raut said the situation changed after that and the next day at dawn (on 23 November) BJP leader Devendra Fadnavis and NCP&#39;s Ajit Pawar took oath in a ceremony at Raj Bhavan.</p>\r\n\r\n<p>Their government collapsed within 80 hours.</p>\r\n\r\n<p>Last week, former Maharashtra chief minister Fadnavis termed the ruling Maha Vikas Aghadi (MVA), which comprises the Shiv Sena, NCP and Congress, as an &quot;unnatural alliance&quot;, and said the day this tie-up breaks, his party will give a strong government to the state.</p>\r\n\r\n<p>Reacting to it, Raut said, &quot;The BJP has been predicting the government&#39;s downfall and how it will be done depends on the secret activities and the central investigating agencies. Whatever the ED does, I say with responsibility that the MVA government will stay on.&quot;</p>\r\n\r\n<p>In politics, &quot;no one is a saint&quot; and no government is natural or unnatural, the Shiv Sena&#39;s chief spokesperson said.</p>\r\n\r\n<p>&quot;A government is natural till it is there. To destabilise it, agencies like the Central Bureau of Investigation (CBI) and the Enforcement Directorate (ED) are being used. Those doing illegal constructions and accused of abetment to suicide are being protected,&quot; he alleged.</p>\r\n\r\n<p>&quot;If these political pressure tactics are natural, then the &#39;&#39;Thackeray sarkar&#39;&#39; is also natural. The government has proved its majority on the floor of the House and is within constitutional norms,&quot; Raut said.</p>\r\n\r\n<p>He said if there were no&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;outbreak, floods, cyclones and lockdown difficulties, the situation in the state would have been different in the last one year.</p>\r\n\r\n<p>After the Maharashtra Assembly polls last year, the Shiv Sena snapped ties with long-term ally BJP over the issue of sharing the chief ministerial post in the state.</p>\r\n\r\n<p>Recalling last year&#39;s hectic parleys between the Sena, NCP and Congress to form a non-BJP government in the state, Raut said Sharad Pawar and Kharge had a heated argument over the Assembly Speaker&#39;s post in a meeting at Nehru Centre here.</p>\r\n\r\n<p>&quot;Khargeand others were firm that the post shouldn&#39;t go to the NCP. I have never seen Pawar so angry. He collected his papers and left the room in anger. Myself and (NCP leader) Praful Patel followed him,&quot; the Rajya Sabha member said.</p>\r\n\r\n<p>Raut recalled that Pawar had earlier in the meeting said Uddhav Thackeray will be the chief ministerial candidate of the alliance. &quot;But after his argument with Kharge, the situation changed.&quot;</p>\r\n\r\n<p>&quot;Ajit Pawar was chatting on his mobile for a long time in the room and later left. His mobile was switched-off and he was seen the next day at the swearing-in at the Raj Bhavan,&quot; Raut said.</p>\r\n\r\n<p>The Sena leader rejected Fadnavis&#39;s claim that Sharad Pawar and Union Home Minister Amit Shah had a meeting in Delhi where it was decided that the NCP will support the BJP following which the early morning swearing-in took place.</p>\r\n\r\n<p>&quot;There was a meeting at Amit Shah&#39;s place where a top industrialist and NCP leaders may have been present. But, Sharad Pawar was in no mood to have any deal with the BJP,&quot; the Sena leader claimed.</p>\r\n\r\n<p>&quot;He (Sharad Pawar) told me that &#39;offers are being made for a BJP government from various quarters. I will be meeting Prime Minister Narendra Modi and will tell him that an alliance with the BJP wasn&#39;t possible&#39;,&quot; he said.</p>\r\n\r\n<p>Later, Sharad Pawar met Modi on farmers&#39; issues and also clarified his position on the government formation in Maharashtra, he said.</p>\r\n\r\n<p>&quot;The real script of the political drama is still under cover and will always remain like that,&quot; Raut added</p>\r\n', 0, '2020-12-09 08:47:44'),
(16, 'Lok Sabha adjourned sine die after winter session, 16 bills passed', 'lok-sabha-adjourned-sine-die-after-winter-session-16-bills-passed', 20, 10, 'downloadfff.jpg', '<p>The monsoon session of Parliament, 2020 comes to an end.&nbsp; The session has been cut short by seven days amid concerns of the spread of coronavirus among lawmakers</p>\r\n\r\n<p>In today&#39;s proceedings, the Rajya Sabha&nbsp; passed the Jammu and Kashmir Official Languages Bill, the three labour codes, the Bilateral Netting of Qualified Financial Contracts Bill, the Foreign Contribution (Regulation) Amendment Bill; and returned The Appropriation (No.3) Bill, and Appropriation (No.4) Bill. The Lok Sabha passed the Major Port Authorities Bill, 2020.</p>\r\n\r\n<p>The Parliament&nbsp; functioned today sans Opposition parties. Opposition parties boycotted Parliament on Tuesday too,&nbsp;<a href=\"https://www.thehindu.com/news/national/opposition-to-boycott-rajya-sabha/article32666307.ece?homepage=true\" title=\"\">first walking out of Rajya Sabha</a>&nbsp;in the morning and later from Lok Sabha at around 4 p.m., protesting against the flawed&nbsp;<a href=\"https://www.thehindu.com/news/national/parliament-proceedings-rajya-sabha-passes-2-farm-bills-amid-ruckus-by-opposition-mps/article32652947.ece\" title=\"\">passage of the two farm bills</a>&nbsp;in the Upper House on Sunday that resulted in violent protests by Opposition members and suspension of eight MPs.</p>\r\n', 0, '2020-12-09 08:52:26'),
(17, 'Cannot disclose details of PM\'s flights as it relates to his security apparatus: IAF plea in HC', 'cannot-disclose-details-of-pms-flights-as-it-relates-to-his-security-apparatus-iaf-plea-in-hc', 20, 10, 'downloadeee.jpg', '<p>NEW DELHI: The Indian Air Force (<a href=\"https://economictimes.indiatimes.com/news/iaf-news\" target=\"_blank\">IAF</a>) moved a plea in the&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Delhi-High-Court\" target=\"_blank\">Delhi High Court</a>&nbsp;on Wednesday challenging a Central Information Commission (<a href=\"https://economictimes.indiatimes.com/topic/CIC\" target=\"_blank\">CIC</a>) direction&nbsp;to&nbsp;provide information regarding Special Flight Returns (SRF)-II, saying&nbsp;it&nbsp;relates&nbsp;to&nbsp;details&nbsp;of&nbsp;the Prime Minister&#39;s&nbsp;security&nbsp;apparatus&nbsp;and&nbsp;cannot&nbsp;be provided.<br />\r\n<br />\r\nThe IAF plea has claimed that the &quot;information so sought includes&nbsp;details&nbsp;related&nbsp;to&nbsp;the entire entourage, names&nbsp;of&nbsp;Special Protection Group (SPG) personnel accompanying the Prime Minister&nbsp;of&nbsp;India on foreign tours for&nbsp;his&nbsp;personal safety, and the same, if disclosed, can potentially affect the sovereignty and integrity&nbsp;of&nbsp;India, the&nbsp;security, strategic, scientific or economic interests&nbsp;of&nbsp;the State&quot;.<br />\r\n<br />\r\nThe petition, filed through central government senior panel counsel Rahul Sharma and advocate C K Bhatt, is in appeal against the CIC&#39;s July 8 direction&nbsp;to&nbsp;IAF&nbsp;to&nbsp;provide certified copies&nbsp;of&nbsp;available and relevant Special Flight Returns-ll&nbsp;to&nbsp;RTI applicant Commodore (retd) Lokesh K Batra.<br />\r\n<br />\r\nBatra had sought certified copies&nbsp;of&nbsp;SRF-I and SRF-II with regard&nbsp;to&nbsp;each foreign visit&nbsp;of&nbsp;former PM Manmohan Singh&nbsp;as&nbsp;also Prime Minister Narendera&nbsp;<a href=\"https://economictimes.indiatimes.com/news/narendra-modi\" target=\"_blank\">Modi</a>&nbsp;from April 2013 onwards.<br />\r\n<br />\r\nIAF, in its plea, claims that the CIC has &quot;failed&nbsp;to&nbsp;appreciate and consider that the information sought by the respondent (Batra) from the petitioner (Air Force)&nbsp;cannot&nbsp;be disclosed and the application&nbsp;of&nbsp;the respondent for seeking the same ought not&nbsp;to&nbsp;have been allowed&nbsp;as&nbsp;the information sought is extremely sensitive in nature...&quot;<br />\r\n<br />\r\nThe petition contends that the SRF copies sought relate&nbsp;to&nbsp;&quot;official records&nbsp;of&nbsp;functioning and working&nbsp;of&nbsp;the&nbsp;security&nbsp;apparatus&nbsp;of&nbsp;the Prime Minister&nbsp;of&nbsp;India which&nbsp;cannot&nbsp;be brought in public domain for safety and&nbsp;security&nbsp;reasons&quot;.</p>\r\n', 0, '2020-12-09 08:56:05'),
(18, 'On 15 years of Kalyug, Kunal Kemmu thanks Mohit Suri for the amazing opportunity', 'on-15-years-of-kalyug-kunal-kemmu-thanks-mohit-suri-for-the-amazing-opportunity', 19, 10, 'ddlg.jpg', '<h2>Kunal Kemmu shared a post on Instagram to celebrate 15 years of his film Kalyug. Apart from Kunal, the film starred Amrita Singh, Emraan Hashmi, Deepal Shaw and Ashutosh Rana in important roles.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mumbai, Dec 9 (PTI) Kunal Kemmu-starrer &quot;Kalyug&quot; on Wednesday completed 15 years and the actor said he is grateful to the makers for giving him a chance to be a part of this &quot;beautiful&quot; film.</p>\r\n\r\n<p>Kemmu started his career as a child actor in the 1990s with films such as &quot;Raja Hindustani&quot;, &quot;Dushman&quot;, and Mahesh Bhatt-directed &quot;Zakhm&quot; and &quot;Hum Hain Rahi Pyar Ke&quot;.</p>\r\n\r\n<p>He made his debut as a lead actor with 2005&#39;&#39;s &quot;Kalyug&quot;, which also launched Smilie Suri, older sister of director Mohit Suri in Bollywood. The movie was produced by Mahesh and Mukesh Bhatt.</p>\r\n\r\n<p>Written and directed by Mohit Suri, the film follows a young man (Kemmu), who sets out to exact revenge upon the porn industry after his wife (Smilie Suri) commits suicide due to the footage of their first night getting released on internet.</p>\r\n\r\n<p>&quot;On this Day 15 years ago!! Thank you @mohit11481 @MaheshNBhatt @VisheshFilms for giving me this amazing opportunity and this beautiful Film. What songs and what a cast and most importantly what an experience this one was. #15yearsofkalyug,&quot; Kemmu wrote.</p>\r\n\r\n<p>&quot;Kalyug&quot; was lauded for its plotline and the soundtrack with memorable songs &quot;Jiya Dhadak Dhadak Jaye&quot; and &quot;Aadat&quot;. The film also starred Emraan Hashmi, Amrita Singh, Ashutosh Rana and Deepal Shaw.</p>\r\n\r\n<p>Kemmu later starred in films like &quot;Traffic Signal&quot;, &quot;Golmaal 3&quot; and &quot;Go Goa Gone&quot;.</p>\r\n\r\n<p>The actor reunited with Mohit Suri for &quot;Malang&quot; which released earlier this year. PTI KKP RDS RDS</p>\r\n\r\n<hr />', 0, '2020-12-09 09:03:45'),
(19, 'Mulshi Pattern to be remade in three south Indian languages', 'mulshi-pattern-to-be-remade-in-three-south-indian-languages', 19, 10, 'mmmmm.jpg', '<p>&nbsp;</p>\r\n\r\n<p>In 2018, actor-writer-director&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Pravin-Tarde\">Pravin Tarde</a>&nbsp;created waves with his&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/directorial-Mulshi-Pattern\">directorial Mulshi Pattern</a>. The Marathi film turned out to be a one of the hits of that year and also resulted in talks for a Hindi remake. While we had recently written about the shooting for the Hindi version, titled&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Antim:-The-Final-Truth\">Antim: The Final Truth</a>, having begun, we have now learnt that&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Mulshi-Pattern\">Mulshi Pattern</a>&nbsp;is getting more remakes. The film highlighted the hardships faced by farmers who sold off their lands to builders and, due to no knowledge of savings, slipped into poverty soon after. It also spoke about the young generation from these farming families taking to crime.<br />\r\nSpeaking to us, Tarde shares, &ldquo;The movie is being remade in three south Indian languages- Telugu, Tamil and Kannada. I am working on the project with actor&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Dev-Gill\">Dev Gill</a>. Though I am not associated with the Hindi version (Mahesh Manjrekar is directing it with&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Aayush-Sharma\">Aayush Sharma</a>&nbsp;in the lead), I will be directing, writing and acting in the south versions.&rdquo;<br />\r\nWhen asked if audiences will relate to the movie down south, Tarde answers, &ldquo;Like Mulshi in Pune, the situation is the same with farmers from Bengaluru and Chennai where the IT parks and industries have been set up on erstwhile farm lands. The topic is relatable across the country.&rdquo; He also informs that most of the cast will remain the same as the Marathi version. &ldquo;I will play the role of an inspector, while the lead actors will be from the south industry,&rdquo; he says.</p>\r\n', 0, '2020-12-09 09:09:07'),
(20, 'Hollywood News Gal Gadot on Wonder Woman 1984: Hardest movie I ever shot Gal Gadot on Wonder Woman 1984: Hardest movie I ever shot', 'hollywood-news-gal-gadot-on-wonder-woman-1984-hardest-movie-i-ever-shot-gal-gadot-on-wonder-woman-1984-hardest-movie-i-ever-shot', 19, 10, 'hhh.jpg', '<h2>&quot;Most of the stuff you see in the film is real people doing the real thing, whether it is us or the stuntpeople,&quot; said Gal Gadot</h2>\r\n\r\n<p><strong>New Delhi:&nbsp;</strong></p>\r\n\r\n<p>Hollywood star Gal Gadot on Tuesday said the team of&nbsp;<em>Wonder Woman 1984</em>&nbsp;wanted to &quot;raise the bar&quot; with the upcoming superhero film, which has been the toughest acting job in her career till date.&nbsp;<em>Wonder Woman 1984</em>, a highly-anticipated follow-up to the 2017 DC superhero blockbuster, will see Gadot reprise her role as the Amazonian warrior Diana Prince/ Wonder Woman and director Patty Jenkins return at the helm. The sequel follows Wonder Woman facing two all-new foes: Max Lord, played by&nbsp;<em>Narcos</em>&nbsp;star Pedro Pascal, and The Cheetah aka Barbara Minerva, essayed by Kristen Wiig, known for&nbsp;<em>Bridesmaids</em>. Unlike other superhero movies that are heavily dependent on computer generated imagery (CGI) to execute high-octane stunt sequences,&nbsp;<em>Wonder Woman 1984</em>&nbsp;mostly has real people pulling off the choreography, Gadot said.</p>\r\n\r\n<p>&quot;Most of the stuff you see in the film is real people doing the real thing, whether it is us or the stuntpeople. When you see it in the movie, you can tell it&#39;s the real deal - be it the facial expressions, weight, movement and speed. It was the hardest movie I ever got to shoot by far but it was worth it,&quot; the actor told reporters at the film&#39;s virtual global press conference from Los Angeles.</p>\r\n\r\n<p>The 2017 original stand-alone film, which critics and audience felt was much needed in the male-dominated superhero space, followed Diana&#39;s journey as a sheltered Amazonian princess to a true warrior.&nbsp;<em>Wonder Woman</em>, both a critical and box office success, was received so favourably that there was no way the team was going to take any shortcuts, Gadot said.</p>\r\n\r\n<p>&quot;We wanted to raise the bar, give everything we have. We knew people were so much invested in and cared about the character,&quot; she said, adding she wasn&#39;t lucky enough to see a character like Woman Woman on screen while growing up. The final battle between Wonder Woman and Cheetah, Jenkins said, was one of the most unbelievably complex scenes for which they had to build an entire set from scratch. &quot;There was no stage big enough in the world to execute it. We had Cirque du Soleil performers practising the moves and show us what they are going to look like and these guys have to end up doing it,&quot; she added. The director said she and Gadot were clear from the outset that the fight scenes between Wonder Woman and Cheetah would be &quot;completely different&quot;. &quot;They had a friendship in the past, it&#39;s not about punching in the face. They are both trying to get the other one out of control. Narratively and spatially, it was fascinating, and executing it was long, laborious, and wild.&quot;</p>\r\n\r\n<p>&quot;Everything was well planned and intentional,&quot; added Wiig, who plays the awkward gemologist Barbara-turned-apex predator Cheetah. Mostly known for her comedic turns, Wiig said, playing a villain was a &quot;scary but fun experience&quot;. &quot;I don&#39;t really get asked to do these kinds of things. I&#39;m a superhero geek. I haven&#39;t done anything like this before. We really didn&#39;t want her to be a mousy girl turned villain. We wanted it to be - what is it about her that makes her so lonely, invisible and what does she want?&quot; she added.</p>\r\n\r\n<p>Pascal said he went through &quot;the Patty Jenkins experience&quot; while playing Maxwell, a charismatic businessman with a hidden agenda. &quot;It has to be complete, have all the risks, and humanity, no matter how dark the character is. I definitely didn&#39;t know if I&#39;d be able to get in there. I owe it to my director if it worked. &quot;It was scary and thrilling to do something that is a lot closer to me... the exposed desperation, instead of a brute with a moustache,&quot; he added.</p>\r\n', 0, '2020-12-09 09:13:02'),
(21, 'No model for sale, but India\'s small investors flock to Tesla stock', 'no-model-for-sale-but-indias-small-investors-flock-to-tesla-stock', 18, 10, 'ttt.jpg', '<p>MUMBAI: Mom-and-pop Indian investors increasingly buying U.S. stocks have been drawn to a company that has no presence in India so far: electric car maker&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Tesla-Inc.\" target=\"_blank\">Tesla Inc.</a><br />\r\n<br />\r\nIndians are placing bigger-than-ever bets on U.S. stocks this year as the American stock market has recovered faster than markets in India and other emerging nations following a crash sparked by the coronavirus pandemic.<br />\r\n<br />\r\nWhile firms such as&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Apple\" target=\"_blank\">Apple</a>,&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Amazon\" target=\"_blank\">Amazon</a>&nbsp;and Facebook - which have a significant presence in India - are popular among Indian investors venturing into U.S. stocks, data from brokerages shows Tesla has emerged as a new favourite.<br />\r\n<br />\r\nIndian brokerage&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Vested-Finance\" target=\"_blank\">Vested Finance</a>&nbsp;said its accounts held $2.5 million worth of Tesla stock in November, up from just $76,000 at March-end. Another brokerage firm, Stockal, said its clients&#39; Tesla holdings have quadrupled to $10 million during the period.<br />\r\n<br />\r\nTesla shares surged around 450 per cent during that time.</p>\r\n', 0, '2020-12-09 09:22:31'),
(22, 'PIL for regulating techfin firms like Facebook, Google, Amazon; HC seeks Centre, RBI stand   Read more at: https://economictimes.indiatimes.com/news/economy/policy/pil-for-regulating-techfin-firms-like-facebook-google-amazon-hc-seeks-centre-rbi-stand/arti', 'pil-for-regulating-techfin-firms-like-facebook-google-amazon-hc-seeks-centre-rbi-stand-read-more-at-httpseconomictimesindiatimescomnewseconomypolicypil-for-regulating-techfin-firms-like-facebook-google-amazon-hc-seeks-centre-rbi-standarti', 18, 10, 'bbbbbb).jpg', '<p>Fintech is the new buzzword in India&rsquo;s financial sector. Every company - be it a start-up or a prestigious financial institution&ndash;wants to have a piece of the pie. Interestingly, using technology to handle money has been a pet peeve of humanity since the 1900s.<br />\r\n<br />\r\nFrom the credit cards of the 1950s to the ATMs of the late 1960s to electronic trading by NASDAQ in the 1970s, technology has transformed the customer&rsquo;s relationship with banks. It took the Internet, a few decades later, for Fint&nbsp;..<br />\r\n&nbsp;</p>\r\n\r\n<p>Read more at:<br />\r\n<a href=\"https://economictimes.indiatimes.com/small-biz/policy-trends/why-the-wirecard-scandal-is-relevant-for-india-part-1-regulators-and-fintech-boom/articleshow/77945025.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst\">https://economictimes.indiatimes.com/small-biz/policy-trends/why-the-wirecard-scandal-is-relevant-for-india-part-1-regulators-and-fintech-boom/articleshow/77945025.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst</a></p>\r\n', 0, '2020-12-09 09:37:57'),
(23, 'FireEye hack: Cybersecurity firm says nation-state stole attacking tools', 'fireeye-hack-cybersecurity-firm-says-nation-state-stole-attacking-tools', 14, 10, 'mob.jpg', '<p>&nbsp;</p>\r\n\r\n<p>Prominent U.S. cybersecurity firm FireEye said Tuesday that foreign government hackers with &ldquo;world-class capabilities&rdquo; broke into its network and stole offensive tools it uses to probe the defenses of its thousands of customers, who include federal, state and local governments and top global corporations.</p>\r\n\r\n<p>The hackers &ldquo;primarily sought information related to certain government customers,&rdquo; FireEye CEO Kevin Mandia said in a statement, without naming them. He said there was no indication they got customer information from the company&#39;s consulting or breach-response businesses or threat-intelligence data it collects.</p>\r\n\r\n<p>FireEye is a major cybersecurity player &mdash; it responded to the Sony and Equifax data breaches and helped Saudi Arabia thwart an oil industry cyberattack &mdash; and has played a key role in identifying Russia as the protagonist in numerous aggressions in the burgeoning netherworld of global digital conflict.</p>\r\n\r\n<p>Neither Mandia nor a FireEye spokeswoman said when the company detected the hack or who might be responsible. But many in the cybersecurity community suspect Russia.</p>\r\n\r\n<p>&ldquo;I do think what we know of the operation is consistent with a Russian state actor,&quot; said former NSA hacker Jake Williams, president of Rendition Infosec. &ldquo;Whether or not customer data was accessed, it&rsquo;s still a big win for Russia.&rdquo;</p>\r\n\r\n<p>FireEye&#39;s Mandia said he had concluded that &quot;a nation with top-tier offensive capabilities&rdquo; was behind the attack.</p>\r\n\r\n<p>The stolen &ldquo;red team&rdquo; tools &mdash; which amount to real-world malware &mdash; could be dangerous in the wrong hands. FireEye said there&rsquo;s no indication they have been used maliciously. But cybersecurity experts say sophisticated nation-state hackers could modify them and wield them in the future against government or industry targets.</p>\r\n\r\n<p>The hack was the biggest blow to the U.S. cybersecurity community since a mysterious group known as the &ldquo;Shadow Brokers&rdquo; in 2016 released a trove of high-level hacking tools stolen from the National Security Agency. The U.S. believes North Korea and Russia capitalized on the stolen tools to unleash devastating global cyberattacks.</p>\r\n\r\n<p>The nation&rsquo;s Cybersecurity and Infrastructure Security Agency warned that &ldquo;unauthorized third-party users&rdquo; could similarly abuse FireEye&rsquo;s stolen red-team tools.</p>\r\n\r\n<p>Milpitas, California-based FireEye, which is publicly traded, said in Tuesday&#39;s statement that it had developed 300 countermeasures to protect customers and others from them and was making them immediately available.</p>\r\n\r\n<p>FireEye has been at the forefront of investigating state-backed hacking groups, including Russian groups trying to break into state and local governments in the U.S. that administer elections. It was credited with attributing to Russian military hackers mid-winter attacks in 2015 and 2016 on Ukraine&rsquo;s energy grid. Its threat hunters also have helped social media companies including Facebook identify malicious actors.</p>\r\n\r\n<p>Thomas Rid, a Johns Hopkins cyberconflict scholar, said that if the Kremlin were behind the hack it could have been seeking to learn what FireEye knows about Russia&rsquo;s global state-backed operations &mdash; doing counterintelligence. Or it might have seeking to retaliate against the U.S. government for measures including indicting Russian military hackers for meddling in the 2016 U.S. election and other alleged crimes. FireEye is, after all, a close U.S. government partner that has &ldquo;exposed many Russian operations,&quot; he said.</p>\r\n\r\n<p>FireEye said it is investigating the attack in coordination with the FBI and partners including Microsoft, which has its own cybersecurity team. Mandia said the hackers used &ldquo;a novel combination of techniques not witnessed by us or our partners in the past.&rdquo;</p>\r\n\r\n<p>Matt Gorham, assistant director of the FBI&#39;s cyber division, said the hackers&#39; &ldquo;high level of sophistication (was) consistent with a nation state.&rdquo;</p>\r\n\r\n<p>The U.S. government is &ldquo;focused on imposing risk and consequences on malicious cyber actors, so they think twice before attempting an intrusion in the first place,&rdquo; Gorham said. That has included what U.S. Cyber Command terms &ldquo;defending forward&rdquo; operations such as penetrated the networks of Russia and other adversaries.</p>\r\n\r\n<p>U.S. Sen. Mark Warner, a Virginia Democrat on the Senate&rsquo;s intelligence committee, applauded FireEye for quickly disclosing the intrusion, saying the case &quot;shows the difficulty of stopping determined nation-state hackers.&rdquo;</p>\r\n\r\n<p>Cybersecurity expert Dmitri Alperovitch said security companies like FireEye are top targets, with big names in the field including Kaspersky and Symantec breached in the past.</p>\r\n\r\n<p>&ldquo;Every security company is being targeted by nation-state actors. This has been going on got over a decade now,&rdquo; said Alperovitch, the co-founder and former chief technical officer of Crowdstrike, which investigated the 2016 Russian hack of the Democratic National Committee and Hillary Clinton&#39;s campaign.</p>\r\n', 0, '2020-12-09 10:28:03'),
(24, 'Artificial Intelligence', 'artificial-intelligence', 14, 10, 'artif.jpg', '<p><a href=\"https://www.upgrad.com/blog/data/artificial-intelligence/\">Artificial intelligence</a> (AI) is the technology used for equipping computer systems with the ability to make decisions like humans. Being one of the trending technologies, when AI programs are fed to systems, the aim is to mimic human intelligence for performing complex tasks such as pattern recognition, speech recognition, weather forecast and medical diagnosis.</p>\r\n', 0, '2020-12-09 10:37:29'),
(25, 'Data Science', 'data-science', 14, 10, 'datas.jpg', '<p>Next up in the list of&nbsp;latest technology&nbsp;concepts is not surprisingly&nbsp;Data Science. Data Science is the technology that helps to make sense of complicated data. You know that data is produced in a humungous amount every day by companies. This includes business data, sales data, customer profile information, server data, and financial figures.&nbsp;</p>\r\n', 0, '2020-12-09 10:39:09'),
(26, 'Online business & personal development  Support Indian App', 'online-business-personal-development-support-indian-app', 18, 10, 'osmose.jpg', '<p>Osmose Technology Private Limited is a Private incorporated on 24 December 2019. It is classified as Non-govt company and is registered at Registrar of Companies, Pune. Its authorized share capital is Rs. 500,000 and its paid up capital is Rs. 10,000. It is inolved in Other computer related activities [for example maintenance of websites of other firms/ creation of multimedia presentations for other firms etc.]<br />\r\n<br />\r\nOsmose Technology Private Limited&#39;s Annual General Meeting (AGM) was last held on N/A and as per records from Ministry of Corporate Affairs (MCA), its balance sheet was last filed on N/A.<br />\r\n<br />\r\nDirectors of Osmose Technology Private Limited are Shubhangi Vaibhav Pataskar, Prashant Ramchandra Roundale and Vijay Baburao Mahajan.<br />\r\n<br />\r\nOsmose Technology Private Limited&#39;s Corporate Identification Number is (CIN) U72900PN2019PTC188640 and its registration number is 188640.Its Email address is acc.osmosetech@gmail.com and its registered address is Office No. 4D/E, S.NO. 17/1B P.NO. 14, Devgiri Area, Kothrud Pune Pune MH 411038 IN&nbsp;</p>\r\n', 0, '2020-12-09 10:47:23'),
(33, 'Online business & personal development Support Indian App', 'online-business-personal-development-support-indian-app', 18, 1, 'osmose.jpg', '<p>Osmose Technology Private Limited is a Private incorporated on 24 December 2019. It is classified as Non-govt company and is registered at Registrar of Companies, Pune. Its authorized share capital is Rs. 500,000 and its paid up capital is Rs. 10,000. It is inolved in Other computer related activities [for example maintenance of websites of other firms/ creation of multimedia presentations for other firms etc.]<br />\r\n<br />\r\nOsmose Technology Private Limited&#39;s Annual General Meeting (AGM) was last held on N/A and as per records from Ministry of Corporate Affairs (MCA), its balance sheet was last filed on N/A.<br />\r\n<br />\r\nDirectors of Osmose Technology Private Limited are Shubhangi Vaibhav Pataskar, Prashant Ramchandra Roundale and Vijay Baburao Mahajan.<br />\r\n<br />\r\nOsmose Technology Private Limited&#39;s Corporate Identification Number is (CIN) U72900PN2019PTC188640 and its registration number is 188640.Its Email address is acc.osmosetech@gmail.com and its registered address is Office No. 4D/E, S.NO. 17/1B P.NO. 14, Devgiri Area, Kothrud Pune Pune MH 411038 IN&nbsp;</p>\r\n', 0, '2020-12-11 10:16:43'),
(34, 'Online business & personal development Support Indian App', 'online-business-personal-development-support-indian-app', 28, 1, 'osmose.jpg', '<p>Osmose Technology Private Limited is a Private incorporated on 24 December 2019. It is classified as Non-govt company and is registered at Registrar of Companies, Pune. Its authorized share capital is Rs. 500,000 and its paid up capital is Rs. 10,000. It is inolved in Other computer related activities [for example maintenance of websites of other firms/ creation of multimedia presentations for other firms etc.]<br />\r\n<br />\r\nOsmose Technology Private Limited&#39;s Annual General Meeting (AGM) was last held on N/A and as per records from Ministry of Corporate Affairs (MCA), its balance sheet was last filed on N/A.<br />\r\n<br />\r\nDirectors of Osmose Technology Private Limited are Shubhangi Vaibhav Pataskar, Prashant Ramchandra Roundale and Vijay Baburao Mahajan.<br />\r\n<br />\r\nOsmose Technology Private Limited&#39;s Corporate Identification Number is (CIN) U72900PN2019PTC188640 and its registration number is 188640.Its Email address is acc.osmosetech@gmail.com and its registered address is Office No. 4D/E, S.NO. 17/1B P.NO. 14, Devgiri Area, Kothrud Pune Pune MH 411038 IN&nbsp;</p>\r\n', 0, '2020-12-11 10:17:59'),
(35, 'PIL for regulating techfin firms like Facebook, Google, Amazon; HC seeks Centre, RBI stand Read more at: https://economictimes.indiatimes.com/news/economy/policy/pil-for-regulating-techfin-firms-like-facebook-google-amazon-hc-seeks-centre-rbi-stand/arti', 'pil-for-regulating-techfin-firms-like-facebook-google-amazon-hc-seeks-centre-rbi-stand-read-more-at-httpseconomictimesindiatimescomnewseconomypolicypil-for-regulating-techfin-firms-like-facebook-google-amazon-hc-seeks-centre-rbi-standarti', 28, 1, 'bbbbbb).jpg', '<p>Fintech is the new buzzword in India&rsquo;s financial sector. Every company - be it a start-up or a prestigious financial institution&ndash;wants to have a piece of the pie. Interestingly, using technology to handle money has been a pet peeve of humanity since the 1900s.<br />\r\n<br />\r\nFrom the credit cards of the 1950s to the ATMs of the late 1960s to electronic trading by NASDAQ in the 1970s, technology has transformed the customer&rsquo;s relationship with banks. It took the Internet, a few decades later, for Fint&nbsp;..<br />\r\n&nbsp;</p>\r\n\r\n<p>Read more at:<br />\r\n<a href=\"https://economictimes.indiatimes.com/small-biz/policy-trends/why-the-wirecard-scandal-is-relevant-for-india-part-1-regulators-and-fintech-boom/articleshow/77945025.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst\">https://economictimes.indiatimes.com/small-biz/policy-trends/why-the-wirecard-scandal-is-relevant-for-india-part-1-regulators-and-fintech-boom/articleshow/77945025.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst</a></p>\r\n', 0, '2020-12-11 10:20:28'),
(36, 'No model for sale, but India\'s small investors flock to Tesla stock', 'no-model-for-sale-but-indias-small-investors-flock-to-tesla-stock', 28, 1, 'ttt.jpg', '<p>MUMBAI: Mom-and-pop Indian investors increasingly buying U.S. stocks have been drawn to a company that has no presence in India so far: electric car maker&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Tesla-Inc.\" target=\"_blank\">Tesla Inc.</a><br />\r\n<br />\r\nIndians are placing bigger-than-ever bets on U.S. stocks this year as the American stock market has recovered faster than markets in India and other emerging nations following a crash sparked by the coronavirus pandemic.<br />\r\n<br />\r\nWhile firms such as&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Apple\" target=\"_blank\">Apple</a>,&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Amazon\" target=\"_blank\">Amazon</a>&nbsp;and Facebook - which have a significant presence in India - are popular among Indian investors venturing into U.S. stocks, data from brokerages shows Tesla has emerged as a new favourite.<br />\r\n<br />\r\nIndian brokerage&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Vested-Finance\" target=\"_blank\">Vested Finance</a>&nbsp;said its accounts held $2.5 million worth of Tesla stock in November, up from just $76,000 at March-end. Another brokerage firm, Stockal, said its clients&#39; Tesla holdings have quadrupled to $10 million during the period.<br />\r\n<br />\r\nTesla shares surged around 450 per cent during that time.</p>\r\n', 0, '2020-12-11 10:22:08'),
(37, 'Data Science', 'data-science', 27, 1, 'datas.jpg', '<p>Next up in the list of&nbsp;latest technology&nbsp;concepts is not surprisingly&nbsp;Data Science. Data Science is the technology that helps to make sense of complicated data. You know that data is produced in a humungous amount every day by companies. This includes business data, sales data, customer profile information, server data, and financial figures.&nbsp;</p>\r\n', 0, '2020-12-11 10:24:58'),
(38, 'Artificial Intelligence', 'artificial-intelligence', 27, 1, 'artif.jpg', '<p><a href=\"https://www.upgrad.com/blog/data/artificial-intelligence/\">Artificial intelligence</a>&nbsp;(AI)&nbsp;is the technology used for equipping computer systems with the ability to make decisions like humans. Being one of the trending technologies, when AI programs are fed to systems, the aim is to mimic human intelligence for performing complex tasks such as pattern recognition, speech recognition, weather forecast and medical diagnosis.</p>\r\n', 0, '2020-12-11 10:26:12'),
(39, 'FireEye hack: Cybersecurity firm says nation-state stole attacking tools', 'fireeye-hack-cybersecurity-firm-says-nation-state-stole-attacking-tools', 27, 1, 'mob.jpg', '<p>Prominent U.S. cybersecurity firm FireEye said Tuesday that foreign government hackers with &ldquo;world-class capabilities&rdquo; broke into its network and stole offensive tools it uses to probe the defenses of its thousands of customers, who include federal, state and local governments and top global corporations.</p>\r\n\r\n<p>The hackers &ldquo;primarily sought information related to certain government customers,&rdquo; FireEye CEO Kevin Mandia said in a statement, without naming them. He said there was no indication they got customer information from the company&#39;s consulting or breach-response businesses or threat-intelligence data it collects.</p>\r\n\r\n<p>FireEye is a major cybersecurity player &mdash; it responded to the Sony and Equifax data breaches and helped Saudi Arabia thwart an oil industry cyberattack &mdash; and has played a key role in identifying Russia as the protagonist in numerous aggressions in the burgeoning netherworld of global digital conflict.</p>\r\n\r\n<p>Neither Mandia nor a FireEye spokeswoman said when the company detected the hack or who might be responsible. But many in the cybersecurity community suspect Russia.</p>\r\n\r\n<p>&ldquo;I do think what we know of the operation is consistent with a Russian state actor,&quot; said former NSA hacker Jake Williams, president of Rendition Infosec. &ldquo;Whether or not customer data was accessed, it&rsquo;s still a big win for Russia.&rdquo;</p>\r\n\r\n<p>FireEye&#39;s Mandia said he had concluded that &quot;a nation with top-tier offensive capabilities&rdquo; was behind the attack.</p>\r\n\r\n<p>The stolen &ldquo;red team&rdquo; tools &mdash; which amount to real-world malware &mdash; could be dangerous in the wrong hands. FireEye said there&rsquo;s no indication they have been used maliciously. But cybersecurity experts say sophisticated nation-state hackers could modify them and wield them in the future against government or industry targets.</p>\r\n\r\n<p>The hack was the biggest blow to the U.S. cybersecurity community since a mysterious group known as the &ldquo;Shadow Brokers&rdquo; in 2016 released a trove of high-level hacking tools stolen from the National Security Agency. The U.S. believes North Korea and Russia capitalized on the stolen tools to unleash devastating global cyberattacks.</p>\r\n\r\n<p>The nation&rsquo;s Cybersecurity and Infrastructure Security Agency warned that &ldquo;unauthorized third-party users&rdquo; could similarly abuse FireEye&rsquo;s stolen red-team tools.</p>\r\n\r\n<p>Milpitas, California-based FireEye, which is publicly traded, said in Tuesday&#39;s statement that it had developed 300 countermeasures to protect customers and others from them and was making them immediately available.</p>\r\n\r\n<p>FireEye has been at the forefront of investigating state-backed hacking groups, including Russian groups trying to break into state and local governments in the U.S. that administer elections. It was credited with attributing to Russian military hackers mid-winter attacks in 2015 and 2016 on Ukraine&rsquo;s energy grid. Its threat hunters also have helped social media companies including Facebook identify malicious actors.</p>\r\n\r\n<p>Thomas Rid, a Johns Hopkins cyberconflict scholar, said that if the Kremlin were behind the hack it could have been seeking to learn what FireEye knows about Russia&rsquo;s global state-backed operations &mdash; doing counterintelligence. Or it might have seeking to retaliate against the U.S. government for measures including indicting Russian military hackers for meddling in the 2016 U.S. election and other alleged crimes. FireEye is, after all, a close U.S. government partner that has &ldquo;exposed many Russian operations,&quot; he said.</p>\r\n\r\n<p>FireEye said it is investigating the attack in coordination with the FBI and partners including Microsoft, which has its own cybersecurity team. Mandia said the hackers used &ldquo;a novel combination of techniques not witnessed by us or our partners in the past.&rdquo;</p>\r\n\r\n<p>Matt Gorham, assistant director of the FBI&#39;s cyber division, said the hackers&#39; &ldquo;high level of sophistication (was) consistent with a nation state.&rdquo;</p>\r\n\r\n<p>The U.S. government is &ldquo;focused on imposing risk and consequences on malicious cyber actors, so they think twice before attempting an intrusion in the first place,&rdquo; Gorham said. That has included what U.S. Cyber Command terms &ldquo;defending forward&rdquo; operations such as penetrated the networks of Russia and other adversaries.</p>\r\n\r\n<p>U.S. Sen. Mark Warner, a Virginia Democrat on the Senate&rsquo;s intelligence committee, applauded FireEye for quickly disclosing the intrusion, saying the case &quot;shows the difficulty of stopping determined nation-state hackers.&rdquo;</p>\r\n\r\n<p>Cybersecurity expert Dmitri Alperovitch said security companies like FireEye are top targets, with big names in the field including Kaspersky and Symantec breached in the past.</p>\r\n\r\n<p>&ldquo;Every security company is being targeted by nation-state actors. This has been going on got over a decade now,&rdquo; said Alperovitch, the co-founder and former chief technical officer of Crowdstrike, which investigated the 2016 Russian hack of the Democratic National Committee and Hillary Clinton&#39;s campaign.</p>\r\n', 0, '2020-12-11 10:27:15');
INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `user_id`, `post_image`, `body`, `status`, `created_at`) VALUES
(40, 'Hollywood News Gal Gadot on Wonder Woman 1984: Hardest movie I ever shot Gal Gadot on Wonder Woman 1984: Hardest movie I ever shot', 'hollywood-news-gal-gadot-on-wonder-woman-1984-hardest-movie-i-ever-shot-gal-gadot-on-wonder-woman-1984-hardest-movie-i-ever-shot', 25, 1, 'hhh.jpg', '<h2>&quot;Most of the stuff you see in the film is real people doing the real thing, whether it is us or the stuntpeople,&quot; said Gal Gadot</h2>\r\n\r\n<p><strong>New Delhi:&nbsp;</strong></p>\r\n\r\n<p>Hollywood star Gal Gadot on Tuesday said the team of&nbsp;<em>Wonder Woman 1984</em>&nbsp;wanted to &quot;raise the bar&quot; with the upcoming superhero film, which has been the toughest acting job in her career till date.&nbsp;<em>Wonder Woman 1984</em>, a highly-anticipated follow-up to the 2017 DC superhero blockbuster, will see Gadot reprise her role as the Amazonian warrior Diana Prince/ Wonder Woman and director Patty Jenkins return at the helm. The sequel follows Wonder Woman facing two all-new foes: Max Lord, played by&nbsp;<em>Narcos</em>&nbsp;star Pedro Pascal, and The Cheetah aka Barbara Minerva, essayed by Kristen Wiig, known for&nbsp;<em>Bridesmaids</em>. Unlike other superhero movies that are heavily dependent on computer generated imagery (CGI) to execute high-octane stunt sequences,&nbsp;<em>Wonder Woman 1984</em>&nbsp;mostly has real people pulling off the choreography, Gadot said.</p>\r\n\r\n<p>&quot;Most of the stuff you see in the film is real people doing the real thing, whether it is us or the stuntpeople. When you see it in the movie, you can tell it&#39;s the real deal - be it the facial expressions, weight, movement and speed. It was the hardest movie I ever got to shoot by far but it was worth it,&quot; the actor told reporters at the film&#39;s virtual global press conference from Los Angeles.</p>\r\n\r\n<p>The 2017 original stand-alone film, which critics and audience felt was much needed in the male-dominated superhero space, followed Diana&#39;s journey as a sheltered Amazonian princess to a true warrior.&nbsp;<em>Wonder Woman</em>, both a critical and box office success, was received so favourably that there was no way the team was going to take any shortcuts, Gadot said.</p>\r\n\r\n<p>&quot;We wanted to raise the bar, give everything we have. We knew people were so much invested in and cared about the character,&quot; she said, adding she wasn&#39;t lucky enough to see a character like Woman Woman on screen while growing up. The final battle between Wonder Woman and Cheetah, Jenkins said, was one of the most unbelievably complex scenes for which they had to build an entire set from scratch. &quot;There was no stage big enough in the world to execute it. We had Cirque du Soleil performers practising the moves and show us what they are going to look like and these guys have to end up doing it,&quot; she added. The director said she and Gadot were clear from the outset that the fight scenes between Wonder Woman and Cheetah would be &quot;completely different&quot;. &quot;They had a friendship in the past, it&#39;s not about punching in the face. They are both trying to get the other one out of control. Narratively and spatially, it was fascinating, and executing it was long, laborious, and wild.&quot;</p>\r\n\r\n<p>&quot;Everything was well planned and intentional,&quot; added Wiig, who plays the awkward gemologist Barbara-turned-apex predator Cheetah. Mostly known for her comedic turns, Wiig said, playing a villain was a &quot;scary but fun experience&quot;. &quot;I don&#39;t really get asked to do these kinds of things. I&#39;m a superhero geek. I haven&#39;t done anything like this before. We really didn&#39;t want her to be a mousy girl turned villain. We wanted it to be - what is it about her that makes her so lonely, invisible and what does she want?&quot; she added.</p>\r\n\r\n<p>Pascal said he went through &quot;the Patty Jenkins experience&quot; while playing Maxwell, a charismatic businessman with a hidden agenda. &quot;It has to be complete, have all the risks, and humanity, no matter how dark the character is. I definitely didn&#39;t know if I&#39;d be able to get in there. I owe it to my director if it worked. &quot;It was scary and thrilling to do something that is a lot closer to me... the exposed desperation, instead of a brute with a moustache,&quot; he added.</p>\r\n\r\n<hr />', 0, '2020-12-11 10:29:47'),
(41, 'Mulshi Pattern to be remade in three south Indian languages', 'mulshi-pattern-to-be-remade-in-three-south-indian-languages', 25, 1, 'mmmmm.jpg', '<p>In 2018, actor-writer-director&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Pravin-Tarde\">Pravin Tarde</a>&nbsp;created waves with his&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/directorial-Mulshi-Pattern\">directorial Mulshi Pattern</a>. The Marathi film turned out to be a one of the hits of that year and also resulted in talks for a Hindi remake. While we had recently written about the shooting for the Hindi version, titled&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Antim:-The-Final-Truth\">Antim: The Final Truth</a>, having begun, we have now learnt that&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Mulshi-Pattern\">Mulshi Pattern</a>&nbsp;is getting more remakes. The film highlighted the hardships faced by farmers who sold off their lands to builders and, due to no knowledge of savings, slipped into poverty soon after. It also spoke about the young generation from these farming families taking to crime.<br />\r\nSpeaking to us, Tarde shares, &ldquo;The movie is being remade in three south Indian languages- Telugu, Tamil and Kannada. I am working on the project with actor&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Dev-Gill\">Dev Gill</a>. Though I am not associated with the Hindi version (Mahesh Manjrekar is directing it with&nbsp;<a href=\"https://timesofindia.indiatimes.com/topic/Aayush-Sharma\">Aayush Sharma</a>&nbsp;in the lead), I will be directing, writing and acting in the south versions.&rdquo;<br />\r\nWhen asked if audiences will relate to the movie down south, Tarde answers, &ldquo;Like Mulshi in Pune, the situation is the same with farmers from Bengaluru and Chennai where the IT parks and industries have been set up on erstwhile farm lands. The topic is relatable across the country.&rdquo; He also informs that most of the cast will remain the same as the Marathi version. &ldquo;I will play the role of an inspector, while the lead actors will be from the south industry,&rdquo; he says.</p>\r\n', 0, '2020-12-11 10:30:47'),
(42, 'On 15 years of Kalyug, Kunal Kemmu thanks Mohit Suri for the amazing opportunity', 'on-15-years-of-kalyug-kunal-kemmu-thanks-mohit-suri-for-the-amazing-opportunity', 25, 1, 'ddlg.jpg', '<h2>Kunal Kemmu shared a post on Instagram to celebrate 15 years of his film Kalyug. Apart from Kunal, the film starred Amrita Singh, Emraan Hashmi, Deepal Shaw and Ashutosh Rana in important roles.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mumbai, Dec 9 (PTI) Kunal Kemmu-starrer &quot;Kalyug&quot; on Wednesday completed 15 years and the actor said he is grateful to the makers for giving him a chance to be a part of this &quot;beautiful&quot; film.</p>\r\n\r\n<p>Kemmu started his career as a child actor in the 1990s with films such as &quot;Raja Hindustani&quot;, &quot;Dushman&quot;, and Mahesh Bhatt-directed &quot;Zakhm&quot; and &quot;Hum Hain Rahi Pyar Ke&quot;.</p>\r\n\r\n<p>He made his debut as a lead actor with 2005&#39;&#39;s &quot;Kalyug&quot;, which also launched Smilie Suri, older sister of director Mohit Suri in Bollywood. The movie was produced by Mahesh and Mukesh Bhatt.</p>\r\n\r\n<p>Written and directed by Mohit Suri, the film follows a young man (Kemmu), who sets out to exact revenge upon the porn industry after his wife (Smilie Suri) commits suicide due to the footage of their first night getting released on internet.</p>\r\n\r\n<p>&quot;On this Day 15 years ago!! Thank you @mohit11481 @MaheshNBhatt @VisheshFilms for giving me this amazing opportunity and this beautiful Film. What songs and what a cast and most importantly what an experience this one was. #15yearsofkalyug,&quot; Kemmu wrote.</p>\r\n\r\n<p>&quot;Kalyug&quot; was lauded for its plotline and the soundtrack with memorable songs &quot;Jiya Dhadak Dhadak Jaye&quot; and &quot;Aadat&quot;. The film also starred Emraan Hashmi, Amrita Singh, Ashutosh Rana and Deepal Shaw.</p>\r\n\r\n<p>Kemmu later starred in films like &quot;Traffic Signal&quot;, &quot;Golmaal 3&quot; and &quot;Go Goa Gone&quot;.</p>\r\n\r\n<p>The actor reunited with Mohit Suri for &quot;Malang&quot; which released earlier this year. PTI KKP RDS RDS</p>\r\n\r\n<hr />\r\n<hr />', 0, '2020-12-11 10:31:35'),
(43, 'Cannot disclose details of PM\'s flights as it relates to his security apparatus: IAF plea in HC', 'cannot-disclose-details-of-pms-flights-as-it-relates-to-his-security-apparatus-iaf-plea-in-hc', 29, 1, 'downloadeee.jpg', '<p>NEW DELHI: The Indian Air Force (<a href=\"https://economictimes.indiatimes.com/news/iaf-news\" target=\"_blank\">IAF</a>) moved a plea in the&nbsp;<a href=\"https://economictimes.indiatimes.com/topic/Delhi-High-Court\" target=\"_blank\">Delhi High Court</a>&nbsp;on Wednesday challenging a Central Information Commission (<a href=\"https://economictimes.indiatimes.com/topic/CIC\" target=\"_blank\">CIC</a>) direction&nbsp;to&nbsp;provide information regarding Special Flight Returns (SRF)-II, saying&nbsp;it&nbsp;relates&nbsp;to&nbsp;details&nbsp;of&nbsp;the Prime Minister&#39;s&nbsp;security&nbsp;apparatus&nbsp;and&nbsp;cannot&nbsp;be provided.<br />\r\n<br />\r\nThe IAF plea has claimed that the &quot;information so sought includes&nbsp;details&nbsp;related&nbsp;to&nbsp;the entire entourage, names&nbsp;of&nbsp;Special Protection Group (SPG) personnel accompanying the Prime Minister&nbsp;of&nbsp;India on foreign tours for&nbsp;his&nbsp;personal safety, and the same, if disclosed, can potentially affect the sovereignty and integrity&nbsp;of&nbsp;India, the&nbsp;security, strategic, scientific or economic interests&nbsp;of&nbsp;the State&quot;.<br />\r\n<br />\r\nThe petition, filed through central government senior panel counsel Rahul Sharma and advocate C K Bhatt, is in appeal against the CIC&#39;s July 8 direction&nbsp;to&nbsp;IAF&nbsp;to&nbsp;provide certified copies&nbsp;of&nbsp;available and relevant Special Flight Returns-ll&nbsp;to&nbsp;RTI applicant Commodore (retd) Lokesh K Batra.<br />\r\n<br />\r\nBatra had sought certified copies&nbsp;of&nbsp;SRF-I and SRF-II with regard&nbsp;to&nbsp;each foreign visit&nbsp;of&nbsp;former PM Manmohan Singh&nbsp;as&nbsp;also Prime Minister Narendera&nbsp;<a href=\"https://economictimes.indiatimes.com/news/narendra-modi\" target=\"_blank\">Modi</a>&nbsp;from April 2013 onwards.<br />\r\n<br />\r\nIAF, in its plea, claims that the CIC has &quot;failed&nbsp;to&nbsp;appreciate and consider that the information sought by the respondent (Batra) from the petitioner (Air Force)&nbsp;cannot&nbsp;be disclosed and the application&nbsp;of&nbsp;the respondent for seeking the same ought not&nbsp;to&nbsp;have been allowed&nbsp;as&nbsp;the information sought is extremely sensitive in nature...&quot;<br />\r\n<br />\r\nThe petition contends that the SRF copies sought relate&nbsp;to&nbsp;&quot;official records&nbsp;of&nbsp;functioning and working&nbsp;of&nbsp;the&nbsp;security&nbsp;apparatus&nbsp;of&nbsp;the Prime Minister&nbsp;of&nbsp;India which&nbsp;cannot&nbsp;be brought in public domain for safety and&nbsp;security&nbsp;reasons&quot;.</p>\r\n', 0, '2020-12-11 10:33:27'),
(44, 'Lok Sabha adjourned sine die after winter session, 16 bills passed', 'lok-sabha-adjourned-sine-die-after-winter-session-16-bills-passed', 29, 1, 'downloadfff.jpg', '<p>The monsoon session of Parliament, 2020 comes to an end.&nbsp; The session has been cut short by seven days amid concerns of the spread of coronavirus among lawmakers</p>\r\n\r\n<p>In today&#39;s proceedings, the Rajya Sabha&nbsp; passed the Jammu and Kashmir Official Languages Bill, the three labour codes, the Bilateral Netting of Qualified Financial Contracts Bill, the Foreign Contribution (Regulation) Amendment Bill; and returned The Appropriation (No.3) Bill, and Appropriation (No.4) Bill. The Lok Sabha passed the Major Port Authorities Bill, 2020.</p>\r\n\r\n<p>The Parliament&nbsp; functioned today sans Opposition parties. Opposition parties boycotted Parliament on Tuesday too,&nbsp;<a href=\"https://www.thehindu.com/news/national/opposition-to-boycott-rajya-sabha/article32666307.ece?homepage=true\" title=\"\">first walking out of Rajya Sabha</a>&nbsp;in the morning and later from Lok Sabha at around 4 p.m., protesting against the flawed&nbsp;<a href=\"https://www.thehindu.com/news/national/parliament-proceedings-rajya-sabha-passes-2-farm-bills-amid-ruckus-by-opposition-mps/article32652947.ece\" title=\"\">passage of the two farm bills</a>&nbsp;in the Upper House on Sunday that resulted in violent protests by Opposition members and suspension of eight MPs.</p>\r\n', 0, '2020-12-11 10:34:36'),
(45, 'Shiv Sena\'s Sanjay Raut slams BJP in Saamana column, says MVA govt will \'stay on\'', 'shiv-senas-sanjay-raut-slams-bjp-in-saamana-column-says-mva-govt-will-stay-on', 29, 1, 'downloadaaaa.jpg', '<p>The Shiv Sena MP made the remarks after former Maharashtra chief minister Devendra Fadnavis termed the ruling Maha Vikas Aghadi (MVA), which comprises the Shiv Sena, NCP and Congress, as an &#39;unnatural alliance&#39;</p>\r\n\r\n<p><strong>Mumbai:&nbsp;</strong>Shiv Sena MP Sanjay Raut on Sunday slammed the BJP for calling the MVA government in Maharashtra &quot;unnatural&quot;, and said a government is natural till it exists.</p>\r\n\r\n<p>In his weekly column &#39;&#39;Rokthok&#39;&#39; in the Sena mouthpiece &#39;&#39;Saamana&#39;&#39;, Raut recalled that during alliance talks last year, NCP chief Sharad Pawar and senior Congress leader Mallikarjun Kharge had a heated argument over the Assembly Speaker&#39;s post.</p>\r\n\r\n<p>&quot;He (Pawar) collected his papers and left the room in anger. I have never seen Pawar so angry,&quot; he said.</p>\r\n\r\n<p>Raut said the situation changed after that and the next day at dawn (on 23 November) BJP leader Devendra Fadnavis and NCP&#39;s Ajit Pawar took oath in a ceremony at Raj Bhavan.</p>\r\n\r\n<p>Their government collapsed within 80 hours.</p>\r\n\r\n<p>Last week, former Maharashtra chief minister Fadnavis termed the ruling Maha Vikas Aghadi (MVA), which comprises the Shiv Sena, NCP and Congress, as an &quot;unnatural alliance&quot;, and said the day this tie-up breaks, his party will give a strong government to the state.</p>\r\n\r\n<p>Reacting to it, Raut said, &quot;The BJP has been predicting the government&#39;s downfall and how it will be done depends on the secret activities and the central investigating agencies. Whatever the ED does, I say with responsibility that the MVA government will stay on.&quot;</p>\r\n\r\n<p>In politics, &quot;no one is a saint&quot; and no government is natural or unnatural, the Shiv Sena&#39;s chief spokesperson said.</p>\r\n\r\n<p>&quot;A government is natural till it is there. To destabilise it, agencies like the Central Bureau of Investigation (CBI) and the Enforcement Directorate (ED) are being used. Those doing illegal constructions and accused of abetment to suicide are being protected,&quot; he alleged.</p>\r\n\r\n<p>&quot;If these political pressure tactics are natural, then the &#39;&#39;Thackeray sarkar&#39;&#39; is also natural. The government has proved its majority on the floor of the House and is within constitutional norms,&quot; Raut said.</p>\r\n\r\n<p>He said if there were no&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;outbreak, floods, cyclones and lockdown difficulties, the situation in the state would have been different in the last one year.</p>\r\n\r\n<p>After the Maharashtra Assembly polls last year, the Shiv Sena snapped ties with long-term ally BJP over the issue of sharing the chief ministerial post in the state.</p>\r\n\r\n<p>Recalling last year&#39;s hectic parleys between the Sena, NCP and Congress to form a non-BJP government in the state, Raut said Sharad Pawar and Kharge had a heated argument over the Assembly Speaker&#39;s post in a meeting at Nehru Centre here.</p>\r\n\r\n<p>&quot;Khargeand others were firm that the post shouldn&#39;t go to the NCP. I have never seen Pawar so angry. He collected his papers and left the room in anger. Myself and (NCP leader) Praful Patel followed him,&quot; the Rajya Sabha member said.</p>\r\n\r\n<p>Raut recalled that Pawar had earlier in the meeting said Uddhav Thackeray will be the chief ministerial candidate of the alliance. &quot;But after his argument with Kharge, the situation changed.&quot;</p>\r\n\r\n<p>&quot;Ajit Pawar was chatting on his mobile for a long time in the room and later left. His mobile was switched-off and he was seen the next day at the swearing-in at the Raj Bhavan,&quot; Raut said.</p>\r\n\r\n<p>The Sena leader rejected Fadnavis&#39;s claim that Sharad Pawar and Union Home Minister Amit Shah had a meeting in Delhi where it was decided that the NCP will support the BJP following which the early morning swearing-in took place.</p>\r\n\r\n<p>&quot;There was a meeting at Amit Shah&#39;s place where a top industrialist and NCP leaders may have been present. But, Sharad Pawar was in no mood to have any deal with the BJP,&quot; the Sena leader claimed.</p>\r\n\r\n<p>&quot;He (Sharad Pawar) told me that &#39;offers are being made for a BJP government from various quarters. I will be meeting Prime Minister Narendra Modi and will tell him that an alliance with the BJP wasn&#39;t possible&#39;,&quot; he said.</p>\r\n\r\n<p>Later, Sharad Pawar met Modi on farmers&#39; issues and also clarified his position on the government formation in Maharashtra, he said.</p>\r\n\r\n<p>&quot;The real script of the political drama is still under cover and will always remain like that,&quot; Raut added</p>\r\n\r\n<hr />', 0, '2020-12-11 10:35:40'),
(46, 'Ronaldo scores twice as Juve crush Messi\'s Barcelona to top CL group', 'ronaldo-scores-twice-as-juve-crush-messis-barcelona-to-top-cl-group', 26, 1, 'downloaddd.jpg', '<p><strong>BARCELONA</strong>: Cristiano&nbsp;<strong>Ronaldo</strong>&nbsp;struck&nbsp;<strong>twice</strong>&nbsp;from the penalty spot to win his battle with rival Lionel&nbsp;<strong>Messi</strong>&nbsp;and guide&nbsp;<strong>Juventus</strong>&nbsp;to a 3-0 win over&nbsp;<strong>Barcelona</strong>&nbsp;on Tuesday, earning the Italians&nbsp;<strong>top</strong>&nbsp;spot in&nbsp;<strong>Champions League Group</strong></p>\r\n\r\n<p>BARCELONA: Cristiano Ronaldo struck twice from the penalty spot to win his battle with rival Lionel Messi and information Juventus to a 3-0 win over Barcelona on Tuesday, incomes the Italians top spot in Champions League Group G.<br />\r\nThe former Real Madrid striker and his Argentina counterpart traded Ballon d&rsquo;Or wins for a decade between 2008-2017 and had been figureheads for the duelling Spanish giants, however there was just one winner on the Camp Nou as they met for the primary time since Ronaldo&rsquo;s departure for Juve in 2018.<br />\r\nAndrea Pirlo&rsquo;s Juventus misplaced 2-0 at residence in opposition to Barcelona in October with out Ronaldo, sidelined with Covid-19, however had been vastly improved and earned the primary Champions League away win in opposition to Barcelona since Bayern Munich triumphed in 2013.<br />\r\nBoth sides, tied on 15 factors, had been assured of qualification earlier than kick-off, however Juve&rsquo;s three-aim victory handed them a superior head-to-head file.</p>\r\n\r\n<hr />', 0, '2020-12-11 10:37:12'),
(47, '\'Proud and at peace\', Parthiv Patel retires from competitive cricket', 'proud-and-at-peace-parthiv-patel-retires-from-competitive-cricket', 26, 1, 'down.jpg', '<p>Parthiv debuted in the year 2002 against England at Trent Bridge at 17 years and 153 days to become Test Cricket&#39;s youngest wicketkeeper. He had replaced the injured Ajay Ratra and eclipsed st wicketkeeper, previously held by Pakistan&#39;s Hanif Mohammed (17 years and 300 days). He played out an hour in the match while batting and hence saved India from defeat. However, with the emergence of Dhoni and poor wicketkeeping, he was sidelined for a few matches in 2004.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-12\">[12]</a></sup></p>\r\n\r\n<p><strong>Parthiv Ajay Patel</strong>&nbsp;(born 9 March 1985) is a former Indian&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cricket\">cricketer</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wicketkeeper\">wicketkeeper</a>-<a href=\"https://en.wikipedia.org/wiki/Batsman\">batsman</a>, and was a member of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Indian_national_cricket_team\">Indian national cricket team</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-1\">[1]</a></sup>&nbsp;He is a left-handed batsman. He plays for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gujarat\">Gujarat</a>&nbsp;in domestic cricket.</p>\r\n\r\n<p>Parthiv announced his retirement from all formats of International Cricket on 9 December, 2020.</p>\r\n\r\n<p>On 23 November 2016, Parthiv Patel was called up as a replacement for the regular wicket-keeper&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wriddhiman_Saha\">Wriddhiman Saha</a>&nbsp;who had a thigh strain, for the third Test (at&nbsp;<a href=\"https://en.wikipedia.org/wiki/Punjab_Cricket_Association_IS_Bindra_Stadium\">Mohali</a>) of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/English_cricket_team_in_India_in_2016%E2%80%9317\">India-England home series</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-13\">[13]</a></sup>&nbsp;He played his first Test in eight years, having missed 83 Test matches between appearances.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-14\">[14]</a></sup></p>\r\n\r\n<p>Patel made his&nbsp;<a href=\"https://en.wikipedia.org/wiki/One_Day_International\">ODI</a>&nbsp;debut against&nbsp;<a href=\"https://en.wikipedia.org/wiki/New_Zealand_cricket_team\">New Zealand</a>&nbsp;in January 2003.<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-15\">[15]</a></sup>&nbsp;He was selected in the Indian squad for the&nbsp;<a href=\"https://en.wikipedia.org/wiki/2003_Cricket_World_Cup\">2003 Cricket World Cup</a>&nbsp;but did not play any games, with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rahul_Dravid\">Rahul Dravid</a>&nbsp;being used as a makeshift wicket-keeper to allow the use of an extra batsman or bowler. With this policy in place, Patel only made intermittent appearances in ODIs, usually when Dravid was injured or being rested (in full or from wicket-keeping duties). He played 13 ODIs in a two-year span, and during an interrupted career managed only an average of 14.66 and a top-score of 28 and was dropped thereafter. Parthiv returned to the Indian team in 2010 in the 4th and 5th Odi vs New Zealand. He celebrated this moment by hitting two back to back half centuries. Later on he was called up for replacing injured Sachin Tendulkar in India tour South Africa .<sup><a href=\"https://en.wikipedia.org/wiki/Parthiv_Patel#cite_note-16\">[16]</a></sup></p>\r\n', 0, '2020-12-11 10:38:24'),
(48, 'Nozomi Okuhara clinches Women\'s Singles title at Denmark Open', 'nozomi-okuhara-clinches-womens-singles-title-at-denmark-open', 26, 1, 'download.jpg', '<p>In Badminton, former Japanese World Champion Nozomi Okuhara clinched the Denmark Open title beating three-time world champion Carolina Marin in women&#39;s singles. Highlights: &diams; The Japanese star took 56 minutes to get the better of the Olympic gold medallist Spaniard in two games 21-19, 21-17, at Odense.&nbsp; &diams; With reigning world champion PV Sindhu of India opting to sit out the event, two of her biggest rivals made it through to the final. &diams; In the men&#39;s singles final, world number seven Anders Antonsen of Denmark defeated his compatriot Rasmus Gemke by 18-21, 21-19, 21-12.&nbsp; &nbsp;&diams; In the mixed doubles, fourth seeds Mark Lamsfuss and Isabel Herttrich became the first German mixed doubles players to win a Super Series event after defeating Chris and Gabby Adcock of England in the final 18-21, 21-11, 21-14. &diams; In an all-Japan women&#39;s doubles final, top seeds Yuki Fukushima and Sayaka Hirota downed second seeds Mayu Matsumoto and Wakana Nagahara 21-10, 16-21, 21-18. &diams; Marcus Ellis and Chris Langridge of England defeated Russian pair Valdimir Ivanov and Ivan Sozonov 20-22, 21-17, 21-18, becoming the first England pair to clinch the title of men&#39;s doubles in the Denmark Open for 45 years.</p>\r\n', 0, '2020-12-11 10:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `save_price` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_alt_tag` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `tag` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_tag` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cat_id`, `sku`, `name`, `quantity`, `price`, `save_price`, `color`, `image`, `img_alt_tag`, `short_description`, `description`, `tag`, `size`, `datetime`, `status`, `meta_title`, `meta_tag`, `meta_desc`) VALUES
(1, 1, 0, 'GSS34523', '', '', '', '', '', '', '', '', '', '', '', '2017-08-14 20:51:39', 0, '', '', ''),
(2, 1, 5, 'ABC123', 'Dressing table', '12', '2999', '1', 'RED', 'bd2_6f5_636_330-1-original.jpg', '', 'Dressing table', '<p>Dressing table</p>\r\n', 'Woodland White Tshirts', 'medium', '2017-08-16 23:33:26', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `file_name`) VALUES
(6, 1, 'tshirts2.jpg'),
(7, 1, 'tshirt.jpg'),
(8, 1, 'imagesaaaa.jpg'),
(9, 1, 'imagesaa.jpg'),
(10, 2, 'bd2_6f5_636_330-1-original.jpg'),
(11, 2, 'command.png'),
(12, 2, 'yyyy.jpg'),
(13, 2, 'yy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sco`
--

CREATE TABLE `sco` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sco`
--

INSERT INTO `sco` (`id`, `page_name`, `title`, `keywords`, `description`) VALUES
(1, 'Home', 'Home', '', 'Homess'),
(2, 'About-Us', 'About-Us', '', ''),
(3, 'Gallery', '', '', ''),
(4, 'Contact-Us', '', '', ''),
(5, 'Term And Condition', '', '', ''),
(6, 'Privacy Policy', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `logo_img` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`id`, `site_name`, `logo_img`, `site_title`) VALUES
(1, 'E commerce Site', 'yadi-ci-logo.png', 'E commerce Site');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_img`
--

CREATE TABLE `sliders_img` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders_img`
--

INSERT INTO `sliders_img` (`id`, `title`, `description`, `image`, `status`) VALUES
(1, 'A Furniture Shops', 'A Furniture Shops', 'YADU_Logo.JPG', 1),
(2, 'adg', 'mnmmmm,', 'bd2_6f5_636_330-1-original.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` int(11) NOT NULL,
  `social_name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `social_name`, `link`) VALUES
(1, 'Facebook', ''),
(2, 'Twitter', ''),
(3, 'Instagram', ''),
(4, 'Linkdin', ''),
(5, 'Skype', '');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `domain`, `description`, `image`, `status`, `created_at`) VALUES
(1, 'New Testimonial', 'www.testimonial.com', '<p><strong>Edited </strong>-- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci ex, finibus vitae nunc eu, accumsan luctus metus. Curabitur magna sapien, porta et vulputate id, finibus et sapien. Fusce a varius leo, eget vestibulum velit. Ut tristique, arcu ac scelerisque iaculis, elit quam dictum sem, in sagittis justo augue sed sapien. Pellentesque mollis orci in consequat euismod. Donec sodales nisi ut diam tempus viverra. Aliquam eu efficitur velit, a sollicitudin enim. Nulla posuere ullamcorper dolor quis dapibus. Vivamus maximus purus in urna feugiat, vel ornare felis tristique. Mauris pretium faucibus metus, ut pharetra ligula bibendum ultricies. Nullam volutpat turpis vitae interdum varius. Quisque viverra dictum magna nec eleifend. Pellentesque a purus purus.</p>\r\n\r\n<p>Nunc eget vestibulum mi. In hac habitasse platea dictumst. Fusce vitae mauris sed eros volutpat porta. Sed blandit ultrices velit nec porta. Suspendisse lobortis nisl ut nisi viverra fermentum. Duis volutpat pretium consectetur. Morbi ornare ante metus. Phasellus vitae erat enim. Cras vulputate congue neque a suscipit. Integer facilisis fringilla gravida. Mauris id molestie neque, quis varius tellus. Aenean eu nisl et justo accumsan feugiat. Sed in porttitor mauris. Etiam non dui ac ipsum ullamcorper imperdiet. Etiam eget viverra enim, vel tempus urna.</p>\r\n', 'Lighthouse.jpg', 0, '2017-08-17 14:34:03'),
(3, 'New Testimonial2', 'www.testimonial2.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci ex, finibus vitae nunc eu, accumsan luctus metus. Curabitur magna sapien, porta et vulputate id, finibus et sapien. Fusce a varius leo, eget vestibulum velit. Ut tristique, arcu ac scelerisque iaculis, elit quam dictum sem, in sagittis justo augue sed sapien. Pellentesque mollis orci in consequat euismod. Donec sodales nisi ut diam tempus viverra. Aliquam eu efficitur velit, a sollicitudin enim. Nulla posuere ullamcorper dolor quis dapibus. Vivamus maximus purus in urna feugiat, vel ornare felis tristique. Mauris pretium faucibus metus, ut pharetra ligula bibendum ultricies. Nullam volutpat turpis vitae interdum varius. Quisque viverra dictum magna nec eleifend. Pellentesque a purus purus.</p>\r\n\r\n<p>Nunc eget vestibulum mi. In hac habitasse platea dictumst. Fusce vitae mauris sed eros volutpat porta. Sed blandit ultrices velit nec porta. Suspendisse lobortis nisl ut nisi viverra fermentum. Duis volutpat pretium consectetur. Morbi ornare ante metus. Phasellus vitae erat enim. Cras vulputate congue neque a suscipit. Integer facilisis fringilla gravida. Mauris id molestie neque, quis varius tellus. Aenean eu nisl et justo accumsan feugiat. Sed in porttitor mauris. Etiam non dui ac ipsum ullamcorper imperdiet. Etiam eget viverra enim, vel tempus urna.</p>\r\n', 'supPro.png', 1, '2017-08-17 15:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `username`, `contact`, `address`, `gender`, `image`, `role_id`, `zipcode`, `dob`, `status`, `register_date`) VALUES
(1, 'Abhijit', 'patilabhijit400@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'abhijit', '7972858032', 'Admin Nagar', 'Male', 'YADU_Logo.JPG', 1, '416216', '1997-04-16', 1, '2020-12-11 06:19:55'),
(8, 'Astha Sharma', 'itech1694astha@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'astha123', '9898989898', 'Tikamgarh', 'Female', 'bd2_6f5_636_330-1-original.jpg', 2, '454545', '1990-08-03', 1, '2017-08-09 18:51:06'),
(11, 'amit', 'amitpatil.ap1106@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'amit', '9665715097', 'arjunwadi', 'Male', 'noimage.jpg', 2, '416216', '2/11/96', 1, '2020-12-11 05:37:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`user_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sco`
--
ALTER TABLE `sco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders_img`
--
ALTER TABLE `sliders_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sco`
--
ALTER TABLE `sco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders_img`
--
ALTER TABLE `sliders_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
