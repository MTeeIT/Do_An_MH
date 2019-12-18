-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2019 lúc 09:25 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybcs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bomon`
--

CREATE TABLE `bomon` (
  `MaBoMon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenBoMon` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bomon`
--

INSERT INTO `bomon` (`MaBoMon`, `TenBoMon`) VALUES
('BM01', 'Xây dựng'),
('BM02', 'Công nghệ thông tin'),
('BM03', 'Điện - Điện tử'),
('BM04', 'Cơ khí động lực');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `covanhoctap`
--

CREATE TABLE `covanhoctap` (
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen_CV` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SDT_CV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Email_CV` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MaBoMon` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `covanhoctap`
--

INSERT INTO `covanhoctap` (`MaCV`, `HoTen_CV`, `SDT_CV`, `Email_CV`, `MaBoMon`) VALUES
('00238', 'Nguyễn Đức Hiệu', '0908288380', ' ndhieu@tvu.edu.vn', 'BM03'),
('00241', 'Nguyễn Hoàng Duy Thiện', '0989274222', ' thiennhd@tvu.edu.vn', 'BM02'),
('00243', 'Huỳnh Văn Thanh', '0977654181', ' hvthanh@tvu.edu.vn', 'BM02'),
('00246', 'Nguyễn Ngọc Đan Thanh', '0916741252', ' ngocdanthanhdt@tvu.edu.vn', 'BM02'),
('00251', 'Trịnh Quốc Việt', '0354696999', ' tqviettv@tvu.edu.vn', 'BM02'),
('00252', 'Trầm Hoàng Nam', '0977810235', ' tramhoangnam@tvu.edu.vn', 'BM02'),
('00258', 'Nhan Minh Phúc', '0918603819', ' nhanminhphuc@tvu.edu.vn', 'BM02'),
('00262', 'Phạm Minh Triết', '0916130123', 'minhtriet@tvu.edu.vn', 'BM03'),
('00267', 'Phan Văn Tuân', '0919762700', ' pvtuan@tvu.edu.vn', 'BM04'),
('00268', 'Trương Văn Mến', '', ' tvmen@tvu.edu.vn', 'BM04'),
('00269', 'Dương Minh Hùng', '0985959190', 'duongminhhung1806@tvu.edu.vn', 'BM04'),
('00270', 'Huỳnh Thanh Bảnh', '0944311311', ' banhhuynh@tvu.edu.vn', 'BM04'),
('00274', 'Tăng Tấn Minh', '0939.303.2', ' tanminh@tvu.edu.vn', 'BM04'),
('00275', 'Nguyễn Thanh Tâm', '0982284405', ' tamxd@tvu.edu.vn', 'BM01'),
('00276', 'Nguyễn Vy Thanh', '', '', 'BM01'),
('00281', 'Trần Văn Khánh', '0907010130', ' tranvankhanh@tvu.edu.vn', 'BM01'),
('00283', 'Nguyễn Thành Công', '0985440459', ' nguyenthanhcong@tvu.edu.vn ', 'BM01'),
('00285', 'Huỳnh Thị Mỹ Dung', '0937242249', 'mydung@tvu.edu.vn', 'BM01'),
('00707', 'Nguyễn Phú Nhuận', '0907892130', ' npnhuan@tvu.edu.vn', 'BM01'),
('02405', 'Nguyễn Thanh Hiền', '0984503463', 'nthien@tvu.edu.vn', 'BM03'),
('03546', 'Phan Thị Phương Nam', '0989236166', ' ptpnam@tvu.edu.vn', 'BM02'),
('03562', 'Nguyễn Khắc Quốc', '0918085180', ' nkquoc@tvu.edu.vn', 'BM02'),
('06742', 'Ngô Thanh Hà', '0918586973', 'tam@tvu.edu.vn', 'BM04'),
('12694', 'Lê Thanh Tùng', '0908710097', 'lttung@tvu.edu.vn ', 'BM03'),
('12695', 'Nguyễn Ngọc Tiền', '', 'nntien@tvu.edu.vn', 'BM03'),
('12703', 'Nguyễn Hoàng Vũ', '0979710444', 'nghvu@tvu.edu.vn ', 'BM03'),
('12704', 'Kim Anh Tuấn', '0979166740', ' katuan@tvu.edu.vn', 'BM03'),
('12711', 'Nguyễn Vũ Lực', '0918677454', ' nguyenvuluc@tvu.edu.vn', 'BM04'),
('14189', 'Phan Thế Hiếu', '', ' thehieu@tvu.edu.vn', 'BM03'),
('14190', 'Phạm Tấn Hưng', '0907839644', ' pthung@tvu.edu.vn', 'BM03'),
('14191', 'Bùi Thị Thu Thủy', '0917817219', 'thuybui@tvu.edu.vn', 'BM03'),
('14204', 'Nguyễn Bá Nhiệm', '0983303609', ' nhiemnb@tvu.edu.vn', 'BM02'),
('14209', 'Triệu Quốc Huy', '0918439231', ' tqhuy@tvu.edu.vn', 'BM03'),
('14221', 'Trần Văn Điền', '', '', 'BM04'),
('14223', 'Đặng Hoàng Vũ', '0367985935', 'hoangvuck@tvu.edu.vn ', 'BM04'),
('14230', 'Cao Phương Thảo', '0766719277', 'cpthao@tvu.edu.vn ', 'BM03'),
('14238', 'Huỳnh Văn Hiệp', '0963887689', ' hvhiep@tvu.edu.vn', 'BM01'),
('14259', 'Thạch Ngọc Phúc', '0973475358', ' tnphuc@tvu.edu.vn', 'BM04'),
('16350', 'Từ Hồng Nhung', '0989006496', ' thnhung@tvu.edu.vn', 'BM01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenLop` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `EmailLop` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MaBoMon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `EmailLop`, `MaBoMon`, `MaCV`) VALUES
('CA17CK', 'ĐH Công nghệ kỹ thuật cơ khí 2017', 'ca17ck@sv.tvu.edu.vn', 'BM04', '00269'),
('CA17KD', 'ĐH CNKT Điện, điện tử 2017', '', 'BM03', '14209'),
('CA17TT', 'Cao đẳng Công nghệ thông tin 2017', 'ca17tt@sv.tvu.edu.vn', 'BM02', '00246'),
('CA18CK', 'ĐH Công nghệ kỹ thuật cơ khí 2018', '', 'BM04', '00274'),
('CA18KD', 'ĐH CNKT Điện, điện tử 2018', '', 'BM03', '14191'),
('CA19KD', 'ĐH CNKT Điện, điện tử 2019', '', 'BM03', '14209'),
('DA16CKC', ' ĐH Cơ khí chế tạo máy 2016', '', 'BM04', '14221'),
('DA16CNOT', 'ĐH Công nghệ Ô tô 2016', '', 'BM04', '00270'),
('DA16DCN', 'ĐH Điện công nghiệp 2016', '', 'BM03', '02405'),
('DA16DTH', 'ĐH Công nghệ kỹ thuật điều khiển và tự động hoá 2016', '', 'BM03', '12704'),
('DA16KDHT', 'ĐH Hệ thống điện 2016', '', 'BM03', '14189'),
('DA16QTM', 'ĐH Quản Trị Mạng 2016', '', 'BM02', '00243'),
('DA16TT', 'ĐH Công nghệ thông tin 2016', '', 'BM02', '03546'),
('DA16XDCD', 'ĐH Xây dựng Cầu đường 2016', '', 'BM01', '00281'),
('DA16XDDC', 'ĐH Xây dựng Dân dụng và Công nghiệp 2016', '', 'BM01', '14238'),
('DA17CKC', ' ĐH Cơ khí chế tạo máy 2017', 'da17ckc@sv.tvu.edu.vn', 'BM04', '12711'),
('DA17CNOT', 'ĐH Công nghệ Ô tô 2017', 'da17cnot@sv.tvu.edu.vn', 'BM04', '00267'),
('DA17DCN', 'ĐH Điện công nghiệp 2017', 'da17kd@sv.tvu.edu.vn', 'BM03', '14209'),
('DA17DT', 'ĐH CN Kỹ thuật Điều khiển & tự động hoá 2017', 'da17dt@sv.tvu.edu.vn', 'BM03', '12703'),
('DA17KDHT', 'ĐH Hệ thống điện 2017', 'da17kd@sv.tvu.edu.vn', 'BM03', '12695'),
('DA17QTM', 'ĐH Quản Trị Mạng 2017', 'da17tt@sv.tvu.edu.vn', 'BM02', '00252'),
('DA17TT', 'ĐH Công nghệ thông tin 2017', 'da17tt@sv.tvu.edu.vn', 'BM02', '00258'),
('DA17XD', 'ĐH Công nghệ KT công trình Xây dựng 2017', 'da17xd@sv.tvu.edu.vn', 'BM01', '16350'),
('DA17XDGT', 'ĐH Kỹ thuật xây dựng công trình giao thông 2017', 'da17xdgt@sv.tvu.edu.vn', 'BM01', '00707'),
('DA18CKC', 'ĐH Cơ khí chế tạo máy 2018', '', 'BM04', '06742'),
('DA18CNOT', 'ĐH Công nghệ Ô tô 2018', '', 'BM04', '14223'),
('DA18DT', 'ĐH CN Kỹ thuật Điều khiển & tự động hoá 2018', '', 'BM03', '00262'),
('DA18KD', 'ĐH CNKT Điện, điện tử 2018', '', 'BM03', '12694'),
('DA18TTA', 'ĐH Công nghệ thông tin 2018', '', 'BM02', '00241'),
('DA18TTB', 'ĐH Công nghệ thông tin 2018', '', 'BM02', '00251'),
('DA18XD', 'ĐH Công nghệ KT công trình Xây dựng 2018', '', 'BM01', '00283'),
('DA18XDGT', 'ĐH Kỹ thuật xây dựng công trình giao thông 2018', '', 'BM01', '00275'),
('DA19CK', 'ĐH Công nghệ kỹ thuật cơ khí 2019', '', 'BM04', '14259'),
('DA19CNOTA', 'ĐH Công nghệ Ô tô 2019', '', 'BM04', '00268'),
('DA19CNOTB', 'ĐH Công nghệ Ô tô 2019', '', 'BM04', '00270'),
('DA19DT', 'ĐH CN Kỹ thuật Điều khiển & tự động hoá 2019', '', 'BM03', '14230'),
('DA19KDA', 'ĐH Công nghệ kỹ thuật Điện, điện tử A 2019', '', 'BM03', '00238'),
('DA19KDB', 'ĐH Công nghệ kỹ thuật Điện, điện tử B 2019', '', 'BM03', '14190'),
('DA19TTA', 'ĐH Công nghệ thông tin 2019', '', 'BM02', '14204'),
('DA19TTB', 'ĐH Công nghệ thông tin 2019', '', 'BM02', '03562'),
('DA19XD', 'ĐH Công nghệ KT công trình Xây dựng 2019', '', 'BM01', '00276'),
('DA19XDGT', 'ĐH Kỹ thuật xây dựng công trình giao thông 2019', '', 'BM01', '00285');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen_SV` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SDT_SV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Email_SV` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ChucVu_SV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ChuyenNganh` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `KhoaHoc` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NamSinh` date NOT NULL,
  `NoiSinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeDaoTao` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaLop` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `HoTen_SV`, `SDT_SV`, `Email_SV`, `ChucVu_SV`, `ChuyenNganh`, `KhoaHoc`, `NamSinh`, `NoiSinh`, `HeDaoTao`, `MaLop`, `MaCV`) VALUES
('110116034', 'Lê Hồ Anh Khoa', '0762843042', '110116034@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ thông tin', '2016-2020', '1998-05-19', 'Tỉnh Trà Vinh', 'Đại học', 'DA16TT', '03546'),
('110116044', 'Cao Mộng Ngân', '0946334626', '110116044@sv.tvu.edu.vn', 'Lớp Phó Ph', 'Công nghệ thông tin', '2016-2020', '1997-02-21', 'Tỉnh Kiên Giang', 'Đại học', 'DA16TT', '03546'),
('110116054', 'Thạch Đa Ny', '0901006932', '110116054@sv.tvu.edu.vn', 'Lớp Phó Họ', 'Công nghệ thông tin', '2016-2020', '1996-08-24', 'Tỉnh Trà Vinh', 'Đại học', 'DA16TT', '03546'),
('110116067', 'Lâm Thị Thanh Thảo', '0978859829', '110116067@sv.tvu.edu.vn', 'Lớp Trưởng', 'Quản trị mạng', '2016-2020', '1998-06-11', 'Tỉnh Trà Vinh', 'Đại học', 'DA16QTM', '00243'),
('110117012', 'Phan Minh Khang', '0345777452', '110117012@sv.tvu.edu.vn', 'Lớp Trưởng', 'Quản trị mạng', '2017-2021', '1999-11-12', 'Tỉnh Trà Vinh', 'Đại học', 'DA17QTM', '00252'),
('110117035', 'Nguyễn Minh Thư', '0346286872', '110117035@sv.tvu.edu.vn', 'Bí Thư', 'Công nghệ thông tin', '2017-2021', '1999-11-10', 'Tỉnh Trà Vinh', 'Đại học', 'DA17TT', '00258'),
('110117046', 'Nguyễn Thị Thuỳ Dương', '0386983170', '110117046@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ thông tin', '2017-2021', '1999-08-20', 'Tỉnh Trà Vinh', 'Đại học', 'DA17TT', '00258'),
('110117058', 'Nguyễn Huỳnh Hữu Tài', '0563564480', '110117058@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ thông tin', '2017-2021', '1999-10-17', 'Tỉnh Trà Vinh', 'Đại học', 'DA17TT', '00258'),
('110118025', 'Nguyễn Hữu Hồ', '0397276602', '110118025@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ thông tin', '2018-2022', '2000-02-25', 'Tỉnh Trà Vinh', 'Đại học', 'DA18TTA', '00241'),
('110118039', 'Nguyễn Ngọc Thanh Ngân', '0796869205', '110118039@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ thông tin', '2018-2022', '2000-07-17', 'Tỉnh Trà Vinh', 'Đại học', 'DA18TTA', '00241'),
('110118125', 'Ngô Thanh Hiếu', '0961769183', '110118125@sv.tvu.edu.vn', '', 'Công nghệ thông tin', '2018-2022', '2000-10-18', 'Tỉnh Sóc Trăng', 'Đại học', 'DA18TTB', '00251'),
('110118139', 'Võ Phi Hoàng', '0367881184', '110118139@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ thông tin', '2018-2022', '1996-04-29', 'Tỉnh Kiên Giang', 'Đại học', 'DA18TTB', '00251'),
('110119042', 'Trần Thị Tú Quyên', '0388177617', '110119042@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ thông tin', '2019-2023', '2001-08-18', 'Tỉnh Trà Vinh', 'Đại học', 'DA19TTA', '14204'),
('110119073', 'Lâm Quốc Hoài', '0378286136', '110119073@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ thông tin', '2019-2023', '2001-07-25', 'Tỉnh Trà Vinh', 'Đại học', 'DA19TTB', '03562'),
('110119127', 'Nguyễn Thanh Xuân', '0374354042', '110119127@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ thông tin', '2019-2023', '2001-08-03', 'Tỉnh Trà Vinh', 'Đại học', 'DA19TTB', '03562'),
('111716001', 'Võ Tuấn Cảnh', '0365190404', '111716001@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ KT Công trình Xây dựng', '2016-2020', '1996-03-10', 'Tỉnh Đồng Tháp', 'Đại học', 'DA16XDDC', '14238'),
('111716022', 'Bùi Văn Trọng', '0399812847', '111716022@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ KT Công trình Xây dựng', '2016-2020', '1998-03-03', 'Tỉnh Trà Vinh', 'Đại học', 'DA16XDCD', '00281'),
('111717014', 'Nguyễn Quốc Phong', '0967548584', '111717014@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ KT Công trình Xây dựng', '2017-2021', '1999-05-12', 'TP Hồ Chí Minh', 'Đại học', 'DA17XD', '16350'),
('111717030', 'Lâm Hữu Nhân', '0971015445', '111717030@sv.tvu.edu.vn', 'Lớp Phó', 'Kỹ thuật xây dựng công trình giao thông', '2017-2021', '1999-10-25', 'Tỉnh Trà Vinh', 'Đại học', 'DA17XDGT', '00707'),
('111717032', 'Trầm Thị Kim Anh', '0383576223', '111717032@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ KT Công trình Xây dựng', '2017-2021', '1996-02-12', 'Tỉnh Trà Vinh', 'Đại học', 'DA17XD', '16350'),
('111717033', 'Đặng Huy Hiếu', '0357965959', '111717033@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ KT Công trình Xây dựng', '2017-2021', '1998-02-16', 'Tỉnh Đồng Nai', 'Đại học', 'DA17XD', '16350'),
('111718010', 'Trần Thị Huyền Mi', '0357151256', '116818010@sv.tvu.edu.vn', 'Lớp Phó', 'Kỹ thuật xây dựng công trình giao thông', '2018-2022', '2000-06-20', 'Tỉnh Trà Vinh', 'Đại học', 'DA18XDGT', '00275'),
('111718012', 'Phạm Thị Hồng Ngân', '0966305624', '111718012@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ KT Công trình Xây dựng', '2018-2022', '2000-01-19', 'Tỉnh Trà Vinh', 'Đại học', 'DA18XD', '00283'),
('111718039', 'Tạ Thiết Tường', '', '111718039@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ KT Công trình Xây dựng', '2018-2022', '2000-12-12', 'Tỉnh Trà Vinh', 'Đại học', 'DA18XD', '00283'),
('111719008', 'Mai Thúy Phương', '0987721027', '111719008@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ KT Công trình Xây dựng', '2019-2023', '2001-10-04', 'Tỉnh Sóc Trăng', 'Đại học', 'DA19XD', '00276'),
('111719015', 'Nguyễn Nhật Trường', '0968554467', '111719015@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ KT Công trình Xây dựng', '2019-2023', '2001-02-10', 'Tỉnh Trà Vinh', 'Đại học', 'DA19XD', '00276'),
('111816018', 'Trần Thế Duy', '0338654620', '111816018@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2016-2020', '1998-12-02', 'Tỉnh Trà Vinh', 'Đại học', 'DA16CNOT', '00270'),
('111816021', 'Hồng Quốc Huy', '0325639898', '111816021@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ Kỹ thuật Cơ khí', '2016-2020', '1998-08-29', 'Tỉnh Trà Vinh', 'Đại học', 'DA16CNOT', '00270'),
('111816034', 'Nguyễn Minh Tài', '0828383987', '111816034@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2016-2020', '1997-09-25', 'Tỉnh Trà Vinh', 'Đại học', 'DA16CKC', '14221'),
('111817041', 'Kim Ngọc An', '0328176004', '111817041@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2017-2021', '1999-12-17', 'Tỉnh Trà Vinh', 'Đại học', 'DA17CKC', '12711'),
('111817052', 'Nguyễn Văn Pháp', '0392266873', '111817052@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2017-2021', '1999-09-05', 'Tỉnh Trà Vinh', 'Đại học', 'DA17CNOT', '00267'),
('111818006', 'Sơn Quốc Bình', '0396297138', '111818006@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ Kỹ thuật Cơ khí', '2018-2022', '2000-09-03', 'Tỉnh Trà Vinh', 'Đại học', 'DA18CKC', '06742'),
('111818013', 'Kim Ngọc Hoàng', '0569120730', '111818013@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ Kỹ thuật Cơ khí', '2018-2023', '2000-11-16', 'Tỉnh Trà Vinh', 'Đại học', 'DA18CNOT', '14223'),
('111818112', 'Dương Thanh Khang', '0304264840', '111818112@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2018-2023', '2000-05-07', 'Tỉnh Trà Vinh', 'Đại học', 'DA18CNOT', '14223'),
('111818118', 'Trang Tài Phú', '0335570325', '111818118@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2018-2022', '2000-02-29', 'Tỉnh Trà Vinh', 'Đại học', 'DA18CKC', '06742'),
('111819034', 'Lê Gia Khánh', '0347682357', '111819034@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2019-2023', '2000-11-16', 'Tỉnh Trà Vinh', 'Đại học', 'DA19CK', '14259'),
('111819070', 'Diệp Minh Luân', '0337203503', '111819070@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ Kỹ thuật Cơ khí', '2019-2023', '2001-06-28', 'Tỉnh Trà Vinh', 'Đại học', 'DA19CK', '14259'),
('112116010', 'Đỗ Minh Đẹp', '0982248716', '112116010@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2016-2020', '1998-06-19', 'Tỉnh Trà Vinh', 'Đại học', 'DA16KDHT', '14189'),
('112116019', 'Nguyễn Lê Trường Giang', '', '112116019@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ Kỹ thuật điện, điện tử', '2016-2020', '1998-04-12', 'Tỉnh Bến Tre', 'Đại học', 'DA16DCN', '02405'),
('112116047', 'Võ Minh Luyến', '0724834825', '112116047@sv.tvu.edu.vn', 'Bí Thư', 'Công nghệ Kỹ thuật điện, điện tử', '2016-2020', '1998-10-27', 'Tỉnh Trà Vinh', 'Đại học', 'DA16DCN', '02405'),
('112116073', 'Trần Kim Sony', '0922676887', '112116073@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2016-2020', '1998-04-05', 'Tỉnh Vĩnh Long', 'Đại học', 'DA16DCN', '02405'),
('112117061', 'Lê Quốc Khánh', '0787814663', '112117061@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2017-2021', '1999-07-09', 'Tỉnh Trà Vinh', 'Đại học', 'DA17DCN', '14209'),
('112117073', 'Huỳnh Thành Trọng', '0367429401', '112117073@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2017-2021', '1999-03-18', 'Tỉnh Trà Vinh', 'Đại học', 'DA17KDHT', '12695'),
('112117081', 'Trầm Gia Hòa', '0979601397', '112117081@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ Kỹ thuật điện, điện tử', '2017-2021', '1999-09-07', 'Tỉnh Trà Vinh', 'Đại học', 'DA17DCN', '14209'),
('112118042', 'Nguyễn Văn Đa Vi', '0376738545', '112118042@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2018-2022', '2000-08-16', 'Tình Trà Vinh', 'Đại học', 'DA18KD', '12694'),
('112119032', 'Kiên Thành Luật', '0368173167', '112119032@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2019-2023', '2001-12-28', 'Tỉnh Trà Vinh', 'Đại học', 'DA19KDA', '00238'),
('112119057', 'Phan Duy Khánh', '0356239196', '112119057@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2019-2023', '2000-12-10', 'Tình Trà Vinh', 'Đại học', 'DA19KDB', '14190'),
('112119082', 'Phạm Hoàng Vĩ', '0888932130', '112119082@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ Kỹ thuật điện, điện tử', '2019-2023', '2000-03-13', 'Tỉnh Trà Vinh', 'Đại học', 'DA19KDB', '14190'),
('115216013', 'Lưu Chí Bảo', '0326551798', '115216013@sv.tvu.edu.vn', 'Lớp Trưởng', 'CN Kỹ thuật Điều khiển & tự động hoá', '2016-2020', '1998-03-23', 'Tỉnh Trà Vinh', 'Đại học', 'DA16DTH', '12704'),
('115217002', 'Lê Hoàng Khương', '0354645796', '115217002@sv.tvu.edu.vn', 'Lớp Trưởng', 'CN Kỹ thuật Điều khiển & tự động hoá', '2017-2021', '1999-03-23', 'Tỉnh Trà Vinh', 'Đại học', 'DA17DT', '12703'),
('115218007', 'Điều Minh Hiểu', '0981425777', '115218007@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2018-2022', '2000-05-09', 'Tỉnh Vĩnh Long', 'Đại học', 'DA18DT', '00262'),
('115219011', 'Đoàn Lê Thành Đạt', '0378748372', '115219011@sv.tvu.edu.vn', 'Lớp Trưởng', 'CN Kỹ thuật Điều khiển & tự động hoá', '2019-2023', '2001-11-21', 'Tình Trà Vinh', 'Đại học', 'DA19DT', '14230'),
('116817007', 'Trần Văn Thiện', '0395171723', '116817007@sv.tvu.edu.vn', 'Lớp Trưởng', 'Kỹ thuật xây dựng công trình giao thông', '2017-2021', '2036-02-26', 'Tỉnh Trà Vinh', 'Đại học', 'DA17XDGT', '00707'),
('116818005', 'Nguyễn Duy Linh', '0984990344', '116818005@sv.tvu.edu.vn', 'Lớp Trưởng', 'Kỹ thuật xây dựng công trình giao thông', '2018-2022', '2000-07-15', 'Tỉnh Trà Vinh', 'Đại học', 'DA18XDGT', '00275'),
('116819003', 'Võ Trọng Điền', '0834202353', '116819003@sv.tvu.edu.vn', 'Lớp Trưởng', 'Kỹ thuật xây dựng công trình giao thông', '2019-2023', '2001-08-21', 'Tỉnh Trà Vinh', 'Đại học', 'DA19XDGT', '00285'),
('116819013', 'Đặng Thị Phương Lan', '0335207327', '116819013@sv.tvu.edu.vn', 'Lớp Phó', 'Kỹ thuật xây dựng công trình giao thông', '2019-2023', '2001-09-01', 'Tỉnh Trà Vinh', 'Đại học', 'DA19XDGT', '00285'),
('118019008', 'Sơn Thái Hào', '0825661214', '118019008@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ kỹ thuật ô tô', '2019-2023', '2001-12-14', 'Tỉnh Trà Vinh', 'Đại học', 'DA19CNOTA', '00268'),
('118019012', 'Hồng Phan Trung Hiếu', '0924609727', '118019012@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ kỹ thuật ô tô', '2019-2023', '2001-03-11', 'TP Hồ Chí Minh', 'Đại học', 'DA19CNOTA', '00268'),
('118019032', 'Trần Thanh Quyền', '0333446825', '118019032@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ kỹ thuật ô tô', '2019-2023', '2001-04-01', 'Tỉnh Sóc Trăng', 'Đại học', 'DA19CNOTA', '00268'),
('118019081', 'Kim Châu Khang', '0978574427', '118019081@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ kỹ thuật ô tô', '2019-2023', '2001-04-02', 'Tỉnh Trà Vinh', 'Đại học', 'DA19CNOTB', '00270'),
('118019111', 'Khương Tú Ngân', '0774063634', '118019111@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ kỹ thuật ô tô', '2019-2023', '2001-02-21', 'Tỉnh Trà Vinh', 'Đại học', 'DA19CNOTB', '00270'),
('118019133', 'Nguyễn Thanh Ngân', '0908322602', '118019133@sv.tvu.edu.vn', 'Lớp phó', 'Công nghệ kỹ thuật ô tô', '2019-2023', '1998-05-29', 'Tỉnh Vĩnh Long', 'Đại học', 'DA19CNOTB', '00270'),
('211817017', 'Huỳnh Thanh Phong', '0961559301', '211817017@sv.tvu.edu.vn', 'Bí thư', 'Công nghệ Kỹ thuật Cơ khí', '2017-2020', '1999-01-06', 'Trà Vinh', 'Cao đẳng', 'CA17CK', '00269'),
('211818007', 'Nguyễn Tuấn Kiệt', '0907192217', '211818007@sv.tvu.edu.vn', '', 'Công nghệ Kỹ thuật Cơ khí', '2018-2021', '1999-02-03', 'Tỉnh Trà Vinh', 'Cao đẳng', 'CA18CK', '00274'),
('211818012', 'Nguyễn Ngọc Phú', '0903651824', '211818012@sv.tvu.edu.vn', 'Lớp trưởng', 'Công nghệ Kỹ thuật Cơ khí', '2018-2021', '1988-02-05', 'Tỉnh Trà Vinh', 'Cao đẳng', 'CA18CK', '00274'),
('212117013', 'Hồ Hoàng Ngân', '0984994112', '212117013@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2017-2020', '1999-09-24', 'Tỉnh Trà Vinh', 'Cao đẳng', 'CA17KD', '14209'),
('212118012', 'Nguyễn Đăng Khoa', '0968955494', '212118012@sv.tvu.edu.vn', 'Lớp Phó', 'Công nghệ Kỹ thuật điện, điện tử', '2018-2021', '2000-07-05', 'Tỉnh Trà Vinh', 'Cao đẳng', 'CA18KD', '14191'),
('212119007', 'Hồ Văn Thanh', '0584985406', '212119007@sv.tvu.edu.vn', 'Lớp Trưởng', 'Công nghệ Kỹ thuật điện, điện tử', '2019-2022', '2001-01-31', 'Tỉnh Trà Vinh', 'Cao đẳng', 'CA19KD', '14209');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bomon`
--
ALTER TABLE `bomon`
  ADD UNIQUE KEY `bomon_mabomon_unique` (`MaBoMon`);

