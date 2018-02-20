-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 20 2018 г., 14:36
-- Версия сервера: 5.7.21-0ubuntu0.16.04.1
-- Версия PHP: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `craft`
--

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 1, 1, 'sputnik.png', 'image', 720, 504, 13522, '2018-02-18 15:11:12', '2018-02-18 15:11:29', '2018-02-18 15:11:30', '6694aaa4-1669-4263-bab5-e7810f82ab8b'),
(8, 1, 1, 'apples_bascket.png', 'image', 720, 504, 15868, '2018-02-18 15:11:14', '2018-02-18 15:11:31', '2018-02-18 15:11:32', '9325996f-416a-4b1f-8ba3-9e0bd456d0c3'),
(9, 1, 1, 'android.png', 'image', 720, 504, 17856, '2018-02-18 15:11:15', '2018-02-18 15:11:32', '2018-02-18 15:11:32', '4591b346-979d-4399-a7a0-29ca5f4814d7'),
(14, 1, 1, 'main.png', 'image', 250, 57, 2868, '2018-02-18 18:28:11', '2018-02-18 18:28:20', '2018-02-18 18:28:20', '755b144c-0c37-4c53-92a9-1c98b119053e'),
(17, 1, 1, 'planet.png', 'image', 720, 504, 14434, '2018-02-18 19:29:20', '2018-02-18 19:29:27', '2018-02-18 19:29:28', '42d4b297-9a5d-4c77-ba9a-30c6b592d6bd'),
(18, 1, 1, 'chupa.png', 'image', 720, 504, 16128, '2018-02-18 19:29:23', '2018-02-18 19:29:28', '2018-02-18 19:29:29', '4efcb0da-a970-4f11-85ec-cb6546c897f8');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Uploads', '', '2018-02-18 15:05:46', '2018-02-18 15:05:46', '4f190489-8fd2-410a-92bd-cda963f9ae02');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Uploads', 'uploads', 'Local', '{"path":"upload\\/","publicURLs":"1","url":"\\/craft\\/public\\/upload\\/"}', 1, 11, '2018-02-18 15:05:45', '2018-02-18 17:49:30', '7203bd4f-7c9a-4cc0-9dd1-d2d5ede14545');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 'sputnik.png', NULL, '_servDetail', 1, 1, 0, '2018-02-18 17:51:39', '2018-02-18 17:51:39', '2018-02-18 17:51:40', '32f1668d-fba4-42fc-babb-9ed15d123f18'),
(2, 8, 'apples_bascket.png', NULL, '_servDetail', 1, 1, 0, '2018-02-18 17:55:47', '2018-02-18 17:55:47', '2018-02-18 17:55:48', 'ce6e2a78-d1c0-4726-a2ad-6756b24e4700'),
(3, 9, 'android.png', NULL, '_servDetail', 1, 1, 0, '2018-02-18 18:01:27', '2018-02-18 18:01:27', '2018-02-18 18:01:29', '86d91567-be0e-443d-a09c-595eccc0a7a4'),
(4, 18, 'chupa.png', NULL, '_servDetail', 1, 1, 0, '2018-02-18 19:29:48', '2018-02-18 19:29:48', '2018-02-18 19:29:49', '3e3cab61-b9f9-4a7a-b60a-58e169358094'),
(5, 17, 'planet.png', NULL, '_servDetail', 1, 1, 0, '2018-02-18 19:33:10', '2018-02-18 19:33:10', '2018-02-18 19:33:11', '6dd1bb68-0ea9-4f78-a284-e40b5d3604a5');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assettransforms`
--

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'serv_detail', 'servDetail', 'fit', 'center-center', 252, 360, NULL, NULL, '2018-02-18 17:19:39', '2018-02-18 17:19:39', '2018-02-18 17:19:39', 'a3eee2b8-d604-4f8d-9353-e9a117e563d2');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_service_summary` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_service_video_url` text COLLATE utf8_unicode_ci,
  `field_service_next_url` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_service_summary`, `field_service_video_url`, `field_service_next_url`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'ru', NULL, NULL, NULL, NULL, NULL, '2018-02-13 20:29:35', '2018-02-13 20:29:35', 'ce3b6194-4f31-4d50-8180-4958abe56ded'),
