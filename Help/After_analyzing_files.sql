-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 24 2022 г., 17:21
-- Версия сервера: 8.0.22
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `              `
--

-- --------------------------------------------------------

--
-- Структура таблицы `kod`
--

CREATE TABLE `kod` (
  `KodID` int NOT NULL,
  `KodPolucheniya` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kod`
--

INSERT INTO `kod` (`KodID`, `KodPolucheniya`) VALUES
(1, 301),
(2, 302),
(3, 303),
(4, 304),
(5, 305),
(6, 306),
(7, 307),
(8, 308),
(9, 309),
(10, 310);

-- --------------------------------------------------------

--
-- Структура таблицы `order1`
--

CREATE TABLE `order1` (
  `OrderID` int NOT NULL,
  `OrderStatus` text NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderDeliveryDate` date NOT NULL,
  `OrderPickupPoint` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order1`
--

INSERT INTO `order1` (`OrderID`, `OrderStatus`, `OrderDate`, `OrderDeliveryDate`, `OrderPickupPoint`) VALUES
(1, 'Завершен', '2022-05-05', '2022-05-11', 13),
(2, 'Новый ', '2022-05-05', '2022-05-11', 12),
(3, 'Завершен', '2022-05-06', '2022-05-12', 13),
(4, 'Завершен', '2022-05-07', '2022-05-13', 14),
(5, 'Новый ', '2022-05-09', '2022-05-15', 15),
(6, 'Новый ', '2022-05-09', '2022-05-15', 16),
(7, 'Завершен', '2022-05-10', '2022-05-16', 16),
(8, 'Завершен', '2022-05-11', '2022-05-17', 18),
(9, 'Новый ', '2022-05-12', '2022-05-18', 20),
(10, 'Завершен', '2022-05-12', '2022-05-18', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `orderproduct`
--

CREATE TABLE `orderproduct` (
  `OrderID` int NOT NULL,
  `ProductArticleNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orderproduct`
--

INSERT INTO `orderproduct` (`OrderID`, `ProductArticleNumber`) VALUES
(1, 'D548T5'),
(1, 'А112Т4');

-- --------------------------------------------------------

--
-- Структура таблицы `placedelivery`
--

CREATE TABLE `placedelivery` (
  `placeID` int NOT NULL,
  `adres` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `placedelivery`
--

INSERT INTO `placedelivery` (`placeID`, `adres`) VALUES
(1, '344288, г. Краснокаменск, ул. Чехова, 1'),
(2, '614164, г.Краснокаменск,  ул. Степная, 30'),
(3, '394242, г. Краснокаменск, ул. Коммунистическая, 43'),
(4, '660540, г. Краснокаменск, ул. Солнечная, 25'),
(5, '125837, г. Краснокаменск, ул. Шоссейная, 40'),
(6, '125703, г. Краснокаменск, ул. Партизанская, 49'),
(7, '625283, г. Краснокаменск, ул. Победы, 46'),
(8, '614611, г. Краснокаменск, ул. Молодежная, 50'),
(9, '454311, г.Краснокаменск, ул. Новая, 19'),
(10, '660007, г.Краснокаменск, ул. Октябрьская, 19'),
(11, '603036, г. Краснокаменск, ул. Садовая, 4'),
(12, '450983, г.Краснокаменск, ул. Комсомольская, 26'),
(13, '394782, г. Краснокаменск, ул. Чехова, 3'),
(14, '603002, г. Краснокаменск, ул. Дзержинского, 28'),
(15, '450558, г. Краснокаменск, ул. Набережная, 30'),
(16, '394060, г.Краснокаменск, ул. Фрунзе, 43'),
(17, '410661, г. Краснокаменск, ул. Школьная, 50'),
(18, '625590, г. Краснокаменск, ул. Коммунистическая, 20'),
(19, '625683, г. Краснокаменск, ул. 8 Марта'),
(20, '400562, г. Краснокаменск, ул. Зеленая, 32'),
(21, '614510, г. Краснокаменск, ул. Маяковского, 47'),
(22, '410542, г. Краснокаменск, ул. Светлая, 46'),
(23, '620839, г. Краснокаменск, ул. Цветочная, 8'),
(24, '443890, г. Краснокаменск, ул. Коммунистическая, 1'),
(25, '603379, г. Краснокаменск, ул. Спортивная, 46'),
(26, '603721, г. Краснокаменск, ул. Гоголя, 41'),
(27, '410172, г. Краснокаменск, ул. Северная, 13'),
(28, '420151, г. Краснокаменск, ул. Вишневая, 32'),
(29, '125061, г. Краснокаменск, ул. Подгорная, 8'),
(30, '630370, г. Краснокаменск, ул. Шоссейная, 24'),
(31, '614753, г. Краснокаменск, ул. Полевая, 35'),
(32, '426030, г. Краснокаменск, ул. Маяковского, 44'),
(33, '450375, г. Краснокаменск ул. Клубная, 44'),
(34, '625560, г. Краснокаменск, ул. Некрасова, 12'),
(35, '630201, г. Краснокаменск, ул. Комсомольская, 17'),
(36, '190949, г. Краснокаменск, ул. Мичурина, 26');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `ProductArticleNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ProductName` text NOT NULL,
  `ProductDescription` text NOT NULL,
  `ProductCategory` text NOT NULL,
  `ProductPhoto` blob NOT NULL,
  `ProductManufacturer` text NOT NULL,
  `ProductCost` decimal(19,4) NOT NULL,
  `ProductDiscountAmount` tinyint DEFAULT NULL,
  `ProductQuantityInStock` int NOT NULL,
  `ProductStatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`ProductArticleNumber`, `ProductName`, `ProductDescription`, `ProductCategory`, `ProductPhoto`, `ProductManufacturer`, `ProductCost`, `ProductDiscountAmount`, `ProductQuantityInStock`, `ProductStatus`) VALUES
