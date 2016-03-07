-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2015 at 07:08 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dgnote130`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add question', 7, 'add_question'),
(20, 'Can change question', 7, 'change_question'),
(21, 'Can delete question', 7, 'delete_question'),
(22, 'Can add choice', 8, 'add_choice'),
(23, 'Can change choice', 8, 'change_choice'),
(24, 'Can delete choice', 8, 'delete_choice');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$15000$KLkGcy278JJJ$Dfnp2wqr+s+NUJKL4yZbNXzLuprpCVYNYfCqRvSbQU4=', '2015-02-10 19:16:12', 1, 'admin', '', '', 'dgleba@gmail.com', 1, 1, '2015-02-10 19:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE IF NOT EXISTS `dashboard` (
`dashboard_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`dashboard_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dataface__datagrids`
--

CREATE TABLE IF NOT EXISTS `dataface__datagrids` (
`gridID` int(11) NOT NULL,
  `gridName` varchar(64) NOT NULL,
  `gridData` text,
  `tableName` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dataface__datagrids`
--

INSERT INTO `dataface__datagrids` (`gridID`, `gridName`, `gridData`, `tableName`) VALUES
(1, 'vw_nte_note default grid', 'O:21:"modules_DataGrid_grid":4:{s:2:"id";i:1;s:4:"name";s:24:"vw_nte_note default grid";s:9:"tableName";s:11:"vw_nte_note";s:7:"columns";a:8:{i:0;s:8:"note_fld";i:1;s:8:"tags_fld";i:2;s:9:"state_fld";i:3;s:8:"datenote";i:4;s:6:"active";i:5;s:11:"updatedtime";i:6;s:11:"createdtime";i:7;s:7:"note_id";}}', 'vw_nte_note'),
(2, 'nte_about_this_app default grid', 'O:21:"modules_DataGrid_grid":4:{s:2:"id";i:2;s:4:"name";s:31:"nte_about_this_app default grid";s:9:"tableName";s:18:"nte_about_this_app";s:7:"columns";a:4:{i:0;s:2:"id";i:1;s:9:"about_fld";i:2;s:11:"createdtime";i:3;s:11:"updatedtime";}}', 'nte_about_this_app');

-- --------------------------------------------------------

--
-- Table structure for table `dataface__failed_logins`
--

CREATE TABLE IF NOT EXISTS `dataface__failed_logins` (
`attempt_id` int(11) NOT NULL,
  `ip_address` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `time_of_attempt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataface__modules`
--

CREATE TABLE IF NOT EXISTS `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dataface__mtimes`
--

CREATE TABLE IF NOT EXISTS `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataface__mtimes`
--

INSERT INTO `dataface__mtimes` (`name`, `mtime`) VALUES
('auth_group', 1429115450),
('auth_group_permissions', 1429115450),
('auth_permission', 1429115450),
('auth_user', 1429115450),
('auth_user_groups', 1429115450),
('auth_user_user_permissions', 1429115450),
('dashboard', 1379437387),
('dataface__datagrids', 1379943039),
('dataface__failed_logins', 1370882692),
('dataface__modules', 1369236425),
('dataface__mtimes', 1369236429),
('dataface__preferences', 1372339909),
('dataface__record_mtimes', 1369236932),
('dataface__version', 1369236425),
('dataface__view_05bc21d889015ac9418d98c68778e843', 1369236429),
('dataface__view_5e4de2a9aa4cac7c91c49200019bbf3a', 1381509561),
('dataface__view_6d27439552cb884211bf94d8caf3f33d', 1381507896),
('dataface__view_7f05a33f366e23d843b6b5aa91cbb60f', 1381509549),
('dataface__view_df7958a831669cfaa5d0690b3abaa248', 1369237456),
('django_admin_log', 1429115450),
('django_content_type', 1429115450),
('django_migrations', 1429115450),
('django_session', 1429115450),
('nte_about_this_app', 1369237468),
('nte_about_this_app__history', 1369237468),
('nte_note', 1429117600),
('nte_note_tags', 1372346763),
('nte_note__history', 1369236935),
('nte_tags', 1371561807),
('nte_tags__history', 1369236932),
('polls_choice', 1429115450),
('polls_question', 1429115450),
('sf_config', 1429115450),
('states', 1379437283),
('users', 1369236425),
('vw_nte_note', 1381341047),
('vw_nte_note__history', 1374849643),
('zdg_tool1', 1378820944);

-- --------------------------------------------------------

--
-- Table structure for table `dataface__preferences`
--

CREATE TABLE IF NOT EXISTS `dataface__preferences` (
`pref_id` int(11) unsigned NOT NULL,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataface__record_mtimes`
--

CREATE TABLE IF NOT EXISTS `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataface__record_mtimes`
--

INSERT INTO `dataface__record_mtimes` (`recordhash`, `recordid`, `mtime`) VALUES
('00bcb2325f1d3dedf653437c1c9ec87c', 'vw_nte_note?note_id=2898', 1378833550),
('02235a04d09268f71ddf6c9e94cd3d50', 'nte_note?note_id=2895', 1371562086),
('082f7381d2f4fa830d0aeee29ec84331', 'nte_note?note_id=2890', 1371128006),
('09080e6f475e1cbc41968eb76e174aed', 'nte_note?note_id=2914', 1429117564),
('0c66cdad43b65bfbf8fb9d6653add439', 'vw_nte_note?note_id=2880', 1379967121),
('284d6f618629934e678b8925e0fc332a', 'vw_nte_note?note_id=', 1380037089),
('2a2e43ec2edbb9280d0eaceb5ec411da', 'nte_note?note_id=2887', 1371127809),
('2ebf4312d4ed042ff9167144e328fc02', 'nte_note?note_id=2901', 1379436550),
('3063386fdcdcb08d80bb7f0b06147f9d', 'nte_tags?tags_id=16', 1371150698),
('4129b6945355ce01547c2d549b128ad6', 'nte_note?note_id=2896', 1374241429),
('4e2c89409eaf2fbb5cddc2db94769179', 'nte_note?note_id=2893', 1371561964),
('585d817a200eeb37c20df26da277ea7b', 'nte_tags?tags_id=15', 1369244380),
('66e5c86f4b50b06ef5b65040c50eb4c3', 'vw_nte_note?note_id=2910', 1381341047),
('6a710cb1ccdef89c79ae126064084d14', 'nte_note?note_id=2892', 1371561849),
('704cd5867960b35d9791d22a586cd2a7', 'nte_note?note_id=2911', 1429116573),
('73788ded9f8d129067febd42412eef44', 'vw_nte_note?note_id=2879', 1378837703),
('76ecbf22299327d6f4a26afc502ea71a', 'vw_nte_note?note_id=2899', 1378830118),
('84ecd43420197fd145aeacb390a770b2', 'nte_note?note_id=2886', 1369244381),
('874a0515631a3e45dd4d2b0be781ead6', 'nte_note?note_id=2915', 1429117600),
('892013832bc6686b3b6613e469e51e88', 'nte_tags?tags_id=18', 1371150727),
('8a63d3758865b94b1a5ec98b1738c2ac', 'nte_note?note_id=2889', 1371127972),
('8d9d0b84cc7261eda94270697bcad9ed', 'nte_note?note_id=2894', 1377716233),
('8e4c158fa7dc70d4650e157f7988f300', 'nte_tags?tags_id=17', 1371150701),
('982ded9430c50f4a8e54ba0fceafc191', 'nte_note?note_id=2898', 1374242043),
('a03f58e46bfa13504371880a578f8cc6', 'nte_note?note_id=2888', 1371127904),
('a2d9bfad90527c94549a0e0b806f6041', 'nte_note?note_id=2899', 1378829048),
('a319157b31c46b2f11297f4feafd33c4', 'vw_nte_note?note_id=2887', 1378843968),
('a6e25a400e901290ff8047c77d6efa6b', 'nte_tags?tags_id=19', 1371561807),
('a79892d5e7ab7b4365864e8b19976311', 'nte_note?note_id=2891', 1371150730),
('b0ff6962bd12224190742be7b2a597ba', 'nte_note?note_id=2912', 1429116613),
('bc4ba5b087aa25ba6f5306bf51f7582a', 'nte_about_this_app?id=5', 1369237468),
('bf3aec7b2fa703fd5061828573ee8d67', 'nte_note?note_id=2880', 1380038724),
('d3422717481f247a9c9bd4b26d4ef225', 'nte_note?note_id=2913', 1429117493),
('d8d969aaadd76500faf2b454303a1452', 'vw_nte_note?note_id=2875', 1378843921),
('dfec7b85071285822b0c063d193b89fd', 'nte_note?note_id=2909', 1380037850),
('f612e077e3f37ab453e7f4e9c0647849', 'nte_note?note_id=2897', 1371562515),
('f65fd158a65f382fa2f97e05fcbfc604', 'nte_note?note_id=2910', 1380038582),
('f9d0f46303c2f8f0823db1d73c7956fc', 'vw_nte_note?note_id=2885', 1378833574);

-- --------------------------------------------------------

--
-- Table structure for table `dataface__version`
--

CREATE TABLE IF NOT EXISTS `dataface__version` (
  `version` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataface__version`
--

INSERT INTO `dataface__version` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dataface__view_05bc21d889015ac9418d98c68778e843`
--
CREATE TABLE IF NOT EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843` (
`note_id` int(11)
,`note_fld` text
,`tags_fld` varchar(244)
,`state_fld` varchar(99)
,`createdtime` timestamp
,`updatedtime` datetime
,`datenote` datetime
,`date1` date
,`active` enum('Yes','No')
,`nid` int(11)
,`tid` int(11)
,`tags_id` int(11)
,`tags_list` varchar(234)
,`tagslisted` text
);
-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'question', 'polls', 'question'),
(8, 'choice', 'polls', 'choice'),
(9, 'nte note', 'dgnote130', 'ntenote');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-02-10 19:10:05'),
(2, 'auth', '0001_initial', '2015-02-10 19:10:05'),
(3, 'admin', '0001_initial', '2015-02-10 19:10:05'),
(4, 'polls', '0001_initial', '2015-02-10 19:10:05'),
(5, 'sessions', '0001_initial', '2015-02-10 19:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0kf5iwpp4rgf5dmigjbne0uu907i4pqb', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:28'),
('3m8fwhws4dycmlhyr5kreht0ja56kbou', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:12:32'),
('4kolvevfxeriiuo27j7dbgggbfz3p5ro', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:13:17'),
('5jrk1sceut2pv238mjc1c9jujagg0hl1', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:13:17'),
('67s8vmtt1kn4hr9jymrk60bfeb0gdtsn', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:32'),
('6qcl16ug58yujvqabdagdlna0zqtses1', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:11:04'),
('7sz2lb0o0f0oolnsd7x48w1sg0qiquxt', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:12:17'),
('82vf88nw8g6at3e85ropndsznq7tdoty', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:12:22'),
('bhwqezfnure9q5uzn9gdkexvpuevh4cf', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:13:04'),
('c5akq5ui0tqwlb7lrb0au0x4te4rtxx8', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:23'),
('ct5qcwex3va1clq883aoifogsb8l8jsg', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:23'),
('dhjdtbrdfgyocpt4iaix6v0z4kl5ihkx', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:12:23'),
('fieroutnn0xhje6q2bsfjjpe5suty4cu', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:24'),
('girgcpqmw03q6dc8t7ygjpokppcmv39k', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:22'),
('gv0ogv2f3yd4xenvs03m4okpu0urdafk', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:17'),
('hi0udrd7gdk2s4parm8dczh4tdaly8v7', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:17'),
('ie4xqdwzkemtk7pewphk0msf11pra0kz', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:11:17'),
('iggp835p6vbvb6tcnp1e1n21lz0b221k', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:12:21'),
('j7m2netrl8dc6srwr3nyvn06gziivqzx', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:11:07'),
('kuob7axr9hjfbhs7vka5vwif1kv1ip4f', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:13:00'),
('l777d9tm4nq3as46jnyxz6pvbu2nzr27', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:32'),
('mai6fq5wgj7vkjdwszwtru3qz8iva51m', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:11:21'),
('mtlgjfme0miexy0tgljr7qd33wtyyc15', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:24'),
('n1mny13k8q446sel1r9g258namaxkpx2', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:13:04'),
('nlwk0wdjutgw0lg791bzrz7oy0ugh2s9', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:11:04'),
('nzkz1ame1y2c9u57526agvfy8a6qibgt', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:11:11'),
('oav1rl7yk0ss5o6fngppf2mkrhinjtkx', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:21'),
('ogyc3z7meypkla69osxrf4p7vba26e75', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:12:24'),
('pnrufxccgl5jpcrnxwh8gbbn8ri9kcc9', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:15'),
('rq39g8kcmr6ifcdb6uypqw2j5ymxhd1n', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:13:04'),
('u5x9k3cy060gpi37c9zrqmlxjz906zfd', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:13:00'),
('uh961xkalh3fri0vydpn6cw5ym4dobsl', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:21'),
('v0ee3wc0ny8k904x3sblclqginczls26', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:22'),
('vre7psn8lkcjfhsljlrdjjo9zmumxdy8', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:13:17'),
('w1f3dg8ndl8h6wsd9uirdo89z75o6tr8', 'ODM2ZTUzMDJlODViODYzN2UzMzg5NjBhMDc0M2Q3MDk1ZmMzMDBmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmMWM5YWRhNjBlODRiNmRmOWFjMjhkNGU5ZmFhM2M2NmE2MWJjODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-24 19:16:12'),
('whrl4irjfux8hqlvk0tjhf2ucfvphskx', 'YjE4ZjhkYmRiMmQ4ZjI5NGY2ZjkxNjBhZGJiOWJkNzY3Y2YzODg3ODp7fQ==', '2015-02-24 19:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `nte_about_this_app`
--

CREATE TABLE IF NOT EXISTS `nte_about_this_app` (
`id` int(11) NOT NULL,
  `about_fld` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nte_about_this_app`
--

INSERT INTO `nte_about_this_app` (`id`, `about_fld`, `createdtime`, `updatedtime`) VALUES
(1, 'this the notes database for g..', '2012-06-03 04:54:35', '2012-06-07 13:04:48'),
(2, 'history enabled now.\r\n2012-06-06_Jun_Wed-10.17-AM ', '2012-06-06 18:17:23', NULL),
(3, 'a', '2013-04-11 17:21:59', '2013-04-11 13:21:59'),
(4, 'test 2', '2013-04-29 20:10:13', '2013-04-30 11:17:52'),
(5, 'test', '2013-05-22 15:44:28', '2013-05-22 11:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `nte_about_this_app__history`
--

CREATE TABLE IF NOT EXISTS `nte_about_this_app__history` (
`history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `about_fld` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nte_about_this_app__history`
--

INSERT INTO `nte_about_this_app__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `id`, `about_fld`, `createdtime`, `updatedtime`) VALUES
(1, 'en', '', 'user', 0, '2013-05-22 11:44:28', 5, 'test', '2013-05-22 15:44:28', '2013-05-22 11:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `nte_note`
--

CREATE TABLE IF NOT EXISTS `nte_note` (
`note_id` int(11) NOT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2916 ;

--
-- Dumping data for table `nte_note`
--

INSERT INTO `nte_note` (`note_id`, `note_fld`, `tags_fld`, `state_fld`, `createdtime`, `updatedtime`, `datenote`, `date1`, `active`) VALUES
(2836, '<p>a</p>', NULL, NULL, '2012-07-16 16:38:16', '2012-07-16 12:38:16', NULL, NULL, NULL),
(2837, '<p>b</p>', NULL, NULL, '2012-07-16 16:38:59', '2012-07-16 12:38:59', NULL, NULL, NULL),
(2838, 'a', NULL, NULL, '2012-07-16 17:01:01', '2013-04-15 11:55:51', NULL, NULL, NULL),
(2839, '<p>e</p>', NULL, NULL, '2012-07-16 17:04:29', '2012-07-16 13:09:20', NULL, NULL, NULL),
(2840, '2013-04-08_Mon_11.49-AM', NULL, NULL, '2013-04-08 15:49:08', '2013-04-15 11:49:15', NULL, NULL, NULL),
(2841, NULL, NULL, NULL, '2013-04-08 15:50:09', '2013-04-08 11:50:09', NULL, NULL, NULL),
(2842, '11:56AM', NULL, NULL, '2013-04-08 15:56:29', '2013-04-15 11:53:44', NULL, NULL, 'No'),
(2843, '2013-04-08_Mon_12.01-PM', NULL, NULL, '2013-04-08 16:01:39', '2013-04-15 11:49:37', NULL, NULL, NULL),
(2844, '<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>', NULL, NULL, '2013-04-08 16:04:21', '2013-04-08 12:05:29', NULL, NULL, NULL),
(2845, '2845\r\n', NULL, NULL, '2013-04-08 19:13:48', '2013-04-24 15:43:18', NULL, NULL, 'No'),
(2846, NULL, NULL, NULL, '2013-04-08 19:53:15', '2013-04-08 15:53:15', NULL, NULL, NULL),
(2847, '2013-04-09_Tue_08.26-AM', NULL, NULL, '2013-04-09 12:26:16', '2013-05-03 10:40:43', NULL, NULL, 'No'),
(2848, NULL, NULL, NULL, '2013-04-09 12:31:02', '2013-04-09 08:32:07', '2013-04-09 11:31:23', NULL, 'Yes'),
(2849, NULL, NULL, NULL, '2013-04-09 12:47:16', '2013-04-10 09:19:50', '2013-04-09 08:47:23', NULL, 'Yes'),
(2850, 'q', NULL, NULL, '2013-04-15 18:16:23', '2013-04-15 14:16:56', '2013-04-10 14:16:23', NULL, NULL),
(2851, 'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there''s no shortage of big players in the market, Dell''s late arrival doesn''t mean it''s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell''s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs ┬ú299/US$449.99, the 32GB version with the keyboard dock costs ┬ú409/US$599.99, the 64GB without a keyboard costs ┬ú339/US$499.99, while the 64GB version with the dock is ┬ú444/US$649.99.\r\n', NULL, NULL, '2013-04-18 15:12:59', '2013-04-18 11:49:54', NULL, NULL, NULL),
(2852, 'test mail send', NULL, NULL, '2013-04-19 18:09:18', '2013-04-19 14:09:18', '2013-04-19 14:09:23', NULL, NULL),
(2853, 'test tags', NULL, NULL, '2013-04-19 18:09:53', '2013-04-19 14:09:53', NULL, NULL, NULL),
(2854, '04:00PM', NULL, NULL, '2013-04-19 20:00:52', '2013-04-19 16:00:52', NULL, NULL, NULL),
(2855, '04:27PM', NULL, NULL, '2013-04-19 20:27:08', '2013-04-19 16:27:08', NULL, NULL, NULL),
(2856, '2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx', NULL, NULL, '2013-04-19 20:30:11', '2013-04-19 16:30:11', NULL, NULL, NULL),
(2857, '2013-04-22_Mon_10.30-AM test csd email', NULL, NULL, '2013-04-22 14:30:55', '2013-04-22 10:30:55', '2013-04-22 10:30:23', NULL, 'Yes'),
(2858, 'a', NULL, NULL, '2013-04-22 14:33:43', '2013-04-22 10:33:43', '2013-04-22 10:33:23', NULL, 'No'),
(2859, 'test double email', NULL, NULL, '2013-04-22 14:40:15', '2013-04-22 10:40:15', '2013-04-22 10:40:23', NULL, 'Yes'),
(2860, 'cleaned up', NULL, NULL, '2013-04-22 15:03:50', '2013-04-22 11:03:50', '2013-04-22 11:03:23', NULL, 'Yes'),
(2861, 'Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you''ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it''s not very long and it will help you get started.\r\n\r\nNow that''s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams'' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an "@ubuntu.com" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases', NULL, NULL, '2013-04-22 15:07:43', '2013-04-22 11:07:43', '2013-04-22 11:07:23', NULL, 'Yes'),
(2862, 'b', NULL, NULL, '2013-04-22 15:11:08', '2013-04-22 11:11:08', '2013-04-22 11:11:23', NULL, 'Yes'),
(2863, 'Weiss\r\n', NULL, NULL, '2013-04-22 15:28:44', '2013-04-22 11:28:44', '2013-04-22 11:28:23', NULL, 'Yes'),
(2864, 'email on?', NULL, NULL, '2013-04-24 16:04:36', '2013-04-24 12:04:36', '2013-04-24 12:04:23', NULL, 'Yes'),
(2865, '2013-04-24_Wed_14.22-PM test with filter. 03:48PM', NULL, NULL, '2013-04-24 18:22:42', '2013-04-24 15:48:41', '2013-04-24 14:22:23', NULL, 'Yes'),
(2866, 'moved default filter to index.php', NULL, NULL, '2013-04-24 19:34:19', '2013-04-24 15:34:19', '2013-04-24 15:34:23', NULL, NULL),
(2867, 'moved default filter to index.php', NULL, NULL, '2013-04-24 19:35:00', '2013-04-24 15:35:00', '2013-04-24 15:34:23', NULL, NULL),
(2868, 'a', NULL, NULL, '2013-04-24 19:35:31', '2013-04-24 15:35:31', '2013-04-24 15:35:23', NULL, 'Yes'),
(2869, 'a', NULL, NULL, '2013-04-24 19:35:34', '2013-04-24 15:35:34', '2013-04-24 15:35:23', NULL, 'Yes'),
(2870, 'test index.php filter', NULL, NULL, '2013-04-24 19:37:08', '2013-04-24 15:37:08', '2013-04-24 15:37:23', NULL, 'No'),
(2871, 'a', NULL, NULL, '2013-04-24 19:41:51', '2013-04-24 15:41:51', '2013-04-24 15:41:23', NULL, 'Yes'),
(2872, '2013-04-25_Thu_09.58-AM', NULL, NULL, '2013-04-25 13:59:01', '2013-04-25 09:59:01', '2013-04-25 09:58:23', NULL, 'Yes'),
(2873, '2013-04-25_Thu_10.29-AM default sort in sql in fields.ini', NULL, NULL, '2013-04-25 14:29:35', '2013-04-25 10:29:35', '2013-04-25 10:29:23', NULL, 'Yes'),
(2874, '2013-04-25_Thu_10.36-AM test view add', NULL, NULL, '2013-04-25 14:36:50', '2013-04-25 10:36:50', '2013-04-25 10:36:23', NULL, 'Yes'),
(2875, '  75 2013-04-25_Thu_10.41-AM test view add  ', '75', NULL, '2013-04-25 14:41:22', '2013-09-10 16:12:01', '2013-09-10 16:11:00', NULL, 'Yes'),
(2876, '2013-04-25_Thu_10.49-AM', NULL, NULL, '2013-04-25 14:49:23', '2013-04-25 10:49:23', '2013-04-25 10:49:23', NULL, 'Yes'),
(2877, '2013-04-25_Thu_10.53-AM', NULL, NULL, '2013-04-25 14:53:35', '2013-05-22 11:27:21', '2013-04-25 10:53:23', NULL, 'Yes'),
(2878, '2013-04-25_Thu_10.54-AM', NULL, NULL, '2013-04-25 14:54:14', '2013-04-29 09:08:34', '2013-04-29 09:08:23', NULL, 'Yes'),
(2879, '       test email from filtered table     \r\ng\r\n2\r\n3\r\n45\r\n6\r\n  ', '2879,79,b', NULL, '2013-04-29 13:12:21', '2013-09-10 14:28:23', '2013-04-29 09:12:23', NULL, 'Yes'),
(2880, '        test two email 80\r\nc      \r\n10:03AM ', '80c', 'Louisiana', '2013-04-29 18:31:54', '2013-09-24 12:05:24', '2013-09-11 01:00:00', '1969-12-31', 'Yes'),
(2881, 'test bcc cc. 2013-04-30_Tue_11.18-AM', NULL, NULL, '2013-04-29 18:36:27', '2013-04-30 11:18:48', '2013-04-29 14:36:23', NULL, 'Yes'),
(2882, '2013-05-02_Thu_13.22-PM test offline', NULL, NULL, '2013-05-02 17:24:06', '2013-05-02 13:24:06', '2013-05-02 13:22:23', NULL, 'Yes'),
(2883, 'moved xampp from c p2 websw to c p2', NULL, NULL, '2013-05-02 19:37:30', '2013-05-02 15:37:30', NULL, NULL, 'Yes'),
(2884, 'testing mysql copy with xcopy', NULL, NULL, '2013-05-03 13:27:11', '2013-05-03 10:19:21', '2013-05-03 09:27:23', NULL, 'Yes'),
(2885, ' going  home 2', '2', NULL, '2013-05-06 20:36:19', '2013-09-10 13:19:34', '2013-05-06 16:36:23', NULL, 'Yes'),
(2886, 'a', NULL, NULL, '2013-05-22 15:35:32', '2013-05-22 13:39:41', NULL, NULL, 'Yes'),
(2887, '   a  92405 z', '2887z', NULL, '2013-06-13 12:50:09', '2013-09-10 16:12:48', '2013-09-10 16:12:00', NULL, 'Yes'),
(2888, 'b', NULL, NULL, '2013-06-13 12:51:44', '2013-06-13 08:51:44', NULL, NULL, 'Yes'),
(2889, 'c', NULL, NULL, '2013-06-13 12:52:52', '2013-06-13 08:52:52', NULL, NULL, 'Yes'),
(2890, 'a', NULL, NULL, '2013-06-13 12:53:26', '2013-06-13 08:53:26', NULL, NULL, 'Yes'),
(2891, 'd', NULL, NULL, '2013-06-13 13:15:08', '2013-06-13 15:12:10', NULL, NULL, 'Yes'),
(2892, '2013-06-18_Tue_09.23-AM\r\n2013-06-18_Tue_09.23-AM', NULL, NULL, '2013-06-18 13:24:09', '2013-06-18 09:24:09', '2013-06-18 12:23:00', NULL, 'Yes'),
(2893, '2013-06-18_Tue_09.25-AM', NULL, NULL, '2013-06-18 13:26:04', '2013-06-18 09:26:04', '2013-06-18 12:25:00', NULL, 'Yes'),
(2894, 'this is the content of the note_fld. It should be in the form as well as echoed here.', NULL, NULL, '2013-06-18 13:26:35', '2013-08-28 14:57:13', NULL, NULL, 'Yes'),
(2895, 'a', NULL, NULL, '2013-06-18 13:28:06', '2013-06-18 09:28:06', NULL, NULL, 'Yes'),
(2896, 'test 2013-07-19_Fri_09.40-AM', NULL, NULL, '2013-06-18 13:28:46', '2013-07-19 09:43:49', NULL, NULL, 'Yes'),
(2897, 'e', NULL, NULL, '2013-06-18 13:35:15', '2013-06-18 09:35:15', NULL, NULL, 'Yes'),
(2898, '  d  ', '91.2', NULL, '2013-06-18 13:35:19', '2013-09-10 13:19:10', NULL, NULL, 'Yes'),
(2899, ' c ', '2889', NULL, '2013-06-27 15:26:03', '2013-09-10 12:21:58', '2013-06-27 14:25:00', NULL, 'Yes'),
(2900, NULL, 'csddg\nemail\ngustin\nnew', NULL, '2013-07-26 14:40:27', '2013-07-26 10:40:27', NULL, NULL, NULL),
(2901, 'a', NULL, NULL, '2013-09-17 16:49:10', '2013-09-17 12:49:10', NULL, NULL, 'Yes'),
(2902, '2013-09-17_Tue_13.03-PM', NULL, NULL, '2013-09-17 17:03:21', '2013-09-17 13:03:21', '2013-09-17 13:03:00', NULL, 'Yes'),
(2903, NULL, NULL, NULL, '2013-09-17 17:03:36', '2013-09-17 13:03:36', '2013-09-17 13:03:00', NULL, 'Yes'),
(2904, NULL, NULL, 'Tennessee', '2013-09-17 17:18:11', '2013-09-17 13:18:11', '2013-09-17 13:18:00', NULL, 'Yes'),
(2905, NULL, NULL, NULL, '2013-09-23 20:11:52', '2013-09-23 16:11:52', '2013-09-23 16:11:00', NULL, 'Yes'),
(2906, NULL, NULL, NULL, '2013-09-24 14:59:48', '2013-09-24 10:59:48', '0000-09-21 00:00:00', NULL, NULL),
(2907, NULL, NULL, NULL, '2013-09-24 15:36:26', '2013-09-24 11:36:26', '2013-09-24 00:00:00', NULL, NULL),
(2908, NULL, NULL, NULL, '2013-09-24 15:38:09', '2013-09-24 11:38:09', '2013-09-24 00:00:00', NULL, NULL),
(2909, NULL, NULL, NULL, '2013-09-24 15:50:50', '2013-09-24 11:50:50', NULL, '1969-12-31', NULL),
(2910, '  ', NULL, NULL, '2013-09-24 15:55:18', '2013-10-09 13:50:47', '2013-10-09 13:50:00', '1969-12-31', 'Yes'),
(2911, NULL, NULL, '3', '2015-04-15 16:49:33', '2015-04-15 12:49:33', NULL, NULL, 'Yes'),
(2912, NULL, NULL, 'Alabama', '2015-04-15 16:50:13', '2015-04-15 12:50:13', NULL, NULL, 'Yes'),
(2913, NULL, NULL, 'Connecticut', '2015-04-15 17:04:53', '2015-04-15 13:04:53', NULL, NULL, 'Yes'),
(2914, NULL, NULL, 'District of Columbia', '2015-04-15 17:06:04', '2015-04-15 13:06:04', NULL, NULL, 'Yes'),
(2915, NULL, NULL, 'Michigan -01:06PM', '2015-04-15 17:06:40', '2015-04-15 13:06:40', NULL, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `nte_note_tags`
--

CREATE TABLE IF NOT EXISTS `nte_note_tags` (
  `nid` int(11) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nte_note_tags`
--

INSERT INTO `nte_note_tags` (`nid`, `tid`) VALUES
(2840, 2),
(2841, 2),
(2842, 1),
(2842, 2),
(2842, 3),
(2842, 4),
(2843, 2),
(2843, 3),
(2843, 6),
(2844, 1),
(2844, 3),
(2845, 9),
(2846, 1),
(2846, 3),
(2847, 9),
(2849, 1),
(2849, 3),
(2850, 4),
(2850, 9),
(2853, 3),
(2853, 9),
(2857, 3),
(2858, 7),
(2858, 9),
(2858, 11),
(2859, 3),
(2859, 6),
(2860, 3),
(2860, 6),
(2860, 9),
(2861, 6),
(2862, 3),
(2863, 5),
(2864, 9),
(2865, 9),
(2866, 1),
(2866, 9),
(2867, 1),
(2867, 9),
(2868, 6),
(2869, 6),
(2870, 9),
(2871, 3),
(2872, 6),
(2873, 9),
(2876, 6),
(2876, 9),
(2877, 5),
(2877, 6),
(2877, 13),
(2878, 3),
(2878, 5),
(2878, 6),
(2878, 7),
(2879, 9),
(2880, 9),
(2881, 1),
(2882, 9),
(2884, 1),
(2884, 3),
(2884, 4),
(2884, 9),
(2885, 3),
(2886, 14),
(2886, 15),
(2891, 6),
(2891, 9),
(2891, 16),
(2891, 18),
(2892, 16),
(2892, 19),
(2893, 16),
(2893, 19),
(2899, 9);

-- --------------------------------------------------------

--
-- Table structure for table `nte_note__history`
--

CREATE TABLE IF NOT EXISTS `nte_note__history` (
`history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `updatedtime` datetime DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `date1` date DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- Dumping data for table `nte_note__history`
--

INSERT INTO `nte_note__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `note_fld`, `tags_fld`, `updatedtime`, `note_id`, `createdtime`, `datenote`, `active`, `state_fld`, `date1`) VALUES
(1, 'en', '', 'user', 0, '2013-05-22 11:35:32', NULL, NULL, '2013-05-22 11:35:32', 2886, '2013-05-22 15:35:32', NULL, 'Yes', NULL, NULL),
(2, 'en', '', 'user', 0, '2013-05-22 11:36:31', 'a', NULL, '2013-05-22 11:36:31', 2886, '2013-05-22 15:35:32', NULL, 'Yes', NULL, NULL),
(3, 'en', '', 'user', 0, '2013-05-22 13:39:35', 'a', NULL, '2013-05-22 13:39:35', 2886, '2013-05-22 15:35:32', NULL, 'Yes', NULL, NULL),
(4, 'en', '', 'user', 0, '2013-05-22 13:39:41', 'a', NULL, '2013-05-22 13:39:41', 2886, '2013-05-22 15:35:32', NULL, 'Yes', NULL, NULL),
(5, 'en', '', 'user', 0, '2013-06-13 08:50:09', 'a', NULL, '2013-06-13 08:50:09', 2887, '2013-06-13 12:50:09', NULL, 'Yes', NULL, NULL),
(6, 'en', '', 'user', 0, '2013-06-13 08:51:44', 'b', NULL, '2013-06-13 08:51:44', 2888, '2013-06-13 12:51:44', NULL, 'Yes', NULL, NULL),
(7, 'en', '', 'user', 0, '2013-06-13 08:52:52', 'c', NULL, '2013-06-13 08:52:52', 2889, '2013-06-13 12:52:52', NULL, 'Yes', NULL, NULL),
(8, 'en', '', 'user', 0, '2013-06-13 08:53:26', 'a', NULL, '2013-06-13 08:53:26', 2890, '2013-06-13 12:53:26', NULL, 'Yes', NULL, NULL),
(9, 'en', '', 'user', 0, '2013-06-13 09:15:08', 'd', NULL, '2013-06-13 09:15:08', 2891, '2013-06-13 13:15:08', NULL, 'Yes', NULL, NULL),
(10, 'en', '', 'user', 0, '2013-06-13 15:11:48', 'd', NULL, '2013-06-13 15:11:48', 2891, '2013-06-13 13:15:08', NULL, 'Yes', NULL, NULL),
(11, 'en', '', 'user', 0, '2013-06-13 15:12:10', 'd', NULL, '2013-06-13 15:12:10', 2891, '2013-06-13 13:15:08', NULL, 'Yes', NULL, NULL),
(12, 'en', '', 'user', 0, '2013-06-18 09:24:09', '2013-06-18_Tue_09.23-AM\r\n2013-06-18_Tue_09.23-AM', NULL, '2013-06-18 09:24:09', 2892, '2013-06-18 13:24:09', '2013-06-18 12:23:00', 'Yes', NULL, NULL),
(13, 'en', '', 'user', 0, '2013-06-18 09:26:04', '2013-06-18_Tue_09.25-AM', NULL, '2013-06-18 09:26:04', 2893, '2013-06-18 13:26:04', '2013-06-18 12:25:00', 'Yes', NULL, NULL),
(14, 'en', '', 'user', 0, '2013-06-18 09:26:35', 'a', NULL, '2013-06-18 09:26:35', 2894, '2013-06-18 13:26:35', NULL, 'Yes', NULL, NULL),
(15, 'en', '', 'user', 0, '2013-06-18 09:28:06', 'a', NULL, '2013-06-18 09:28:06', 2895, '2013-06-18 13:28:06', NULL, 'Yes', NULL, NULL),
(16, 'en', '', 'user', 0, '2013-06-18 09:28:46', 'test dup', NULL, '2013-06-18 09:28:46', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(17, 'en', '', 'user', 0, '2013-06-18 09:28:52', 'test dup', NULL, '2013-06-18 09:28:52', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(18, 'en', '', 'user', 0, '2013-06-18 09:28:55', 'test dup', NULL, '2013-06-18 09:28:55', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(19, 'en', '', 'user', 0, '2013-06-18 09:29:00', 'test dup', NULL, '2013-06-18 09:29:00', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(20, 'en', '', 'user', 0, '2013-06-18 09:29:03', 'test dup', NULL, '2013-06-18 09:29:03', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(21, 'en', '', 'user', 0, '2013-06-18 09:29:13', 'test dup', NULL, '2013-06-18 09:29:13', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(22, 'en', '', 'user', 0, '2013-06-18 09:29:15', 'test dup', NULL, '2013-06-18 09:29:15', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(23, 'en', '', 'user', 0, '2013-06-18 09:29:35', 'test dup', NULL, '2013-06-18 09:29:35', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(24, 'en', '', 'user', 0, '2013-06-18 09:33:49', 'test dup2', NULL, '2013-06-18 09:33:49', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(25, 'en', '', 'user', 0, '2013-06-18 09:33:50', 'test dup2', NULL, '2013-06-18 09:33:50', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(26, 'en', '', 'user', 0, '2013-06-18 09:34:44', 'test dup3', NULL, '2013-06-18 09:34:44', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(27, 'en', '', 'user', 0, '2013-06-18 09:35:15', 'e', NULL, '2013-06-18 09:35:15', 2897, '2013-06-18 13:35:15', NULL, 'Yes', NULL, NULL),
(28, 'en', '', 'user', 0, '2013-06-18 09:35:19', 'e', NULL, '2013-06-18 09:35:19', 2898, '2013-06-18 13:35:19', NULL, 'Yes', NULL, NULL),
(29, 'en', '', 'user', 0, '2013-06-27 11:26:03', 'dr', NULL, '2013-06-27 11:26:03', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(30, 'en', '', 'user', 0, '2013-07-18 10:43:47', 'drd ', NULL, '2013-07-18 10:43:47', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(31, 'en', '', 'user', 0, '2013-07-18 12:17:30', 'drd ', NULL, '2013-07-18 12:17:30', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(32, 'en', '', 'user', 0, '2013-07-18 12:17:30', 'drd ', NULL, '2013-07-18 12:17:30', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(33, 'en', '', 'user', 0, '2013-07-18 12:17:31', 'drd ', NULL, '2013-07-18 12:17:31', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(34, 'en', '', 'user', 0, '2013-07-18 12:17:31', 'drd ', NULL, '2013-07-18 12:17:31', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(35, 'en', '', 'user', 0, '2013-07-18 12:17:31', 'drd ', NULL, '2013-07-18 12:17:31', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(36, 'en', '', 'user', 0, '2013-07-18 12:17:31', 'drd ', NULL, '2013-07-18 12:17:31', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(37, 'en', '', 'user', 0, '2013-07-18 12:17:32', 'drd ', NULL, '2013-07-18 12:17:32', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(38, 'en', '', 'user', 0, '2013-07-18 12:17:32', 'drd ', NULL, '2013-07-18 12:17:32', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(39, 'en', '', 'user', 0, '2013-07-19 08:19:48', 'drd ', NULL, '2013-07-19 08:19:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(40, 'en', '', 'user', 0, '2013-07-19 08:19:48', 'drd ', NULL, '2013-07-19 08:19:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(41, 'en', '', 'user', 0, '2013-07-19 08:19:49', 'drd ', NULL, '2013-07-19 08:19:49', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(42, 'en', '', 'user', 0, '2013-07-19 08:19:52', 'drd ', NULL, '2013-07-19 08:19:52', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(43, 'en', '', 'user', 0, '2013-07-19 08:19:52', 'drd ', NULL, '2013-07-19 08:19:52', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(44, 'en', '', 'user', 0, '2013-07-19 08:19:53', 'drd ', NULL, '2013-07-19 08:19:53', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(45, 'en', '', 'user', 0, '2013-07-19 08:19:53', 'drd ', NULL, '2013-07-19 08:19:53', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(46, 'en', '', 'user', 0, '2013-07-19 08:19:53', 'drd ', NULL, '2013-07-19 08:19:53', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(47, 'en', '', 'user', 0, '2013-07-19 08:20:40', 'drd ', NULL, '2013-07-19 08:20:40', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(48, 'en', '', 'user', 0, '2013-07-19 08:20:40', 'drd ', NULL, '2013-07-19 08:20:40', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(49, 'en', '', 'user', 0, '2013-07-19 08:20:43', 'drd ', NULL, '2013-07-19 08:20:43', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(50, 'en', '', 'user', 0, '2013-07-19 08:20:43', 'drd ', NULL, '2013-07-19 08:20:43', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(51, 'en', '', 'user', 0, '2013-07-19 08:20:44', 'drd ', NULL, '2013-07-19 08:20:44', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(52, 'en', '', 'user', 0, '2013-07-19 08:20:44', 'drd ', NULL, '2013-07-19 08:20:44', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(53, 'en', '', 'user', 0, '2013-07-19 08:20:45', 'drd ', NULL, '2013-07-19 08:20:45', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(54, 'en', '', 'user', 0, '2013-07-19 08:20:45', 'drd ', NULL, '2013-07-19 08:20:45', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(55, 'en', '', 'user', 0, '2013-07-19 08:20:46', 'drd ', NULL, '2013-07-19 08:20:46', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(56, 'en', '', 'user', 0, '2013-07-19 08:20:46', 'drd ', NULL, '2013-07-19 08:20:46', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(57, 'en', '', 'user', 0, '2013-07-19 08:20:46', 'drd ', NULL, '2013-07-19 08:20:46', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(58, 'en', '', 'user', 0, '2013-07-19 08:20:46', 'drd ', NULL, '2013-07-19 08:20:46', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(59, 'en', '', 'user', 0, '2013-07-19 08:20:47', 'drd ', NULL, '2013-07-19 08:20:47', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(60, 'en', '', 'user', 0, '2013-07-19 08:20:47', 'drd ', NULL, '2013-07-19 08:20:47', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(61, 'en', '', 'user', 0, '2013-07-19 08:20:47', 'drd ', NULL, '2013-07-19 08:20:47', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(62, 'en', '', 'user', 0, '2013-07-19 08:20:48', 'drd ', NULL, '2013-07-19 08:20:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(63, 'en', '', 'user', 0, '2013-07-19 08:20:48', 'drd ', NULL, '2013-07-19 08:20:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(64, 'en', '', 'user', 0, '2013-07-19 08:20:48', 'drd ', NULL, '2013-07-19 08:20:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(65, 'en', '', 'user', 0, '2013-07-19 08:20:48', 'drd ', NULL, '2013-07-19 08:20:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(66, 'en', '', 'user', 0, '2013-07-19 08:20:52', 'drd ', NULL, '2013-07-19 08:20:52', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(67, 'en', '', 'user', 0, '2013-07-19 08:20:52', 'drd ', NULL, '2013-07-19 08:20:52', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(68, 'en', '', 'user', 0, '2013-07-19 08:20:52', 'drd ', NULL, '2013-07-19 08:20:52', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(69, 'en', '', 'user', 0, '2013-07-19 08:20:53', 'drd ', NULL, '2013-07-19 08:20:53', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(70, 'en', '', 'user', 0, '2013-07-19 08:20:54', 'drd ', NULL, '2013-07-19 08:20:54', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(71, 'en', '', 'user', 0, '2013-07-19 08:20:54', 'drd ', NULL, '2013-07-19 08:20:54', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(72, 'en', '', 'user', 0, '2013-07-19 08:20:57', 'drd ', NULL, '2013-07-19 08:20:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(73, 'en', '', 'user', 0, '2013-07-19 08:20:57', 'drd ', NULL, '2013-07-19 08:20:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(74, 'en', '', 'user', 0, '2013-07-19 08:21:00', 'drd ', NULL, '2013-07-19 08:21:00', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(75, 'en', '', 'user', 0, '2013-07-19 08:21:00', 'drd ', NULL, '2013-07-19 08:21:00', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(76, 'en', '', 'user', 0, '2013-07-19 08:21:01', 'drd ', NULL, '2013-07-19 08:21:01', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(77, 'en', '', 'user', 0, '2013-07-19 08:21:02', 'drd ', NULL, '2013-07-19 08:21:02', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(78, 'en', '', 'user', 0, '2013-07-19 08:21:02', 'drd ', NULL, '2013-07-19 08:21:02', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(79, 'en', '', 'user', 0, '2013-07-19 08:21:06', 'drd ', NULL, '2013-07-19 08:21:06', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(80, 'en', '', 'user', 0, '2013-07-19 08:21:06', 'drd ', NULL, '2013-07-19 08:21:06', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(81, 'en', '', 'user', 0, '2013-07-19 08:21:07', 'drd ', NULL, '2013-07-19 08:21:07', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(82, 'en', '', 'user', 0, '2013-07-19 08:21:07', 'drd ', NULL, '2013-07-19 08:21:07', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(83, 'en', '', 'user', 0, '2013-07-19 08:21:08', 'drd ', NULL, '2013-07-19 08:21:08', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(84, 'en', '', 'user', 0, '2013-07-19 08:21:13', 'drd ', NULL, '2013-07-19 08:21:13', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(85, 'en', '', 'user', 0, '2013-07-19 08:21:14', 'drd ', NULL, '2013-07-19 08:21:14', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(86, 'en', '', 'user', 0, '2013-07-19 08:21:14', 'drd ', NULL, '2013-07-19 08:21:14', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(87, 'en', '', 'user', 0, '2013-07-19 08:21:14', 'drd ', NULL, '2013-07-19 08:21:14', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(88, 'en', '', 'user', 0, '2013-07-19 08:21:15', 'drd ', NULL, '2013-07-19 08:21:15', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(89, 'en', '', 'user', 0, '2013-07-19 08:21:15', 'drd ', NULL, '2013-07-19 08:21:15', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(90, 'en', '', 'user', 0, '2013-07-19 08:21:15', 'drd ', NULL, '2013-07-19 08:21:15', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(91, 'en', '', 'user', 0, '2013-07-19 08:23:01', 'drd ', NULL, '2013-07-19 08:23:01', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(92, 'en', '', 'user', 0, '2013-07-19 08:23:04', 'drd ', NULL, '2013-07-19 08:23:04', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(93, 'en', '', 'user', 0, '2013-07-19 08:23:05', 'drd ', NULL, '2013-07-19 08:23:05', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(94, 'en', '', 'user', 0, '2013-07-19 08:23:08', 'drd ', NULL, '2013-07-19 08:23:08', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(95, 'en', '', 'user', 0, '2013-07-19 08:23:09', 'drd ', NULL, '2013-07-19 08:23:09', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(96, 'en', '', 'user', 0, '2013-07-19 08:23:10', 'drd ', NULL, '2013-07-19 08:23:10', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(97, 'en', '', 'user', 0, '2013-07-19 08:23:14', 'drd ', NULL, '2013-07-19 08:23:14', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(98, 'en', '', 'user', 0, '2013-07-19 08:23:15', 'drd ', NULL, '2013-07-19 08:23:15', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(99, 'en', '', 'user', 0, '2013-07-19 08:23:16', 'drd ', NULL, '2013-07-19 08:23:16', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(100, 'en', '', 'user', 0, '2013-07-19 08:25:49', 'drd ', NULL, '2013-07-19 08:25:49', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(101, 'en', '', 'user', 0, '2013-07-19 08:25:53', 'drd ', NULL, '2013-07-19 08:25:53', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(102, 'en', '', 'user', 0, '2013-07-19 08:25:57', 'drd ', NULL, '2013-07-19 08:25:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(103, 'en', '', 'user', 0, '2013-07-19 08:26:57', 'drd ', NULL, '2013-07-19 08:26:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(104, 'en', '', 'user', 0, '2013-07-19 08:27:08', 'drd ', NULL, '2013-07-19 08:27:08', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(105, 'en', '', 'user', 0, '2013-07-19 08:27:16', 'drd ', NULL, '2013-07-19 08:27:16', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(106, 'en', '', 'user', 0, '2013-07-19 08:29:54', 'drd ', NULL, '2013-07-19 08:29:54', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(107, 'en', '', 'user', 0, '2013-07-19 08:29:59', 'drd ', NULL, '2013-07-19 08:29:59', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(108, 'en', '', 'user', 0, '2013-07-19 08:30:35', 'drd ', NULL, '2013-07-19 08:30:35', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(109, 'en', '', 'user', 0, '2013-07-19 08:30:39', 'drd ', NULL, '2013-07-19 08:30:39', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(110, 'en', '', 'user', 0, '2013-07-19 08:30:43', 'drd ', NULL, '2013-07-19 08:30:43', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(111, 'en', '', 'user', 0, '2013-07-19 08:30:48', 'drd ', NULL, '2013-07-19 08:30:48', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(112, 'en', '', 'user', 0, '2013-07-19 08:31:05', 'drd ', NULL, '2013-07-19 08:31:05', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(113, 'en', '', 'user', 0, '2013-07-19 08:31:33', 'drd ', NULL, '2013-07-19 08:31:33', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(114, 'en', '', 'user', 0, '2013-07-19 08:31:35', 'drd ', NULL, '2013-07-19 08:31:35', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(115, 'en', '', 'user', 0, '2013-07-19 08:32:41', 'drd ', NULL, '2013-07-19 08:32:41', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(116, 'en', '', 'user', 0, '2013-07-19 08:32:44', 'drd ', NULL, '2013-07-19 08:32:44', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(117, 'en', '', 'user', 0, '2013-07-19 08:32:47', 'drd ', NULL, '2013-07-19 08:32:47', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(118, 'en', '', 'user', 0, '2013-07-19 08:35:13', 'drd ', NULL, '2013-07-19 08:35:13', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(119, 'en', '', 'user', 0, '2013-07-19 08:38:56', 'drd ', NULL, '2013-07-19 08:38:56', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(120, 'en', '', 'user', 0, '2013-07-19 08:42:50', 'test dup3', NULL, '2013-07-19 08:42:50', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(121, 'en', '', 'user', 0, '2013-07-19 08:42:55', 'test dup3', NULL, '2013-07-19 08:42:55', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(122, 'en', '', 'user', 0, '2013-07-19 08:42:58', 'test dup3', NULL, '2013-07-19 08:42:58', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(123, 'en', '', 'user', 0, '2013-07-19 08:58:49', 'drd ', NULL, '2013-07-19 08:58:49', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(124, 'en', '', 'user', 0, '2013-07-19 08:58:55', 'drd ', NULL, '2013-07-19 08:58:55', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(125, 'en', '', 'user', 0, '2013-07-19 08:59:00', 'drd ', NULL, '2013-07-19 08:59:00', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(126, 'en', '', 'user', 0, '2013-07-19 08:59:06', 'drd ', NULL, '2013-07-19 08:59:06', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(127, 'en', '', 'user', 0, '2013-07-19 08:59:09', 'drd ', NULL, '2013-07-19 08:59:09', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(128, 'en', '', 'user', 0, '2013-07-19 09:40:56', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:40:56', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(129, 'en', '', 'user', 0, '2013-07-19 09:41:02', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:02', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(130, 'en', '', 'user', 0, '2013-07-19 09:41:03', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:03', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(131, 'en', '', 'user', 0, '2013-07-19 09:41:04', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:04', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(132, 'en', '', 'user', 0, '2013-07-19 09:41:05', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:05', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(133, 'en', '', 'user', 0, '2013-07-19 09:41:45', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:45', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(134, 'en', '', 'user', 0, '2013-07-19 09:41:46', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:46', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(135, 'en', '', 'user', 0, '2013-07-19 09:41:47', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:47', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(136, 'en', '', 'user', 0, '2013-07-19 09:41:47', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:47', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(137, 'en', '', 'user', 0, '2013-07-19 09:41:52', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:52', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(138, 'en', '', 'user', 0, '2013-07-19 09:41:58', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:41:58', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(139, 'en', '', 'user', 0, '2013-07-19 09:42:02', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:02', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(140, 'en', '', 'user', 0, '2013-07-19 09:42:22', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:22', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(141, 'en', '', 'user', 0, '2013-07-19 09:42:27', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:27', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(142, 'en', '', 'user', 0, '2013-07-19 09:42:36', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:36', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(143, 'en', '', 'user', 0, '2013-07-19 09:42:39', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:39', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(144, 'en', '', 'user', 0, '2013-07-19 09:42:40', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:40', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(145, 'en', '', 'user', 0, '2013-07-19 09:42:43', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:43', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(146, 'en', '', 'user', 0, '2013-07-19 09:42:44', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:44', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(147, 'en', '', 'user', 0, '2013-07-19 09:42:47', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:47', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(148, 'en', '', 'user', 0, '2013-07-19 09:42:48', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:42:48', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(149, 'en', '', 'user', 0, '2013-07-19 09:43:38', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:38', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(150, 'en', '', 'user', 0, '2013-07-19 09:43:40', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:40', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(151, 'en', '', 'user', 0, '2013-07-19 09:43:41', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:41', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(152, 'en', '', 'user', 0, '2013-07-19 09:43:45', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:45', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(153, 'en', '', 'user', 0, '2013-07-19 09:43:46', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:46', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(154, 'en', '', 'user', 0, '2013-07-19 09:43:49', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:49', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(155, 'en', '', 'user', 0, '2013-07-19 09:43:49', 'test 2013-07-19_Fri_09.40-AM', NULL, '2013-07-19 09:43:49', 2896, '2013-06-18 13:28:46', NULL, 'Yes', NULL, NULL),
(156, 'en', '', 'user', 0, '2013-07-19 09:44:55', 'drd ', NULL, '2013-07-19 09:44:55', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(157, 'en', '', 'user', 0, '2013-07-19 09:44:56', 'drd ', NULL, '2013-07-19 09:44:56', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(158, 'en', '', 'user', 0, '2013-07-19 09:44:56', 'drd ', NULL, '2013-07-19 09:44:56', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(159, 'en', '', 'user', 0, '2013-07-19 09:44:56', 'drd ', NULL, '2013-07-19 09:44:56', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(160, 'en', '', 'user', 0, '2013-07-19 09:44:56', 'drd ', NULL, '2013-07-19 09:44:56', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(161, 'en', '', 'user', 0, '2013-07-19 09:44:57', 'drd ', NULL, '2013-07-19 09:44:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(162, 'en', '', 'user', 0, '2013-07-19 09:44:57', 'drd ', NULL, '2013-07-19 09:44:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(163, 'en', '', 'user', 0, '2013-07-19 09:44:57', 'drd ', NULL, '2013-07-19 09:44:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(164, 'en', '', 'user', 0, '2013-07-19 09:44:57', 'drd ', NULL, '2013-07-19 09:44:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(165, 'en', '', 'user', 0, '2013-07-19 09:45:00', 'drd ', NULL, '2013-07-19 09:45:00', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(166, 'en', '', 'user', 0, '2013-07-19 09:45:00', 'drd ', NULL, '2013-07-19 09:45:00', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(167, 'en', '', 'user', 0, '2013-07-19 09:45:00', 'drd ', NULL, '2013-07-19 09:45:00', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(168, 'en', '', 'user', 0, '2013-07-19 09:45:01', 'drd ', NULL, '2013-07-19 09:45:01', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(169, 'en', '', 'user', 0, '2013-07-19 09:45:01', 'drd ', NULL, '2013-07-19 09:45:01', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(170, 'en', '', 'user', 0, '2013-07-19 09:45:01', 'drd ', NULL, '2013-07-19 09:45:01', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(171, 'en', '', 'user', 0, '2013-07-19 09:45:01', 'drd ', NULL, '2013-07-19 09:45:01', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(172, 'en', '', 'user', 0, '2013-07-19 09:45:02', 'drd ', NULL, '2013-07-19 09:45:02', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(173, 'en', '', 'user', 0, '2013-07-19 09:45:02', 'drd ', NULL, '2013-07-19 09:45:02', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(174, 'en', '', 'user', 0, '2013-07-19 09:45:18', '09:45AM', NULL, '2013-07-19 09:45:18', 2898, '2013-06-18 13:35:19', NULL, 'Yes', NULL, NULL),
(175, 'en', '', 'user', 0, '2013-07-19 09:47:21', '09:47AM', NULL, '2013-07-19 09:47:21', 2898, '2013-06-18 13:35:19', NULL, 'Yes', NULL, NULL),
(176, 'en', '', 'user', 0, '2013-07-19 09:52:16', '09:47AM', NULL, '2013-07-19 09:52:16', 2898, '2013-06-18 13:35:19', NULL, 'Yes', NULL, NULL),
(177, 'en', '', 'user', 0, '2013-07-19 09:54:03', '09:47AM', NULL, '2013-07-19 09:54:03', 2898, '2013-06-18 13:35:19', NULL, 'Yes', NULL, NULL),
(178, 'en', '', 'user', 0, '2013-07-19 10:05:42', 'a 2013-07-19_Fri_10.05-AM', NULL, '2013-07-19 10:05:42', 2894, '2013-06-18 13:26:35', NULL, 'Yes', NULL, NULL),
(179, 'en', '', 'qadave', 0, '2013-08-28 14:57:13', 'this is the content of the note_fld. It should be in the form as well as echoed here.', NULL, '2013-08-28 14:57:13', 2894, '2013-06-18 13:26:35', NULL, 'Yes', NULL, NULL),
(180, 'en', '', 'user', 0, '2013-09-10 08:59:45', ' drd  ', 'tag4', '2013-09-10 08:59:45', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(181, 'en', '', 'user', 0, '2013-09-10 09:00:47', '  drd   \r\na', 'tag4 a', '2013-09-10 09:00:47', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(182, 'en', '', 'user', 0, '2013-09-10 10:32:34', '   drd   \r\na b', 'tag4 ab', '2013-09-10 10:32:34', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(183, 'en', '', 'user', 0, '2013-09-10 11:17:54', '    drd   \r\na b c', 'tag4 ab', '2013-09-10 11:17:54', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(184, 'en', '', 'user', 0, '2013-09-10 11:18:41', ' 2013-04-25_Thu_10.53-AM \r\na', '', '2013-09-10 11:18:41', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(185, 'en', '', 'user', 0, '2013-09-10 11:19:22', ' 2013-04-25_Thu_10.53-AM \r\na', '', '2013-09-10 11:19:22', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(186, 'en', '', 'user', 0, '2013-09-10 11:19:31', ' 2013-04-25_Thu_10.53-AM \r\na', '', '2013-09-10 11:19:31', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(187, 'en', '', 'user', 0, '2013-09-10 11:19:35', ' 2013-04-25_Thu_10.53-AM \r\na', '', '2013-09-10 11:19:35', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(188, 'en', '', 'user', 0, '2013-09-10 11:25:35', '  2013-04-25_Thu_10.53-AM \r\na ', '', '2013-09-10 11:25:35', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(189, 'en', '', 'user', 0, '2013-09-10 11:27:30', '   2013-04-25_Thu_10.53-AM \r\na  ', '', '2013-09-10 11:27:30', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(190, 'en', '', 'user', 0, '2013-09-10 11:29:08', '    2013-04-25_Thu_10.53-AM \r\na   ', '', '2013-09-10 11:29:08', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(191, 'en', '', 'user', 0, '2013-09-10 11:29:19', '    2013-04-25_Thu_10.53-AM \r\na   ', '', '2013-09-10 11:29:19', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(192, 'en', '', 'user', 0, '2013-09-10 11:40:21', '     2013-04-25_Thu_10.53-AM \r\na    ', '', '2013-09-10 11:40:21', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(193, 'en', '', 'user', 0, '2013-09-10 11:40:58', ' a\r\n2013-06-18_Tue_09.23-AM\r\n2013-06-18_Tue_09.23-AM ', '11:40AM', '2013-09-10 11:40:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(194, 'en', '', 'user', 0, '2013-09-10 11:41:27', ' a 2013-06-18_Tue_09.23-AM\r\n2013-06-18_Tue_09.23-AM ', '3', '2013-09-10 11:41:27', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(195, 'en', '', 'user', 0, '2013-09-10 11:42:09', '2894  this is the content of the note_fld. It should be in the form as well as echoed here. ', '94', '2013-09-10 11:42:09', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(196, 'en', '', 'user', 0, '2013-09-10 11:44:57', ' 2899 this is the content of the note_fld. It should be in the form as well as echoed here.  ', '99', '2013-09-10 11:44:57', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(197, 'en', '', 'user', 0, '2013-09-10 11:45:28', ' 85 going  home ', '85', '2013-09-10 11:45:28', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(198, 'en', '', 'user', 0, '2013-09-10 11:47:10', ' 80 test two email ', '80', '2013-09-10 11:47:10', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(199, 'en', '', 'user', 0, '2013-09-10 11:50:14', ' test email from filtered table ', '2879', '2013-09-10 11:50:14', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(200, 'en', '', 'user', 0, '2013-09-10 11:57:03', ' d ', '2891', '2013-09-10 11:57:03', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(201, 'en', '', 'user', 0, '2013-09-10 12:04:08', ' moved xampp from c p2 websw to c p2 ', '83', '2013-09-10 12:04:08', 2899, '2013-06-27 15:26:03', '2013-06-27 14:25:00', 'Yes', NULL, NULL),
(202, 'en', '', 'user', 0, '2013-09-17 12:49:10', 'a', NULL, '2013-09-17 12:49:10', 2901, '2013-09-17 16:49:10', NULL, 'Yes', NULL, NULL),
(203, 'en', '', 'qadave', 0, '2013-09-24 11:50:50', NULL, NULL, '2013-09-24 11:50:50', 2909, '2013-09-24 15:50:50', NULL, NULL, NULL, '1969-12-31'),
(204, 'en', '', 'qadave', 0, '2013-09-24 11:55:18', NULL, NULL, '2013-09-24 11:55:18', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '0922-00-00'),
(205, 'en', '', 'qadave', 0, '2013-09-24 11:56:12', NULL, NULL, '2013-09-24 11:56:12', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '0000-00-00'),
(206, 'en', '', 'qadave', 0, '2013-09-24 11:57:14', NULL, NULL, '2013-09-24 11:57:14', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(207, 'en', '', 'qadave', 0, '2013-09-24 12:01:02', NULL, NULL, '2013-09-24 12:01:02', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(208, 'en', '', 'qadave', 0, '2013-09-24 12:01:17', NULL, NULL, '2013-09-24 12:01:17', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(209, 'en', '', 'qadave', 0, '2013-09-24 12:01:30', NULL, NULL, '2013-09-24 12:01:30', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(210, 'en', '', 'qadave', 0, '2013-09-24 12:02:08', NULL, NULL, '2013-09-24 12:02:08', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(211, 'en', '', 'qadave', 0, '2013-09-24 12:02:34', NULL, NULL, '2013-09-24 12:02:34', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(212, 'en', '', 'qadave', 0, '2013-09-24 12:03:02', NULL, NULL, '2013-09-24 12:03:02', 2910, '2013-09-24 15:55:18', NULL, 'Yes', NULL, '1969-12-31'),
(213, 'en', '', 'qadave', 0, '2013-09-24 12:05:24', '        test two email 80\r\nc      \r\n10:03AM ', '80c', '2013-09-24 12:05:24', 2880, '2013-04-29 18:31:54', '2013-09-11 01:00:00', 'Yes', 'Louisiana', '1969-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `nte_tags`
--

CREATE TABLE IF NOT EXISTS `nte_tags` (
`tags_id` int(11) NOT NULL,
  `tags_list` varchar(234) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `nte_tags`
--

INSERT INTO `nte_tags` (`tags_id`, `tags_list`) VALUES
(1, 'computer problem'),
(2, 'gustin'),
(3, 'home'),
(4, 'log'),
(5, 'money'),
(6, 'testnote'),
(7, 'word'),
(8, 'work'),
(9, 'xataface'),
(10, 'co'),
(11, 'new'),
(12, 'newtag'),
(13, 'mysql'),
(14, 'new2'),
(15, 'csddg'),
(16, 'test'),
(17, 'xa'),
(18, 'email'),
(19, 'time');

-- --------------------------------------------------------

--
-- Table structure for table `nte_tags__history`
--

CREATE TABLE IF NOT EXISTS `nte_tags__history` (
`history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL,
  `tags_list` varchar(234) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nte_tags__history`
--

INSERT INTO `nte_tags__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `tags_id`, `tags_list`) VALUES
(1, 'en', '', 'user', 0, '2013-05-22 11:35:31', 14, 'new2'),
(2, 'en', '', 'user', 0, '2013-05-22 13:39:40', 15, 'csddg'),
(3, 'en', '', 'user', 0, '2013-06-13 15:11:38', 16, 'test'),
(4, 'en', '', 'user', 0, '2013-06-13 15:11:41', 17, 'xa'),
(5, 'en', '', 'user', 0, '2013-06-13 15:12:07', 18, 'email'),
(6, 'en', '', 'user', 0, '2013-06-18 09:23:27', 19, 'time');

-- --------------------------------------------------------

--
-- Table structure for table `polls_choice`
--

CREATE TABLE IF NOT EXISTS `polls_choice` (
`id` int(11) NOT NULL,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `polls_question`
--

CREATE TABLE IF NOT EXISTS `polls_question` (
`id` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sf_config`
--

CREATE TABLE IF NOT EXISTS `sf_config` (
`sf_id` int(5) unsigned NOT NULL,
  `sf_table` varchar(64) NOT NULL DEFAULT '',
  `sf_field` varchar(64) NOT NULL DEFAULT '',
  `sf_type` varchar(16) DEFAULT 'default',
  `sf_related` varchar(100) DEFAULT '',
  `sf_label` varchar(64) DEFAULT '',
  `sf_desc` tinytext,
  `sf_order` int(3) DEFAULT NULL,
  `sf_hidden` int(1) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=163 ;

--
-- Dumping data for table `sf_config`
--

INSERT INTO `sf_config` (`sf_id`, `sf_table`, `sf_field`, `sf_type`, `sf_related`, `sf_label`, `sf_desc`, `sf_order`, `sf_hidden`) VALUES
(1, 'auth_group', 'id', 'default', '|', '', '', 0, 0),
(2, 'auth_group', 'name', 'default', '|', '', '', 1, 0),
(3, 'auth_group_permissions', 'id', 'default', '|', '', '', 0, 0),
(4, 'auth_group_permissions', 'group_id', 'default', '|', '', '', 1, 0),
(5, 'auth_group_permissions', 'permission_id', 'default', '|', '', '', 2, 0),
(6, 'auth_permission', 'id', 'default', '|', '', '', 0, 0),
(7, 'auth_permission', 'name', 'default', '|', '', '', 1, 0),
(8, 'auth_permission', 'content_type_id', 'default', '|', '', '', 2, 0),
(9, 'auth_permission', 'codename', 'default', '|', '', '', 3, 0),
(10, 'auth_user', 'id', 'default', '|', '', '', 0, 0),
(11, 'auth_user', 'password', 'default', '|', '', '', 1, 0),
(12, 'auth_user', 'last_login', 'default', '|', '', '', 2, 0),
(13, 'auth_user', 'is_superuser', 'default', '|', '', '', 3, 0),
(14, 'auth_user', 'username', 'default', '|', '', '', 4, 0),
(15, 'auth_user', 'first_name', 'default', '|', '', '', 5, 0),
(16, 'auth_user', 'last_name', 'default', '|', '', '', 6, 0),
(17, 'auth_user', 'email', 'default', '|', '', '', 7, 0),
(18, 'auth_user', 'is_staff', 'default', '|', '', '', 8, 0),
(19, 'auth_user', 'is_active', 'default', '|', '', '', 9, 0),
(20, 'auth_user', 'date_joined', 'default', '|', '', '', 10, 0),
(21, 'auth_user_groups', 'id', 'default', '|', '', '', 0, 0),
(22, 'auth_user_groups', 'user_id', 'default', '|', '', '', 1, 0),
(23, 'auth_user_groups', 'group_id', 'default', '|', '', '', 2, 0),
(24, 'auth_user_user_permissions', 'id', 'default', '|', '', '', 0, 0),
(25, 'auth_user_user_permissions', 'user_id', 'default', '|', '', '', 1, 0),
(26, 'auth_user_user_permissions', 'permission_id', 'default', '|', '', '', 2, 0),
(27, 'dashboard', 'dashboard_id', 'default', '|', '', '', 0, 0),
(28, 'dataface__datagrids', 'gridID', 'default', '|', '', '', 0, 0),
(29, 'dataface__datagrids', 'gridName', 'default', '|', '', '', 1, 0),
(30, 'dataface__datagrids', 'gridData', 'default', '|', '', '', 2, 0),
(31, 'dataface__datagrids', 'tableName', 'default', '|', '', '', 3, 0),
(32, 'dataface__failed_logins', 'attempt_id', 'default', '|', '', '', 0, 0),
(33, 'dataface__failed_logins', 'ip_address', 'default', '|', '', '', 1, 0),
(34, 'dataface__failed_logins', 'username', 'default', '|', '', '', 2, 0),
(35, 'dataface__failed_logins', 'time_of_attempt', 'default', '|', '', '', 3, 0),
(36, 'dataface__modules', 'module_name', 'default', '|', '', '', 0, 0),
(37, 'dataface__modules', 'module_version', 'default', '|', '', '', 1, 0),
(38, 'dataface__mtimes', 'name', 'default', '|', '', '', 0, 0),
(39, 'dataface__mtimes', 'mtime', 'default', '|', '', '', 1, 0),
(40, 'dataface__preferences', 'pref_id', 'default', '|', '', '', 0, 0),
(41, 'dataface__preferences', 'username', 'default', '|', '', '', 1, 0),
(42, 'dataface__preferences', 'table', 'default', '|', '', '', 2, 0),
(43, 'dataface__preferences', 'record_id', 'default', '|', '', '', 3, 0),
(44, 'dataface__preferences', 'key', 'default', '|', '', '', 4, 0),
(45, 'dataface__preferences', 'value', 'default', '|', '', '', 5, 0),
(46, 'dataface__record_mtimes', 'recordhash', 'default', '|', '', '', 0, 0),
(47, 'dataface__record_mtimes', 'recordid', 'default', '|', '', '', 1, 0),
(48, 'dataface__record_mtimes', 'mtime', 'default', '|', '', '', 2, 0),
(49, 'dataface__version', 'version', 'default', '|', '', '', 0, 0),
(50, 'django_admin_log', 'id', 'default', '|', '', '', 0, 0),
(51, 'django_admin_log', 'action_time', 'default', '|', '', '', 1, 0),
(52, 'django_admin_log', 'object_id', 'default', '|', '', '', 2, 0),
(53, 'django_admin_log', 'object_repr', 'default', '|', '', '', 3, 0),
(54, 'django_admin_log', 'action_flag', 'default', '|', '', '', 4, 0),
(55, 'django_admin_log', 'change_message', 'default', '|', '', '', 5, 0),
(56, 'django_admin_log', 'content_type_id', 'default', '|', '', '', 6, 0),
(57, 'django_admin_log', 'user_id', 'default', '|', '', '', 7, 0),
(58, 'django_content_type', 'id', 'default', '|', '', '', 0, 0),
(59, 'django_content_type', 'name', 'default', '|', '', '', 1, 0),
(60, 'django_content_type', 'app_label', 'default', '|', '', '', 2, 0),
(61, 'django_content_type', 'model', 'default', '|', '', '', 3, 0),
(62, 'django_migrations', 'id', 'default', '|', '', '', 0, 0),
(63, 'django_migrations', 'app', 'default', '|', '', '', 1, 0),
(64, 'django_migrations', 'name', 'default', '|', '', '', 2, 0),
(65, 'django_migrations', 'applied', 'default', '|', '', '', 3, 0),
(66, 'django_session', 'session_key', 'default', '|', '', '', 0, 0),
(67, 'django_session', 'session_data', 'default', '|', '', '', 1, 0),
(68, 'django_session', 'expire_date', 'default', '|', '', '', 2, 0),
(69, 'nte_about_this_app', 'id', 'default', '|', '', '', 0, 0),
(70, 'nte_about_this_app', 'about_fld', 'default', '|', '', '', 1, 0),
(71, 'nte_about_this_app', 'createdtime', 'default', '|', '', '', 2, 0),
(72, 'nte_about_this_app', 'updatedtime', 'default', '|', '', '', 3, 0),
(73, 'nte_about_this_app__history', 'history__id', 'default', '|', '', '', 0, 0),
(74, 'nte_about_this_app__history', 'history__language', 'default', '|', '', '', 1, 0),
(75, 'nte_about_this_app__history', 'history__comments', 'default', '|', '', '', 2, 0),
(76, 'nte_about_this_app__history', 'history__user', 'default', '|', '', '', 3, 0),
(77, 'nte_about_this_app__history', 'history__state', 'default', '|', '', '', 4, 0),
(78, 'nte_about_this_app__history', 'history__modified', 'default', '|', '', '', 5, 0),
(79, 'nte_about_this_app__history', 'id', 'default', '|', '', '', 6, 0),
(80, 'nte_about_this_app__history', 'about_fld', 'default', '|', '', '', 7, 0),
(81, 'nte_about_this_app__history', 'createdtime', 'default', '|', '', '', 8, 0),
(82, 'nte_about_this_app__history', 'updatedtime', 'default', '|', '', '', 9, 0),
(83, 'nte_note', 'note_id', 'default', '|', '', '', 0, 0),
(84, 'nte_note', 'note_fld', 'default', '|', '', '', 1, 0),
(85, 'nte_note', 'tags_fld', 'default', '|', '', '', 2, 0),
(86, 'nte_note', 'state_fld', 'default', '|', '', '', 3, 0),
(87, 'nte_note', 'createdtime', 'default', '|', '', '', 4, 0),
(88, 'nte_note', 'updatedtime', 'default', '|', '', '', 5, 0),
(89, 'nte_note', 'datenote', 'default', '|', '', '', 6, 0),
(90, 'nte_note', 'date1', 'default', '|', '', '', 7, 0),
(91, 'nte_note', 'active', 'default', '|', '', '', 8, 0),
(92, 'nte_note__history', 'history__id', 'default', '|', '', '', 0, 0),
(93, 'nte_note__history', 'history__language', 'default', '|', '', '', 1, 0),
(94, 'nte_note__history', 'history__comments', 'default', '|', '', '', 2, 0),
(95, 'nte_note__history', 'history__user', 'default', '|', '', '', 3, 0),
(96, 'nte_note__history', 'history__state', 'default', '|', '', '', 4, 0),
(97, 'nte_note__history', 'history__modified', 'default', '|', '', '', 5, 0),
(98, 'nte_note__history', 'note_fld', 'default', '|', '', '', 6, 0),
(99, 'nte_note__history', 'tags_fld', 'default', '|', '', '', 7, 0),
(100, 'nte_note__history', 'updatedtime', 'default', '|', '', '', 8, 0),
(101, 'nte_note__history', 'note_id', 'default', '|', '', '', 9, 0),
(102, 'nte_note__history', 'createdtime', 'default', '|', '', '', 10, 0),
(103, 'nte_note__history', 'datenote', 'default', '|', '', '', 11, 0),
(104, 'nte_note__history', 'active', 'default', '|', '', '', 12, 0),
(105, 'nte_note__history', 'state_fld', 'default', '|', '', '', 13, 0),
(106, 'nte_note__history', 'date1', 'default', '|', '', '', 14, 0),
(107, 'nte_note_tags', 'nid', 'default', '|', '', '', 0, 0),
(108, 'nte_note_tags', 'tid', 'default', '|', '', '', 1, 0),
(109, 'nte_tags', 'tags_id', 'default', '|', '', '', 0, 0),
(110, 'nte_tags', 'tags_list', 'default', '|', '', '', 1, 0),
(111, 'nte_tags__history', 'history__id', 'default', '|', '', '', 0, 0),
(112, 'nte_tags__history', 'history__language', 'default', '|', '', '', 1, 0),
(113, 'nte_tags__history', 'history__comments', 'default', '|', '', '', 2, 0),
(114, 'nte_tags__history', 'history__user', 'default', '|', '', '', 3, 0),
(115, 'nte_tags__history', 'history__state', 'default', '|', '', '', 4, 0),
(116, 'nte_tags__history', 'history__modified', 'default', '|', '', '', 5, 0),
(117, 'nte_tags__history', 'tags_id', 'default', '|', '', '', 6, 0),
(118, 'nte_tags__history', 'tags_list', 'default', '|', '', '', 7, 0),
(119, 'polls_choice', 'id', 'default', '|', '', '', 0, 0),
(120, 'polls_choice', 'choice_text', 'default', '|', '', '', 1, 0),
(121, 'polls_choice', 'votes', 'default', '|', '', '', 2, 0),
(122, 'polls_choice', 'question_id', 'default', '|', '', '', 3, 0),
(123, 'polls_question', 'id', 'default', '|', '', '', 0, 0),
(124, 'polls_question', 'question_text', 'default', '|', '', '', 1, 0),
(125, 'polls_question', 'pub_date', 'default', '|', '', '', 2, 0),
(126, 'states', 'id', 'default', '|', '', '', 0, 0),
(127, 'states', 'state', 'default', '|', '', '', 1, 0),
(128, 'states', 'abbrev', 'default', '|', '', '', 2, 0),
(129, 'users', 'username', 'default', '|', '', '', 0, 0),
(130, 'users', 'password', 'default', '|', '', '', 1, 0),
(131, 'users', 'Role', 'default', '|', '', '', 2, 0),
(132, 'users', 'comment_fld1', 'default', '|', '', '', 3, 0),
(133, 'users', 'createdtime', 'default', '|', '', '', 4, 0),
(134, 'users', 'updatedtime', 'default', '|', '', '', 5, 0),
(135, 'vw_nte_note', 'note_id', 'default', '|', '', '', 0, 0),
(136, 'vw_nte_note', 'note_fld', 'default', '|', '', '', 1, 0),
(137, 'vw_nte_note', 'tags_fld', 'default', '|', '', '', 2, 0),
(138, 'vw_nte_note', 'state_fld', 'default', '|', '', '', 3, 0),
(139, 'vw_nte_note', 'createdtime', 'default', '|', '', '', 4, 0),
(140, 'vw_nte_note', 'updatedtime', 'default', '|', '', '', 5, 0),
(141, 'vw_nte_note', 'datenote', 'default', '|', '', '', 6, 0),
(142, 'vw_nte_note', 'active', 'default', '|', '', '', 7, 0),
(143, 'vw_nte_note__history', 'history__id', 'default', '|', '', '', 0, 0),
(144, 'vw_nte_note__history', 'history__language', 'default', '|', '', '', 1, 0),
(145, 'vw_nte_note__history', 'history__comments', 'default', '|', '', '', 2, 0),
(146, 'vw_nte_note__history', 'history__user', 'default', '|', '', '', 3, 0),
(147, 'vw_nte_note__history', 'history__state', 'default', '|', '', '', 4, 0),
(148, 'vw_nte_note__history', 'history__modified', 'default', '|', '', '', 5, 0),
(149, 'vw_nte_note__history', 'note_fld', 'default', '|', '', '', 6, 0),
(150, 'vw_nte_note__history', 'tags_fld', 'default', '|', '', '', 7, 0),
(151, 'vw_nte_note__history', 'datenote', 'default', '|', '', '', 8, 0),
(152, 'vw_nte_note__history', 'active', 'default', '|', '', '', 9, 0),
(153, 'vw_nte_note__history', 'createdtime', 'default', '|', '', '', 10, 0),
(154, 'vw_nte_note__history', 'updatedtime', 'default', '|', '', '', 11, 0),
(155, 'vw_nte_note__history', 'note_id', 'default', '|', '', '', 12, 0),
(156, 'vw_nte_note__history', 'state_fld', 'default', '|', '', '', 13, 0),
(157, 'zdg_tool1', 'var1', 'default', '|', '', '', 0, 0),
(158, 'zdg_tool1', 'url1', 'default', '|', '', '', 1, 0),
(159, 'zdg_tool1', 'recordid', 'default', '|', '', '', 2, 0),
(160, 'zdg_tool1', 'tid', 'default', '|', '', '', 3, 0),
(161, 'zdg_tool1', 'createdtime', 'default', '|', '', '', 4, 0),
(162, 'zdg_tool1', 'updatedtime', 'default', '|', '', '', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
`id` smallint(5) unsigned NOT NULL COMMENT 'PK: Unique state ID',
  `state` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `abbrev` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `abbrev`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'Arizona', 'AZ'),
(4, 'Arkansas', 'AR'),
(5, 'California', 'CA'),
(6, 'Colorado', 'CO'),
(7, 'Connecticut', 'CT'),
(8, 'Delaware', 'DE'),
(9, 'District of Columbia', 'DC'),
(10, 'Florida', 'FL'),
(11, 'Georgia', 'GA'),
(12, 'Hawaii', 'HI'),
(13, 'Idaho', 'ID'),
(14, 'Illinois', 'IL'),
(15, 'Indiana', 'IN'),
(16, 'Iowa', 'IA'),
(17, 'Kansas', 'KS'),
(18, 'Kentucky', 'KY'),
(19, 'Louisiana', 'LA'),
(20, 'Maine', 'ME'),
(21, 'Maryland', 'MD'),
(22, 'Massachusetts', 'MA'),
(23, 'Michigan', 'MI'),
(24, 'Minnesota', 'MN'),
(25, 'Mississippi', 'MS'),
(26, 'Missouri', 'MO'),
(27, 'Montana', 'MT'),
(28, 'Nebraska', 'NE'),
(29, 'Nevada', 'NV'),
(30, 'New Hampshire', 'NH'),
(31, 'New Jersey', 'NJ'),
(32, 'New Mexico', 'NM'),
(33, 'New York', 'NY'),
(34, 'North Carolina', 'NC'),
(35, 'North Dakota', 'ND'),
(36, 'Ohio', 'OH'),
(37, 'Oklahoma', 'OK'),
(38, 'Oregon', 'OR'),
(39, 'Pennsylvania', 'PA'),
(40, 'Rhode Island', 'RI'),
(41, 'South Carolina', 'SC'),
(42, 'South Dakota', 'SD'),
(43, 'Tennessee', 'TN'),
(44, 'Texas', 'TX'),
(45, 'Utah', 'UT'),
(46, 'Vermont', 'VT'),
(47, 'Virginia', 'VA'),
(48, 'Washington', 'WA'),
(49, 'West Virginia', 'WV'),
(50, 'Wisconsin', 'WI'),
(51, 'Wyoming', 'WY');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER') DEFAULT 'READ ONLY',
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `Role`, `comment_fld1`, `createdtime`, `updatedtime`) VALUES
('qadave', '', 'ADMIN', NULL, '2012-06-06 06:58:40', NULL),
('user', 'user', 'EDIT', NULL, '2012-06-06 06:56:06', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_nte_note`
--
CREATE TABLE IF NOT EXISTS `vw_nte_note` (
`note_id` int(11)
,`note_fld` text
,`tags_fld` varchar(244)
,`state_fld` varchar(99)
,`createdtime` timestamp
,`updatedtime` datetime
,`datenote` datetime
,`active` enum('Yes','No')
);
-- --------------------------------------------------------

--
-- Table structure for table `vw_nte_note__history`
--

CREATE TABLE IF NOT EXISTS `vw_nte_note__history` (
`history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `vw_nte_note__history`
--

INSERT INTO `vw_nte_note__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `note_fld`, `tags_fld`, `datenote`, `active`, `createdtime`, `updatedtime`, `note_id`, `state_fld`) VALUES
(1, 'en', '', 'user', 0, '2013-09-09 15:18:07', '09:47AM', 'tag3', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-09 15:18:07', 2898, NULL),
(2, 'en', '', 'user', 0, '2013-09-09 15:18:11', '09:47AM', 'tag3', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-09 15:18:11', 2898, NULL),
(3, 'en', '', 'user', 0, '2013-09-09 15:19:07', 'drd ', 'tag4', '2013-06-27 14:25:00', 'Yes', '2013-06-27 15:26:03', '2013-09-09 15:19:07', 2899, NULL),
(4, 'en', '', 'user', 0, '2013-09-10 12:12:32', ' testing mysql copy with xcopy ', '84', '2013-06-27 14:25:00', 'Yes', '2013-06-27 15:26:03', '2013-09-10 12:12:32', 2899, NULL),
(5, 'en', '', 'user', 0, '2013-09-10 12:14:49', ' testing mysql copy with xcopy ', '2884', '2013-06-27 14:25:00', 'Yes', '2013-06-27 15:26:03', '2013-09-10 12:14:49', 2899, NULL),
(6, 'en', '', 'user', 0, '2013-09-10 12:20:26', ' moved xampp from c p2 websw to c p2 ', '2883', '2013-06-27 14:25:00', 'Yes', '2013-06-27 15:26:03', '2013-09-10 12:20:26', 2899, NULL),
(7, 'en', '', 'user', 0, '2013-09-10 12:21:58', ' c ', '2889', '2013-06-27 14:25:00', 'Yes', '2013-06-27 15:26:03', '2013-09-10 12:21:58', 2899, NULL),
(8, 'en', '', 'user', 0, '2013-09-10 12:24:05', ' a ', '2887', NULL, 'Yes', '2013-06-13 12:50:09', '2013-09-10 12:24:05', 2887, NULL),
(9, 'en', '', 'user', 0, '2013-09-10 12:25:11', '  a  92405', '2887', NULL, 'Yes', '2013-06-13 12:50:09', '2013-09-10 12:25:11', 2887, NULL),
(10, 'en', '', 'user', 0, '2013-09-10 12:30:42', ' test email from filtered table ', '2879', '2013-04-29 09:12:23', 'Yes', '2013-04-29 13:12:21', '2013-09-10 12:30:42', 2879, NULL),
(11, 'en', '', 'user', 0, '2013-09-10 12:42:08', ' 09:47AM ', 'tag34', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 12:42:08', 2898, NULL),
(12, 'en', '', 'user', 0, '2013-09-10 12:47:08', '  09:47AM  ', 'tag35', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 12:47:08', 2898, NULL),
(13, 'en', '', 'user', 0, '2013-09-10 12:48:52', '   09:47AM   ', 'tag36', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 12:48:52', 2898, NULL),
(14, 'en', '', 'user', 0, '2013-09-10 13:01:19', '  test email from filtered table  ', '2879,79', '2013-04-29 09:12:23', 'Yes', '2013-04-29 13:12:21', '2013-09-10 13:01:19', 2879, NULL),
(15, 'en', '', 'user', 0, '2013-09-10 13:09:39', '   test email from filtered table   ', '2879,79', '2013-04-29 09:12:23', 'Yes', '2013-04-29 13:12:21', '2013-09-10 13:09:39', 2879, NULL),
(16, 'en', '', 'user', 0, '2013-09-10 13:10:20', '    test email from filtered table    ', '2879,79,b', '2013-04-29 09:12:23', 'Yes', '2013-04-29 13:12:21', '2013-09-10 13:10:20', 2879, NULL),
(17, 'en', '', 'user', 0, '2013-09-10 13:11:18', '    09:47AM    ', 'tag37', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 13:11:18', 2898, NULL),
(18, 'en', '', 'user', 0, '2013-09-10 13:13:35', '     09:47AM     ', 'tag38', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 13:13:35', 2898, NULL),
(19, 'en', '', 'user', 0, '2013-09-10 13:17:57', ' d ', '91', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 13:17:57', 2898, NULL),
(20, 'en', '', 'user', 0, '2013-09-10 13:19:10', '  d  ', '91.2', NULL, 'Yes', '2013-06-18 13:35:19', '2013-09-10 13:19:10', 2898, NULL),
(21, 'en', '', 'user', 0, '2013-09-10 13:19:34', ' going  home 2', '2', '2013-05-06 16:36:23', 'Yes', '2013-05-06 20:36:19', '2013-09-10 13:19:34', 2885, NULL),
(22, 'en', '', 'user', 0, '2013-09-10 13:20:00', ' test two email 80', '80', '2013-04-29 14:31:23', 'Yes', '2013-04-29 18:31:54', '2013-09-10 13:20:00', 2880, NULL),
(23, 'en', '', 'user', 0, '2013-09-10 13:24:34', '  test two email 80 ', '80b', '2013-04-29 14:31:23', '', '2013-04-29 18:31:54', '2013-09-10 13:24:34', 2880, NULL),
(24, 'en', '', 'user', 0, '2013-09-10 13:26:02', '   test two email 80  ', '80b', '2013-04-29 14:31:23', 'Yes', '2013-04-29 18:31:54', '2013-09-10 13:26:02', 2880, NULL),
(25, 'en', '', 'user', 0, '2013-09-10 13:26:17', '    test two email 80   ', '80b', '2013-04-29 14:31:23', 'No', '2013-04-29 18:31:54', '2013-09-10 13:26:17', 2880, NULL),
(26, 'en', '', 'user', 0, '2013-09-10 13:27:45', 'test two email 80\r\nc', '80c', '2013-04-29 14:31:23', 'No', '2013-04-29 18:31:54', '2013-09-10 13:27:45', 2880, NULL),
(27, 'en', '', 'user', 0, '2013-09-10 13:28:14', 'test two email 80\r\nc ', '80c', '2013-04-29 14:31:23', 'Yes', '2013-04-29 18:31:54', '2013-09-10 13:28:14', 2880, NULL),
(28, 'en', '', 'user', 0, '2013-09-10 13:29:39', ' test two email 80\r\nc  ', '80c', '2013-04-29 14:31:23', '', '2013-04-29 18:31:54', '2013-09-10 13:29:39', 2880, NULL),
(29, 'en', '', 'user', 0, '2013-09-10 14:03:35', '  test two email 80\r\nc   ', '80c', '2013-04-29 14:31:23', 'Yes', '2013-04-29 18:31:54', '2013-09-10 14:03:35', 2880, NULL),
(30, 'en', '', 'user', 0, '2013-09-10 14:25:12', ' 75 2013-04-25_Thu_10.41-AM test view add ', '75', '2013-04-25 10:41:23', 'Yes', '2013-04-25 14:41:22', '2013-09-10 14:25:12', 2875, NULL),
(31, 'en', '', 'user', 0, '2013-09-10 14:25:25', ' 75 2013-04-25_Thu_10.41-AM test view add ', '75', '2013-04-25 10:41:23', 'Yes', '2013-04-25 14:41:22', '2013-09-10 14:25:25', 2875, NULL),
(32, 'en', '', 'user', 0, '2013-09-10 14:26:35', '     test email from filtered table     \r\ng\r\n2\r\n3\r\n45\r\n6\r\n', '2879,79,b', '2013-04-29 09:12:23', '', '2013-04-29 13:12:21', '2013-09-10 14:26:35', 2879, NULL),
(33, 'en', '', 'user', 0, '2013-09-10 14:27:02', '      test email from filtered table     \r\ng\r\n2\r\n3\r\n45\r\n6\r\n ', '2879,79,b', '2013-04-29 09:12:23', 'Yes', '2013-04-29 13:12:21', '2013-09-10 14:27:02', 2879, NULL),
(34, 'en', '', 'user', 0, '2013-09-10 14:28:23', '       test email from filtered table     \r\ng\r\n2\r\n3\r\n45\r\n6\r\n  ', '2879,79,b', '2013-04-29 09:12:23', 'Yes', '2013-04-29 13:12:21', '2013-09-10 14:28:23', 2879, NULL),
(35, 'en', '', 'user', 0, '2013-09-10 15:59:57', '   test two email 80\r\nc    ', '80c', '2013-04-29 14:31:23', 'Yes', '2013-04-29 18:31:54', '2013-09-10 15:59:57', 2880, NULL),
(36, 'en', '', 'user', 0, '2013-09-10 16:11:09', '    test two email 80\r\nc     ', '80c', '2013-09-10 01:00:00', 'Yes', '2013-04-29 18:31:54', '2013-09-10 16:11:09', 2880, NULL),
(37, 'en', '', 'user', 0, '2013-09-10 16:12:01', '  75 2013-04-25_Thu_10.41-AM test view add  ', '75', '2013-09-10 16:11:00', 'Yes', '2013-04-25 14:41:22', '2013-09-10 16:12:01', 2875, NULL),
(38, 'en', '', 'user', 0, '2013-09-10 16:12:48', '   a  92405 z', '2887z', '2013-09-10 16:12:00', 'Yes', '2013-06-13 12:50:09', '2013-09-10 16:12:48', 2887, NULL),
(39, 'en', '', 'user', 0, '2013-09-10 16:14:03', '     test two email 80\r\nc      ', '80c', '2013-09-11 01:00:00', 'Yes', '2013-04-29 18:31:54', '2013-09-10 16:14:03', 2880, NULL),
(40, 'en', '', 'user', 0, '2013-09-23 08:44:57', '      test two email 80\r\nc      \r\nd ', '80c', '2013-09-11 01:00:00', 'Yes', '2013-04-29 18:31:54', '2013-09-23 08:44:57', 2880, NULL),
(41, 'en', '', 'user', 0, '2013-09-23 10:03:03', '       test two email 80\r\nc      \r\n10:03AM', '80c', '2013-09-11 01:00:00', 'Yes', '2013-04-29 18:31:54', '2013-09-23 10:03:03', 2880, 'Louisiana'),
(42, 'en', '', 'user', 0, '2013-09-23 16:12:01', '        test two email 80\r\nc      \r\n10:03AM ', '80c', '2013-09-11 01:00:00', 'Yes', '2013-04-29 18:31:54', '2013-09-23 16:12:01', 2880, 'Louisiana'),
(43, 'en', '', 'user', 0, '2013-10-09 13:50:47', '  ', NULL, '2013-10-09 13:50:00', 'Yes', '2013-09-24 15:55:18', '2013-10-09 13:50:47', 2910, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zdg_tool1`
--

CREATE TABLE IF NOT EXISTS `zdg_tool1` (
  `var1` varchar(30) DEFAULT NULL,
  `url1` varchar(9930) DEFAULT NULL,
  `recordid` int(11) DEFAULT NULL,
`tid` int(11) NOT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `zdg_tool1`
--

INSERT INTO `zdg_tool1` (`var1`, `url1`, `recordid`, `tid`, `createdtime`, `updatedtime`) VALUES
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=20&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2883', 2883, 1, '2013-09-10 16:20:18', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=11&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2889', 2889, 3, '2013-09-10 16:21:51', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=11&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2889', 2889, 5, '2013-09-10 16:23:51', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=13&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2887', 2887, 7, '2013-09-10 16:24:00', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2887', 2887, 9, '2013-09-10 16:25:05', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=23&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2879', 2879, 11, '2013-09-10 16:30:27', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=23&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2879', 2879, 13, '2013-09-10 16:30:35', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=3&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 15, '2013-09-10 16:36:02', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=3&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 17, '2013-09-10 16:36:07', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=3&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 19, '2013-09-10 16:42:03', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 21, '2013-09-10 16:47:04', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 23, '2013-09-10 16:48:49', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=1&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2879', 2879, 25, '2013-09-10 17:01:13', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2879', 2879, 27, '2013-09-10 17:09:34', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2879', 2879, 29, '2013-09-10 17:09:59', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=1&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 31, '2013-09-10 17:11:13', NULL),
('log', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 33, '2013-09-10 17:13:31', NULL),
('edit7noteurl', 'http://localhost/dgnote130/index.php?-table=vw_nte_note&-action=browse&-cursor=0&-skip=0&-limit=30&-mode=list&-recordid=vw_nte_note%3Fnote_id%3D2898', 2898, 34, '2013-09-10 17:13:31', '2013-09-10 13:13:31');

-- --------------------------------------------------------

--
-- Structure for view `dataface__view_05bc21d889015ac9418d98c68778e843`
--
DROP TABLE IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataface__view_05bc21d889015ac9418d98c68778e843` AS select `n`.`note_id` AS `note_id`,`n`.`note_fld` AS `note_fld`,`n`.`tags_fld` AS `tags_fld`,`n`.`state_fld` AS `state_fld`,`n`.`createdtime` AS `createdtime`,`n`.`updatedtime` AS `updatedtime`,`n`.`datenote` AS `datenote`,`n`.`date1` AS `date1`,`n`.`active` AS `active`,`nt`.`nid` AS `nid`,`nt`.`tid` AS `tid`,`t`.`tags_id` AS `tags_id`,`t`.`tags_list` AS `tags_list`,group_concat(`t`.`tags_list` separator ',') AS `tagslisted` from ((`nte_note` `n` left join `nte_note_tags` `nt` on((`n`.`note_id` = `nt`.`nid`))) left join `nte_tags` `t` on((`nt`.`tid` = `t`.`tags_id`))) group by `n`.`note_id` order by `n`.`updatedtime` desc;

-- --------------------------------------------------------

--
-- Structure for view `vw_nte_note`
--
DROP TABLE IF EXISTS `vw_nte_note`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_nte_note` AS select `nte_note`.`note_id` AS `note_id`,`nte_note`.`note_fld` AS `note_fld`,`nte_note`.`tags_fld` AS `tags_fld`,`nte_note`.`state_fld` AS `state_fld`,`nte_note`.`createdtime` AS `createdtime`,`nte_note`.`updatedtime` AS `updatedtime`,`nte_note`.`datenote` AS `datenote`,`nte_note`.`active` AS `active` from `nte_note`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_0e939a4f` (`group_id`), ADD KEY `auth_group_permissions_8373b171` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`), ADD KEY `auth_permission_417f1b1c` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_e8701ad4` (`user_id`), ADD KEY `auth_user_groups_0e939a4f` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_e8701ad4` (`user_id`), ADD KEY `auth_user_user_permissions_8373b171` (`permission_id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
 ADD PRIMARY KEY (`dashboard_id`);

--
-- Indexes for table `dataface__datagrids`
--
ALTER TABLE `dataface__datagrids`
 ADD PRIMARY KEY (`gridID`);

--
-- Indexes for table `dataface__failed_logins`
--
ALTER TABLE `dataface__failed_logins`
 ADD PRIMARY KEY (`attempt_id`);

--
-- Indexes for table `dataface__modules`
--
ALTER TABLE `dataface__modules`
 ADD PRIMARY KEY (`module_name`);

--
-- Indexes for table `dataface__mtimes`
--
ALTER TABLE `dataface__mtimes`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
 ADD PRIMARY KEY (`pref_id`), ADD KEY `username` (`username`), ADD KEY `table` (`table`), ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `dataface__record_mtimes`
--
ALTER TABLE `dataface__record_mtimes`
 ADD PRIMARY KEY (`recordhash`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_417f1b1c` (`content_type_id`), ADD KEY `django_admin_log_e8701ad4` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `nte_about_this_app`
--
ALTER TABLE `nte_about_this_app`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `createdtime` (`createdtime`);

--
-- Indexes for table `nte_about_this_app__history`
--
ALTER TABLE `nte_about_this_app__history`
 ADD PRIMARY KEY (`history__id`), ADD KEY `prikeys` (`id`) USING HASH, ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Indexes for table `nte_note`
--
ALTER TABLE `nte_note`
 ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `nte_note_tags`
--
ALTER TABLE `nte_note_tags`
 ADD PRIMARY KEY (`nid`,`tid`);

--
-- Indexes for table `nte_note__history`
--
ALTER TABLE `nte_note__history`
 ADD PRIMARY KEY (`history__id`), ADD KEY `prikeys` (`note_id`) USING HASH, ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Indexes for table `nte_tags`
--
ALTER TABLE `nte_tags`
 ADD PRIMARY KEY (`tags_id`);

--
-- Indexes for table `nte_tags__history`
--
ALTER TABLE `nte_tags__history`
 ADD PRIMARY KEY (`history__id`), ADD KEY `prikeys` (`tags_id`) USING HASH, ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Indexes for table `polls_choice`
--
ALTER TABLE `polls_choice`
 ADD PRIMARY KEY (`id`), ADD KEY `polls_choice_7aa0f6ee` (`question_id`);

--
-- Indexes for table `polls_question`
--
ALTER TABLE `polls_question`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_config`
--
ALTER TABLE `sf_config`
 ADD PRIMARY KEY (`sf_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `vw_nte_note__history`
--
ALTER TABLE `vw_nte_note__history`
 ADD PRIMARY KEY (`history__id`), ADD KEY `prikeys` (`note_id`) USING HASH, ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Indexes for table `zdg_tool1`
--
ALTER TABLE `zdg_tool1`
 ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
MODIFY `dashboard_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dataface__datagrids`
--
ALTER TABLE `dataface__datagrids`
MODIFY `gridID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dataface__failed_logins`
--
ALTER TABLE `dataface__failed_logins`
MODIFY `attempt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
MODIFY `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nte_about_this_app`
--
ALTER TABLE `nte_about_this_app`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nte_about_this_app__history`
--
ALTER TABLE `nte_about_this_app__history`
MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nte_note`
--
ALTER TABLE `nte_note`
MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2916;
--
-- AUTO_INCREMENT for table `nte_note__history`
--
ALTER TABLE `nte_note__history`
MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT for table `nte_tags`
--
ALTER TABLE `nte_tags`
MODIFY `tags_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `nte_tags__history`
--
ALTER TABLE `nte_tags__history`
MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `polls_choice`
--
ALTER TABLE `polls_choice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `polls_question`
--
ALTER TABLE `polls_question`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sf_config`
--
ALTER TABLE `sf_config`
MODIFY `sf_id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID',AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `vw_nte_note__history`
--
ALTER TABLE `vw_nte_note__history`
MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `zdg_tool1`
--
ALTER TABLE `zdg_tool1`
MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `polls_choice`
--
ALTER TABLE `polls_choice`
ADD CONSTRAINT `polls_choice_question_id_40fbbd72_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