(2, 2, 'ru', 'Разработка и дизайн мобильных и веб-приложений', '<p><strong>Целевые отрасли: мобильная коммерция, uber-like, маркетплейсы, туризм.</strong></p>\n<p><img src="{asset:14:url}" alt="main.png#asset:14" /><br /></p><p>Прежде чем создать реальный проект, нужно запустить его «на бумаге» и заложить фундамент. Результатом этапа станет интерактивный прототип и функциональная структура приложения </p>\n<p>Новый подход к старой проблеме. Начнём с банального: дадим словам определения и проследим, какими путями они попали в наш язык</p>\n<p><br /></p>', NULL, NULL, NULL, '2018-02-13 20:29:38', '2018-02-18 18:30:41', 'e22a9c29-d420-4001-8027-b0d1a060b825'),
(3, 3, 'ru', 'Проектирование и прототипирование интерфейса', '<p><br /></p>\n<p><br /></p>\n<p>Прототип будет работать на любом устройстве и в любом браузере. У вас появится возможность получить обратную связь от потенциальных пользователей на самой ранней стадии разработки продукта. Это поможет учесть их мнение и поменять продукт в лучшую сторону.</p>\n<p>Наша команда экспертов вникнет в предметную область, изучит нюансы вашего бизнеса, проведет обзор аналогов и текущих решений на рынке. Вы не потратите ваше время и деньги на невостребованные функции и непроверенные гипотезы.</p>\n<p><br />После этапа проектирования мы предложим фиксированную оценку на разработку продукта. Вам не придется переживать об изменении стоимости в ходе разработки. Поможем с подготовкой тендерной документации.</p>', 'Мы разработаем для вас высокодетальный интерактивный прототип интерфейса, максимально приближенный к реальному приложению. ', 'https://www.youtube.com/watch?v=xLl29-2Dkuo', '', '2018-02-18 13:36:05', '2018-02-20 12:33:31', '9fac63ae-b560-4d53-b9f0-de95a7bf82ef'),
(7, 7, 'ru', 'Sputnik', NULL, NULL, NULL, NULL, '2018-02-18 15:11:29', '2018-02-18 15:11:30', '442ef282-3b7f-4c80-b486-9cf9a8167075'),
(8, 8, 'ru', 'Apples Bascket', NULL, NULL, NULL, NULL, '2018-02-18 15:11:31', '2018-02-18 15:11:32', '69cae2b6-4f50-424f-af03-ead68e57ca1d'),
(9, 9, 'ru', 'Android', NULL, NULL, NULL, NULL, '2018-02-18 15:11:32', '2018-02-18 15:11:32', '0b57afa4-fb1c-409b-bc98-10f13e5c1241'),
(10, 10, 'ru', 'Контакты', '<div class="contacts-country -open js-contacts-country-root"><div class="contacts-country__title js-contacts-country-open"><div class="contacts-country__arrow"></div><div class="contacts-country__name">Россия, Москва,Тверская, 9</div></div><div class="contacts-country__cities"><div class="contacts-city"><div class="contacts-city__name">Россия, Омск, Красина, 6</div><p><a href="tel:74952043503" class="contacts-country__phone js-contacts-for-yandex-metrika js-lt-crm">+7 495 204-35-03</a><a href="mailto:hi@livetyping.com" class="contacts-country__email js-contacts-for-yandex-metrika js-lt-crm">hi@livetyping.com</a></p></div></div></div>', NULL, NULL, NULL, '2018-02-18 16:35:06', '2018-02-19 17:57:09', '77c0db5c-9232-48d5-88fe-f680b01dd04b'),
(11, 11, 'ru', 'Надежная команда разработчиков под iPhone и iPad', '<p><img src="{asset:8:servDetail}" alt="apples_bascket.png#asset:8:servDetail" /><br /></p>\n<p>Нативная разработка на Swift и Objective-C для лучшего UX43px<br /></p>\n<p>Высококачественный документированный код. Приложения, созданые нами, были отмечены в подборках App Store. Высока вероятность, что мы уже делали что-то похожее на ваш проект. Позвольте рассказать подробнее о нашем опыте в функциях, индустриях и технологиях.</p>', '​  Полный цикл  iOS-разработки  для вашего проекта.   8 штатных специалистов, 5 лет опыта.   100% ваша интеллектуальная собственность', '', '', '2018-02-18 17:55:51', '2018-02-20 12:33:56', '4e210723-6053-45a8-8163-465a35b98fc9'),
(12, 12, 'ru', 'Опытная команда Android разработчиков', '<p><img src="{asset:9:servDetail}" alt="android.png#asset:9:servDetail" /><br /></p>\n<p>Выделенная фулл-тайм команда, высокая скорость разработки</p>\n<p>Прозрачные agile-процессы, видимый результат каждую неделю</p>\n<p>Опытные проектные менеджеры и тестировщики</p>\n<p>100% ваша интеллектуальная собственность</p>\n<p>Нативная разработка на Java, C, C++, Kotlin, для лучшего UX</p>\n<p>Высококачественный легкочитаемый код</p>', 'Полный цикл  Android-разработки  для вашего проекта. Позвольте рассказать подробнее о нашем опыте в функциях, индустриях и технологиях.', 'https://www.youtube.com/watch?v=Fij7kRvvTkE', '', '2018-02-18 18:01:37', '2018-02-20 12:33:45', 'f3bdb473-2ea7-4761-ab81-a21d3fce4579'),
(14, 14, 'ru', 'Main', NULL, NULL, NULL, NULL, '2018-02-18 18:28:20', '2018-02-18 18:28:20', 'bdb08994-9bc3-4f23-8599-054712c08197'),
(17, 17, 'ru', 'Planet', NULL, NULL, NULL, NULL, '2018-02-18 19:29:27', '2018-02-18 19:29:28', '3e54b4fd-36e0-42f9-a74b-3a06b2e4dc38'),
(18, 18, 'ru', 'Chupa', NULL, NULL, NULL, NULL, '2018-02-18 19:29:28', '2018-02-18 19:29:29', 'a6272237-faf5-443e-8fd5-1e6dd3cc6d8a'),
(19, 19, 'ru', 'Разработка веб-приложений и API', '<p><img src="{asset:18:servDetail}" alt="chupa.png#asset:18:servDetail" /></p>\n<p> Для серверной разработки мы используем Ruby, PHP, NodeJS, Java. Клиентская часть создаётся на HTML5, CSS3, JavaScript. </p>\n<p>При разработке сервисов мы используем различные архитектурные фреймворки: Angular, React, Yii, Laravel, Ruby on Rails. Обычно панели управления и администрирования создаются с нуля из-за их уникальности, но если задача требует интеграции с CRM, CMS, платежными агрегаторами и прочими системами, то мы помогаем сделать оптимальный выбор. </p>', 'Мы делаем веб-сервисы для бизнеса и стартапов, разрабатываем документированные API для мобильных приложений.', 'https://www.youtube.com/watch?v=6-HUgzYPm9g', '', '2018-02-18 19:29:57', '2018-02-20 12:26:58', 'a9fb3f35-995b-4197-ad7e-d250a8e829bb'),
(20, 20, 'ru', 'Дизайн интерфейсов', '<p><img src="{asset:17:servDetail}" alt="planet.png#asset:17:servDetail" /><br /></p>\n<p>Вопросы стилистики и важные детали отлаживаются на этапе дизайна, и мобильные приложения становятся не только функциональными, но привлекательными и запоминающимися. </p>\n<p>Отзывчивый дизайн веб-приложений делает их удобными и доступными на различных устройствах. Наши дизайнеры работают в тесном контакте с разработчиками, поэтому воплощение интерфейсов происходит максимально быстро и гладко. </p>', 'На этапе прототипирования мы решаем вопросы функциональности и пользовательского опыта. ', '', '', '2018-02-18 19:33:15', '2018-02-20 12:34:06', '06d91cbc-7bc7-43d1-aaa7-3332b00ccc62');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elementindexsettings`
--

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Entry', '{"sources":{"section:2":{"tableAttributes":{"1":"postDate","2":"expiryDate","3":"link","4":"slug"}}}}', '2018-02-18 18:20:53', '2018-02-18 18:21:05', '5e017fa7-929e-400a-b46b-b846a47f8191');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2018-02-13 20:29:35', '2018-02-13 20:29:35', '937650af-ca4f-40b9-af8f-cc6716cb6f5a'),
(2, 'Entry', 1, 0, '2018-02-13 20:29:38', '2018-02-18 18:30:41', '30626cac-4210-485f-beda-44d1953b4357'),
(3, 'Entry', 1, 0, '2018-02-18 13:36:05', '2018-02-20 12:33:31', 'fe52cf1a-0eeb-4c6a-8073-21d46551472d'),
(7, 'Asset', 1, 0, '2018-02-18 15:11:29', '2018-02-18 15:11:30', '6717ccca-d29f-4601-a146-c7825d824aa9'),
(8, 'Asset', 1, 0, '2018-02-18 15:11:31', '2018-02-18 15:11:32', 'eb10b752-a96f-4818-8698-e8ebdc292364'),
(9, 'Asset', 1, 0, '2018-02-18 15:11:32', '2018-02-18 15:11:32', '68a963f8-6cf8-428e-9afa-a81c119eee39'),
(10, 'Entry', 1, 0, '2018-02-18 16:35:05', '2018-02-19 17:57:09', '251c6f3d-6a2f-4e50-8e7b-e3e502114d03'),
(11, 'Entry', 1, 0, '2018-02-18 17:55:51', '2018-02-20 12:33:56', '699e3f9f-ce8f-4be6-bc74-434dd0abb4d0'),
(12, 'Entry', 1, 0, '2018-02-18 18:01:37', '2018-02-20 12:33:45', 'e732acce-3d07-47d3-86ac-c66440b8668a'),
(14, 'Asset', 1, 0, '2018-02-18 18:28:19', '2018-02-18 18:28:20', '2e8b6c99-e352-4b71-a0d6-2e35c151af3d'),
(17, 'Asset', 1, 0, '2018-02-18 19:29:27', '2018-02-18 19:29:28', 'e91e01d9-aa2c-408e-a74c-167a59b889fb'),
(18, 'Asset', 1, 0, '2018-02-18 19:29:28', '2018-02-18 19:29:29', '5fcffba2-0277-46d9-90dd-527406e2165c'),
(19, 'Entry', 1, 0, '2018-02-18 19:29:57', '2018-02-20 12:26:58', '6205f118-1677-44df-a016-9c844f3de939'),
(20, 'Entry', 1, 0, '2018-02-18 19:33:15', '2018-02-20 12:34:06', 'dcdcb9e9-bc40-4168-8c51-1112fa7c8ecf');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'ru', '', NULL, 1, '2018-02-13 20:29:35', '2018-02-13 20:29:35', '4af708e9-dd84-401d-b63d-5442644e6b20'),
(2, 2, 'ru', 'homepage', '__home__', 1, '2018-02-13 20:29:38', '2018-02-18 18:30:41', 'f714c11f-c345-4255-a12f-55691f1fb8ad'),
(3, 3, 'ru', 'проектирование-и-прототипирование-интерфейса', 'news/проектирование-и-прототипирование-интерфейса', 1, '2018-02-18 13:36:06', '2018-02-20 12:33:31', 'ceb148eb-03fa-4fa6-89b0-d0d074d1da2d'),
(7, 7, 'ru', 'sputnik', NULL, 1, '2018-02-18 15:11:29', '2018-02-18 15:11:30', 'cf63988f-ac7c-4088-98ce-501c6dece91e'),
(8, 8, 'ru', 'apples-bascket', NULL, 1, '2018-02-18 15:11:31', '2018-02-18 15:11:32', '4134d9f8-f3fe-4793-a65d-4babf1e4b765'),
(9, 9, 'ru', 'android', NULL, 1, '2018-02-18 15:11:32', '2018-02-18 15:11:32', '07e6a263-8fc2-4649-b7da-f8b168042bee'),
(10, 10, 'ru', 'contacts', 'contacts', 1, '2018-02-18 16:35:06', '2018-02-19 17:57:10', '84596298-a465-46d5-9c28-f7f2a8137eec'),
(11, 11, 'ru', 'надежная-команда-разработчиков-под-iphone-и-ipad', 'news/надежная-команда-разработчиков-под-iphone-и-ipad', 1, '2018-02-18 17:55:51', '2018-02-20 12:33:57', '0ebc4827-5f2a-4adb-9e8d-62c25360590d'),
(12, 12, 'ru', 'опытная-команда-android-разработчиков', 'news/опытная-команда-android-разработчиков', 1, '2018-02-18 18:01:37', '2018-02-20 12:33:45', 'f3378f40-cd31-42d5-8824-6b4ce0b02291'),
(14, 14, 'ru', 'main', NULL, 1, '2018-02-18 18:28:20', '2018-02-18 18:28:20', 'ed8aa410-0e1f-4b26-8492-a86cb008814f'),
(17, 17, 'ru', 'planet', NULL, 1, '2018-02-18 19:29:27', '2018-02-18 19:29:28', '8842c8e4-a6e9-4f22-b458-a31297a7b5f3'),
(18, 18, 'ru', 'chupa', NULL, 1, '2018-02-18 19:29:28', '2018-02-18 19:29:29', '62126c64-332e-44ff-937e-c54a3c1717b2'),
(19, 19, 'ru', 'разработка-веб-приложений-и-api', 'news/разработка-веб-приложений-и-api', 1, '2018-02-18 19:29:57', '2018-02-20 12:26:59', '4ff55e3c-9d66-43b3-a07d-2d6d8d948c7d'),
(20, 20, 'ru', 'дизайн-интерфейсов', 'news/дизайн-интерфейсов', 1, '2018-02-18 19:33:15', '2018-02-20 12:34:06', 'bd0eb2c6-59dc-4622-9a93-5d90811bef2d');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 1, NULL, '2018-02-13 21:39:20', NULL, '2018-02-13 20:29:38', '2018-02-18 18:30:42', '61231609-74c6-4a0c-b6a8-6a26cb273be0'),
(3, 2, 2, 1, '2018-02-18 13:36:00', NULL, '2018-02-18 13:36:07', '2018-02-20 12:33:32', '51f04bf4-74e2-4324-9f14-d1bf4ef3ff44'),
(10, 3, 3, NULL, '2018-02-18 19:04:09', NULL, '2018-02-18 16:35:06', '2018-02-19 17:57:10', '89338529-e6bd-43fa-a2b1-216581873909'),
(11, 2, 2, 1, '2018-02-18 17:55:00', NULL, '2018-02-18 17:55:52', '2018-02-20 12:33:57', '0d6ca76a-c346-4251-b052-76d955ee8005'),
(12, 2, 2, 1, '2018-02-18 18:01:00', NULL, '2018-02-18 18:01:38', '2018-02-20 12:33:46', '92149d20-6ec6-4528-99f2-edfb29b8c002'),
(19, 2, 2, 1, '2018-02-18 19:29:00', NULL, '2018-02-18 19:29:57', '2018-02-20 12:27:00', '353b9767-bf8e-4fac-a09f-f6b673f73605'),
(20, 2, 2, 1, '2018-02-18 19:33:00', NULL, '2018-02-18 19:33:16', '2018-02-20 12:34:06', 'd61704ab-7f5b-47d7-bc31-29b0ddb3ee20');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 10, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2018-02-13 20:29:38', '2018-02-18 16:48:06', '1372469c-7a5f-457e-834b-134739e1488d'),
(2, 2, 15, 'news', 'news', 1, 'Название', NULL, 1, '2018-02-18 13:35:26', '2018-02-20 12:41:34', '8aae7eca-f98c-4358-ab2a-dc968d14d343'),
(3, 3, 9, 'Contacts', 'contacts', 1, 'Title', NULL, 1, '2018-02-18 16:35:05', '2018-02-18 16:38:41', 'f24dd93f-81eb-4445-b25c-0bfdce444832');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'ru', 1, NULL, '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1518553778,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2018-02-13 20:29:38', '2018-02-13 20:29:38', '0c4ecc3a-b673-4534-aadc-38ea305d17d0'),
(2, 2, 1, 1, 'ru', 2, '', '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1518557960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>hh<\\/p>"}}', '2018-02-13 21:43:05', '2018-02-13 21:43:05', '43c291bc-0163-4079-b2ea-9361c0527b95'),
(3, 2, 1, 1, 'ru', 3, '', '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1518557960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>.<\\/p>"}}', '2018-02-13 21:46:44', '2018-02-13 21:46:44', 'd1e47c73-b10e-49aa-abf3-7ec2720897a4'),
(4, 3, 2, 1, 'ru', 1, '', '{"typeId":null,"authorId":"1","title":"\\u0422\\u0435\\u0441\\u0442\\u043e \\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960965,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2018-02-18 13:36:07', '2018-02-18 13:36:07', 'd2c0e3ea-1794-49ae-88a1-d96be04852f1'),
(5, 3, 2, 1, 'ru', 2, '', '{"typeId":"2","authorId":"1","title":"\\u0422\\u0435\\u0441\\u0442\\u043e \\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":"","fields":{"1":"<p>dsfgdsfgdf fgh<\\/p><p>uj<\\/p>","2":""}}', '2018-02-18 14:47:34', '2018-02-18 14:47:34', '5f380955-dbd9-4f27-908a-7893c1f2a944'),
(6, 3, 2, 1, 'ru', 3, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 15:33:55', '2018-02-18 15:33:55', '93e79d43-1979-46a4-84f2-4ed6bebd30db'),
(7, 3, 2, 1, 'ru', 4, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<br><\\/p><p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p><p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 15:34:30', '2018-02-18 15:34:30', '6fe9bf23-59bd-495e-9fa5-66ad9a5c4ed7'),
(8, 10, 3, 1, 'ru', 1, NULL, '{"typeId":"3","authorId":null,"title":"Contacts","slug":"contacts","postDate":1518971705,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2018-02-18 16:35:06', '2018-02-18 16:35:06', 'b0d45c2f-a66b-425e-8a2d-a57b89008b00'),
(9, 2, 1, 1, 'ru', 4, '', '{"typeId":"1","authorId":null,"title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0438 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439","slug":"homepage","postDate":1518557960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>\\u0426\\u0435\\u043b\\u0435\\u0432\\u044b\\u0435 \\u043e\\u0442\\u0440\\u0430\\u0441\\u043b\\u0438: \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u043c\\u0435\\u0440\\u0446\\u0438\\u044f, uber-like, \\u043c\\u0430\\u0440\\u043a\\u0435\\u0442\\u043f\\u043b\\u0435\\u0439\\u0441\\u044b, \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c.<\\/p><p><span><\\/span><\\/p><p>\\u041f\\u0440\\u0435\\u0436\\u0434\\u0435 \\u0447\\u0435\\u043c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442, \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u0430\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e&nbsp;\\u00ab\\u043d\\u0430 \\u0431\\u0443\\u043c\\u0430\\u0433\\u0435\\u00bb \\u0438 \\u0437\\u0430\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u0444\\u0443\\u043d\\u0434\\u0430\\u043c\\u0435\\u043d\\u0442. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u043e\\u043c \\u044d\\u0442\\u0430\\u043f\\u0430 \\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u0430 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f&nbsp;<\\/p>\\r\\n<p>\\u041d\\u043e\\u0432\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a&nbsp;\\u0441\\u0442\\u0430\\u0440\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c\\u0435. \\u041d\\u0430\\u0447\\u043d\\u0451\\u043c \\u0441&nbsp;\\u0431\\u0430\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e: \\u0434\\u0430\\u0434\\u0438\\u043c \\u0441\\u043b\\u043e\\u0432\\u0430\\u043c \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438&nbsp;\\u043f\\u0440\\u043e\\u0441\\u043b\\u0435\\u0434\\u0438\\u043c, \\u043a\\u0430\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0443\\u0442\\u044f\\u043c\\u0438 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u043b\\u0438 \\u0432&nbsp;\\u043d\\u0430\\u0448 \\u044f\\u0437\\u044b\\u043a<\\/p>\\r\\n<p><span><\\/span><span><\\/span><br><\\/p>","5":""}}', '2018-02-18 16:58:53', '2018-02-18 16:58:53', '2ef4c3df-d47e-4e53-9018-c300e58a6fc1'),
(10, 10, 3, 1, 'ru', 2, '', '{"typeId":null,"authorId":null,"title":"Contacts","slug":"contacts","postDate":1518971705,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>sdrfgr<\\/p>"}}', '2018-02-18 17:10:57', '2018-02-18 17:10:57', '1708d3f3-be48-43cd-8b9e-b3273ae81648'),
(11, 10, 3, 1, 'ru', 3, '', '{"typeId":null,"authorId":null,"title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","slug":"contacts","postDate":1518971705,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<div class=\\"contacts-country -open js-contacts-country-root\\" data-open-class=\\"-open\\"><div class=\\"contacts-country__title js-contacts-country-open\\"><div class=\\"contacts-country__arrow\\"><\\/div><div class=\\"contacts-country__name\\">\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f<\\/div><\\/div>\\r\\n<a class=\\"contacts-country__phone js-contacts-for-yandex-metrika js-lt-crm\\" href=\\"tel:74952043503\\" data-slug=\\"phone-russia\\" data-lt-crm-place=\\"contacts-phone\\" data-lt-copy=\\"\\">+7 495 204-35-03<\\/a>\\r\\n<a class=\\"contacts-country__email js-contacts-for-yandex-metrika js-lt-crm\\" href=\\"mailto:hi@livetyping.com\\" data-slug=\\"email-russia\\" data-lt-crm-place=\\"contacts-email\\" data-lt-copy=\\"\\">hi@livetyping.com<\\/a><div class=\\"contacts-country__cities\\"><div class=\\"contacts-city\\" itemscope=\\"\\" itemprop=\\"address\\" itemtype=\\"http:\\/\\/schema.org\\/PostalAddress\\"><div class=\\"contacts-city__name\\">\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430<\\/div><div class=\\"contacts-city__address\\">\\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, 9<\\/div><\\/div><div class=\\"contacts-city\\" itemscope=\\"\\" itemprop=\\"address\\" itemtype=\\"http:\\/\\/schema.org\\/PostalAddress\\"><div class=\\"contacts-city__name\\">\\u041e\\u043c\\u0441\\u043a<\\/div><div class=\\"contacts-city__address\\">\\u041a\\u0440\\u0430\\u0441\\u0438\\u043d\\u0430, 6<\\/div><\\/div><\\/div><\\/div>\\r\\n"}}', '2018-02-18 17:12:37', '2018-02-18 17:12:37', '0c98f3d5-2c6c-4e01-a4c5-c7c84bc5b208'),
(12, 10, 3, 1, 'ru', 4, '', '{"typeId":null,"authorId":null,"title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","slug":"contacts","postDate":1518971705,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<div class=\\"contacts-country -open js-contacts-country-root\\"><div class=\\"contacts-country__title js-contacts-country-open\\"><div class=\\"contacts-country__arrow\\"><\\/div><div class=\\"contacts-country__name\\">\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f<\\/div><\\/div>\\r\\n<a class=\\"contacts-country__phone js-contacts-for-yandex-metrika js-lt-crm\\" href=\\"tel:74952043503\\">+7 495 204-35-03<\\/a><br>\\r\\n<a class=\\"contacts-country__email js-contacts-for-yandex-metrika js-lt-crm\\" href=\\"mailto:hi@livetyping.com\\">hi@livetyping.com<\\/a><div class=\\"contacts-country__cities\\"><div class=\\"contacts-city\\"><div class=\\"contacts-city__name\\">\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430<\\/div><div class=\\"contacts-city__address\\">\\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, 9<\\/div><\\/div><div class=\\"contacts-city\\"><div class=\\"contacts-city__name\\">\\u041e\\u043c\\u0441\\u043a<\\/div><div class=\\"contacts-city__address\\">\\u041a\\u0440\\u0430\\u0441\\u0438\\u043d\\u0430, 6<\\/div><\\/div><\\/div><\\/div>"}}', '2018-02-18 17:13:21', '2018-02-18 17:13:21', '704000b1-a52b-4524-92ce-d3d9b1d908a5'),
(13, 3, 2, 1, 'ru', 5, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:24:02', '2018-02-18 17:24:02', 'a67f77c5-5ae6-4f74-9b48-73e71c219657'),
(14, 3, 2, 1, 'ru', 6, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><a href=\\"\\/upload\\/sputnik.png#asset:7\\">Sputnik<\\/a>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:27:44', '2018-02-18 17:27:44', 'f43dfd6d-461e-4ad7-924d-a9aecbaa3327'),
(15, 3, 2, 1, 'ru', 7, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/upload\\/sputnik.png#asset:7\\"><\\/figure><p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:32:12', '2018-02-18 17:32:12', 'e196ca3b-8c80-466b-8753-f8cab32d26f7'),
(16, 3, 2, 1, 'ru', 8, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/upload\\/sputnik.png#asset:7\\"><\\/figure><p><\\/p><p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:38:10', '2018-02-18 17:38:10', 'b1ba1c6c-bd9f-4866-a7f8-b560af970e22');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(17, 3, 2, 1, 'ru', 9, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/upload\\/sputnik.png#asset:7\\"><\\/figure><p><br><\\/p><p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:41:27', '2018-02-18 17:41:27', 'fba3c55b-86bb-4139-9589-b27f0eab0ff2'),
(18, 3, 2, 1, 'ru', 10, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><span><\\/span><\\/p><p><\\/p><p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:51:54', '2018-02-18 17:51:54', '45a76a36-2ef0-45a1-8882-754f9ad0a8c3'),
(19, 3, 2, 1, 'ru', 11, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/sputnik.png#asset:7:servDetail\\"><\\/figure><p><br><\\/p><p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. \\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043c\\u0438\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0446\\u0435\\u043d\\u0430\\u0440\\u0438\\u0438 \\u0438 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u043e \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0430\\u0435\\u0442 \\u043a\\u043e\\u043d\\u0446\\u0435\\u043f\\u0446\\u0438\\u044e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. "}}', '2018-02-18 17:52:24', '2018-02-18 17:52:24', 'a42f987d-0cb6-463a-8111-7b4604ab6dc4'),
(20, 11, 2, 1, 'ru', 1, '', '{"typeId":null,"authorId":"1","title":"\\u041d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432 \\u043f\\u043e\\u0434 iPhone \\u0438 iPad","slug":"\\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432-\\u043f\\u043e\\u0434-iphone-\\u0438-ipad","postDate":1518976551,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/apples_bascket.png#asset:8:servDetail\\"><\\/figure><p><br><\\/p><p><br><\\/p><p>100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c<\\/p><p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430&nbsp;Swift \\u0438&nbsp;Objective-C \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/p><p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434<\\/p><p>\\u041f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043c\\u0438, \\u0431\\u044b\\u043b\\u0438 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d\\u044b \\u0432&nbsp;\\u043f\\u043e\\u0434\\u0431\\u043e\\u0440\\u043a\\u0430\\u0445 App Store<\\/p><p><br><\\/p>","3":["8"],"4":"\\u200b  \\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  iOS-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430   8 \\u0448\\u0442\\u0430\\u0442\\u043d\\u044b\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u043e\\u0432, 5 \\u043b\\u0435\\u0442 \\u043e\\u043f\\u044b\\u0442\\u0430 "}}', '2018-02-18 17:55:52', '2018-02-18 17:55:52', '6f2fd246-7a65-4aaf-b117-2f82dfd53f33'),
(21, 12, 2, 1, 'ru', 1, '', '{"typeId":null,"authorId":"1","title":"\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","slug":"\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","postDate":1518976896,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><\\/p><figure><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/android.png#asset:9:servDetail\\"><\\/figure><p>\\u0412\\u044b\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0444\\u0443\\u043b\\u043b-\\u0442\\u0430\\u0439\\u043c \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430, \\u0432\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438<\\/p><p>\\u041f\\u0440\\u043e\\u0437\\u0440\\u0430\\u0447\\u043d\\u044b\\u0435 agile-\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b, \\u0432\\u0438\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u0436\\u0434\\u0443\\u044e \\u043d\\u0435\\u0434\\u0435\\u043b\\u044e<\\/p><p>\\u041e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u044b \\u0438&nbsp;\\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0449\\u0438\\u043a\\u0438<\\/p><p>100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c<\\/p><p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430 Java, C, C++, Kotlin, \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/p><p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c\\u044b\\u0439 \\u043a\\u043e\\u0434<\\/p>","3":["9"],"4":"\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  Android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430"}}', '2018-02-18 18:01:38', '2018-02-18 18:01:38', 'e92b06db-a52a-4490-a61e-3e5ecd670123'),
(22, 11, 2, 1, 'ru', 2, '', '{"typeId":"2","authorId":"1","title":"\\u041d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432 \\u043f\\u043e\\u0434 iPhone \\u0438 iPad","slug":"\\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432-\\u043f\\u043e\\u0434-iphone-\\u0438-ipad","postDate":1518976500,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/apples_bascket.png#asset:8:servDetail\\" alt=\\"apples_bascket.png#asset:8:servDetail\\"><br><\\/p><p><span style=\\"background-color: initial;\\">\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430&nbsp;Swift \\u0438&nbsp;Objective-C \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/span><br><\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434.&nbsp;\\u041f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043c\\u0438, \\u0431\\u044b\\u043b\\u0438 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d\\u044b \\u0432&nbsp;\\u043f\\u043e\\u0434\\u0431\\u043e\\u0440\\u043a\\u0430\\u0445 App Store.&nbsp;\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430 \\u0432\\u0435\\u0440\\u043e\\u044f\\u0442\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0447\\u0442\\u043e \\u043c\\u044b \\u0443\\u0436\\u0435 \\u0434\\u0435\\u043b\\u0430\\u043b\\u0438 \\u0447\\u0442\\u043e-\\u0442\\u043e \\u043f\\u043e\\u0445\\u043e\\u0436\\u0435\\u0435 \\u043d\\u0430 \\u0432\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e&nbsp;\\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438&nbsp;\\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445.<\\/p>\\r\\n<p><br><\\/p>","3":["8"],"4":"\\u200b  \\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  iOS-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430.   8 \\u0448\\u0442\\u0430\\u0442\\u043d\\u044b\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u043e\\u0432, 5 \\u043b\\u0435\\u0442 \\u043e\\u043f\\u044b\\u0442\\u0430.   100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c"}}', '2018-02-18 18:09:23', '2018-02-18 18:09:23', '48e58467-aeb4-4b4e-a72e-e78a76eb7daa'),
(23, 12, 2, 1, 'ru', 2, '', '{"typeId":"2","authorId":"1","title":"\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","slug":"\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","postDate":1518976860,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/android.png#asset:9:servDetail\\" alt=\\"android.png#asset:9:servDetail\\"><br><\\/p><p>\\u0412\\u044b\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0444\\u0443\\u043b\\u043b-\\u0442\\u0430\\u0439\\u043c \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430, \\u0432\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0437\\u0440\\u0430\\u0447\\u043d\\u044b\\u0435 agile-\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b, \\u0432\\u0438\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u0436\\u0434\\u0443\\u044e \\u043d\\u0435\\u0434\\u0435\\u043b\\u044e<\\/p>\\r\\n<p>\\u041e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u044b \\u0438&nbsp;\\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0449\\u0438\\u043a\\u0438<\\/p>\\r\\n<p>100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c<\\/p>\\r\\n<p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430 Java, C, C++, Kotlin, \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c\\u044b\\u0439 \\u043a\\u043e\\u0434<\\/p>","3":["9"],"4":"\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  Android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e \\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445."}}', '2018-02-18 18:10:41', '2018-02-18 18:10:41', '4f85b0cb-e4fe-42b4-8e8e-dc3c1cf241e7'),
(24, 2, 1, 1, 'ru', 5, '', '{"typeId":"1","authorId":null,"title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0438 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439","slug":"homepage","postDate":1518557960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>\\u0426\\u0435\\u043b\\u0435\\u0432\\u044b\\u0435 \\u043e\\u0442\\u0440\\u0430\\u0441\\u043b\\u0438: \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u043c\\u0435\\u0440\\u0446\\u0438\\u044f, uber-like, \\u043c\\u0430\\u0440\\u043a\\u0435\\u0442\\u043f\\u043b\\u0435\\u0439\\u0441\\u044b, \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c.<\\/p><figure><img src=\\"\\/craft\\/public\\/upload\\/main.png#asset:14\\"><\\/figure>\\r\\n<p>\\u041f\\u0440\\u0435\\u0436\\u0434\\u0435 \\u0447\\u0435\\u043c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442, \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u0430\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e&nbsp;\\u00ab\\u043d\\u0430 \\u0431\\u0443\\u043c\\u0430\\u0433\\u0435\\u00bb \\u0438 \\u0437\\u0430\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u0444\\u0443\\u043d\\u0434\\u0430\\u043c\\u0435\\u043d\\u0442. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u043e\\u043c \\u044d\\u0442\\u0430\\u043f\\u0430 \\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u0430 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f&nbsp;<\\/p>\\r\\n<p>\\u041d\\u043e\\u0432\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a&nbsp;\\u0441\\u0442\\u0430\\u0440\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c\\u0435. \\u041d\\u0430\\u0447\\u043d\\u0451\\u043c \\u0441&nbsp;\\u0431\\u0430\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e: \\u0434\\u0430\\u0434\\u0438\\u043c \\u0441\\u043b\\u043e\\u0432\\u0430\\u043c \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438&nbsp;\\u043f\\u0440\\u043e\\u0441\\u043b\\u0435\\u0434\\u0438\\u043c, \\u043a\\u0430\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0443\\u0442\\u044f\\u043c\\u0438 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u043b\\u0438 \\u0432&nbsp;\\u043d\\u0430\\u0448 \\u044f\\u0437\\u044b\\u043a<\\/p>\\r\\n<p><br><\\/p>","5":["14"]}}', '2018-02-18 18:30:19', '2018-02-18 18:30:19', '3d2548af-6c23-4641-aed0-b57876850339'),
(25, 2, 1, 1, 'ru', 6, '', '{"typeId":"1","authorId":null,"title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0438 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439","slug":"homepage","postDate":1518557960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><strong>\\u0426\\u0435\\u043b\\u0435\\u0432\\u044b\\u0435 \\u043e\\u0442\\u0440\\u0430\\u0441\\u043b\\u0438: \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u043c\\u0435\\u0440\\u0446\\u0438\\u044f, uber-like, \\u043c\\u0430\\u0440\\u043a\\u0435\\u0442\\u043f\\u043b\\u0435\\u0439\\u0441\\u044b, \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c.<\\/strong><\\/p>\\r\\n<p><img src=\\"\\/craft\\/public\\/upload\\/main.png#asset:14:url\\" alt=\\"main.png#asset:14\\"><br><\\/p><p>\\u041f\\u0440\\u0435\\u0436\\u0434\\u0435 \\u0447\\u0435\\u043c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442, \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u0430\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e&nbsp;\\u00ab\\u043d\\u0430 \\u0431\\u0443\\u043c\\u0430\\u0433\\u0435\\u00bb \\u0438 \\u0437\\u0430\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u0444\\u0443\\u043d\\u0434\\u0430\\u043c\\u0435\\u043d\\u0442. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u043e\\u043c \\u044d\\u0442\\u0430\\u043f\\u0430 \\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u0430 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f&nbsp;<\\/p>\\r\\n<p>\\u041d\\u043e\\u0432\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a&nbsp;\\u0441\\u0442\\u0430\\u0440\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c\\u0435. \\u041d\\u0430\\u0447\\u043d\\u0451\\u043c \\u0441&nbsp;\\u0431\\u0430\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e: \\u0434\\u0430\\u0434\\u0438\\u043c \\u0441\\u043b\\u043e\\u0432\\u0430\\u043c \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438&nbsp;\\u043f\\u0440\\u043e\\u0441\\u043b\\u0435\\u0434\\u0438\\u043c, \\u043a\\u0430\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0443\\u0442\\u044f\\u043c\\u0438 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u043b\\u0438 \\u0432&nbsp;\\u043d\\u0430\\u0448 \\u044f\\u0437\\u044b\\u043a<\\/p>\\r\\n<p><br><\\/p>","5":["14"]}}', '2018-02-18 18:30:42', '2018-02-18 18:30:42', '604a510b-5a19-460f-8fc0-82742cc5782a'),
(26, 3, 2, 1, 'ru', 12, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/sputnik.png#asset:7:servDetail\\" alt=\\"sputnik.png#asset:7:servDetail\\"><br><\\/p><p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. "}}', '2018-02-18 19:18:09', '2018-02-18 19:18:09', 'c1dff97a-992d-4356-ab2e-73025f42ad36'),
(27, 3, 2, 1, 'ru', 13, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/sputnik.png#asset:7:servDetail\\" alt=\\"sputnik.png#asset:7:servDetail\\"><br><\\/p>\\r\\n<p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. "}}', '2018-02-18 19:19:02', '2018-02-18 19:19:02', '8e520465-4d24-4e58-a06b-ba7b456a7d6b');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(28, 19, 2, 1, 'ru', 1, '', '{"typeId":null,"authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982197,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><\\/p><figure><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\"><\\/figure><p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p>","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-18 19:29:58', '2018-02-18 19:29:58', '454e2c77-b034-438d-85d8-c1294dec93ad'),
(29, 20, 2, 1, 'ru', 1, '', '{"typeId":null,"authorId":"1","title":"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","slug":"\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","postDate":1518982395,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/planet.png#asset:17:servDetail\\"><\\/figure><p><\\/p><p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0441\\u0442\\u0438\\u043b\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0438 \\u0432\\u0430\\u0436\\u043d\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0442\\u043b\\u0430\\u0436\\u0438\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0430, \\u0438 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043d\\u043e \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0437\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c\\u0438\\u0441\\u044f.&nbsp;<\\/p>\\r\\n<p>\\u041e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430\\u0445. \\u041d\\u0430\\u0448\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u0432 \\u0442\\u0435\\u0441\\u043d\\u043e\\u043c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435 \\u0441 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430\\u043c\\u0438, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u0433\\u043b\\u0430\\u0434\\u043a\\u043e.&nbsp;<\\/p>","3":"","4":"\\u041d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u0440\\u0435\\u0448\\u0430\\u0435\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430. "}}', '2018-02-18 19:33:16', '2018-02-18 19:33:16', 'cd3f8180-ccbb-4f59-ab5f-c66d0db3f56e'),
(30, 20, 2, 1, 'ru', 2, '', '{"typeId":"2","authorId":"1","title":"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","slug":"\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","postDate":1518982380,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/planet.png#asset:17:servDetail\\" alt=\\"planet.png#asset:17:servDetail\\"><br><\\/p><p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0441\\u0442\\u0438\\u043b\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0438 \\u0432\\u0430\\u0436\\u043d\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0442\\u043b\\u0430\\u0436\\u0438\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0430, \\u0438 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043d\\u043e \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0437\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c\\u0438\\u0441\\u044f.&nbsp;<\\/p>\\r\\n<p>\\u041e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430\\u0445. \\u041d\\u0430\\u0448\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u0432 \\u0442\\u0435\\u0441\\u043d\\u043e\\u043c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435 \\u0441 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430\\u043c\\u0438, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u0433\\u043b\\u0430\\u0434\\u043a\\u043e.&nbsp;<\\/p>","3":["17"],"4":"\\u041d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u0440\\u0435\\u0448\\u0430\\u0435\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430. "}}', '2018-02-18 20:23:10', '2018-02-18 20:23:10', 'db0cd32c-08c0-493d-a19a-c59a7ee07f63'),
(31, 19, 2, 1, 'ru', 2, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<figure><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><br><\\/figure>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p><p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432#entry:12\\">\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432<\\/a><\\/p>","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-19 14:51:45', '2018-02-19 14:51:45', 'aaac3647-1b6a-492e-a2d3-817ab55a75d4'),
(32, 3, 2, 1, 'ru', 14, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/sputnik.png#asset:7:servDetail\\" alt=\\"sputnik.png#asset:7:servDetail\\"><br><\\/p>\\r\\n<p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<br><\\/p><p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432#entry:20\\">\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432<\\/a><br><\\/p>","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. "}}', '2018-02-19 14:52:24', '2018-02-19 14:52:24', 'f741ff98-f6d7-4242-b2a4-be0fd1b41766'),
(33, 12, 2, 1, 'ru', 3, '', '{"typeId":"2","authorId":"1","title":"\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","slug":"\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","postDate":1518976860,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/android.png#asset:9:servDetail\\" alt=\\"android.png#asset:9:servDetail\\"><br><\\/p>\\r\\n<p>\\u0412\\u044b\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0444\\u0443\\u043b\\u043b-\\u0442\\u0430\\u0439\\u043c \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430, \\u0432\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0437\\u0440\\u0430\\u0447\\u043d\\u044b\\u0435 agile-\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b, \\u0432\\u0438\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u0436\\u0434\\u0443\\u044e \\u043d\\u0435\\u0434\\u0435\\u043b\\u044e<\\/p>\\r\\n<p>\\u041e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u044b \\u0438&nbsp;\\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0449\\u0438\\u043a\\u0438<\\/p>\\r\\n<p>100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c<\\/p>\\r\\n<p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430 Java, C, C++, Kotlin, \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c\\u044b\\u0439 \\u043a\\u043e\\u0434<\\/p><p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432-\\u043f\\u043e\\u0434-iphone-\\u0438-ipad#entry:11\\">\\u041d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432 \\u043f\\u043e\\u0434 iPhone \\u0438 iPad<\\/a><\\/p>","3":["9"],"4":"\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  Android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e \\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445."}}', '2018-02-19 14:52:41', '2018-02-19 14:52:41', 'e7480203-ef1e-41f0-90ba-d1e5a9ed1c5e'),
(34, 11, 2, 1, 'ru', 3, '', '{"typeId":"2","authorId":"1","title":"\\u041d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432 \\u043f\\u043e\\u0434 iPhone \\u0438 iPad","slug":"\\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432-\\u043f\\u043e\\u0434-iphone-\\u0438-ipad","postDate":1518976500,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/apples_bascket.png#asset:8:servDetail\\" alt=\\"apples_bascket.png#asset:8:servDetail\\"><br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430&nbsp;Swift \\u0438&nbsp;Objective-C \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<br><\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434.&nbsp;\\u041f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043c\\u0438, \\u0431\\u044b\\u043b\\u0438 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d\\u044b \\u0432&nbsp;\\u043f\\u043e\\u0434\\u0431\\u043e\\u0440\\u043a\\u0430\\u0445 App Store.&nbsp;\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430 \\u0432\\u0435\\u0440\\u043e\\u044f\\u0442\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0447\\u0442\\u043e \\u043c\\u044b \\u0443\\u0436\\u0435 \\u0434\\u0435\\u043b\\u0430\\u043b\\u0438 \\u0447\\u0442\\u043e-\\u0442\\u043e \\u043f\\u043e\\u0445\\u043e\\u0436\\u0435\\u0435 \\u043d\\u0430 \\u0432\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e&nbsp;\\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438&nbsp;\\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445.<\\/p><p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435#entry:3\\">\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430<\\/a><\\/p>\\r\\n<p><br><\\/p>","3":["8"],"4":"\\u200b  \\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  iOS-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430.   8 \\u0448\\u0442\\u0430\\u0442\\u043d\\u044b\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u043e\\u0432, 5 \\u043b\\u0435\\u0442 \\u043e\\u043f\\u044b\\u0442\\u0430.   100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c"}}', '2018-02-19 14:52:56', '2018-02-19 14:52:56', '2f7fb365-19ca-4d1b-a0e3-2b51b754d66a'),
(35, 20, 2, 1, 'ru', 3, '', '{"typeId":"2","authorId":"1","title":"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","slug":"\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","postDate":1518982380,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/planet.png#asset:17:servDetail\\" alt=\\"planet.png#asset:17:servDetail\\"><br><\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0441\\u0442\\u0438\\u043b\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0438 \\u0432\\u0430\\u0436\\u043d\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0442\\u043b\\u0430\\u0436\\u0438\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0430, \\u0438 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043d\\u043e \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0437\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c\\u0438\\u0441\\u044f.&nbsp;<\\/p>\\r\\n<p>\\u041e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430\\u0445. \\u041d\\u0430\\u0448\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u0432 \\u0442\\u0435\\u0441\\u043d\\u043e\\u043c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435 \\u0441 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430\\u043c\\u0438, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u0433\\u043b\\u0430\\u0434\\u043a\\u043e.&nbsp;<\\/p><p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432#entry:20\\">\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432<\\/a><\\/p>","3":["17"],"4":"\\u041d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u0440\\u0435\\u0448\\u0430\\u0435\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430. "}}', '2018-02-19 14:53:14', '2018-02-19 14:53:14', '4072ebb1-ccc0-4755-be5f-16d7b86d0ad8'),
(36, 20, 2, 1, 'ru', 4, '', '{"typeId":"2","authorId":"1","title":"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","slug":"\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","postDate":1518982380,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/planet.png#asset:17:servDetail\\" alt=\\"planet.png#asset:17:servDetail\\"><br><\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0441\\u0442\\u0438\\u043b\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0438 \\u0432\\u0430\\u0436\\u043d\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0442\\u043b\\u0430\\u0436\\u0438\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0430, \\u0438 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043d\\u043e \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0437\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c\\u0438\\u0441\\u044f.&nbsp;<\\/p>\\r\\n<p>\\u041e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430\\u0445. \\u041d\\u0430\\u0448\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u0432 \\u0442\\u0435\\u0441\\u043d\\u043e\\u043c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435 \\u0441 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430\\u043c\\u0438, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u0433\\u043b\\u0430\\u0434\\u043a\\u043e.&nbsp;<\\/p>\\r\\n<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api#entry:19\\">\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API<\\/a><br><\\/p>","3":["17"],"4":"\\u041d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u0440\\u0435\\u0448\\u0430\\u0435\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430. "}}', '2018-02-19 14:54:57', '2018-02-19 14:54:57', '3cd69b0c-78b3-477d-8a4e-ac250f624268'),
(37, 10, 3, 1, 'ru', 5, '', '{"typeId":"3","authorId":null,"title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","slug":"contacts","postDate":1518980649,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<div class=\\"contacts-country -open js-contacts-country-root\\"><div class=\\"contacts-country__title js-contacts-country-open\\"><div class=\\"contacts-country__arrow\\"><\\/div><div class=\\"contacts-country__name\\">\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, <span><\\/span>\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430,\\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, 9<span><\\/span><\\/div><\\/div><div class=\\"contacts-country__cities\\"><div class=\\"contacts-city\\"><div class=\\"contacts-city__name\\">\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041e\\u043c\\u0441\\u043a,&nbsp;\\u041a\\u0440\\u0430\\u0441\\u0438\\u043d\\u0430, 6<\\/div><p><\\/p><p><a href=\\"tel:74952043503\\" class=\\"contacts-country__phone js-contacts-for-yandex-metrika js-lt-crm\\">+7 495 204-35-03<\\/a><a href=\\"mailto:hi@livetyping.com\\" class=\\"contacts-country__email js-contacts-for-yandex-metrika js-lt-crm\\" style=\\"background-color: initial;\\">hi@livetyping.com<\\/a><span><\\/span><\\/p><\\/div><\\/div><\\/div>"}}', '2018-02-19 17:57:10', '2018-02-19 17:57:10', 'fac2b0b7-0c57-458c-b09d-9c8085ece067'),
(38, 19, 2, 1, 'ru', 3, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><\\/p>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p><p><\\/p>{{https:\\/\\/www.youtube.com\\/watch?v=6-HUgzYPm9g|videoEmbed}}\\r\\n<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432#entry:12:url\\">\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432<\\/a><\\/p>","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-20 11:03:48', '2018-02-20 11:03:48', '4f60988c-d895-45f4-abc1-2f8659cd4aac'),
(39, 19, 2, 1, 'ru', 4, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><\\/p>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p>\\r\\n<iframe id=\\"ytplayer\\" type=\\"text\\/html\\" width=\\"640\\" height=\\"360\\"\\r\\n  src=\\"http:\\/\\/www.youtube.com\\/embed\\/M7lc1UVf-VE?autoplay=1&origin=http:\\/\\/example.com\\"\\r\\n  frameborder=\\"0\\"\\/>\\r\\n<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432#entry:12:url\\">\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432<\\/a><\\/p>","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-20 11:05:39', '2018-02-20 11:05:39', 'debebd77-e4f4-4b2e-b0a9-46a5a3a30f38');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(40, 19, 2, 1, 'ru', 5, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><\\/p>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p>\\r\\n\\r\\n<iframe id=\\"ytplayer\\" type=\\"text\\/html\\" width=\\"640\\" height=\\"360\\"\\r\\n  src=\\"http:\\/\\/www.youtube.com\\/embed\\/M7lc1UVf-VE?autoplay=1&origin=http:\\/\\/example.com\\"\\r\\n  frameborder=\\"0\\"\\/>\\r\\n\\r\\n<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432#entry:12:url\\">\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432<\\/a><\\/p>","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-20 11:06:35', '2018-02-20 11:06:35', 'dcdd7a58-747e-4126-9b0b-19edc59f2e08'),
(41, 19, 2, 1, 'ru', 6, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><\\/p>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p>\\r\\n<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432#entry:12:url\\">\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432<\\/a><\\/p>","6":"https:\\/\\/www.youtube.com\\/watch?v=6-HUgzYPm9g","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-20 11:44:31', '2018-02-20 11:44:31', '72c9dc01-01cc-4fd4-a6fc-335b4fdb3b98'),
(42, 19, 2, 1, 'ru', 7, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><\\/p>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p>","7":"\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","6":"https:\\/\\/www.youtube.com\\/watch?v=6-HUgzYPm9g","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-20 11:51:28', '2018-02-20 11:51:28', '04fde439-b309-455c-aa14-625df02a9af8'),
(43, 3, 2, 1, 'ru', 15, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438-\\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u0442\\u0435\\u0441\\u0442\\u043e-\\u043c\\u0430\\u043a\\u043e\\u0432\\u043e\\u0435#entry:3\\">\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430<\\/a><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/sputnik.png#asset:7:servDetail\\" alt=\\"sputnik.png#asset:7:servDetail\\"><br><\\/p>\\r\\n<p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<\\/p>","7":"","6":"","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. "}}', '2018-02-20 12:17:46', '2018-02-20 12:17:46', '1600b8ea-929d-4ff7-ba80-32100ee2c01d'),
(44, 19, 2, 1, 'ru', 8, '', '{"typeId":"2","authorId":"1","title":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0438 API","slug":"\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430-\\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439-\\u0438-api","postDate":1518982140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/chupa.png#asset:18:servDetail\\" alt=\\"chupa.png#asset:18:servDetail\\"><\\/p>\\r\\n<p>&nbsp;\\u0414\\u043b\\u044f \\u0441\\u0435\\u0440\\u0432\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c Ruby, PHP, NodeJS, Java. \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u043e\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u043d\\u0430 HTML5, CSS3, JavaScript.&nbsp;<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u043e\\u0432 \\u043c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0430\\u0440\\u0445\\u0438\\u0442\\u0435\\u043a\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435 \\u0444\\u0440\\u0435\\u0439\\u043c\\u0432\\u043e\\u0440\\u043a\\u0438: Angular, React, Yii, Laravel, Ruby on Rails. \\u041e\\u0431\\u044b\\u0447\\u043d\\u043e \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441 \\u043d\\u0443\\u043b\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u0438\\u0445 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438, \\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0437\\u0430\\u0434\\u0430\\u0447\\u0430 \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442 \\u0438\\u043d\\u0442\\u0435\\u0433\\u0440\\u0430\\u0446\\u0438\\u0438 \\u0441 CRM, CMS, \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u0430\\u0433\\u0440\\u0435\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u043c\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u043c\\u0438, \\u0442\\u043e \\u043c\\u044b \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043e\\u043f\\u0442\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0431\\u043e\\u0440.&nbsp;<\\/p>","7":"","6":"https:\\/\\/www.youtube.com\\/watch?v=6-HUgzYPm9g","3":["18"],"4":"\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0435\\u0431-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b \\u0434\\u043b\\u044f \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 \\u0438 \\u0441\\u0442\\u0430\\u0440\\u0442\\u0430\\u043f\\u043e\\u0432, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 API \\u0434\\u043b\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439."}}', '2018-02-20 12:27:01', '2018-02-20 12:27:01', '111265be-ea10-4f77-9733-3ad364364ecf'),
(45, 3, 2, 1, 'ru', 16, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438-\\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438-\\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430#entry:3:url\\">\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430<\\/a><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/sputnik.png#asset:7:servDetail\\" alt=\\"sputnik.png#asset:7:servDetail\\"><br><\\/p>\\r\\n<p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<\\/p>","7":"","6":"https:\\/\\/www.youtube.com\\/watch?v=xLl29-2Dkuo","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. "}}', '2018-02-20 12:27:43', '2018-02-20 12:27:43', '70eae002-4faf-40df-b5d2-eb2c4b4c579d'),
(46, 12, 2, 1, 'ru', 4, '', '{"typeId":"2","authorId":"1","title":"\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","slug":"\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","postDate":1518976860,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/android.png#asset:9:servDetail\\" alt=\\"android.png#asset:9:servDetail\\"><br><\\/p>\\r\\n<p>\\u0412\\u044b\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0444\\u0443\\u043b\\u043b-\\u0442\\u0430\\u0439\\u043c \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430, \\u0432\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0437\\u0440\\u0430\\u0447\\u043d\\u044b\\u0435 agile-\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b, \\u0432\\u0438\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u0436\\u0434\\u0443\\u044e \\u043d\\u0435\\u0434\\u0435\\u043b\\u044e<\\/p>\\r\\n<p>\\u041e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u044b \\u0438&nbsp;\\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0449\\u0438\\u043a\\u0438<\\/p>\\r\\n<p>100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c<\\/p>\\r\\n<p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430 Java, C, C++, Kotlin, \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c\\u044b\\u0439 \\u043a\\u043e\\u0434<\\/p>\\r\\n<p><a href=\\"http:\\/\\/localhost\\/craft\\/public\\/index.php\\/news\\/\\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432-\\u043f\\u043e\\u0434-iphone-\\u0438-ipad#entry:11:url\\">\\u041d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432 \\u043f\\u043e\\u0434 iPhone \\u0438 iPad<\\/a><\\/p>","7":"","6":"https:\\/\\/www.youtube.com\\/watch?v=Fij7kRvvTkE","3":["9"],"4":"\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  Android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e \\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445."}}', '2018-02-20 12:27:53', '2018-02-20 12:27:53', '85a9bde5-c35e-4044-8ad7-4ab802dc4ce4'),
(47, 3, 2, 1, 'ru', 17, '', '{"typeId":"2","authorId":"1","title":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","slug":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438-\\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430","postDate":1518960960,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><br><\\/p>\\r\\n<p><br><\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0438&nbsp;\\u0432&nbsp;\\u043b\\u044e\\u0431\\u043e\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435. \\u0423&nbsp;\\u0432\\u0430\\u0441 \\u043f\\u043e\\u044f\\u0432\\u0438\\u0442\\u0441\\u044f \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0443\\u044e \\u0441\\u0432\\u044f\\u0437\\u044c \\u043e\\u0442&nbsp;\\u043f\\u043e\\u0442\\u0435\\u043d\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043d\\u0430&nbsp;\\u0441\\u0430\\u043c\\u043e\\u0439 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0447\\u0435\\u0441\\u0442\\u044c \\u0438\\u0445&nbsp;\\u043c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0438&nbsp;\\u043f\\u043e\\u043c\\u0435\\u043d\\u044f\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442 \\u0432&nbsp;\\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u0443.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442\\u043e\\u0432 \\u0432\\u043d\\u0438\\u043a\\u043d\\u0435\\u0442 \\u0432&nbsp;\\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u043d\\u0443\\u044e \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0438\\u0437\\u0443\\u0447\\u0438\\u0442 \\u043d\\u044e\\u0430\\u043d\\u0441\\u044b \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u0442 \\u043e\\u0431\\u0437\\u043e\\u0440 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432 \\u0438&nbsp;\\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430&nbsp;\\u0440\\u044b\\u043d\\u043a\\u0435. \\u0412\\u044b \\u043d\\u0435&nbsp;\\u043f\\u043e\\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438&nbsp;\\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430&nbsp;\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437\\u044b.<\\/p>\\r\\n<p><br>\\u041f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u043c \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043e\\u0446\\u0435\\u043d\\u043a\\u0443 \\u043d\\u0430&nbsp;\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430. \\u0412\\u0430\\u043c \\u043d\\u0435&nbsp;\\u043f\\u0440\\u0438\\u0434\\u0435\\u0442\\u0441\\u044f \\u043f\\u0435\\u0440\\u0435\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u043e\\u0431&nbsp;\\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u0438 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0432&nbsp;\\u0445\\u043e\\u0434\\u0435 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438. \\u041f\\u043e\\u043c\\u043e\\u0436\\u0435\\u043c \\u0441&nbsp;\\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u043e\\u0439 \\u0442\\u0435\\u043d\\u0434\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438.<\\/p>","7":"","6":"https:\\/\\/www.youtube.com\\/watch?v=xLl29-2Dkuo","3":["7"],"4":"\\u041c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0432\\u0430\\u0441 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u0430, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0431\\u043b\\u0438\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043a \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044e. "}}', '2018-02-20 12:33:32', '2018-02-20 12:33:32', '5310bd48-e0e1-479e-8fa4-47f2da99161c'),
(48, 12, 2, 1, 'ru', 5, '', '{"typeId":"2","authorId":"1","title":"\\u041e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 Android \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","slug":"\\u043e\\u043f\\u044b\\u0442\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432","postDate":1518976860,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/android.png#asset:9:servDetail\\" alt=\\"android.png#asset:9:servDetail\\"><br><\\/p>\\r\\n<p>\\u0412\\u044b\\u0434\\u0435\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0444\\u0443\\u043b\\u043b-\\u0442\\u0430\\u0439\\u043c \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430, \\u0432\\u044b\\u0441\\u043e\\u043a\\u0430\\u044f \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0437\\u0440\\u0430\\u0447\\u043d\\u044b\\u0435 agile-\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u044b, \\u0432\\u0438\\u0434\\u0438\\u043c\\u044b\\u0439 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442 \\u043a\\u0430\\u0436\\u0434\\u0443\\u044e \\u043d\\u0435\\u0434\\u0435\\u043b\\u044e<\\/p>\\r\\n<p>\\u041e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u044b \\u0438&nbsp;\\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0449\\u0438\\u043a\\u0438<\\/p>\\r\\n<p>100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c<\\/p>\\r\\n<p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430 Java, C, C++, Kotlin, \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX<\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c\\u044b\\u0439 \\u043a\\u043e\\u0434<\\/p>","7":"","6":"https:\\/\\/www.youtube.com\\/watch?v=Fij7kRvvTkE","3":["9"],"4":"\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  Android-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e \\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445."}}', '2018-02-20 12:33:46', '2018-02-20 12:33:46', '09b95417-f33b-4c33-8cd2-e83585816944'),
(49, 11, 2, 1, 'ru', 4, '', '{"typeId":"2","authorId":"1","title":"\\u041d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432 \\u043f\\u043e\\u0434 iPhone \\u0438 iPad","slug":"\\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f-\\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u043e\\u0432-\\u043f\\u043e\\u0434-iphone-\\u0438-ipad","postDate":1518976500,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/apples_bascket.png#asset:8:servDetail\\" alt=\\"apples_bascket.png#asset:8:servDetail\\"><br><\\/p>\\r\\n<p>\\u041d\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430 \\u043d\\u0430&nbsp;Swift \\u0438&nbsp;Objective-C \\u0434\\u043b\\u044f \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e UX43px<br><\\/p>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434.&nbsp;\\u041f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u044b\\u0435 \\u043d\\u0430\\u043c\\u0438, \\u0431\\u044b\\u043b\\u0438 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d\\u044b \\u0432&nbsp;\\u043f\\u043e\\u0434\\u0431\\u043e\\u0440\\u043a\\u0430\\u0445 App Store.&nbsp;\\u0412\\u044b\\u0441\\u043e\\u043a\\u0430 \\u0432\\u0435\\u0440\\u043e\\u044f\\u0442\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0447\\u0442\\u043e \\u043c\\u044b \\u0443\\u0436\\u0435 \\u0434\\u0435\\u043b\\u0430\\u043b\\u0438 \\u0447\\u0442\\u043e-\\u0442\\u043e \\u043f\\u043e\\u0445\\u043e\\u0436\\u0435\\u0435 \\u043d\\u0430 \\u0432\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044c\\u0442\\u0435 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e&nbsp;\\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u043f\\u044b\\u0442\\u0435 \\u0432 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f\\u0445, \\u0438\\u043d\\u0434\\u0443\\u0441\\u0442\\u0440\\u0438\\u044f\\u0445 \\u0438&nbsp;\\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f\\u0445.<\\/p>","7":"","6":"","3":["8"],"4":"\\u200b  \\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b  iOS-\\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0438  \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430.   8 \\u0448\\u0442\\u0430\\u0442\\u043d\\u044b\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u043e\\u0432, 5 \\u043b\\u0435\\u0442 \\u043e\\u043f\\u044b\\u0442\\u0430.   100% \\u0432\\u0430\\u0448\\u0430 \\u0438\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c"}}', '2018-02-20 12:33:57', '2018-02-20 12:33:57', 'afb8243a-e94c-4aac-8de0-3f7f1d35ee42');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(50, 20, 2, 1, 'ru', 5, '', '{"typeId":"2","authorId":"1","title":"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","slug":"\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d-\\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432","postDate":1518982380,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/craft\\/public\\/upload\\/_servDetail\\/planet.png#asset:17:servDetail\\" alt=\\"planet.png#asset:17:servDetail\\"><br><\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0441\\u0442\\u0438\\u043b\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0438 \\u0432\\u0430\\u0436\\u043d\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e\\u0442\\u043b\\u0430\\u0436\\u0438\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0430, \\u0438 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043d\\u043e \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0437\\u0430\\u043f\\u043e\\u043c\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c\\u0438\\u0441\\u044f.&nbsp;<\\/p>\\r\\n<p>\\u041e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0432\\u0435\\u0431-\\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0438\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430\\u0445. \\u041d\\u0430\\u0448\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 \\u0432 \\u0442\\u0435\\u0441\\u043d\\u043e\\u043c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435 \\u0441 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0430\\u043c\\u0438, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0432\\u043e\\u043f\\u043b\\u043e\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u0433\\u043b\\u0430\\u0434\\u043a\\u043e.&nbsp;<\\/p>","7":"","6":"","3":["17"],"4":"\\u041d\\u0430 \\u044d\\u0442\\u0430\\u043f\\u0435 \\u043f\\u0440\\u043e\\u0442\\u043e\\u0442\\u0438\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043c\\u044b \\u0440\\u0435\\u0448\\u0430\\u0435\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u043f\\u044b\\u0442\\u0430. "}}', '2018-02-20 12:34:06', '2018-02-20 12:34:06', 'e56fad05-a321-4eda-82aa-83a5d553b28a');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2018-02-13 20:29:36', '2018-02-13 20:29:36', '973279d6-0fc6-48d2-bd13-ea15a91b1490'),
(2, 'services', '2018-02-18 15:17:07', '2018-02-18 15:17:07', '2ad17b7d-9628-4aa7-8bb1-03aba9f08f2b');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 9, 4, 1, 0, 1, '2018-02-18 16:38:41', '2018-02-18 16:38:41', '9527b794-43dd-4b28-a7ce-f1de3ec8d191'),
(8, 10, 5, 5, 0, 1, '2018-02-18 16:48:06', '2018-02-18 16:48:06', '1edc8e7b-49ae-475c-b0fa-a922cac4c9d3'),
(9, 10, 5, 1, 1, 2, '2018-02-18 16:48:06', '2018-02-18 16:48:06', '38195b59-13ba-403d-9958-d8a990f460bb'),
(23, 15, 9, 3, 0, 1, '2018-02-20 12:41:34', '2018-02-20 12:41:34', '6a7e38e2-f8e7-42a6-846e-79de54316351'),
(24, 15, 9, 4, 0, 2, '2018-02-20 12:41:34', '2018-02-20 12:41:34', '196893f5-2526-499b-b644-f5a7002d6130'),
(25, 15, 9, 1, 0, 3, '2018-02-20 12:41:34', '2018-02-20 12:41:34', '838c580f-360e-4037-97db-81c9cd5d857b'),
(26, 15, 9, 6, 0, 4, '2018-02-20 12:41:34', '2018-02-20 12:41:34', '489ed4b5-a3aa-47a2-92bb-9d142007cd85');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2018-02-13 20:29:36', '2018-02-13 20:29:36', '4d0a8515-0207-4e23-9bb1-f31cba0d2f50'),
(9, 'Entry', '2018-02-18 16:38:41', '2018-02-18 16:38:41', 'd840e965-90f5-4343-9907-083dcd4e8b66'),
(10, 'Entry', '2018-02-18 16:48:06', '2018-02-18 16:48:06', '084bc3f7-8b2b-4c27-b205-6250633dfb0c'),
(11, 'Asset', '2018-02-18 17:49:30', '2018-02-18 17:49:30', '44713f91-ae9e-4d3a-8bfc-b88903e68f89'),
(15, 'Entry', '2018-02-20 12:41:34', '2018-02-20 12:41:34', '8898d5c1-71df-477c-b12f-18aef6b936e8');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 9, 'Tab 1', 1, '2018-02-18 16:38:41', '2018-02-18 16:38:41', 'a44f0e99-64d4-4501-b09a-ab3325ddf226'),
(5, 10, 'Content', 1, '2018-02-18 16:48:06', '2018-02-18 16:48:06', '7a9d6f70-acd1-4ca1-8911-d61ca8dbf5f6'),
(9, 15, 'Tab 1', 1, '2018-02-20 12:41:34', '2018-02-20 12:41:34', 'b22d6d43-806f-42ec-949a-3aae21e1087f');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2018-02-13 20:29:38', '2018-02-13 20:29:38', '3fcd4a51-8e39-42c9-a591-95a3a72b6c14'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2018-02-13 20:29:38', '2018-02-13 20:29:38', 'e0fa9b15-9769-4fe3-a936-5889da99a83c'),
(3, 2, 'service_image', 'service_image', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:1"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"list","selectionLabel":""}', '2018-02-18 15:13:53', '2018-02-18 15:17:57', '0e210082-4f03-44ee-ab20-1d399928a815'),
(4, 2, 'service_summary', 'service_summary', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"250","multiline":"","initialRows":"4"}', '2018-02-18 15:19:45', '2018-02-18 15:33:30', 'ac0df45b-cd4c-4efc-a23d-a22caf5b57db'),
(5, 1, 'Homepage Image', 'homepage_image', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:1"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"1","viewMode":"list","selectionLabel":""}', '2018-02-18 16:47:27', '2018-02-18 16:47:27', '556a0472-fb29-4ea3-8360-05a50ff797ba'),
(6, 2, 'Service video url', 'service_video_url', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2018-02-20 11:42:17', '2018-02-20 11:50:13', 'dfba6d9f-3363-41ba-bc58-212f69e2128c'),
(7, 2, 'Service next url', 'service_next_url', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2018-02-20 11:49:50', '2018-02-20 11:49:50', '7864577a-142c-4da2-a48c-0bb270679406');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.3008', '2.6.13', 0, 'Live Typing', 'http://localhost/craft/', 'UTC', 1, 0, '2018-02-13 20:29:28', '2018-02-18 21:12:12', '0d1ebaf8-cf23-4b7d-adfa-aa73aa8227db');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('ru', 1, '2018-02-13 20:29:34', '2018-02-13 20:29:34', '78a60218-1257-4762-8252-b82bbba36224');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '2018-02-13 20:29:31', 'c31fe41d-b052-4967-9aec-83104af4d895'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '6ae05843-7af1-4601-b159-d24143232e19'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '70c6adff-4fb9-4a23-aff5-c7499d0f109d'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '3c61330e-37d9-4238-91de-6a619c39e3e4'),
(5, NULL, 'm140829_000001_single_title_formats', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '2018-02-13 20:29:31', '3658594f-462e-43c5-9e49-d04e1d0de544'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'a66e9bb2-5573-47f4-9f20-1a7a07c41564'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '13424bbb-21ab-47cd-95f0-b902a2bb9e73'),
(8, NULL, 'm141008_000001_elements_index_tune', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'fd6bcf59-f5fa-49ad-ba72-2466000f2a66'),
(9, NULL, 'm141009_000001_assets_source_handle', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '3c662028-7e31-4777-841c-6659906edd4e'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '9c2d66b2-4994-4fb5-a345-56c26152dc6e'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '80507306-f521-43bf-a162-51d7441f1166'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '917f2103-cf3a-47d2-a9c2-2676dd7d0c48'),
(13, NULL, 'm141103_000001_tag_titles', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '99ff4c2a-1f32-4fd1-8cb8-ba661b4195ca'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'a5ba657c-325d-44ca-b345-c78c4e6a4f4d'),
(15, NULL, 'm141126_000001_user_week_start_day', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '149925aa-e525-40b3-98b0-bdb130be3ad8'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '09862a10-dff9-4c15-84f3-2aa368e3509c'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'fbe995d8-6569-40df-9866-2e103bbf0b48'),
(18, NULL, 'm150827_000000_element_index_settings', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '4cc2d680-8c1c-4726-aaf9-7c13f5bd9e79'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'f38f0ade-2b9c-44a2-a44f-6fa3a4253af3'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'f3e8d0d2-a8f8-467a-a3dd-2c0893192ddf'),
(21, NULL, 'm151109_000000_text_url_formats', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', '4d5c8eda-ab8d-48ce-bb5a-6dc2df978757'),
(22, NULL, 'm151110_000000_move_logo', '2018-02-13 20:29:31', '2018-02-13 20:29:32', '2018-02-13 20:29:32', 'da68e734-5318-4a8b-85fa-8295ea2d0905'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', 'b395d49b-ebc8-49f5-b5f1-99de2cba24d0'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '3a5acfc1-bd2a-4849-b45b-533bbd4cd78c'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', 'd355c636-6b52-4c4b-9f32-ab8ab844a96b'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '68190e35-e2ec-41c8-9d40-5f9ba12b5fcc'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '57551f01-3284-4ebf-94f8-b11371d66822'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '134c88a8-f62d-4fc2-ab52-359e38d6e79c'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '715933e5-6edf-4bb3-a713-bf832a320d31'),
(30, NULL, 'm160304_000000_client_permissions', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '413c98ef-668b-42c5-92ee-d28b61d8401e'),
(31, NULL, 'm160322_000000_asset_filesize', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '6a73d755-d386-491e-83f7-0836bfbe472a'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '2d83c48b-0991-436f-9a61-d7034c5066d6'),
(33, NULL, 'm160510_000000_tasksettings', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', 'd6c2abf2-196d-4ff3-b184-86571a86ca8f'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '9598e517-a286-4667-b31b-6e424847dca9'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '1adf9c24-0843-4960-874c-49d5d92ebf09'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', 'f085bbad-c468-4a4c-8cec-dde5cfdd8028'),
(37, NULL, 'm161108_000000_new_version_format', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', 'ccdfed5b-1fba-4b07-ad2b-dbbff1d6b3fb'),
(38, NULL, 'm161109_000000_index_shuffle', '2018-02-13 20:29:31', '2018-02-13 20:29:33', '2018-02-13 20:29:33', '96b01044-a09f-4c23-a4b1-3ce28c78f7f1'),
(39, NULL, 'm170612_000000_route_index_shuffle', '2018-02-13 20:29:31', '2018-02-13 20:29:34', '2018-02-13 20:29:34', '79fcb0bc-a7a8-442e-8c35-af1f90417dbe'),
(40, NULL, 'm171107_000000_assign_group_permissions', '2018-02-13 20:29:31', '2018-02-13 20:29:34', '2018-02-13 20:29:34', 'a5b7cb60-af7b-4435-8a2b-007c6b7fbebe'),
(41, NULL, 'm171117_000001_templatecache_index_tune', '2018-02-13 20:29:31', '2018-02-13 20:29:34', '2018-02-13 20:29:34', '742eac14-8b65-42b1-a7a0-70462bfd1d15'),
(42, NULL, 'm171204_000001_templatecache_index_tune_deux', '2018-02-13 20:29:31', '2018-02-13 20:29:34', '2018-02-13 20:29:34', '233ee223-2246-4970-8c7e-82048368daed');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ContactForm', '1.9.2', '1.0.0', NULL, 'unknown', 1, '{"toEmail":"admin@admin.ru","prependSender":"On behalf of","prependSubject":"New message from Live Typing","allowAttachments":"","honeypotField":"","successFlashMessage":"Your message has been sent."}', '2018-02-19 17:50:05', '2018-02-19 17:50:05', '2018-02-20 13:09:25', 'c8c7acf3-ba97-4c97-9563-b875ca50c6a7'),
(2, 'VideoEmbedUtility', '1.0.0', NULL, NULL, 'unknown', 1, NULL, '2018-02-20 11:00:59', '2018-02-20 11:00:59', '2018-02-20 11:00:59', '3bc7ea7d-dcd0-4f36-9155-c56c7522686c');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(15, 5, 2, NULL, 14, 1, '2018-02-18 18:30:41', '2018-02-18 18:30:41', '352a58a5-f15d-4919-93f9-66b5b2ec450d'),
(32, 3, 19, NULL, 18, 1, '2018-02-20 12:27:00', '2018-02-20 12:27:00', '7e746ca9-34a1-42b5-97f7-c2ce3b24de98'),
(35, 3, 3, NULL, 7, 1, '2018-02-20 12:33:31', '2018-02-20 12:33:31', '349a8b8a-d27c-4d5f-b8be-87a29c62ebbc'),
(36, 3, 12, NULL, 9, 1, '2018-02-20 12:33:45', '2018-02-20 12:33:45', '6ad1f7a4-ceb1-485c-9bfa-c594986a485c'),
(37, 3, 11, NULL, 8, 1, '2018-02-20 12:33:57', '2018-02-20 12:33:57', '83845cae-c2e8-41c2-8061-a7008ee06d5a'),
(38, 3, 20, NULL, 17, 1, '2018-02-20 12:34:06', '2018-02-20 12:34:06', '0955310d-4ab4-4544-9b22-f42d0d974ddc');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'ru', ' admin '),
(1, 'firstname', 0, 'ru', ''),
(1, 'lastname', 0, 'ru', ''),
(1, 'fullname', 0, 'ru', ''),
(1, 'email', 0, 'ru', ' bonez mail ru '),
(1, 'slug', 0, 'ru', ''),
(2, 'slug', 0, 'ru', ' homepage '),
(2, 'title', 0, 'ru', ' разработка и дизайн мобильных и веб приложений '),
(2, 'field', 1, 'ru', ' целевые отрасли мобильная коммерция uber like маркетплейсы туризм прежде чем создать реальный проект нужно запустить его на бумаге и заложить фундамент результатом этапа станет интерактивный прототип и функциональная структура приложения новый подход к старой проблеме начнём с банального дадим словам определения и проследим какими путями они попали в наш язык '),
(3, 'slug', 0, 'ru', ' проектирование и прототипирование интерфейса '),
(3, 'title', 0, 'ru', ' проектирование и прототипирование интерфейса '),
(3, 'field', 1, 'ru', ' прототип будет работать на любом устройстве и в любом браузере у вас появится возможность получить обратную связь от потенциальных пользователей на самой ранней стадии разработки продукта это поможет учесть их мнение и поменять продукт в лучшую сторону наша команда экспертов вникнет в предметную область изучит нюансы вашего бизнеса проведет обзор аналогов и текущих решений на рынке вы не потратите ваше время и деньги на невостребованные функции и непроверенные гипотезы после этапа проектирования мы предложим фиксированную оценку на разработку продукта вам не придется переживать об изменении стоимости в ходе разработки поможем с подготовкой тендерной документации '),
(3, 'field', 2, 'ru', ''),
(8, 'kind', 0, 'ru', ' image '),
(8, 'slug', 0, 'ru', ' apples bascket '),
(8, 'extension', 0, 'ru', ' png '),
(8, 'filename', 0, 'ru', ' apples_bascket png '),
(9, 'kind', 0, 'ru', ' image '),
(9, 'slug', 0, 'ru', ' android '),
(9, 'extension', 0, 'ru', ' png '),
(9, 'filename', 0, 'ru', ' android png '),
(3, 'field', 4, 'ru', ' мы разработаем для вас высокодетальный интерактивный прототип интерфейса максимально приближенный к реальному приложению '),
(3, 'field', 3, 'ru', ' sputnik '),
(7, 'filename', 0, 'ru', ' sputnik png '),
(7, 'extension', 0, 'ru', ' png '),
(7, 'kind', 0, 'ru', ' image '),
(7, 'slug', 0, 'ru', ' sputnik '),
(7, 'title', 0, 'ru', ' sputnik '),
(8, 'title', 0, 'ru', ' apples bascket '),
(9, 'title', 0, 'ru', ' android '),
(18, 'slug', 0, 'ru', ' chupa '),
(18, 'title', 0, 'ru', ' chupa '),
(18, 'kind', 0, 'ru', ' image '),
(10, 'slug', 0, 'ru', ' contacts '),
(10, 'title', 0, 'ru', ' контакты '),
(2, 'field', 5, 'ru', ' main '),
(10, 'field', 1, 'ru', ' россия москва тверская 9россия омск красина 6 7 495 204 35 03hi livetyping com '),
(11, 'field', 3, 'ru', ' apples bascket '),
(11, 'field', 4, 'ru', ' ​ полный цикл ios разработки для вашего проекта 8 штатных специалистов 5 лет опыта 100% ваша интеллектуальная собственность '),
(11, 'field', 1, 'ru', ' нативная разработка на swift и objective c для лучшего ux43px высококачественный документированный код приложения созданые нами были отмечены в подборках app store высока вероятность что мы уже делали что то похожее на ваш проект позвольте рассказать подробнее о нашем опыте в функциях индустриях и технологиях '),
(11, 'slug', 0, 'ru', ' надежная команда разработчиков под iphone и ipad '),
(11, 'title', 0, 'ru', ' надежная команда разработчиков под iphone и ipad '),
(12, 'field', 3, 'ru', ' android '),
(12, 'field', 4, 'ru', ' полный цикл android разработки для вашего проекта позвольте рассказать подробнее о нашем опыте в функциях индустриях и технологиях '),
(12, 'field', 1, 'ru', ' выделенная фулл тайм команда высокая скорость разработки прозрачные agile процессы видимый результат каждую неделю опытные проектные менеджеры и тестировщики 100% ваша интеллектуальная собственность нативная разработка на java c c kotlin для лучшего ux высококачественный легкочитаемый код '),
(12, 'slug', 0, 'ru', ' опытная команда android разработчиков '),
(12, 'title', 0, 'ru', ' опытная команда android разработчиков '),
(18, 'extension', 0, 'ru', ' png '),
(18, 'filename', 0, 'ru', ' chupa png '),
(14, 'filename', 0, 'ru', ' main png '),
(14, 'extension', 0, 'ru', ' png '),
(14, 'kind', 0, 'ru', ' image '),
(14, 'slug', 0, 'ru', ' main '),
(14, 'title', 0, 'ru', ' main '),
(19, 'field', 4, 'ru', ' мы делаем веб сервисы для бизнеса и стартапов разрабатываем документированные api для мобильных приложений '),
(19, 'field', 3, 'ru', ' chupa '),
(17, 'filename', 0, 'ru', ' planet png '),
(17, 'extension', 0, 'ru', ' png '),
(17, 'kind', 0, 'ru', ' image '),
(17, 'slug', 0, 'ru', ' planet '),
(17, 'title', 0, 'ru', ' planet '),
(19, 'field', 1, 'ru', ' для серверной разработки мы используем ruby php nodejs java клиентская часть создаётся на html5 css3 javascript при разработке сервисов мы используем различные архитектурные фреймворки angular react yii laravel ruby on rails обычно панели управления и администрирования создаются с нуля из за их уникальности но если задача требует интеграции с crm cms платежными агрегаторами и прочими системами то мы помогаем сделать оптимальный выбор '),
(19, 'slug', 0, 'ru', ' разработка веб приложений и api '),
(19, 'title', 0, 'ru', ' разработка веб приложений и api '),
(20, 'field', 3, 'ru', ' planet '),
(20, 'field', 4, 'ru', ' на этапе прототипирования мы решаем вопросы функциональности и пользовательского опыта '),
(20, 'field', 1, 'ru', ' вопросы стилистики и важные детали отлаживаются на этапе дизайна и мобильные приложения становятся не только функциональными но привлекательными и запоминающимися отзывчивый дизайн веб приложений делает их удобными и доступными на различных устройствах наши дизайнеры работают в тесном контакте с разработчиками поэтому воплощение интерфейсов происходит максимально быстро и гладко '),
(20, 'slug', 0, 'ru', ' дизайн интерфейсов '),
(20, 'title', 0, 'ru', ' дизайн интерфейсов '),
(19, 'field', 7, 'ru', ''),
(11, 'field', 7, 'ru', ''),
(11, 'field', 6, 'ru', ''),
(20, 'field', 7, 'ru', ''),
(20, 'field', 6, 'ru', ''),
(19, 'field', 6, 'ru', ' https www youtube com watch v=6 hugzypm9g '),
(3, 'field', 7, 'ru', ''),
(3, 'field', 6, 'ru', ' https www youtube com watch v=xll29 2dkuo '),
(12, 'field', 7, 'ru', ''),
(12, 'field', 6, 'ru', ' https www youtube com watch v=fij7krvvtke ');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2018-02-13 20:29:38', '2018-02-13 21:39:20', '5a92a0eb-0b8f-41f6-a8dc-c213e9cf32da'),
(2, NULL, 'Услуги', 'news', 'channel', 1, 'news/_entry', 1, '2018-02-18 13:35:26', '2018-02-18 17:02:00', '761cb46b-d07e-4f33-97fe-9af42a1173a4'),
(3, NULL, 'Contacts', 'contacts', 'single', 1, 'contacts', 1, '2018-02-18 16:35:04', '2018-02-18 19:04:09', '5ff279b0-ae0a-48fc-bb9f-e8da1e70c445');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'ru', 1, '__home__', NULL, '2018-02-13 20:29:38', '2018-02-13 20:29:38', 'b9990ba3-8fb3-4e36-acfc-dbe74c01cd85'),
(2, 2, 'ru', 1, 'news/{slug}', NULL, '2018-02-18 13:35:26', '2018-02-18 15:30:19', 'f84453b1-b9bb-498f-be66-45eaf5cb93a6'),
(3, 3, 'ru', 1, 'contacts', NULL, '2018-02-18 16:35:04', '2018-02-18 19:04:09', '164a8ae4-095f-4eba-bbb0-4054b32f8d5a');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '8467789c1ab2e34d9868fd0b0911d8bda4f66c45czozMjoibEpjQkRqZUxKYm11MERwbFoxYWFSeFcwdnVsb0c3MDMiOw==', '2018-02-13 20:29:36', '2018-02-13 20:29:36', 'f6819f45-df88-4f39-814b-302640938b45'),
(2, 1, 'f9d74b119a5886fc3303576116f245e01fe0e43fczozMjoiWmRyZGRaYXJOUUlwd1Exc1VxVVdYMEwwWFJFNUs1VzEiOw==', '2018-02-14 09:56:36', '2018-02-14 09:56:36', '0bf818d1-5240-4d18-9b82-3edafcabe6da'),
(4, 1, '1d9de9161249eb18bab4eaa613351f5ebffc2266czozMjoiSFNvUFcyM255c1p4ZmRKMDBtUzE0YnFnc0d4cUtjRGwiOw==', '2018-02-18 17:10:30', '2018-02-18 17:10:30', '1fc83285-3445-400d-a72c-ff3e3ef5c3d2'),
(5, 1, 'd110027cbd47865348d2f88fd7bbbc9efb7d8b8fczozMjoiQ3QxT1REQnBlWjhOcjJURWoyVk0yM0pEOGdfcUhTNlAiOw==', '2018-02-19 14:43:23', '2018-02-19 14:43:23', '365d0182-c39d-4883-a2e0-1ce20e0dc710'),
(6, 1, '800221871a244e5a9ffc7b4ef546a23695914885czozMjoiVXBzbTJRaG40VG9qVWlQQVJPcHF2RV9xR00zNGxCYzMiOw==', '2018-02-19 17:28:40', '2018-02-19 17:28:40', '509df6be-6df4-41e5-a5ff-6fabae2952f8'),
(7, 1, '72807929731d04997ec2f347e097f5b00886e93eczozMjoiM1RTcHVkQnJ3WGZaTGVrNFpKdEJLUGVnTG5NQWViZEwiOw==', '2018-02-20 10:47:15', '2018-02-20 10:47:15', '0b41137e-bdb4-4287-9098-6440712a6210');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"bonez@mail.ru","senderName":"bonez_test"}', '2018-02-13 20:29:36', '2018-02-13 20:29:36', 'cbcdff8e-f021-4111-8b50-9f273bcd26d2');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2018-02-13 20:29:36', '2018-02-13 20:29:36', '87ef1643-0731-46ac-99a1-a56e1475d702');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'bonez@mail.ru', '$2y$13$85wR0lzuQ.LLH0Rpcgo8A.eF.DQD/k54rm9N4OYovmpgg65ICiT2S', NULL, 0, 1, 0, 0, 0, 0, 0, '2018-02-20 10:47:15', '::1', NULL, NULL, '2018-02-19 17:28:29', NULL, NULL, NULL, NULL, 0, '2018-02-13 20:29:35', '2018-02-13 20:29:35', '2018-02-20 10:47:15', 'f1002048-4501-4865-8f4d-1e9f80b89db6');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2018-02-13 20:42:31', '2018-02-13 20:42:31', '3e4ebc08-e82b-4b71-a529-362b3b8c7609'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2018-02-13 20:42:31', '2018-02-13 20:42:31', '4bf3dbf6-e136-4224-97a4-1aaebd599758'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2018-02-13 20:42:31', '2018-02-13 20:42:31', 'ad3aa94f-1421-4005-bb5c-b493bca41b14'),
(4, 1, 'Feed', 4, NULL, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 1, '2018-02-13 20:42:31', '2018-02-13 20:42:31', 'de163bed-9a14-4fba-af28-6c84fb81af1e');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Индексы таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Индексы таблицы `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Индексы таблицы `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Индексы таблицы `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Индексы таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Индексы таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Индексы таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Индексы таблицы `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Индексы таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Индексы таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Индексы таблицы `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Индексы таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Индексы таблицы `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Индексы таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Индексы таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_routes_locale_idx` (`locale`),
  ADD KEY `craft_routes_urlPattern_idx` (`urlPattern`);

--
-- Индексы таблицы `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Индексы таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Индексы таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Индексы таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Индексы таблицы `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Индексы таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Индексы таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Индексы таблицы `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Индексы таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  ADD KEY `craft_templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Индексы таблицы `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Индексы таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Индексы таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
