-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2020 at 07:40 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `job_fault`
--

-- --------------------------------------------------------

--
-- Table structure for table `work_categories`
--

CREATE TABLE `work_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = category or domain, 2= skills',
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_categories`
--

INSERT INTO `work_categories` (`id`, `name`, `description`, `parent_id`, `is_type`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounting & Consulting', 'Accounting & Consulting', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(2, 'Admin Support', 'Admin Support', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(3, 'Customer Service', 'Customer Service', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(4, 'Data Science & Analytics', 'Data Science & Analytics', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(5, 'Design & Creative', 'Design & Creative', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(6, 'Engineering & Architecture', 'Engineering & Architecture', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(7, 'IT & Networking', 'IT & Networking', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(8, 'Legal', 'Legal', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(9, 'Sales & Marketing', 'Sales & Marketing', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(10, 'Translation', 'Translation', 0, 0, NULL, '2020-03-28 17:42:21', '2020-03-28 17:42:21'),
(11, 'Web, Mobile & Software Dev', 'Web, Mobile & Software Dev', 0, 0, NULL, '2020-03-28 17:43:05', '2020-03-28 17:43:05'),
(12, 'Writing', 'Writing', 0, 0, NULL, '2020-03-28 17:43:05', '2020-03-28 17:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `work_countries_static`
--

CREATE TABLE `work_countries_static` (
  `country_code` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_alpha3_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_numeric_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_demonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_area` double(2,2) NOT NULL,
  `population` int(11) NOT NULL,
  `idd_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cctld` char(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_countries_static`
--

INSERT INTO `work_countries_static` (`country_code`, `country_name`, `country_alpha3_code`, `country_numeric_code`, `capital`, `country_demonym`, `total_area`, `population`, `idd_code`, `currency_code`, `currency_name`, `currency_symbol`, `lang_code`, `lang_name`, `cctld`) VALUES
('PN', 'Pitcairn', 'PCN', '612', 'Adamstown', 'Pitcairn Islanders', 0.99, 54, '872', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'pn'),
('GS', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'Grytviken', 'South Georgian or South Sandwich Islander', 0.99, 100, '-', 'GBP', 'Pound Sterling', '£', 'EN', 'English', 'gs'),
('TF', 'French Southern Territories', 'ATF', '260', 'Port-aux-francais', 'French', 0.99, 140, '262', 'EUR', 'Euro', '€', 'FR', 'French', 'tf'),
('UM', 'United States Minor Outlying Islands', 'UMI', '581', '-', '‎American Islander', 0.99, 300, '-', 'USD', 'United States Dollar', '$', 'EN', 'English', 'um'),
('CC', 'Cocos (Keeling) Islands', 'CCK', '166', 'West Island', 'Cocos Islanders', 0.99, 628, '61', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'cc'),
('VA', 'Holy See (Vatican City State)', 'VAT', '336', 'Vatican City', 'Vatican citizens', 0.44, 801, '39', 'EUR', 'Euro', '€', 'EN', 'Latin', 'va'),
('TK', 'Tokelau', 'TKL', '772', '-', 'Tokelauans', 0.99, 1319, '690', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'tk'),
('NU', 'Niue', 'NIU', '570', 'Alofi', 'Niueans', 0.99, 1624, '683', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'nu'),
('CX', 'Christmas Island', 'CXR', '162', 'Flying Fish Cove', 'Christmas Islanders', 0.99, 2205, '61', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'cx'),
('NF', 'Norfolk Island', 'NFK', '574', 'Kingston', 'Norfolk Islanders', 0.99, 2210, '672', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'nf'),
('SJ', 'Svalbard and Jan Mayen', 'SJM', '744', 'Longyearbyen', 'Slovakians', 0.99, 2667, '47', 'NOK', 'Norwegian Krone', 'kr', 'NO', 'Norwegian', 'sj'),
('FK', 'Falkland Islands (Malvinas)', 'FLK', '238', 'Stanley', 'Falkland Islanders', 0.99, 2922, '500', 'FKP', 'Falkland Islands Pound', '£', 'EN', 'English', 'fk'),
('IO', 'British Indian Ocean Territory', 'IOT', '86', 'Diego Garcia', 'British', 0.99, 3000, '246', 'GBP', 'British Pound', '£', 'EN', 'English', 'io'),
('SH', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'Jamestown', 'Saint Helenians', 0.99, 4074, '290', 'SHP', 'Saint Helena Pound', '£', 'EN', 'English', 'sh'),
('MS', 'Montserrat', 'MSR', '500', 'Plymouth', 'Montserratians', 0.99, 5203, '1664', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'ms'),
('PM', 'Saint Pierre and Miquelon', 'SPM', '666', 'Saint-pierre', 'Saint-Pierrais or Miquelonnais', 0.99, 6342, '508', 'EUR', 'Euro', '€', 'FR', 'French', 'pm'),
('BL', 'Saint Barthelemy', 'BLM', '652', 'Gustavia', 'Barthelemois', 0.99, 8450, '590', 'EUR', 'Euro', '€', 'FR', 'French', 'gp'),
('TV', 'Tuvalu', 'TUV', '798', 'Funafuti', 'Tuvaluans', 0.99, 11287, '688', 'AUD', 'Australian Dollar', '$', 'EN', 'Tuvaluan English', 'tv'),
('NR', 'Nauru', 'NRU', '520', 'Yaren', 'Nauruans', 0.99, 11312, '674', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'nr'),
('WF', 'Wallis and Futuna', 'WLF', '876', 'Mata\'utu', 'Wallisians or Futunans', 0.99, 11683, '681', 'XPF', 'Cfp Franc', '₣', 'FR', 'French', 'wf'),
('AI', 'Anguilla', 'AIA', '660', 'The Valley', 'Anguillans', 0.99, 15045, '1264', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'ai'),
('CK', 'Cook Islands', 'COK', '184', 'Avarua', 'Cook Islanders', 0.99, 17411, '682', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'ck'),
('PW', 'Palau', 'PLW', '585', 'Melekeok - Palau State Capital', 'Palauans', 0.99, 21964, '680', 'USD', 'United States Dollar', '$', 'EN', 'English', 'pw'),
('BQ', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'Kralendijk', 'Bonaire Dutch', 0.99, 24548, '599', 'USD', 'United States Dollar', '$', 'NL', 'Dutch', 'bq'),
('AX', 'Åland Islands', 'ALA', '248', 'Mariehamn', 'Aland Islanders', 0.99, 29013, '358', 'EUR', 'Euro', '€', 'SV', 'Swedish', 'ax'),
('VG', 'Virgin Islands, British', 'VGB', '92', 'Road Town', 'British Virgin Islanders', 0.99, 31719, '1284', 'USD', 'United States Dollar', '$', 'EN', 'English', 'vg'),
('MF', 'Saint Martin (French Part)', 'MAF', '663', 'Marigot', 'Saint-Martinois', 0.99, 33100, '590', 'EUR', 'Euro', '€', 'FR', 'French', 'gp'),
('SM', 'San Marino', 'SMR', '674', 'San Marino', 'Senegalese', 0.99, 33557, '378', 'EUR', 'Euro', '€', 'IT', 'Italian', 'sm'),
('GI', 'Gibraltar', 'GIB', '292', 'Gibraltar', 'Gibraltarians', 0.99, 34733, '350', 'GIP', 'Gibraltar Pound', '£', 'ES', 'Spanish', 'gi'),
('TC', 'Turks and Caicos Islands', 'TCA', '796', 'Cockburn Town', 'Turks and Caicos Islanders', 0.99, 35963, '1649', 'USD', 'United States Dollar', '$', 'EN', 'English', 'tc'),
('LI', 'Liechtenstein', 'LIE', '438', 'Vaduz', 'Liechtensteiners', 0.99, 38155, '423', 'CHF', 'Swiss Franc', 'Fr.', 'DE', 'German', 'li'),
('MC', 'Monaco', 'MCO', '492', 'Monaco', 'Monacans', 0.99, 38897, '377', 'EUR', 'Euro', '€', 'FR', 'French', 'mc'),
('SX', 'Sint Maarten (Dutch Part)', 'SXM', '534', 'Philipsburg', 'Sint Maartener', 0.99, 40552, '1721', 'ANG', 'Nl Antillian Guilder', 'ƒ', 'NL', 'Dutch', 'sx'),
('FO', 'Faroe Islands', 'FRO', '234', 'Torshavn', 'Faroese', 0.99, 49489, '298', 'DKK', 'Danish Krone', 'kr', 'FO', 'Faroese', 'fo'),
('MH', 'Marshall Islands', 'MHL', '584', 'Majuro', 'Marshallese', 0.99, 53167, '692', 'USD', 'United States Dollar', '$', 'EN', 'English', 'mh'),
('MP', 'Northern Mariana Islands', 'MNP', '580', 'Saipan', 'Northern Marianans', 0.99, 55194, '1670', 'USD', 'United States Dollar', '$', 'EN', 'English', 'mp'),
('AS', 'American Samoa', 'ASM', '16', 'Pago Pago', 'American Samoans', 0.99, 55679, '1684', 'USD', 'United States Dollar', '$', 'EN', 'Samoan', 'as'),
('KN', 'Saint Kitts and Nevis', 'KNA', '659', 'Basseterre', 'Kittitians or Nevisians', 0.99, 55850, '1869', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'kn'),
('GL', 'Greenland', 'GRL', '304', 'Nuuk', 'Greenlanders', 0.99, 56565, '299', 'DKK', 'Danish Krone', 'kr.', 'DA', 'Danish', 'gl'),
('BM', 'Bermuda', 'BMU', '60', 'Hamilton', 'Bermudians', 0.99, 61070, '1441', 'BMD', 'Bermudian Dollar', '$', 'EN', 'English', 'bm'),
('KY', 'Cayman Islands', 'CYM', '136', 'George Town', 'Caymanians', 0.99, 62348, '1345', 'KYD', 'Cayman Islands Dollar', '$', 'EN', 'English', 'ky'),
('GG', 'Guernsey', 'GGY', '831', 'Saint Peter Port', 'Channel Islanders', 0.99, 66502, '44', 'GBP', 'Pound Sterling', '£', 'FR', 'French', 'gg'),
('DM', 'Dominica', 'DMA', '212', 'Roseau', 'Dominicans', 0.99, 74308, '1767', 'XCD', 'East Caribbean Dollar', '$', 'FR', 'French', 'dm'),
('AD', 'Andorra', 'AND', '20', 'Andorra la Vella', 'Andorrans', 0.99, 76953, '376', 'EUR', 'Euro', '€', 'CA', 'Catalana', 'ad'),
('IM', 'Isle of Man', 'IMN', '833', 'Douglas', 'Manx', 0.99, 84831, '44', 'GBP', 'British Pound', '£', 'EN', 'English', 'im'),
('SC', 'Seychelles', 'SYC', '690', 'Victoria', 'Seychellois', 0.99, 95235, '248', 'SCR', 'Seychelles Rupee', 'SR', 'FR', 'French', 'sc'),
('AG', 'Antigua and Barbuda', 'ATG', '28', 'Saint John\'s', 'Antiguans or Barbudans', 0.99, 103050, '1268', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'ag'),
('VI', 'Virgin Islands, U.S.', 'VIR', '850', 'Charlotte Amalie', 'U.S. Virgin Islanders', 0.99, 104914, '1340', 'USD', 'United States Dollar', '$', 'EN', 'English', 'vi'),
('AW', 'Aruba', 'ABW', '533', 'Oranjestad', 'Arubans', 0.99, 105670, '297', 'AWG', 'Aruban Florin', 'Afl', 'NL', 'Dutch', 'aw'),
('FM', 'Micronesia, Federated States of', 'FSM', '583', 'Palikir', 'Micronesians', 0.99, 106227, '691', 'USD', 'United States Dollar', '$', 'EN', 'English', 'fm'),
('GD', 'Grenada', 'GRD', '308', 'Saint George\'s', 'Grenadians', 0.99, 108339, '1473', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'gd'),
('TO', 'Tonga', 'TON', '776', 'Nuku\'alofa', 'Tongans', 0.99, 109008, '676', 'TOP', 'Tongan Pa\'anga', 'T$', 'EN', 'English', 'to'),
('VC', 'Saint Vincent and the Grenadines', 'VCT', '670', 'Kingstown', 'Saint Vincentians', 0.99, 110200, '1784', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'vc'),
('KI', 'Kiribati', 'KIR', '296', 'Tarawa', 'I-Kiribati', 0.99, 118414, '686', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'ki'),
('CW', 'Curaçao', 'CUW', '531', 'Willemstad', 'Curacaoans', 0.99, 161577, '5999', 'ANG', 'Nl Antillian Guilder', 'ƒ', 'NL', 'Dutch', 'cw'),
('GU', 'Guam', 'GUM', '316', 'Hagatna', 'Guamanians', 0.99, 165718, '1671', 'USD', 'United States Dollar', '$', 'EN', 'English', 'gu'),
('JE', 'Jersey', 'JEY', '832', 'Saint Helier', 'Channel Islanders', 0.99, 166083, '44', 'GBP', 'British Pound', '£', 'FR', 'French', 'je'),
('LC', 'Saint Lucia', 'LCA', '662', 'Castries', 'Saint Lucians', 0.99, 179667, '1758', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'lc'),
('WS', 'Samoa', 'WSM', '882', 'Apia', 'Samoans', 0.99, 197695, '685', 'WST', 'Samoan Tala', 'WS$', 'EN', 'English', 'ws'),
('ST', 'Sao Tome and Principe', 'STP', '678', 'Sao Tome', 'Sao Tomeans', 0.99, 208818, '239', 'STD', 'Droba', 'Db', 'PT', 'Portuguese', 'st'),
('YT', 'Mayotte', 'MYT', '175', 'Mamoudzou', 'Mahorans', 0.99, 259682, '262', 'EUR', 'Euro', '€', 'FR', 'French', 'yt'),
('NC', 'New Caledonia', 'NCL', '540', 'Noumea', 'New Caledonians', 0.99, 279821, '687', 'XPF', 'Cfp Franc', '₣', 'FR', 'French', 'nc'),
('VU', 'Vanuatu', 'VUT', '548', 'Port-vila', 'Ni-Vanuatu', 0.99, 282117, '678', 'VUV', 'Vanuatu Vatu', 'VT', 'FR', 'French', 'vu'),
('PF', 'French Polynesia', 'PYF', '258', 'Papeete', 'French Polynesians', 0.99, 285859, '689', 'XPF', 'Cfp Franc', '₣', 'FR', 'French', 'pf'),
('BB', 'Barbados', 'BRB', '52', 'Bridgetown', 'Barbadians', 0.99, 286388, '1246', 'USD', 'United States Dollar', '$', 'EN', 'English', 'bb'),
('GF', 'French Guiana', 'GUF', '254', 'Cayenne', 'French Guianese', 0.99, 289763, '594', 'EUR', 'Euro', '€', 'FR', 'French', 'gf'),
('IS', 'Iceland', 'ISL', '352', 'Reykjavik', 'Icelanders', 0.99, 337780, '354', 'ISK', 'Iceland Krona', 'kr', 'IS', 'Icelandic', 'is'),
('BZ', 'Belize', 'BLZ', '84', 'Belmopan', 'Belizeans', 0.99, 382444, '501', 'BZD', 'Belize Dollar', '$', 'EN', 'English', 'bz'),
('MQ', 'Martinique', 'MTQ', '474', 'Fort-de-france', 'Martiniquais', 0.99, 385065, '596', 'EUR', 'Euro', '€', 'FR', 'French', 'mq'),
('BS', 'Bahamas', 'BHS', '44', 'Nassau', 'Bahamians', 0.99, 399285, '1242', 'BSD', 'Bahamian Dollar', '$', 'EN', 'English', 'bs'),
('MT', 'Malta', 'MLT', '470', 'Valletta', 'Maltese', 0.99, 432089, '356', 'EUR', 'Euro', '€', 'MT', 'Maltese', 'mt'),
('BN', 'Brunei Darussalam', 'BRN', '96', 'Bandar Seri Begawan', 'Bruneians', 0.99, 434076, '673', 'SGD', 'Brunei Dollar', '$', 'MS', 'Malay', 'bn'),
('MV', 'Maldives', 'MDV', '462', 'Male', 'Maldivians', 0.99, 444259, '960', 'MVR', 'Maldivian Rufiyaa', 'Rf', 'DV', 'Maldivian', 'mv'),
('GP', 'Guadeloupe', 'GLP', '312', 'Basse-terre', 'Guadeloupians', 0.99, 449173, '590', 'EUR', 'Euro', '€', 'FR', 'French', 'gp'),
('CV', 'Cape Verde', 'CPV', '132', 'Praia', 'Cabo Verdeans', 0.99, 553335, '238', 'CVE', 'Cape Verde Escudo', '$', 'PT', 'Portuguese', 'cv'),
('EH', 'Western Sahara', 'ESH', '732', 'Laayoune / El Aaiun', 'Sahrawis', 0.99, 567421, '21', 'MAD', 'Moroccan Dirham', 'DH', 'ES', 'Spanish', 'eh'),
('SR', 'Suriname', 'SUR', '740', 'Paramaribo', 'Surinamers', 0.99, 568301, '597', 'SRD', 'Surinamese Dollar', '$', 'NL', 'Dutch', 'sr'),
('LU', 'Luxembourg', 'LUX', '442', 'Luxembourg', 'Luxembourgers', 0.99, 590321, '352', 'EUR', 'Euro', '€', 'FR', 'French', 'lu'),
('SB', 'Solomon Islands', 'SLB', '90', 'Honiara', 'Solomon Islanders', 0.99, 623281, '677', 'SBD', 'Solomon Islands Dollar', '$', 'EN', 'English', 'sb'),
('ME', 'Montenegro', 'MNE', '499', 'Podgorica', 'Montenegrins', 0.99, 629219, '382', 'EUR', 'Euro', '€', 'SR', 'Serbian', 'me'),
('MO', 'Macao', 'MAC', '446', '-', 'Macanese', 0.99, 632418, '853', 'HKD', 'Hong Kong Dollar', '$', 'ZH', 'Chinese', 'mo'),
('GY', 'Guyana', 'GUY', '328', 'Georgetown', 'Guyanese', 0.99, 782225, '592', 'GYD', 'Guyanese Dollar', '$', 'EN', 'English', 'gy'),
('BT', 'Bhutan', 'BTN', '64', 'Thimphu', 'Bhutanese', 0.99, 817054, '975', 'BTN', 'Bhutanese Ngultrum', 'Nu.', 'EN', 'Dzongkha', 'bt'),
('KM', 'Comoros', 'COM', '174', 'Moroni', 'Comorans', 0.99, 832347, '269', 'KMF', 'Comoro Franc', 'CF', 'AR', 'Arabic', 'km'),
('RE', 'Réunion', 'REU', '638', 'Saint-denis', 'Réunionese', 0.99, 883247, '262', 'EUR', 'Euro', '€', 'EN', 'English', 're'),
('FJ', 'Fiji', 'FJI', '242', 'Suva', 'Fijians', 0.99, 912241, '679', 'FJD', 'Fijian Dollar', '$', 'HI', 'Hindi', 'fj'),
('DJ', 'Djibouti', 'DJI', '262', 'Djibouti', 'Djiboutians', 0.99, 971408, '253', 'DJF', 'Djiboutian Franc', 'Fdj', 'FR', 'French', 'dj'),
('CY', 'Cyprus', 'CYP', '196', 'Nicosia', 'Cypriots', 0.99, 1189085, '357', 'EUR', 'Euro', '€', 'EL', 'Greek', 'cy'),
('MU', 'Mauritius', 'MUS', '480', 'Port Louis', 'Mauritians', 0.99, 1268315, '230', 'MUR', 'Mauritian Rupee', '₨', 'FR', 'French', 'mu'),
('EE', 'Estonia', 'EST', '233', 'Tallinn', 'Estonians', 0.99, 1306788, '372', 'EUR', 'Euro', '€', 'ET', 'Estoniana', 'ee'),
('GQ', 'Equatorial Guinea', 'GNQ', '226', 'Malabo', 'Equatorial Guineans', 0.99, 1313894, '240', 'XAF', 'Cfa Franc Beac', 'FCFA', 'ES', 'Spanish', 'gq'),
('TL', 'Timor-Leste', 'TLS', '626', 'Dili', 'Timorese', 0.99, 1324094, '670', 'NZD', 'New Zealand Dollar', '$', 'PT', 'Portuguese', 'tl'),
('TT', 'Trinidad and Tobago', 'TTO', '780', 'Port of Spain', 'Trinidadians or Tobagonians', 0.99, 1372598, '1868', 'TTD', 'Trinidad/tobago Dollar', '$', 'EN', 'English', 'tt'),
('SZ', 'Swaziland', 'SWZ', '748', 'Mbabane', 'Swazis', 0.99, 1391385, '268', 'SZL', 'Swazi Lilangeni', 'L', 'EN', 'English', 'sz'),
('BH', 'Bahrain', 'BHR', '48', 'Manama', 'Bahrainis', 0.99, 1566993, '973', 'BHD', 'Bahraini Dinar', 'BD', 'AR', 'Arabic', 'bh'),
('GW', 'Guinea-Bissau', 'GNB', '624', 'Bissau', 'Bissau-Guineans', 0.99, 1907268, '245', 'XOF', 'Cfa Franc Bceao', 'CFA', 'PT', 'Portuguese', 'gw'),
('LV', 'Latvia', 'LVA', '428', 'Riga', 'Latvians', 0.99, 1929938, '371', 'EUR', 'Euro', '€', 'LV', 'Latvian', 'lv'),
('GA', 'Gabon', 'GAB', '266', 'Libreville', 'Gabonese', 0.99, 2067561, '241', 'XAF', 'Cfa Franc Beac', 'FCFA', 'FR', 'French', 'ga'),
('SI', 'Slovenia', 'SVN', '705', 'Ljubljana', 'Slovenes', 0.99, 2081260, '386', 'EUR', 'Euro', '€', 'SL', 'Slovene', 'si'),
('MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', 'Skopje', 'Macedonians', 0.99, 2085051, '389', 'MKD', 'Macedonian Denar', 'den', 'MK', 'Macedonian', 'mk'),
('GM', 'Gambia', 'GMB', '270', 'Banjul', 'Gambians', 0.99, 2163765, '220', 'GMD', 'Gambian Dalasi', 'D', 'EN', 'English', 'gm'),
('LS', 'Lesotho', 'LSO', '426', 'Maseru', 'Basotho', 0.99, 2263010, '266', 'LSL', 'Lesotho Loti', 'M', 'EN', 'English', 'ls'),
('BW', 'Botswana', 'BWA', '72', 'Gaborone', 'Motswana', 0.99, 2333201, '267', 'BWP', 'Botswana Pula', 'P', 'EN', 'English', 'bw'),
('NA', 'Namibia', 'NAM', '516', 'Windhoek', 'Namibians', 0.99, 2587801, '264', 'NAD', 'Namibian Dollar', '$', 'EN', 'English', 'na'),
('QA', 'Qatar', 'QAT', '634', 'Doha', 'Qataris', 0.99, 2694849, '974', 'QAR', 'Qatari Riyal', 'QR', 'AR', 'Arabic', 'qa'),
('LT', 'Lithuania', 'LTU', '440', 'Vilnius', 'Lithuanians', 0.99, 2876475, '370', 'LTL', 'Lithuanian Litas', 'Lt', 'LT', 'Lithuanian', 'lt'),
('JM', 'Jamaica', 'JAM', '388', 'Kingston', 'Jamaicans', 0.99, 2898677, '1876', 'JMD', 'Jamaican Dollar', '$', 'EN', 'English (jamaican English)', 'jm'),
('AM', 'Armenia', 'ARM', '51', 'Yerevan', 'Armenians', 0.99, 2934152, '374', 'AMD', 'Armenian Dram', '֏', 'HY', 'Armenian', 'am'),
('AL', 'Albania', 'ALB', '8', 'Tirana', 'Albanians', 0.99, 2934363, '355', 'ALL', 'Albanian Lek', 'L', 'SQ', 'Albanian', 'al'),
('MN', 'Mongolia', 'MNG', '496', 'Ulaanbaatar', 'Mongolians', 0.99, 3121772, '976', 'MNT', 'Mongolian Tugrik', '₮', 'MN', 'Mongolian', 'mn'),
('UY', 'Uruguay', 'URY', '858', 'Montevideo', 'Uruguayans', 0.99, 3469551, '598', 'UYI', 'Uruguay Peso En Unidades Indexadas', '$', 'ES', 'Spanish', 'uy'),
('BA', 'Bosnia and Herzegovina', 'BIH', '70', 'Sarajevo', 'Bosnians or Herzegovinians', 0.99, 3503554, '387', 'BAM', 'Bosnia And Herzegovina Convertible Mark', 'KM', 'HR', 'Croatian', 'ba'),
('PR', 'Puerto Rico', 'PRI', '630', 'San Juan', 'Puerto Ricans', 0.99, 3659007, '1939', 'USD', 'United States Dollar', '$', 'ES', 'Spanish', 'pr'),
('GE', 'Georgia', 'GEO', '268', 'Tbilisi', 'Georgians', 0.99, 3907131, '995', 'GEL', 'Georgian Lari', '₾', 'KA', 'Georgian', 'ge'),
('MD', 'Moldova, Republic of', 'MDA', '498', 'Chisinau', 'Moldovans', 0.99, 4041065, '373', 'MDL', 'Moldovan Leu', 'L', 'RO', 'Romanian', 'md'),
('PA', 'Panama', 'PAN', '591', 'Panama', 'Panamanians', 0.99, 4162618, '507', 'PAB', 'Panamanian Balboa', 'B/.', 'ES', 'Spanish', 'pa'),
('HR', 'Croatia', 'HRV', '191', 'Zagreb', 'Croatians', 0.99, 4164783, '385', 'HRK', 'Croatian Kuna', 'kn', 'HR', 'Croatian', 'hr'),
('KW', 'Kuwait', 'KWT', '414', 'Kuwait', 'Kuwaitis', 0.99, 4197128, '965', 'KWD', 'Kuwaiti Dinar', 'KD', 'AR', 'Arabic', 'kw'),
('MR', 'Mauritania', 'MRT', '478', 'Nouakchott', 'Mauritanians', 0.99, 4540068, '222', 'MRO', 'Mauritanian Ouguiya', 'UM', 'AR', 'Arabic', 'mr'),
('CF', 'Central African Republic', 'CAF', '140', 'Bangui', 'Central Africans', 0.99, 4737423, '236', 'XAF', 'Cfa Franc Beac', 'FCFA', 'FR', 'French', 'cf'),
('NZ', 'New Zealand', 'NZL', '554', 'Wellington', 'New Zealanders', 0.99, 4749598, '64', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'nz'),
('IE', 'Ireland', 'IRL', '372', 'Dublin', 'Irish', 0.99, 4803748, '353', 'EUR', 'Euro', '€', 'GA', 'Irish', 'ie'),
('OM', 'Oman', 'OMN', '512', 'Muscat', 'Omanis', 0.99, 4829946, '968', 'OMR', 'Omani Rial', 'ر.ع.', 'AR', 'Arabic', 'om'),
('LR', 'Liberia', 'LBR', '430', 'Monrovia', 'Liberians', 0.99, 4853516, '231', 'LRD', 'Liberian Dollar', '$', 'EN', 'English', 'lr'),
('CR', 'Costa Rica', 'CRI', '188', 'San Jose', 'Costa Ricans', 0.99, 4953199, '506', 'CRC', 'Costa Rican Colon', '₡', 'ES', 'Spanish', 'cr'),
('PS', 'Palestinian, State of', 'PSE', '275', '-', 'Palestinians', 0.99, 5052776, '972', 'ILS', 'Israeli New Shekel', '₪', 'EN', 'English', 'ps'),
('ER', 'Eritrea', 'ERI', '232', 'Asmara', 'Eritreans', 0.99, 5187948, '291', 'ERN', 'Eritrean Nakfa', 'Nkf', 'TI', 'Tigrinya', 'er'),
('NO', 'Norway', 'NOR', '578', 'Oslo', 'Norwegians', 0.99, 5353363, '47', 'NOK', 'Norwegian Kroner', 'kr', 'NO', 'Norwegian', 'no'),
('CG', 'Congo', 'COG', '178', 'Brazzaville', 'Congolese', 0.99, 5399895, '242', 'XAF', 'Cfa Franc Beac', 'FCFA', 'EN', 'Niger-congo', 'cg'),
('SK', 'Slovakia', 'SVK', '703', 'Bratislava', 'Sierra Leoneans', 0.99, 5449816, '421', 'EUR', 'Euro', '€', 'SK', 'Slovak', 'sk'),
('FI', 'Finland', 'FIN', '246', 'Helsinki', 'Finns', 0.99, 5542517, '358', 'EUR', 'Euro', '€', 'FI', 'Finnish', 'fi'),
('DK', 'Denmark', 'DNK', '208', 'Copenhagen', 'Danes', 0.99, 5754356, '45', 'DKK', 'Danish Krone', 'kr.', 'DA', 'Danish', 'dk'),
('SG', 'Singapore', 'SGP', '702', 'Singapore', 'Singaporeans', 0.99, 5791901, '65', 'SGD', 'Singapore Dollar', '$', 'EN', 'English', 'sg'),
('TM', 'Turkmenistan', 'TKM', '795', 'Ashgabat', 'Turkmens', 0.99, 5851466, '993', 'TMT', 'Turkmenistani Manat', 'T', 'RU', 'Russian', 'tm'),
('LB', 'Lebanon', 'LBN', '422', 'Beirut', 'Lebanese', 0.99, 6093509, '961', 'LBP', 'Lebanese Pound', 'LL', 'AR', 'Arabica', 'lb'),
('KG', 'Kyrgyzstan', 'KGZ', '417', 'Bishkek', 'Kyrgyzstanis', 0.99, 6132932, '996', 'KGS', 'Kyrgyzstani Som', 'Лв', 'RU', 'Russian', 'kg'),
('NI', 'Nicaragua', 'NIC', '558', 'Managua', 'Nicaraguans', 0.99, 6284757, '505', 'NIO', 'Nicaraguan CÓrdoba', 'C$', 'ES', 'Spanish', 'ni'),
('SV', 'El Salvador', 'SLV', '222', 'San Salvador', 'Salvadorans', 0.99, 6411558, '503', 'NOK', 'Norwegian Kroner', 'kr', 'ES', 'Spanish', 'sv'),
('LY', 'Libya', 'LBY', '434', 'Tripoli', 'Libyans', 0.99, 6470956, '218', 'LYD', 'Libyan Dinar', 'LD', 'AR', 'Arabic', 'ly'),
('PY', 'Paraguay', 'PRY', '600', 'Asuncion', 'Paraguayans', 0.99, 6896908, '595', 'PYG', 'Paraguayan GuaranÍ', '₲', 'ES', 'Spanish', 'py'),
('LA', 'Lao People\'s Democratic Republic', 'LAO', '418', 'Vientiane', 'Laos', 0.99, 6961210, '856', 'LAK', 'Lao Kip', '₭', 'LO', 'Lao', 'la'),
('BG', 'Bulgaria', 'BGR', '100', 'Sofia', 'Bulgarians', 0.99, 7036848, '359', 'BGN', 'Bulgarian Lev', 'лв', 'GB', 'Bulgarian', 'bg'),
('HK', 'Hong Kong', 'HKG', '344', '-', 'Hong Kongese', 0.99, 7428887, '852', 'HKD', 'Hong Kong Dollar', '$', 'ZH', 'Chinese', 'hk'),
('SL', 'Sierra Leone', 'SLE', '694', 'Freetown', 'Sammarinese', 0.99, 7719729, '232', 'SLL', 'Sierra Leonean Leone', 'Le', 'EN', 'English', 'sl'),
('TG', 'Togo', 'TGO', '768', 'Lome', 'Togolese', 0.99, 7990926, '228', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'tg'),
('PG', 'Papua New Guinea', 'PNG', '598', 'Port Moresby', 'Papua New Guineans', 0.99, 8418346, '675', 'PGK', 'Papua New Guinean Kina', 'K', 'EN', 'English', 'pg'),
('IL', 'Israel', 'ISR', '376', 'Jerusalem', 'Israelis', 0.99, 8452841, '972', 'ILS', 'Israeli New Shekel', '₪', 'HE', 'Hebrew', 'il'),
('CH', 'Switzerland', 'CHE', '756', 'Bern', 'Swiss', 0.99, 8544034, '41', 'CHF', 'Swiss Franc', 'Fr.', 'DE', 'German', 'ch'),
('AT', 'Austria', 'AUT', '40', 'Vienna', 'Austrians', 0.99, 8751820, '43', 'EUR', 'Euro', '€', 'DE', 'German', 'at'),
('RS', 'Serbia', 'SRB', '688', 'Belgrade', 'Serbians', 0.99, 8762027, '381', 'RSD', 'Serbian Dinar', 'din', 'SR', 'Serbian', 'rs'),
('TJ', 'Tajikistan', 'TJK', '762', 'Dushanbe', 'Tajikistanis', 0.99, 9107211, '992', 'TJS', 'Tajikistani Somoni', 'ЅM', 'FA', 'Persian', 'tj'),
('HN', 'Honduras', 'HND', '340', 'Tegucigalpa', 'Hondurans', 0.99, 9417167, '504', 'HNL', 'Honduran Lempira', 'L', 'ES', 'Spanish', 'hn'),
('BY', 'Belarus', 'BLR', '112', 'Minsk', 'Belarusians', 0.99, 9452113, '375', 'BYR', 'Belarusian Ruble', 'Br', 'BE', 'Belarusian', 'by'),
('AE', 'United Arab Emirates', 'ARE', '784', 'Abu Dhabi', 'Emirians', 0.99, 9541615, '971', 'AED', 'United Arab Emirates Dirham', 'د.إ', 'AR', 'Arabic', 'ae'),
('HU', 'Hungary', 'HUN', '348', 'Budapest', 'Hungarians', 0.99, 9688847, '36', 'HUF', 'Hungarian Forint', 'Ft', 'HU', 'Hungarian', 'hu'),
('JO', 'Jordan', 'JOR', '400', 'Amman', 'Jordanians', 0.99, 9903802, '962', 'JOD', 'Jordanian Dinar', 'د.أ', 'AR', 'Arabic', 'jo'),
('AZ', 'Azerbaijan', 'AZE', '31', 'Baku', 'Azerbaijanis', 0.99, 9923914, '994', 'AZN', 'Azerbaijani Manat', '₼', 'AZ', 'Azerbaijani', 'az'),
('SE', 'Sweden', 'SWE', '752', 'Stockholm', 'Swedes', 0.99, 9982709, '46', 'SEK', 'Swedish Krona', 'kr', 'SV', 'Swedish', 'se'),
('PT', 'Portugal', 'PRT', '620', 'Lisbon', 'Portuguese', 0.99, 10291196, '351', 'EUR', 'Euro', '€', 'PT', 'Portuguese', 'pt'),
('CZ', 'Czech Republic', 'CZE', '203', 'Prague', 'Czechs', 0.99, 10625250, '420', 'CZK', 'Czech Koruna', 'Kč', 'CS', 'Czech', 'cz'),
('DO', 'Dominican Republic', 'DOM', '214', 'Santo Domingo', 'Dominicans', 0.99, 10882996, '1829', 'DOP', 'Dominican Peso', '$', 'ES', 'Spanish', 'do'),
('HT', 'Haiti', 'HTI', '332', 'Port-au-prince', 'Haitians', 0.99, 11112945, '509', 'HTG', 'Haitian Gourde', 'G', 'FR', 'French', 'ht'),
('GR', 'Greece', 'GRC', '300', 'Athens', 'Greeks', 0.99, 11142161, '30', 'EUR', 'Euro', '€', 'EL', 'Greek', 'gr'),
('BO', 'Bolivia, Plurinational State of', 'BOL', '68', 'Sucre', 'Bolivians', 0.99, 11215674, '591', 'BOB', 'Boliviano', 'Bs', 'ES', 'Spanish', 'bo'),
('BI', 'Burundi', 'BDI', '108', 'Bujumbura', 'Burundians', 0.99, 11216450, '257', 'BIF', 'Burundian Franc', 'FBu', 'FR', 'French', 'bi'),
('BJ', 'Benin', 'BEN', '204', 'Porto-Novo', 'Beninese', 0.99, 11485674, '229', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'bj'),
('CU', 'Cuba', 'CUB', '192', 'Havana', 'Cubans', 0.99, 11489082, '53', 'CUC', 'Cuban Convertible Peso', '$', 'ES', 'Spanish', 'cu'),
('BE', 'Belgium', 'BEL', '56', 'Brussels', 'Belgians', 0.99, 11498519, '32', 'EUR', 'Euro', '€', 'NL', 'Dutch', 'be'),
('TN', 'Tunisia', 'TUN', '788', 'Tunis', 'Tunisians', 0.99, 11659174, '216', 'TND', 'Tunisian Dinar', 'DT', 'AR', 'Literary Arabic', 'tn'),
('RW', 'Rwanda', 'RWA', '646', 'Kigali', 'Rwandans', 0.99, 12501156, '250', 'RWF', 'Rwandan Franc', 'FRw', 'FR', 'French', 'rw'),
('SS', 'South Sudan', 'SSD', '728', 'Juba', 'South Sudanese', 0.99, 12919053, '211', 'SSP', 'South Sudanese Pound', 'SD', 'EN', 'English', 'ss'),
('GN', 'Guinea', 'GIN', '324', 'Conakry', 'Guineans', 0.99, 13052608, '224', 'GNF', 'Guinean Franc', 'FG', 'FR', 'French', 'gn'),
('SO', 'Somalia', 'SOM', '706', 'Mogadishu', 'Somalilanders', 0.99, 15181925, '252', 'SOS', 'Somali Shilling', 'Sh.So.', 'AR', 'Arabic', 'so'),
('TD', 'Chad', 'TCD', '148', 'N\'djamena', 'Chadians', 0.99, 15353184, '235', 'XAF', 'Cfa Franc Beac', 'FCFA', 'AR', 'Arabic', 'td'),
('KH', 'Cambodia', 'KHM', '116', 'Phnom Penh', 'Cambodians', 0.99, 16245729, '855', 'KHR', 'Cambodian Riel', '៛', 'KM', 'Khmer', 'kh'),
('SN', 'Senegal', 'SEN', '686', 'Dakar', 'Somalis', 0.99, 16294270, '221', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'sn'),
('EC', 'Ecuador', 'ECU', '218', 'Quito', 'Ecuadorians', 0.99, 16863425, '593', 'USD', 'United States Dollar', '$', 'ES', 'Spanish', 'ec'),
('ZW', 'Zimbabwe', 'ZWE', '716', 'Harare', 'Zimbabweans', 0.99, 16913261, '263', 'ZWD', 'Zimbabwe Dollar', '$', 'EN', 'English', 'zw'),
('NL', 'Netherlands', 'NLD', '528', 'Amsterdam', 'Netherlanders', 0.99, 17110161, '31', 'EUR', 'Euro', '€', 'NL', 'Dutch', 'nl'),
('GT', 'Guatemala', 'GTM', '320', 'Guatemala City', 'Guatemalans', 0.99, 17245346, '502', 'GTQ', 'Guatemalan Quetzal', 'Q', 'ES', 'Spanish', 'gt'),
('ZM', 'Zambia', 'ZMB', '894', 'Lusaka', 'Zambians', 0.99, 17609178, '260', 'ZMW', 'Zambian Kwacha', 'K', 'EN', 'English', 'zm'),
('CL', 'Chile', 'CHL', '152', 'Santiago', 'Chileans', 0.99, 18197209, '56', 'CLP', 'Chilean Peso', '$', 'ES', 'Spanish', 'cl'),
('SY', 'Syrian Arab Republic', 'SYR', '760', 'Damascus', 'Syrians', 0.99, 18284407, '963', 'SYP', 'Syrian Pound', 'LS', 'AR', 'Arabic', 'sy'),
('KZ', 'Kazakhstan', 'KAZ', '398', 'Astana', 'Kazakhstanis', 0.99, 18403860, '7', 'KZT', 'Kazakhstani Tenge', '₸', 'RU', 'Russian', 'kz'),
('ML', 'Mali', 'MLI', '466', 'Bamako', 'Malians', 0.99, 19107706, '223', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'ml'),
('MW', 'Malawi', 'MWI', '454', 'Lilongwe', 'Malawians', 0.99, 19164728, '265', 'MWK', 'Malawian Kwacha', 'K', 'EN', 'English', 'mw'),
('RO', 'Romania', 'ROU', '642', 'Bucharest', 'Romanians', 0.99, 19580634, '40', 'RON', 'Romanian New Lei', 'RON', 'RO', 'Romanian', 'ro'),
('BF', 'Burkina Faso', 'BFA', '854', 'Ouagadougou', 'Burkinabe', 0.99, 19751651, '226', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'bf'),
('LK', 'Sri Lanka', 'LKA', '144', 'Sri Jayewardenepura Kotte', 'Sri Lankans', 0.99, 20950041, '94', 'LKR', 'Sri Lanka Rupee', 'රු', 'TA', 'Tamil', 'lk'),
('NE', 'Niger', 'NER', '562', 'Niamey', 'Nigeriens', 0.99, 22311375, '227', 'NZD', 'New Zealand Dollar', '$', 'FR', 'French', 'ne'),
('TW', 'Taiwan, Province of China', 'TWN', '158', 'Taipei', 'Taiwanese', 0.99, 23694089, '886', 'TWD', 'Taiwan Dollar', 'NT$', 'ZH', 'Chinese Tw', 'tw'),
('CM', 'Cameroon', 'CMR', '120', 'Yaounde', 'Cameroonians', 0.99, 24678234, '237', 'XAF', 'Cfa Franc Beac', 'FCFA', 'FR', 'French', 'cm'),
('AU', 'Australia', 'AUS', '36', 'Canberra', 'Australians', 0.99, 24772247, '61', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'au'),
('CI', 'Cote d\'Ivoire', 'CIV', '384', 'Yamoussoukro', 'Ivorians', 0.99, 24905843, '225', 'XOF', 'Cfa Franc Bceao', 'CFA', 'EN', 'English', 'ci'),
('KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', 'Pyongyang', 'Koreans', 0.99, 25610672, '850', 'KPW', 'North Korean Won', '₩', 'KO', 'Korean', 'kp'),
('MG', 'Madagascar', 'MDG', '450', 'Antananarivo', 'Malagasy', 0.99, 26262810, '261', 'MGA', 'Malagasy Ariary', 'Ar', 'FR', 'French', 'mg'),
('YE', 'Yemen', 'YEM', '887', 'Sanaa', 'Yemenis', 0.99, 28915284, '967', 'YER', 'Yemeni Rial', '﷼', 'AR', 'Arabic', 'ye'),
('GH', 'Ghana', 'GHA', '288', 'Accra', 'Ghanaians', 0.99, 29463643, '233', 'GHS', 'Ghanaian New Cedi', 'GH₵', 'EE', 'Ewe', 'gh'),
('NP', 'Nepal', 'NPL', '524', 'Kathmandu', 'Nepalese', 0.99, 29624035, '977', 'NPR', 'Nepalese Rupee', 'रू', 'NE', 'Nepali', 'np'),
('MZ', 'Mozambique', 'MOZ', '508', 'Maputo', 'Mozambicans', 0.99, 30528673, '258', 'MZN', 'Mozambican Metical', 'MT', 'PT', 'Portuguese', 'mz'),
('AO', 'Angola', 'AGO', '24', 'Luanda', 'Angolans', 0.99, 30774205, '244', 'AOA', 'Angolan Kwanza', 'Kz', 'PT', 'Portuguese', 'ao'),
('MY', 'Malaysia', 'MYS', '458', 'Kuala Lumpur', 'Malaysians', 0.99, 32042458, '60', 'MYR', 'Malaysian Ringgit', 'RM', 'MS', 'Malay', 'my'),
('UZ', 'Uzbekistan', 'UZB', '860', 'Tashkent', 'Uzbekistanis', 0.99, 32364996, '998', 'UZS', 'Uzbekistan Som', 'som', 'UZ', 'Uzbek', 'uz'),
('VE', 'Venezuela, Bolivarian Republic of', 'VEN', '862', 'Caracas', 'Venezuelans', 0.99, 32381221, '58', 'VEF', 'Venezuelan Bolivar Fuerte', 'Bs.S.', 'ES', 'Spanish', 've'),
('PE', 'Peru', 'PER', '604', 'Lima', 'Peruvians', 0.99, 32551815, '51', 'PEN', 'Peruvian Nuevo Sol', 'S/', 'ES', 'Spanish', 'pe'),
('SA', 'Saudi Arabia', 'SAU', '682', 'Riyadh', 'Saudis', 0.99, 33554343, '966', 'SAR', 'Saudi Riyal', 'SR', 'AR', 'Arabic', 'sa'),
('MA', 'Morocco', 'MAR', '504', 'Rabat', 'Moroccans', 0.99, 36191805, '212', 'MAD', 'Moroccan Dirham', 'DH', 'AR', 'Arabic', 'ma'),
('AF', 'Afghanistan', 'AFG', '4', 'Kabul', 'Afghans', 0.99, 36373176, '93', 'AFN', 'Afghan Afghani', '؋', 'FA', 'Persian', 'af'),
('AQ', 'Antarctica', 'ATA', '10', '-', 'Antarctic residents', 0.99, 36373177, '672', '', '', '', 'RU', 'Russian', 'aq'),
('CA', 'Canada', 'CAN', '124', 'Ottawa', 'Canadians', 0.99, 36953765, '1', 'CAD', 'Canadian Dollar', '$', 'FR', 'French', 'ca'),
('PL', 'Poland', 'POL', '616', 'Warsaw', 'Poles', 0.99, 38104832, '48', 'PLN', 'Polish Zloty', 'zł', 'PL', 'Polish', 'pl'),
('IQ', 'Iraq', 'IRQ', '368', 'Baghdad', 'Iraqis', 0.99, 39339753, '964', 'IQD', 'Iraqi Dinar', 'د.ع', 'AR', 'Arabic', 'iq'),
('SD', 'Sudan', 'SDN', '729', 'Khartoum', 'Sudanese', 0.99, 41511526, '249', 'SDG', 'Sudanese Pound', 'SD', 'AR', 'Arabic', 'sd'),
('DZ', 'Algeria', 'DZA', '12', 'Algiers', 'Algerians', 0.99, 42008054, '213', 'DZD', 'Algerian Dinar', 'DA', 'AR', 'Arabic', 'dz'),
('UA', 'Ukraine', 'UKR', '804', 'Kiev', 'Ukrainians', 0.99, 44009214, '380', 'UAH', 'Ukrainian Hryvnia', '₴', 'UK', 'Ukrainian', 'ua'),
('UG', 'Uganda', 'UGA', '800', 'Kampala', 'Ugandans', 0.99, 44270563, '256', 'UGX', 'Ugandan Shilling', 'USh', 'EN', 'English', 'ug'),
('AR', 'Argentina', 'ARG', '32', 'Buenos Aires', 'Argentines', 0.99, 44688864, '54', 'ARS', 'Argentine Peso', '$', 'ES', 'Spanish', 'ar'),
('ES', 'Spain', 'ESP', '724', 'Madrid', 'Spaniards', 0.99, 46397452, '34', 'EUR', 'Euro', '€', 'ES', 'Spanish', 'es'),
('CO', 'Colombia', 'COL', '170', 'Bogota', 'Colombians', 0.99, 49464683, '57', 'COP', 'Colombian Peso', '$', 'ES', 'Spanish', 'co'),
('KE', 'Kenya', 'KEN', '404', 'Nairobi', 'Kenyans', 0.99, 50950879, '254', 'KES', 'Kenyan Shilling', 'KSh', 'EN', 'English', 'ke'),
('KR', 'Korea, Republic of', 'KOR', '410', 'Seoul', 'Koreans', 0.99, 51164435, '82', 'KRW', 'South-korean Won', '₩', 'KO', 'Korean', 'kr'),
('MM', 'Myanmar', 'MMR', '104', 'Pyinmana', 'Burmese', 0.99, 53855735, '95', 'MMK', 'Myanmar Kyat', 'K', 'MY', 'Burmese', 'mm'),
('ZA', 'South Africa', 'ZAF', '710', 'Cape Town', 'South Africans', 0.99, 57398421, '27', 'ZAR', 'South African Rand', 'R', 'AF', 'Afrikaans', 'za'),
('TZ', 'Tanzania, United Republic of', 'TZA', '834', 'Dodoma', 'Tanzanians', 0.99, 59091392, '255', 'TZS', 'Tanzanian Shilling', 'TSh', 'EN', 'English', 'tz'),
('IT', 'Italy', 'ITA', '380', 'Roma', 'Italians', 0.99, 59290969, '39', 'EUR', 'Euro', '€', 'IT', 'Italian', 'it'),
('FR', 'France', 'FRA', '250', 'Paris', 'French', 0.99, 65233271, '33', 'EUR', 'Euro', '€', 'FR', 'French', 'fr'),
('GB', 'United Kingdom', 'GBR', '826', 'London', 'British', 0.99, 66573504, '44', 'GBP', 'British Pound', '£', 'EN', 'English', 'gb'),
('TH', 'Thailand', 'THA', '764', 'Bangkok', 'Thai', 0.99, 69183173, '66', 'THB', 'Thai Baht', '฿', 'TH', 'Thai', 'th'),
('TR', 'Turkey', 'TUR', '792', 'Ankara', 'Turks', 0.99, 81916871, '90', 'TRY', 'Turkish Lira', '₺', 'TR', 'Turkish', 'tr'),
('IR', 'Iran, Islamic Republic of', 'IRN', '364', 'Tehran', 'Iranians', 0.99, 82011735, '98', 'IRR', 'Iranian Rial', '﷼', 'FA', 'Persian', 'ir'),
('DE', 'Germany', 'DEU', '276', 'Berlin', 'Germans', 0.99, 82293457, '49', 'EUR', 'Euro', '€', 'DE', 'German', 'de'),
('CD', 'Congo, the Democratic Republic of the', 'COD', '180', 'Kinshasa', 'Congolese', 0.99, 84004989, '243', 'CDF', 'Congolese Franc', 'FCFA', 'EN', '', 'cd'),
('VN', 'Viet Nam', 'VNM', '704', 'Ha Noi', 'Vietnamese', 0.99, 96491146, '84', 'VND', 'Vietnamese Dong', '₫', 'VI', 'Vietnamese', 'vn'),
('EG', 'Egypt', 'EGY', '818', 'Cairo', 'Egyptians', 0.99, 99375741, '20', 'EGP', 'Egyptian Pound', 'E£', 'AR', 'Arabic', 'eg'),
('PH', 'Philippines', 'PHL', '608', 'Manila', 'Filipinos', 0.99, 106512074, '63', 'PHP', 'Philippine Peso', '₱', 'EN', 'English', 'ph'),
('ET', 'Ethiopia', 'ETH', '231', 'Addis Ababa', 'Ethiopians', 0.99, 107534882, '251', 'ETB', 'Ethiopian Birr', 'Br', 'AM', 'Amharic', 'et'),
('JP', 'Japan', 'JPN', '392', 'Tokyo', 'Japanese', 0.99, 127185332, '81', 'JPY', 'Japanese Yen', '¥', 'JA', 'Japanese', 'jp'),
('MX', 'Mexico', 'MEX', '484', 'Mexico City', 'Mexicans', 0.99, 130759074, '52', 'MXN', 'Mexican Peso', '$', 'ES', 'Spanish', 'mx'),
('RU', 'Russian Federation', 'RUS', '643', 'Moscow', 'Russians', 0.99, 143964709, '7', 'RUB', 'Russian Rouble', '₽', 'RU', 'Russian', 'ru'),
('BD', 'Bangladesh', 'BGD', '50', 'Dhaka', 'Bangladeshis', 0.99, 166368149, '880', 'BDT', 'Bangladeshi Taka', '৳', 'BN', 'Bangla', 'bd'),
('NG', 'Nigeria', 'NGA', '566', 'Abuja', 'Nigerians', 0.99, 195875237, '234', 'NGN', 'Nigerian Naira', '₦', 'EN', 'English', 'ng'),
('PK', 'Pakistan', 'PAK', '586', 'Islamabad', 'Pakistanis', 0.99, 200813818, '92', 'PKR', 'Pakistan Rupee', '₨', 'UR', 'Urdu', 'pk'),
('BR', 'Brazil', 'BRA', '76', 'Brasileia', 'Brazilians', 0.99, 210867954, '55', 'BRL', 'Brazilian Real', 'Cz$', 'PT', 'Portuguese', 'br'),
('BV', 'Bouvet Island', 'BVT', '74', '-', '', 0.99, 210867955, '47', 'NOK', 'Norwegian Kroner', 'kr', 'EN', '', 'bv'),
('ID', 'Indonesia', 'IDN', '360', 'Jakarta', 'Indonesians', 0.99, 266794980, '62', 'IDR', 'Indonesian Rupiah', 'Rp', 'ID', 'Indonesian', 'id'),
('US', 'United States', 'USA', '840', 'Washington, D.C.', 'Americans', 0.99, 326766748, '1', 'USD', 'United States Dollar', '$', 'EN', 'English', 'us'),
('IN', 'India', 'IND', '356', 'New Delhi', 'Indians', 0.99, 1354051854, '91', 'INR', 'Indian Rupee', '₹', 'HI', 'Hindi, English', 'in'),
('CN', 'China', 'CHN', '156', 'Beijing', 'Chinese', 0.99, 1415045928, '86', 'CNY', 'Chinese Yuan Renminbi', '¥', 'ZH', 'Chinese', 'cn'),
('HM', 'Heard Island and McDonald Islands', 'HMD', '334', '-', '', 0.99, 1415045929, '61', 'AUD', 'Australian Dollar', '$', 'EN', '', 'hm');

-- --------------------------------------------------------

--
-- Table structure for table `work_date_format_static`
--

CREATE TABLE `work_date_format_static` (
  `id` int(11) NOT NULL,
  `format` text NOT NULL,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_date_format_static`
--

INSERT INTO `work_date_format_static` (`id`, `format`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'MM/DD/YY', 1, '2020-03-04 02:11:41', '2020-03-04 09:26:35'),
(2, 'DD/MM/YY', 1, '2020-03-04 02:11:41', '2020-03-04 09:26:39'),
(3, 'YY/MM/DD', 1, '2020-03-04 02:11:41', '2020-03-04 09:26:41'),
(4, 'Month D, Yr', 1, '2020-03-04 02:11:41', '2020-03-05 04:35:02'),
(5, 'M/D/YY', 0, '2020-03-04 02:11:41', '2020-03-04 09:26:49'),
(6, 'D/M/YY', 0, '2020-03-04 02:11:41', '2020-03-04 09:26:52'),
(7, 'YY/M/D', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(8, 'bM/bD/YY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(9, 'bD/bM/YY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(10, 'YY/bM/bD', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(11, 'MMDDYY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(12, 'DDMMYY', 1, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(13, 'YYMMDD', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(14, 'MonDDYY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(15, 'DDMonYY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(16, 'YYMonDD', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(17, 'D Month, Yr', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(18, 'Yr, Month D', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(19, 'Mon DD, YYYY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(20, 'DD-Mon-YYYY', 0, '2020-03-04 02:11:41', '2020-03-04 02:11:41'),
(21, 'YYYYY-Mon-DD', 1, '2020-03-04 02:11:41', '2020-03-05 04:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `work_org_member_permission_static`
--

CREATE TABLE `work_org_member_permission_static` (
  `id` int(11) NOT NULL,
  `permission_name` text NOT NULL,
  `permission_desc` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_org_member_roles_permission`
--

CREATE TABLE `work_org_member_roles_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_subscription_features`
--

CREATE TABLE `work_subscription_features` (
  `id` int(11) NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `feature_desc` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_subscription_features`
--

INSERT INTO `work_subscription_features` (`id`, `feature_name`, `feature_desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Advanced search ', 'Access in-demand talent through our talent sourcing program.', 1, '2020-03-31 03:05:35', '2020-03-31 03:05:35'),
(2, 'Project Promotion', 'Highlight your projects to attract more in-demand freelancers and agencies.', 1, '2020-03-31 03:05:35', '2020-03-31 03:05:35'),
(3, 'Team Members', 'Provide full team access and gain greater project visibility throughout its duration', 1, '2020-03-31 03:06:17', '2020-03-31 03:06:17'),
(4, 'project Tracking', 'Advanced reporting to track the progress of your projects for improved efficiency.', 1, '2020-03-31 03:06:17', '2020-03-31 03:06:17'),
(5, 'Limitless Project', 'No Limits for projects. Its unlimited', 1, '2020-03-31 03:13:13', '2020-03-31 03:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `work_subscription_plans`
--

CREATE TABLE `work_subscription_plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '(1) = both, (2)= yearly ,(3) = monthly',
  `amount` int(11) NOT NULL,
  `is_free_trail` int(11) NOT NULL,
  `free_trail_period` int(11) NOT NULL,
  `is_use_after_sub_ends` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_subscription_plans_feature`
--

CREATE TABLE `work_subscription_plans_feature` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users`
--

CREATE TABLE `work_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `is_email_verified` int(11) DEFAULT '0',
  `acount_status` int(11) DEFAULT NULL,
  `account type` int(11) DEFAULT '0' COMMENT '(1) = freelancer, (2) = organization , (3) = organization member',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_users`
--

INSERT INTO `work_users` (`id`, `user_id`, `email`, `firstname`, `lastname`, `is_email_verified`, `acount_status`, `account type`, `subscription_id`, `created_at`, `updated_at`) VALUES
(1, '90eb9576-2bf9-4408-86ad-64278e0e27b9', 'viyash@whizlabs.com', NULL, NULL, 0, NULL, NULL, 0, '2020-03-24 13:52:21', '2020-03-24 13:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `work_users_credentials`
--

CREATE TABLE `work_users_credentials` (
  `id` int(11) NOT NULL,
  `user_primary_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '(1) = password',
  `type_datas` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_level_three`
--

CREATE TABLE `work_users_level_three` (
  `id` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `website` int(11) NOT NULL,
  `organisation` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `dob` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `education_qualification` int(11) NOT NULL,
  `address_one` int(11) NOT NULL,
  `address_two` int(11) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `total_experience` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_level_two`
--

CREATE TABLE `work_users_level_two` (
  `id` int(11) NOT NULL,
  `is_account verified` int(11) NOT NULL,
  `profile_picture_link` int(11) NOT NULL,
  `current_available` int(11) NOT NULL,
  `available_type` int(11) NOT NULL,
  `profile_link` int(11) NOT NULL,
  `profile_visibility_status` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_notifications`
--

CREATE TABLE `work_users_notifications` (
  `id` int(11) NOT NULL,
  `n_to` int(11) NOT NULL,
  `notification` text NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_table_management`
--

CREATE TABLE `work_users_table_management` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_users_table_management`
--

INSERT INTO `work_users_table_management` (`id`, `table_name`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'work_users', 1, 'This table contains first phase of user details', '2020-03-31 14:14:58', '2020-03-31 14:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `work_users_teams`
--

CREATE TABLE `work_users_teams` (
  `team_id` int(11) NOT NULL,
  `team_name` int(11) NOT NULL,
  `team_desc` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_team_members`
--

CREATE TABLE `work_users_team_members` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_userid_management`
--

CREATE TABLE `work_users_userid_management` (
  `id` int(11) NOT NULL,
  `user_primary_id` int(11) NOT NULL,
  `uniq_user_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_users_verification_mail`
--

CREATE TABLE `work_users_verification_mail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uniq_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_users_verification_mail`
--

INSERT INTO `work_users_verification_mail` (`id`, `user_id`, `uniq_token`, `status`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '202003-2419-2221-35eddc0a-8fbd-4f52-8bbd-8e1dafe146a6', 0, '2020-04-03 13:52:21', '2020-03-24 13:52:21', '2020-03-24 13:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `work_user_deleted_users_mgmt`
--

CREATE TABLE `work_user_deleted_users_mgmt` (
  `deleted_user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `is_email_verified` int(11) DEFAULT '0',
  `acount_status` int(11) DEFAULT NULL,
  `account type` int(11) DEFAULT '0' COMMENT '(1) = freelancer, (2) = organization , (3) = organization member',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_user_deleted_users_mgmt`
--

INSERT INTO `work_user_deleted_users_mgmt` (`deleted_user_id`, `id`, `user_id`, `email`, `firstname`, `lastname`, `is_email_verified`, `acount_status`, `account type`, `subscription_id`, `created_at`, `updated_at`) VALUES
(1, 0, '90eb9576-2bf9-4408-86ad-64278e0e27b9', 'viyash@whizlabs.com', NULL, NULL, 0, NULL, NULL, 0, '2020-03-24 13:52:21', '2020-03-24 13:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `work_user_delete_request`
--

CREATE TABLE `work_user_delete_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_education`
--

CREATE TABLE `work_user_education` (
  `id` int(11) NOT NULL,
  `school_name` int(11) NOT NULL,
  `area_of_study` int(11) NOT NULL,
  `degree` int(11) NOT NULL,
  `dates_attended_from` int(11) NOT NULL,
  `dates_attended_to` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_employment`
--

CREATE TABLE `work_user_employment` (
  `id` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `company_state` int(11) NOT NULL,
  `company_country` int(11) NOT NULL,
  `job_title` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `periods` int(11) NOT NULL,
  `current_work_place` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_expired_subscriptions`
--

CREATE TABLE `work_user_expired_subscriptions` (
  `expired_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` tinytext,
  `subscription_start_time` datetime DEFAULT NULL,
  `subscription_end_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '(0) expired (1) active (2) upgrade (3) downgrade (4) Free trial',
  `moved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_language`
--

CREATE TABLE `work_user_language` (
  `id` int(11) NOT NULL,
  `english_fluency_level` int(11) NOT NULL,
  `other_language` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_login_details`
--

CREATE TABLE `work_user_login_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_old_user_id`
--

CREATE TABLE `work_user_old_user_id` (
  `id` int(11) NOT NULL,
  `user_primary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_org_members`
--

CREATE TABLE `work_user_org_members` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `assist_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_org_members_invitation_mail`
--

CREATE TABLE `work_user_org_members_invitation_mail` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `invitation_link` int(11) NOT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_org_removed_members`
--

CREATE TABLE `work_user_org_removed_members` (
  `removed_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `assist_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_org_role`
--

CREATE TABLE `work_user_org_role` (
  `id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_desc` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_overview`
--

CREATE TABLE `work_user_overview` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `overview` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_salary`
--

CREATE TABLE `work_user_salary` (
  `id` int(11) NOT NULL,
  `hourly_rate` int(11) NOT NULL,
  `service_fee` int(11) NOT NULL,
  `receive_fee` int(11) NOT NULL,
  `is_done` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_setting`
--

CREATE TABLE `work_user_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL,
  `setting_type` int(191) NOT NULL,
  `setting_value` text,
  `setting_status` int(191) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_subscriptions`
--

CREATE TABLE `work_user_subscriptions` (
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` tinytext,
  `subscription_start_time` datetime DEFAULT NULL,
  `subscription_end_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '(0) expired (1) active (2) upgrade (3) downgrade (4) Free trial',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_user_subscription_transaction_details`
--

CREATE TABLE `work_user_subscription_transaction_details` (
  `id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `paypal_profile_id` text NOT NULL,
  `transaction_id` text NOT NULL,
  `subscription_term` int(11) NOT NULL COMMENT 'annually, monthly',
  `amount` int(11) NOT NULL,
  `is_coupon_applied` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `work_categories`
--
ALTER TABLE `work_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lms_categories_parent_id_index` (`parent_id`),
  ADD KEY `lms_categories_is_type_index` (`is_type`),
  ADD KEY `lms_categories_order_by_index` (`order_by`);

--
-- Indexes for table `work_countries_static`
--
ALTER TABLE `work_countries_static`
  ADD PRIMARY KEY (`population`),
  ADD KEY `website_ip2location_info_country_code_index` (`country_code`);

--
-- Indexes for table `work_date_format_static`
--
ALTER TABLE `work_date_format_static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_org_member_permission_static`
--
ALTER TABLE `work_org_member_permission_static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_org_member_roles_permission`
--
ALTER TABLE `work_org_member_roles_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_subscription_features`
--
ALTER TABLE `work_subscription_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_subscription_plans`
--
ALTER TABLE `work_subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_subscription_plans_feature`
--
ALTER TABLE `work_subscription_plans_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users`
--
ALTER TABLE `work_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id` (`id`),
  ADD KEY `email_2` (`email`);

--
-- Indexes for table `work_users_credentials`
--
ALTER TABLE `work_users_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users_level_three`
--
ALTER TABLE `work_users_level_three`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users_level_two`
--
ALTER TABLE `work_users_level_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users_notifications`
--
ALTER TABLE `work_users_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users_table_management`
--
ALTER TABLE `work_users_table_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users_teams`
--
ALTER TABLE `work_users_teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `work_users_team_members`
--
ALTER TABLE `work_users_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_users_userid_management`
--
ALTER TABLE `work_users_userid_management`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_id` (`uniq_user_id`);

--
-- Indexes for table `work_users_verification_mail`
--
ALTER TABLE `work_users_verification_mail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_token` (`uniq_token`);

--
-- Indexes for table `work_user_deleted_users_mgmt`
--
ALTER TABLE `work_user_deleted_users_mgmt`
  ADD PRIMARY KEY (`deleted_user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `work_user_delete_request`
--
ALTER TABLE `work_user_delete_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_education`
--
ALTER TABLE `work_user_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_employment`
--
ALTER TABLE `work_user_employment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_expired_subscriptions`
--
ALTER TABLE `work_user_expired_subscriptions`
  ADD PRIMARY KEY (`expired_id`);

--
-- Indexes for table `work_user_language`
--
ALTER TABLE `work_user_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_login_details`
--
ALTER TABLE `work_user_login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_old_user_id`
--
ALTER TABLE `work_user_old_user_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_org_members`
--
ALTER TABLE `work_user_org_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_org_members_invitation_mail`
--
ALTER TABLE `work_user_org_members_invitation_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_org_removed_members`
--
ALTER TABLE `work_user_org_removed_members`
  ADD PRIMARY KEY (`removed_id`);

--
-- Indexes for table `work_user_org_role`
--
ALTER TABLE `work_user_org_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_overview`
--
ALTER TABLE `work_user_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_salary`
--
ALTER TABLE `work_user_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_user_setting`
--
ALTER TABLE `work_user_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`user_id`,`setting_type`);

--
-- Indexes for table `work_user_subscriptions`
--
ALTER TABLE `work_user_subscriptions`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `work_user_subscription_transaction_details`
--
ALTER TABLE `work_user_subscription_transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `work_categories`
--
ALTER TABLE `work_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `work_countries_static`
--
ALTER TABLE `work_countries_static`
  MODIFY `population` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1415045930;

--
-- AUTO_INCREMENT for table `work_date_format_static`
--
ALTER TABLE `work_date_format_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `work_org_member_permission_static`
--
ALTER TABLE `work_org_member_permission_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_org_member_roles_permission`
--
ALTER TABLE `work_org_member_roles_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_subscription_features`
--
ALTER TABLE `work_subscription_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work_subscription_plans`
--
ALTER TABLE `work_subscription_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_subscription_plans_feature`
--
ALTER TABLE `work_subscription_plans_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users`
--
ALTER TABLE `work_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_users_credentials`
--
ALTER TABLE `work_users_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_level_three`
--
ALTER TABLE `work_users_level_three`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_level_two`
--
ALTER TABLE `work_users_level_two`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_notifications`
--
ALTER TABLE `work_users_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_table_management`
--
ALTER TABLE `work_users_table_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_users_teams`
--
ALTER TABLE `work_users_teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_team_members`
--
ALTER TABLE `work_users_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_userid_management`
--
ALTER TABLE `work_users_userid_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_users_verification_mail`
--
ALTER TABLE `work_users_verification_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_user_deleted_users_mgmt`
--
ALTER TABLE `work_user_deleted_users_mgmt`
  MODIFY `deleted_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_user_delete_request`
--
ALTER TABLE `work_user_delete_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_education`
--
ALTER TABLE `work_user_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_employment`
--
ALTER TABLE `work_user_employment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_expired_subscriptions`
--
ALTER TABLE `work_user_expired_subscriptions`
  MODIFY `expired_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_language`
--
ALTER TABLE `work_user_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_login_details`
--
ALTER TABLE `work_user_login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_old_user_id`
--
ALTER TABLE `work_user_old_user_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_org_members`
--
ALTER TABLE `work_user_org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_org_members_invitation_mail`
--
ALTER TABLE `work_user_org_members_invitation_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_org_removed_members`
--
ALTER TABLE `work_user_org_removed_members`
  MODIFY `removed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_org_role`
--
ALTER TABLE `work_user_org_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_overview`
--
ALTER TABLE `work_user_overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_salary`
--
ALTER TABLE `work_user_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_setting`
--
ALTER TABLE `work_user_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_subscriptions`
--
ALTER TABLE `work_user_subscriptions`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_user_subscription_transaction_details`
--
ALTER TABLE `work_user_subscription_transaction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
