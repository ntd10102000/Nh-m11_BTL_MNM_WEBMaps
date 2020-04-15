-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 05:20 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_khambacsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `idDistrict` int(11) NOT NULL,
  `nameDistrict` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`idDistrict`, `nameDistrict`) VALUES
(1, 'Quận Ba Đình'),
(2, 'Quận Cầu Giấy'),
(3, 'Quận Hoàn Kiếm'),
(4, 'Quận Thanh Xuân'),
(5, 'Quận Hai Bà Trưng'),
(6, 'Quận Hà Đông'),
(7, 'Quận Bắc Từ Liêm'),
(8, 'Quận Nam Từ Liêm'),
(9, 'Quận Hoàng Mai'),
(10, 'Quận Đống Đa'),
(11, 'Quận Tây Hồ'),
(12, 'Quận Long Biên');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `idDoctor` int(11) NOT NULL,
  `nameDoctor` varchar(45) COLLATE utf8_vietnamese_ci NOT NULL,
  `positonDoctor` varchar(45) COLLATE utf8_vietnamese_ci NOT NULL,
  `idHpt` int(11) NOT NULL,
  `idKhoa` int(11) NOT NULL,
  `imageDotor` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `information` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`idDoctor`, `nameDoctor`, `positonDoctor`, `idHpt`, `idKhoa`, `imageDotor`, `information`) VALUES
(1, ' 	BS.BSCKII. Vũ Thị Minh Châu', 'Bác Sĩ ', 1, 1, '', ''),
(2, 'TS.BS. Vũ Thị Ngọc Liên', 'Trưởng khoa cấp cứu', 1, 1, '', ''),
(3, 'BS.BSCKII. Nguyễn Thị Cường', 'Bác Sĩ', 1, 1, '', ''),
(4, 'BS. BSCKI. Lương Tuấn Kiểm', 'Bác Sĩ', 1, 2, '', ''),
(5, ' BS.BSCKI. Đỗ Thị Minh', 'Trưởng Khoa Tim Mạch', 1, 3, '', ''),
(7, 'ThS.BS. Hoàng Trung Dũng', 'Trưởng Khoa Dinh Dưỡng', 1, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `idHpt` int(11) NOT NULL,
  `nameHpt` varchar(45) COLLATE utf8_vietnamese_ci NOT NULL,
  `addressHpt` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `phoneHpt` int(20) NOT NULL,
  `webHpt` varchar(45) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `idDistrict` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `imageHpt` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `placeId` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`idHpt`, `nameHpt`, `addressHpt`, `phoneHpt`, `webHpt`, `idDistrict`, `lat`, `lng`, `imageHpt`, `type`, `placeId`) VALUES