('A395T3', 'Набор кастрюль', 'Набор кастрюль Эмаль Дача 2-3194/4 белый', 'Кастрюли', '', 'Эмаль', '2150.0000', 2, 13, 'да'),
('C367R6', 'Набор кастрюль', 'Набор кастрюль Webber BE-336/6 6 пр. серебристый', 'Кастрюли', '', 'Webber', '3600.0000', 3, 7, 'да'),
('C425F8', 'Набор посуды', 'Набор обеденной посуды Mason Cash Classic 12 предметов серый', 'Посуда', '', 'Нева', '5990.0000', 5, 9, 'да'),
('C432H7', 'Набор посуды', 'Набор посуды Tefal Ingenio Red 04162820 3 пр. красный', 'Посуда', '', 'Tefal', '2700.0000', 4, 6, 'да'),
('D026R4', 'Сковорода', 'Сковорода НЕВА МЕТАЛЛ ПОСУДА Карелия 2328, 28 см', 'Сковорода', '', 'Нева', '1800.0000', 4, 2, 'да'),
('D036H2', 'Сковорода', 'Сковорода НЕВА МЕТАЛЛ ПОСУДА Алтай индукционная, 26 см', 'Сковорода', 0x4430333648322e6a7067, 'Нева', '1960.0000', 5, 12, 'да'),
('D548T5', 'Столовый сервиз', 'Столовый сервиз Luminarc Every Day G0566, 6 персон, 18 предм.', 'Сервиз', 0x4435343854352e6a7067, 'Luminarc', '1700.0000', 4, 10, 'да'),
('D630H5', 'Набор кастрюль', 'Набор кастрюль Webber BE-621/6 стальной', 'Кастрюли', '', 'Webber', '2000.0000', 3, 8, 'да'),
('D644G3', 'Набор кастрюль', 'Набор кастрюль Webber ВЕ-620/8 8 пр. стальной', 'Кастрюли', 0x4436343447332e6a7067, 'Webber', '3500.0000', 3, 8, 'да'),
('F735F5', 'Сковорода', 'Сковорода НЕВА МЕТАЛЛ ПОСУДА Домашняя 7424, съемная ручка, 24 см', 'Сковорода', 0x4637333546352e6a7067, 'Нева', '1270.0000', 2, 4, 'да'),
('F835F5', 'Набор посуды', 'Набор посуды SOLARIS S1605: 6 тарелок 180мм в контейнере', 'Сервиз', 0x4638333546352e6a7067, 'Solaris', '732.0000', 2, 9, 'да'),
('F835H6', 'Кастрюля для запекания', 'Кастрюля эмалированная, цветок Розы', 'Кастрюли', '', 'Нева', '2130.0000', 2, 5, 'да'),
('F836E5', 'Набор сковород', 'Набор сковород Tefal Ingenio Chef Red L6598672 3 пр. бордовый', 'Сковорода', 0x4638333645352e6a7067, 'Tefal', '4600.0000', 2, 6, 'да'),
('F934E5', 'Сервировочное блюдо', 'Сервировочное блюдо ROSSI для подачи из керамики 28х18 см ', 'Посуда', '', 'Нева', '1200.0000', 3, 5, 'да'),
('G405K9', 'Набор посуды', 'Набор посуды SOLARIS S1607: 6 стаканов 0,1л в контейнере', 'Посуда', '', 'Solaris', '240.0000', 4, 23, 'да'),
('H482Y6', 'Столовый сервиз', 'Столовый сервиз Luminarc Cadix L0300, 6 персон, 19 предм.', 'Сервиз', 0x4834383259362e6a7067, 'Luminarc', '2300.0000', 5, 12, 'да'),
('J468K6', 'Набор сковород', 'Набор сковород GALAXY GL9801 2 пр. синий', 'Сковорода', '', 'Galaxy', '1390.0000', 2, 13, 'да'),
('K036S3', 'Набор посуды', 'Набор посуды GALAXY GL9507 6 пр. коричневый', 'Сервиз', '', 'Galaxy', '2990.0000', 5, 15, 'да'),
('K935B6', 'Салатник', 'Салатник «Кото», 0,19 л 10 см красный, фарфор', 'Посуда', '', 'Нева', '1200.0000', 3, 9, 'да'),
('L346D4', 'Набор кружек', 'Набор кружек Pasabahce Basic, 370 мл, 2 предм., 2 персоны', 'Посуда', '', 'Нева', '329.0000', 5, 18, 'да'),
('M045H6', 'Набор кастрюль', 'Набор кастрюль СтальЭмаль 1с33/1 6 пр. белоснежный /маки ', 'Кастрюли', '', 'Эмаль', '1499.0000', 4, 7, 'да'),
('M527Y7', 'Казан', 'Казан 5 л Наша Посуда антипригарный', 'Кастрюли', '', 'Нева', '1999.0000', 3, 6, 'да'),
('N835D4', 'Набор кастрюль', 'Набор кастрюль GALAXY GL9512 4 пр. фиолетовый', 'Кастрюли', 0x4e38333544342e6a7067, 'Galaxy', '2100.0000', 3, 5, 'да'),
('N835F5', 'Кастрюля для запекания', 'Кастрюля для запекания Tefal 208AC00/1043, 2.3 л, 23 см', 'Кастрюли', 0x4e38333546352e6a7067, 'Tefal', '744.0000', 3, 13, 'да'),
('S257G5', 'Набор посуды', 'Набор посуды для выпечки O CUISINE 333SA95/6142', 'Посуда', '', 'Tefal', '2300.0000', 4, 8, 'да'),
('S306J8', 'Ковш', 'Ковш б/деколи(палевый) 17,5х8 см 1,5 л', 'Посуда', '', 'Tefal', '409.0000', 2, 14, 'да'),
('S413D4', 'Набор кастрюль', 'Набор кастрюль СтальЭмаль 7DA025S 6 пр. слоновая кость', 'Кастрюли', '', 'Эмаль', '4500.0000', 3, 15, 'да'),
('S835H6', 'Кастрюля для запекания', 'Кастрюля Scovo Expert СЭ-008, 4.5 л', 'Кастрюли', '', 'Tefal', '1600.0000', 4, 13, 'да'),
('V493H5', 'Набор посуды', 'Набор посуды Tefal Ingenio RED 9 предметов ', 'Посуда', '', 'Tefal', '6000.0000', 4, 18, 'да'),
('А112Т4', 'Набор кастрюль', 'Набор кастрюль Webber BE-335/6 6 пр. серебристый', 'Кастрюли', 0xd090313132d0a2342e6a7067, 'Webber', '2600.0000', 4, 6, 'да');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `RoleID` int NOT NULL,
  `RoleName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`RoleID`, `RoleName`) VALUES
(1, 'Администратор'),
(2, 'Менеджер'),
(3, 'Клиент');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `UserID` int NOT NULL,
  `UserSurname` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserPatronymic` varchar(100) NOT NULL,
  `UserLogin` text NOT NULL,
  `UserPassword` text NOT NULL,
  `UserRole` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`UserID`, `UserSurname`, `UserName`, `UserPatronymic`, `UserLogin`, `UserPassword`, `UserRole`) VALUES