--
-- Chỉ mục cho bảng `covanhoctap`
--
ALTER TABLE `covanhoctap`
  ADD UNIQUE KEY `covanhoctap_macv_unique` (`MaCV`),
  ADD KEY `covanhoctap_mabomon_foreign` (`MaBoMon`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD UNIQUE KEY `lop_malop_unique` (`MaLop`),
  ADD KEY `lop_mabomon_foreign` (`MaBoMon`),
  ADD KEY `lop_macv_foreign` (`MaCV`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD UNIQUE KEY `sinhvien_masv_unique` (`MaSV`),
  ADD KEY `sinhvien_malop_foreign` (`MaLop`),
  ADD KEY `sinhvien_macv_foreign` (`MaCV`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `covanhoctap`
--
ALTER TABLE `covanhoctap`
  ADD CONSTRAINT `covanhoctap_mabomon_foreign` FOREIGN KEY (`MaBoMon`) REFERENCES `bomon` (`MaBoMon`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_mabomon_foreign` FOREIGN KEY (`MaBoMon`) REFERENCES `bomon` (`MaBoMon`) ON DELETE CASCADE,
  ADD CONSTRAINT `lop_macv_foreign` FOREIGN KEY (`MaCV`) REFERENCES `covanhoctap` (`MaCV`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_macv_foreign` FOREIGN KEY (`MaCV`) REFERENCES `covanhoctap` (`MaCV`) ON DELETE CASCADE,
  ADD CONSTRAINT `sinhvien_malop_foreign` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
