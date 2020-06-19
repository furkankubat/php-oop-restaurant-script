-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 19 Haz 2020, 16:07:15
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `restaurant`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abouts`
--

CREATE TABLE `abouts` (
  `abouts_id` int(11) NOT NULL,
  `abouts_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `abouts_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `abouts_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `abouts_content` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `abouts_must` int(3) NOT NULL,
  `abouts_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `abouts`
--

INSERT INTO `abouts` (`abouts_id`, `abouts_title`, `abouts_file`, `abouts_slug`, `abouts_content`, `abouts_must`, `abouts_key`) VALUES
(12, 'Hakkımızda', '5ee63423e2a31.jpg', 'hakkimizda', '<p><strong>Founded in 2001 by John Doe, gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat.</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur hendrerit, leo vitae interdum pretium, tortor risus dapibus tortor, eu suscipit orci leo sed nisl. Integer et ipsum eu nulla auctor mattis sit amet in diam. Vestibulum non ornare arcu. Class aptent taciti sociosqu ad.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur hendrerit, leo vitae interdum pretium, tortor risus dapibus tortor, eu suscipit orci leo sed nisl. Integer et ipsum eu nulla auctor mattis sit amet in diam. Vestibulum non ornare arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vitae nunc consequat, viverra nisl eget, dictum eros. Maecenas sit amet iaculis massa. Sed dui tellus, pellentesque non enim eget, cursus sollicitudin tellus. Cras eget varius enim. Aenean ac libero finibus, varius nisi a, cursus magna. Vestibulum vitae massa purus. Etiam vulputate ullamcorper diam, a iaculis nulla placerat a. Aenean ac libero finibus, varius nisi a, cursus magna. Vestibulum vitae massa purus. Etiam vulputate ullamcorper diam, a iaculis nulla placerat a.</p>\r\n', 0, 'hakkimizda');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `admins_id` int(11) NOT NULL,
  `admins_namesurname` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `admins_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `admins_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `admins_pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `admins_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `admins_must` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`admins_id`, `admins_namesurname`, `admins_file`, `admins_username`, `admins_pass`, `admins_status`, `admins_must`) VALUES
(12, 'Furkan KUBAT', '5ece922072fc1.jpg', 'furkan', 'e10adc3949ba59abbe56e057f20f883e', '1', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `beverage`
--

CREATE TABLE `beverage` (
  `beverage_id` int(11) NOT NULL,
  `beverage_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `beverage_price` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `beverage_file` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `beverage_slug` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `beverage_content` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `beverage`
--