(1, 'Bệnh Viện Bạch Mai', '78 Giải Phóng, Phương Mai', 438691607, 'bachmai.gov.vn', 10, 21.00246604632389, 105.83998382091522, 'https://vicare.vn/wp-content/uploads/2016/06/50070222.jpg', 'BV', 'ChIJD5zHdnqsNTERVKluUtQ-faM'),
(2, 'Bệnh viện Hữu Nghị Việt Đức', '18 Phủ Doãn, Hàng Bông', 438253531, 'vietduc.gov.vn', 3, 21.029735208031212, 105.84602456460571, 'http://www.thachphat.com/wp-content/uploads/2016/01/bv-viet-duc-768x498.jpg', 'BV', 'ChIJHaTEL5SrNTERkvPJ-R2zYOE'),
(3, 'Bệnh viện Giao thông Vận tải Trung ương', 'Ngõ 84 Chùa Láng, Láng Thượng', 967731616, 'giaothonghospital.vn', 10, 21.025929339328467, 105.80279499292374, 'http://static.tinnhanhchungkhoan.vn/Uploaded/NgocTuanz/2015_06_29/10a_KWWF.jpg?width=660', 'BV', 'ChIJocPE_EKrNTERmYL8keQHXnc'),
(4, 'Bệnh viện Nhi Trung Ương', '18/879 La Thành, Láng Thượng', 462738573, 'nhp.org.vn', 10, 21.024644975412578, 105.80857515335083, 'http://static.anninhthudo.vn/uploaded/140/2015_02_26/kham_benh_4.jpg?width=500', 'BV', 'ChIJ_VcoXGirNTERlBMamf6Hsds'),
(5, ' Bênh viện E Trung Ương', '89 Trần Cung, Phường Nghĩa Tân', 437543233, 'ehospital.vn', 2, 21.05051538805921, 105.78867852687836, 'http://sggp.org.vn/dataimages/original/2016/07/images649956_benh-vien-E.jpg', 'BV', 'ChIJSZVZ8S6rNTERos-ogweQC7s'),
(6, ' Bệnh viện đa khoa y học cổ truyền', 'Phố Trần Bình, Mai Dịch', 437684059, 'yhct.vn', 2, 21.034466447805155, 105.77921837568283, 'http://cdn.diachiso.vn/images/600x400/2009/4/2/benh-vien-da-khoa-y-hoc-co-truyen.jpg', 'BV', 'ChIJJUDx4bRUNDERSHNivxrQ-r0'),
(7, 'Phòng khám da liễu Ðỗ Văn Khoát', '101 C3 Nghĩa Tân, Nghĩa Đô', 437564676, NULL, 2, 21.04919530000002, 105.80677620000006, 'http://phongkhamhuyentrang.com/pic/menu/images/copy.png', 'PK', 'ChIJr6_HYRirNTER1xvTNCmdCZc'),
(8, 'Phòng Khám Đa Khoa Nhi Cao', '32 Nguyễn Khang, Yên Hoà', 437672599, 'phongkhamnhicao.com', 2, 21.020424200016063, 105.80046689999995, 'http://phongkhamhuyentrang.com/pic/menu/images/copy.png', 'PK', 'ChIJXyG5akCrNTER3DI0v8Mo1Js'),
(9, 'Phòng Khám Nhi, Tai Mũi Họng', '86 Ngõ 381 Nguyễn Khang, Yên Hoà', 912825967, 'phongkhamhuyentrang.com', 2, 21.0282228, 105.7932249, 'http://phongkhamhuyentrang.com/pic/menu/images/copy.png', 'PK', ' ChIJQ3PQvUWrNTERijG8GRSpK0Q'),
(10, 'Phòng Khám Sản Phụ Khoa Bs.Nguyễn Văn Thắng', '133 Trần Đăng Ninh, Làng Quốc tế Thăng Long, Dịch Vọng', 433294496, NULL, 2, 21.0384744, 105.791012, 'http://phongkhamhuyentrang.com/pic/menu/images/copy.png', 'PK', 'ChIJS_ZJnjerNTERtMjAB6kI7So'),
(12, 'Viện Huyết Học - Truyền Máu Trung ương', '\r\n14 Trần Thái Tông, Yên Hoà, Cầu Giấy, Hà Nội, Việt Nam', 438685582, 'nihbt.org.vn', 2, 21.0250197, 105.78830300000004, 'http://media.mangtinmoi.com/files/news/2016/05/Tuy%E1%BA%BFn-xe-bus-%C4%91%E1%BA%BFn-vi%E1%BB%87n-Hu', 'BV', 'ChIJgyIFhEmrNTERBytUg5miXUA'),
(13, 'Bệnh viện Phụ sản Hà Nội', 'La Thành, Ngọc Khánh, Ba Đình, Hà Nội, Việt Nam', 438343181, 'benhvienphusanhanoi.vn', 2, 21.02751650417059, 105.80734099999995, 'http://www.benhvienphusanhanoi.vn/Portals/0/Images/GioiThieu/Untitled.png', 'BV', 'ChIJvzTnuWmrNTERWzwpmzaq9cw'),
(14, 'Bệnh viện Đa khoa Xanh Pôn', '12 Chu Văn An, Điện Biên, Ba Đình, Hà Nội, Việt Nam', 967711616, 'bvxanhpon.vn', 1, 21.03111160020308, 105.83539509999991, 'http://media.mangtinmoi.com/files/news/2016/05/Tuy%E1%BA%BFn-xe-bus-%C4%91%E1%BA%BFn-b%E1%BB%87nh-vi', 'BV', 'ChIJuQlSspirNTERIkZKe_SKNBo'),
(15, 'Bệnh viện Đại học Y Hà Nội', '1 Tôn Thất Tùng, Trung Tự, Đống Đa, Hà Nội, Việt Nam', 435747788, 'hmuh.vn', 10, 21.002609501246642, 105.82995140000003, 'http://photos.wikimapia.org/p/00/03/38/95/51_big.jpg', 'BV', 'ChIJJ7i6xX2sNTERKFjcoYDYdsA'),
(16, 'Bệnh viện Da liễu Trung ương', '15A Phương Mai, Đống Đa, Hà Nội, Việt Nam', 432222944, 'dalieu.vn', 10, 21.00394570029955, 105.83872695000002, 'http://suckhoetongquat.com/wp-content/uploads/2015/09/benh-vien-da-lieu-trung-uong.jpg', 'BV', 'ChIJUU_ZkXmsNTERGLSQ1Mq6fBg');

-- --------------------------------------------------------

--
-- Table structure for table `hpt_khoa`
--

CREATE TABLE `hpt_khoa` (
  `idHpt` int(11) NOT NULL,
  `idKhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `hpt_khoa`
--

INSERT INTO `hpt_khoa` (`idHpt`, `idKhoa`) VALUES
(1, 2),
(1, 5),
(1, 1),
(1, 4),
(1, 10),
(1, 12),
(2, 7),
(2, 6),
(2, 1),
(2, 2),
(3, 9),
(3, 10),
(3, 1),
(4, 1),
(4, 12),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `idKhoa` int(11) NOT NULL,
  `nameKhoa` varchar(45) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`idKhoa`, `nameKhoa`) VALUES
(1, 'Khoa Cấp Cứu'),
(2, 'Khoa Dinh Dưỡng'),
(3, 'Khoa Da liễu'),
(4, 'Khoa Tai Mũi Họng'),
(5, 'Khoa Kí Sinh Trùng'),
(6, 'Khoa Nội Tiết'),
(7, 'Khoa Răng Hàm Mặt'),
(8, 'Khoa Gây Mê'),
(9, 'Khoa Ngoại Chỉnh Hình'),
(10, 'Khoa Ngoại Tổng Quát'),
(11, 'Khoa Nội Tổng Quát'),
(12, 'Khoa Huyết học');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`idDistrict`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`idDoctor`),
  ADD KEY `FK_idHPTKhoa` (`idHpt`),
  ADD KEY `FK_idKhoaDr` (`idKhoa`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`idHpt`),
  ADD KEY `FK_isDictrict` (`idDistrict`);

--
-- Indexes for table `hpt_khoa`
--
ALTER TABLE `hpt_khoa`
  ADD KEY `FK_idKhoa` (`idKhoa`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`idKhoa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `idDistrict` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `idDoctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `idHpt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `idKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`idHpt`) REFERENCES `hospital` (`idHpt`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`idKhoa`) REFERENCES `khoa` (`idKhoa`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`idDistrict`) REFERENCES `district` (`idDistrict`);

--
-- Constraints for table `hpt_khoa`
--
ALTER TABLE `hpt_khoa`
  ADD CONSTRAINT `hpt_khoa_ibfk_1` FOREIGN KEY (`idKhoa`) REFERENCES `khoa` (`idKhoa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
