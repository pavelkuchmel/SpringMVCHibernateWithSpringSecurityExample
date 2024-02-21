-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3308
-- Время создания: Фев 21 2024 г., 21:01
-- Версия сервера: 5.6.41
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `spring_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `office_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `app_user`
--

INSERT INTO `app_user` (`id`, `sso_id`, `password`, `first_name`, `last_name`, `email`, `office_id`) VALUES
(1, 'john.j', '123456', 'john', 'johnson', 'johnson@gmail.com', 1),
(2, 'Alex.I', '$2a$10$KtGkJOVHELAzN9eeKxbQIOHcgDXOR5jldlgBTjRgTCAe7JIvmG3EC', 'Alex', 'Ivanov', 'Ivanov@gmail.com', 2),
(3, 'Mike.J', '$2a$10$RRBl4UaTYBo78pv2dgRxteFZi9kl8FBG9Zhd4Ac5/wH5M.dXe1bzG', 'Mike', 'Jackson', 'Mike.J@gmail.com', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `app_user_user_profile`
--

CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `app_user_user_profile`
--

INSERT INTO `app_user_user_profile` (`user_id`, `user_profile_id`) VALUES
(3, 1),
(1, 2),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `author_book`
--

CREATE TABLE `author_book` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emp99`
--

CREATE TABLE `emp99` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `designation` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `emp99`
--

INSERT INTO `emp99` (`id`, `name`, `salary`, `designation`) VALUES
(1, 'John2', 12234, 'asfas'),
(2, 'Bob55', 5566, '12344'),
(3, 'John33', 234, '33333333344');

-- --------------------------------------------------------

--
-- Структура таблицы `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone_1` varchar(128) NOT NULL,
  `phone_2` varchar(128) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `updated_ts` timestamp NULL DEFAULT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `offices`
--

INSERT INTO `offices` (`id`, `title`, `address`, `phone_1`, `phone_2`, `postal_code`, `updated_ts`, `created_ts`) VALUES
(1, 'MAIN', 'BLR, Minsk, K.Marksa 32', '+375172416974', '+375172416975', 220111, NULL, '2023-09-27 13:32:41'),
(2, 'DEP#1', 'BLR, Minsk, K.Marksa 34', '+375172417974', '+375172417975', 220111, NULL, '2023-09-27 13:32:41'),
(3, 'DEP#2', 'BLR, Minsk, K.Marksa 35', '+375179046974', '+375172404975', 220111, NULL, '2023-09-27 13:32:41'),
(4, 'MAIN', 'GERM', '123', '321', 220222, NULL, '2023-10-16 13:00:35'),
(5, 'MAIN', 'FR', '123', '321', 220222, NULL, '2023-10-15 03:20:24'),
(6, 'MAIN 2', 'address', '123', '123', 2222222, NULL, '2023-10-11 16:41:29'),
(8, 'MAIN 2', 'address', '123', '123', 2222222, NULL, '2023-10-12 13:42:59'),
(9, 'MAIN 2', 'address', '123', '123', 2222222, NULL, '2023-10-14 09:36:05'),
(55, 'main', 'BLR', '+4567890', '+3456789', 200220, NULL, '2023-10-14 09:40:12'),
(56, '1', '2', '3', '4', 5, NULL, '2023-11-22 15:15:48'),
(57, 'asdasd', 'asdasdasdas', '123', '321', 2134214, NULL, '2024-02-19 18:46:05');

-- --------------------------------------------------------

--
-- Структура таблицы `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `persistent_logins`
--

INSERT INTO `persistent_logins` (`username`, `series`, `token`, `last_used`) VALUES
('john.j', 'ZUY/2E0Chz3NpNo9lv4hrg==', 'JzHkaHe7OyNg/7RwocNEDw==', '2024-02-14 18:20:23');

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`id`, `name`, `country`) VALUES
(1, 'John', 'USA');

-- --------------------------------------------------------

--
-- Структура таблицы `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pizzas`
--

INSERT INTO `pizzas` (`id`, `name`, `size`, `price`) VALUES
(1, 'Margherita S', 25, 10.5),
(2, 'Margherita M', 30, 15.9),
(3, 'Margherita SSSSSS', 25, 10.5),
(4, 'Margherita SSSSSS', 25, 10.5),
(5, 'Margherita X5', 25, 10.5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(123) DEFAULT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `is_active` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `login`, `password`, `email`, `is_active`) VALUES
(1, 'John', 'Black', 'Johnny35', '4JGrAccKBWxhp9PCOjQ3mA', 'Johnny35@gmail.com', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`id`, `type`) VALUES
(2, 'ADMIN'),
(3, 'DBA'),
(1, 'USER');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sso_id` (`sso_id`),
  ADD KEY `fk_office_id` (`office_id`);

--
-- Индексы таблицы `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD PRIMARY KEY (`user_id`,`user_profile_id`),
  ADD KEY `FK_USER_PROFILE` (`user_profile_id`);

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`author_id`,`book_id`),
  ADD KEY `FK_bfff0qy5yokmeel0q0e10msv7` (`book_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `emp99`
--
ALTER TABLE `emp99`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `emp99`
--
ALTER TABLE `emp99`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `app_user`
--
ALTER TABLE `app_user`
  ADD CONSTRAINT `fk_office_id` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`);

--
-- Ограничения внешнего ключа таблицы `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  ADD CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`);

--
-- Ограничения внешнего ключа таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `FK_3756au12qe5s0ee22r4tbfj54` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `FK_bfff0qy5yokmeel0q0e10msv7` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