INSERT INTO `beverage` (`beverage_id`, `beverage_title`, `beverage_price`, `beverage_file`, `beverage_slug`, `beverage_content`) VALUES
(1, 'Espresso', '₺13', '5edfa4d6b6310.jpg', 'espresso', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(2, 'Macchiato', '₺14', '5edfa50d96ece.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(3, 'Cappuccino', '₺18', '5edfa583c94bb.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(4, 'Caffe Latte', '₺18', '5edfa5b497528.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(5, 'Türk Kahvesi', '₺13', '5edfa74aee2d0.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `breakfast`
--

CREATE TABLE `breakfast` (
  `breakfast_id` int(11) NOT NULL,
  `breakfast_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `breakfast_price` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `breakfast_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `breakfast_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `breakfast_content` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `breakfast`
--

INSERT INTO `breakfast` (`breakfast_id`, `breakfast_title`, `breakfast_price`, `breakfast_file`, `breakfast_slug`, `breakfast_content`) VALUES
(1, 'Serpme Kahvaltı', '₺50', '5edf9b98d3dc9.jpg', 'serpme-kahvalti', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(2, 'Tek Kişilik Kahvaltı', '₺20', '5edf87d80d157.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(3, 'Açık Büfe Kahvaltı', '₺70', '5edf88c9408df.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(4, 'Kaşarlı Omlet', '₺15', '5edf8931b0c9a.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(5, 'Menemen', '₺15', '5edf89733e319.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `food_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `food_price` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `food_file` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `food_slug` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `food_content` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `food`
--

INSERT INTO `food` (`food_id`, `food_title`, `food_price`, `food_file`, `food_slug`, `food_content`) VALUES
(1, 'Saç Tava', '₺30', '5edf9fdd2a4e8.jpg', 'sac-tava', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(2, 'Izgara Köfte', '₺20', '5edfa037746e0.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(3, 'Köri Soslu Tavuk', '$20', '5edfa0a278abe.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(4, 'Tavuk Wrap', '$15', '5edfa0efe6ffc.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n'),
(5, 'Tavuk Şiş', '$23', '5edfa13783bc2.jpg', '', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `settings_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `settings_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `settings_value` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `settings_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `settings_must` int(3) NOT NULL,
  `settings_delete` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `settings_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`settings_id`, `settings_description`, `settings_key`, `settings_value`, `settings_type`, `settings_must`, `settings_delete`, `settings_status`) VALUES
(1, 'Site Başlığı', 'title', 'Furkan KUBAT Restaurant Script', 'text', 0, '0', '1'),
(2, 'Site Açıklama', 'description', 'CMS Açıklama Güncelleme', 'text', 1, '0', '1'),
(3, 'Site Logo', 'logo', '5edb8dd695496.png', 'file', 2, '0', '1'),
(4, 'Fav Icon', 'icon', '5cd14ad1392fa.jpg', 'file', 4, '0', '1'),
(5, 'Anahtar Kelimeler', 'keywords', 'furkan, kubat, cms, admin', 'text', 5, '0', '1'),
(6, 'Telefon Numarası', 'phone', '0534 340 36 66', 'text', 10, '0', '1'),
(7, 'Mail Adresi', 'email', 'furkankubat135@gmail.com', 'text', 11, '0', '1'),
(9, 'İl', 'il', 'Bursa', 'text', 12, '0', '1'),
(10, 'Açık Adres', 'adres', '<p><strong>Script Restaurant<br />\r\nYıldırım/Bursa<br />\r\nTelefon: 0534 340 36 66</strong></p>\r\n', 'ckeditor', 13, '0', '1'),
(11, 'Facebook Hesabı', 'facebook', 'https://www.facebook.com/furkan.kubat.7330', 'text', 14, '0', '1'),
(12, 'Çalışma Saatleri', 'work_hours', '<p><strong>Pazartesi-Cuma:</strong> 09:30 - 00:00<br />\r\n<strong>Cumartesi-Pazar:</strong> 08:30 - 00:00<br />\r\n&nbsp;</p>\r\n', 'ckeditor', 15, '0', '1'),
(17, 'Twitter Hesabı', 'twitter', 'www.twitter.çom', 'text', 16, '0', '1'),
(18, 'Site Sahibi', 'author', 'Furkan KUBAT', 'text', 6, '0', '1'),
(19, 'Copyright', 'copyright', 'Copyright © Furkan KUBAT 2020', 'text', 7, '0', '1'),
(20, 'Slogan', 'slogan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.', 'text', 8, '0', '1'),
(21, 'Slogan Linki', 'slogan_url', '', 'text', 9, '0', '1'),
(22, 'Site Logo Text', 'logo_text', 'Furkan KUBAT', 'text', 3, '0', '1'),
(23, 'Anasayfa Reklam Alanı İçerik', 'home_01_content', '<h2><strong>Modern Business Features</strong></h2>\r\n\r\n<p>The Modern Business template by Start Bootstrap includes:</p>\r\n\r\n<ul>\r\n	<li><strong>Bootstrap v4</strong></li>\r\n	<li>jQuery</li>\r\n	<li>Font Awesome</li>\r\n	<li>Working contact form with validation</li>\r\n	<li>Unstyled page elements for easy customization</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>\r\n', 'ckeditor', 18, '0', '1'),
(24, 'Anasayfa Reklam Alanı Görsel', 'home_01_file', '5cd57210754dc.png', 'file', 17, '0', '1'),
(25, 'Acil Durumlar', 'acil', '<p>05XX XXX XX XX</p>\r\n', 'ckeditor', 15, '0', '1'),
(26, 'Twitter Hesabı', 'twitter', 'https://twitter.com/furkankubat1654', 'text', 14, '0', '1'),
(27, 'LinkedIn Hesabı', 'linkedin', 'https://www.linkedin.com/in/furkan-kubat-441900194/', 'text', 14, '0', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sliders_baslik_bir` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sliders_baslik_iki` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sliders_baslik_uc` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sliders_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sliders_must` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`sliders_id`, `sliders_title`, `sliders_baslik_bir`, `sliders_baslik_iki`, `sliders_baslik_uc`, `sliders_file`, `sliders_must`) VALUES
(13, 'Slider 1', 'Slider 1', 'Slider 1', 'Slider 1', '5ee3808cb2ce4.jpg', 0),
(14, 'Slider 2', 'Slider 2', 'Slider 2', 'Slider 2', '5ee380b3c7438.jpg', 0),
(15, 'Slider 3', 'Slider 3', 'Slider 3', 'Slider 3', '5ee3810667216.jpg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `specialrecipe`
--

CREATE TABLE `specialrecipe` (
  `specialrecipe_id` int(11) NOT NULL,
  `specialrecipe_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `specialrecipe_content` text COLLATE utf8_turkish_ci NOT NULL,
  `specialrecipe_price` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `specialrecipe_file` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `specialrecipe_slug` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `specialrecipe`
--

INSERT INTO `specialrecipe` (`specialrecipe_id`, `specialrecipe_title`, `specialrecipe_content`, `specialrecipe_price`, `specialrecipe_file`, `specialrecipe_slug`) VALUES
(1, 'Kek', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut odio augue. Nullam pretium tempus dignissim. Sed cursus libero lacus, nec laoreet ligula elementum eget. Praesent sit amet leo massa. Maecenas placerat justo vel neque eleifend tincidunt. Duis bibendum cursus finibus. Donec interdum nibh vel mi consequat, eu tempor mi consequat. Ut sodales, quam et feugiat pharetra, justo diam accumsan neque, non congue nibh metus et purus. Vivamus vitae mauris vitae urna volutpat bibendum ut ut nisi. Sed consectetur nisi a leo posuere, quis pharetra enim rutrum. Cras congue libero eget lacus blandit dapibus. Donec mauris dolor, rhoncus eu ullamcorper vel, lobortis at massa. Aenean scelerisque dolor fringilla, fermentum turpis sit amet, commodo libero. Nam dignissim est sit amet pellentesque posuere. Etiam varius nunc lorem, in varius purus semper eu. Mauris semper lacinia neque et pulvinar.</p>\r\n', '₺23', '5ee39d02dec5a.jpg', 'kek'),
(2, 'Çikolatalı Pasta', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut odio augue. Nullam pretium tempus dignissim. Sed cursus libero lacus, nec laoreet ligula elementum eget. Praesent sit amet leo massa. Maecenas placerat justo vel neque eleifend tincidunt. Duis bibendum cursus finibus. Donec interdum nibh vel mi consequat, eu tempor mi consequat. Ut sodales, quam et feugiat pharetra, justo diam accumsan neque, non congue nibh metus et purus. Vivamus vitae mauris vitae urna volutpat bibendum ut ut nisi. Sed consectetur nisi a leo posuere, quis pharetra enim rutrum. Cras congue libero eget lacus blandit dapibus. Donec mauris dolor, rhoncus eu ullamcorper vel, lobortis at massa. Aenean scelerisque dolor fringilla, fermentum turpis sit amet, commodo libero. Nam dignissim est sit amet pellentesque posuere. Etiam varius nunc lorem, in varius purus semper eu. Mauris semper lacinia neque et pulvinar.</p>\r\n', '₺35', '5ee39d53a05ae.jpg', ''),
(3, 'Haşhaşlı Kurabie', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut odio augue. Nullam pretium tempus dignissim. Sed cursus libero lacus, nec laoreet ligula elementum eget. Praesent sit amet leo massa. Maecenas placerat justo vel neque eleifend tincidunt. Duis bibendum cursus finibus. Donec interdum nibh vel mi consequat, eu tempor mi consequat. Ut sodales, quam et feugiat pharetra, justo diam accumsan neque, non congue nibh metus et purus. Vivamus vitae mauris vitae urna volutpat bibendum ut ut nisi. Sed consectetur nisi a leo posuere, quis pharetra enim rutrum. Cras congue libero eget lacus blandit dapibus. Donec mauris dolor, rhoncus eu ullamcorper vel, lobortis at massa. Aenean scelerisque dolor fringilla, fermentum turpis sit amet, commodo libero. Nam dignissim est sit amet pellentesque posuere. Etiam varius nunc lorem, in varius purus semper eu. Mauris semper lacinia neque et pulvinar.</p>\r\n', '₺25', '5ee39dcb6ef19.jpg', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_namesurname` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `team_file` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `team_slug` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `team_expert` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `team_about` text COLLATE utf8_turkish_ci NOT NULL,
  `team_facebook` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `team_twitter` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `team_instagram` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `team_mail` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `team`
--

INSERT INTO `team` (`team_id`, `team_namesurname`, `team_file`, `team_slug`, `team_expert`, `team_about`, `team_facebook`, `team_twitter`, `team_instagram`, `team_mail`) VALUES
(1, 'Ali Veli', '5ee63b028f606.png', 'ali-veli', 'Müdür', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 'https://www.facebook.com/', 'https://twitter.com/explore', 'https://www.instagram.com/?hl=tr', 'https://www.gmail.com'),
(2, 'Fuat Kaya', '5ee63c3b24d42.jpg', 'fuat-kaya', 'Şef', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 'https://www.facebook.com/', 'https://twitter.com/explore', 'https://www.instagram.com/?hl=tr', 'https://www.gmail.com/?hl=tr'),
(3, 'Tuğçe Kızılay', '5ee640517f5c1.jpg', 'tugce-kizilay', 'Şef', '<p><strong>Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 'https://www.facebook.com/', 'https://twitter.com/explore', 'https://www.instagram.com/?hl=tr', 'https://www.gmail.com/?hl=tr');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`abouts_id`);

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admins_id`);

--
-- Tablo için indeksler `beverage`
--
ALTER TABLE `beverage`
  ADD PRIMARY KEY (`beverage_id`);

--
-- Tablo için indeksler `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`breakfast_id`);

--
-- Tablo için indeksler `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Tablo için indeksler `specialrecipe`
--
ALTER TABLE `specialrecipe`
  ADD PRIMARY KEY (`specialrecipe_id`);

--
-- Tablo için indeksler `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `abouts`
--
ALTER TABLE `abouts`
  MODIFY `abouts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `admins_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `beverage`
--
ALTER TABLE `beverage`
  MODIFY `beverage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `breakfast`
--
ALTER TABLE `breakfast`
  MODIFY `breakfast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `specialrecipe`
--
ALTER TABLE `specialrecipe`
  MODIFY `specialrecipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