(3, 'Федоров', 'Глеб', 'Михайлович', 'o@outlook.com', '2L6KZG', 1),
(4, 'Семенова', 'Софья', 'Дмитриевна', 'hr6zdl@yandex.ru', 'uzWC67', 1),
(5, 'Васильев', 'Егор', 'Германович', 'kaft93x@outlook.com', '8ntwUp', 1),
(6, 'Смирнова', 'Ирина', 'Александровна', 'dcu@yandex.ru', 'YOyhfR', 2),
(7, 'Петров', 'Андрей', 'Владимирович', '19dn@outlook.com', 'RSbvHv', 2),
(8, 'Егоров', 'Максим', 'Андреевич', 'pa5h@mail.ru', 'rwVDh9', 2),
(9, 'Никитин', 'Артур', 'Алексеевич', '281av0@gmail.com', 'LdNyos', 3),
(10, 'Киселев', 'Максим', 'Сергеевич', '8edmfh@outlook.com', 'gynQMT', 3),
(11, 'Борисов', 'Тимур', 'Егорович', 'sfn13i@mail.ru', 'AtnDjr', 3),
(12, 'Климов', 'Арсений', 'Тимурович', 'g0orc3x1@outlook.com', 'JlFRCZ', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `vsezakaz`
--

CREATE TABLE `vsezakaz` (
  `ZakazID` int NOT NULL,
  `ZakOrderStatus` text NOT NULL,
  `ZakOrderDate` date NOT NULL,
  `ZakOrderDeliveryDate` date NOT NULL,
  `ZakOrderPickupPoint` int NOT NULL,
  `ZakUserID` int NOT NULL,
  `ZakKodPolucheniya` int NOT NULL,
  `ZakProdArtNumb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kod`
--
ALTER TABLE `kod`
  ADD PRIMARY KEY (`KodID`),
  ADD KEY `KodID` (`KodID`);

--
-- Индексы таблицы `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `OrderPickupPoint` (`OrderPickupPoint`);

--
-- Индексы таблицы `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`OrderID`,`ProductArticleNumber`),
  ADD KEY `ProductArticleNumber` (`ProductArticleNumber`);

--
-- Индексы таблицы `placedelivery`
--
ALTER TABLE `placedelivery`
  ADD PRIMARY KEY (`placeID`),
  ADD KEY `placeID` (`placeID`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductArticleNumber`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `UserRole` (`UserRole`);

--
-- Индексы таблицы `vsezakaz`
--
ALTER TABLE `vsezakaz`
  ADD PRIMARY KEY (`ZakazID`),
  ADD KEY `ZakOrderDate` (`ZakOrderDate`,`ZakOrderDeliveryDate`,`ZakOrderPickupPoint`,`ZakUserID`,`ZakKodPolucheniya`,`ZakProdArtNumb`),
  ADD KEY `ZakazID` (`ZakazID`),
  ADD KEY `ZakProdArtNumb` (`ZakProdArtNumb`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kod`
--
ALTER TABLE `kod`
  MODIFY `KodID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `order1`
--
ALTER TABLE `order1`
  MODIFY `OrderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `placedelivery`
--
ALTER TABLE `placedelivery`
  MODIFY `placeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `vsezakaz`
--
ALTER TABLE `vsezakaz`
  MODIFY `ZakazID` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order1`
--
ALTER TABLE `order1`
  ADD CONSTRAINT `order1_ibfk_1` FOREIGN KEY (`OrderPickupPoint`) REFERENCES `placedelivery` (`placeID`);

--
-- Ограничения внешнего ключа таблицы `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order1` (`OrderID`),
  ADD CONSTRAINT `orderproduct_ibfk_2` FOREIGN KEY (`ProductArticleNumber`) REFERENCES `product` (`ProductArticleNumber`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`UserRole`) REFERENCES `role` (`RoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
