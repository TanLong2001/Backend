-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2021 lúc 12:54 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `population2`
--

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `diachi`
-- (See below for the actual view)
--
CREATE TABLE `diachi` (
`village_id` varchar(6)
,`village` varchar(50)
,`town` varchar(50)
,`province` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `donvi`
-- (See below for the actual view)
--
CREATE TABLE `donvi` (
`id` varchar(2)
,`name_unit` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `province_id` varchar(2) NOT NULL,
  `province` varchar(50) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`province_id`, `province`, `total`) VALUES
('01', 'Thành phố Hà Nội', 4500),
('27', 'Tỉnh Bắc Ninh', 2000),
('38', 'Tỉnh Thanh Hóa', 1600),
('40', 'Tỉnh Nghệ An', 2400),
('42', 'Tỉnh Hà Tĩnh', 1500),
('79', 'Thành phố Hồ Chí Minh', 5000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `resume_btl`
--

CREATE TABLE `resume_btl` (
  `CCCD` varchar(12) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `hometown` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `village_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `resume_btl`
--

INSERT INTO `resume_btl` (`CCCD`, `fullname`, `datebirth`, `gender`, `hometown`, `address`, `religion`, `job`, `village_id`) VALUES
('270101002', 'Trần Danh Châu', '1984-03-20', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Công an', '270101'),
('270101003', 'Trần Ngọc Đại', '2000-07-09', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Nông dân', '270101'),
('270101004', 'Lại Nguyên Khánh', '1983-01-23', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Nông dân', '270101'),
('270101005', 'Phạm Ngọc Tuấn', '1986-08-01', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công an', '270101'),
('270101006', 'Mai Hồng Hải Hà', '1985-02-27', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Giáo viên', '270101'),
('270101007', 'Nguyễn Chí Nguyễn', '1986-01-06', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270101'),
('270101008', 'Lê Mai Phương Hoà', '1993-09-19', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101009', 'Nguyễn Viết Đức', '1999-06-07', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công an', '270101'),
('270101010', 'Bùi Nguyễn Anh Khoa', '1983-01-15', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Giáo viên', '270101'),
('270101011', 'Bùi Trọng Khôi', '1990-03-07', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101012', 'Nguyễn Quang Đức', '1998-09-09', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101013', 'Đặng Xuân Khoái', '1988-02-24', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công nhân', '270101'),
('270101014', 'Trần Hải', '2000-04-25', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Tiểu thương', '270101'),
('270101015', 'Mã Ngọc Quyền', '1992-12-10', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Công an', '270101'),
('270101016', 'Nguyễn Hữu Tiến', '1985-03-10', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Giáo viên', '270101'),
('270101017', 'Lê Tấn Sang', '1987-08-17', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công an', '270101'),
('270101018', 'Lê Ngọc Huy', '1989-06-09', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101019', 'Võ Quân Minh', '1990-04-19', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270101'),
('270101020', 'Đoàn Phương Nam', '1999-06-15', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Tiểu thương', '270101'),
('270101021', 'Cao Minh Nhựt', '1992-12-05', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Nông dân', '270101'),
('270101022', 'Hoàng Hải Phú', '1990-06-05', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Giáo viên', '270101'),
('270101023', 'Võ Thành Quốc', '1984-12-24', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Giáo viên', '270101'),
('270101024', 'Trương Hoàng Thịnh', '1986-08-13', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Tiểu thương', '270101'),
('270101025', 'Tăng Thái Tính', '2000-09-10', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101026', 'Đoàn Thị Bích Duyên', '1999-11-02', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công nhân', '270101'),
('270101027', 'Nguyễn Thị Minh Hiếu', '1991-04-10', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101028', 'Trần Nguyễn Huy Khang', '1983-08-14', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101029', 'Bùi Hữu Nghĩa', '1997-07-01', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Nông dân', '270101'),
('270101030', 'Lê Quốc Nhật Phi', '1991-10-27', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Nông dân', '270101'),
('270101031', 'Huỳnh Văn Phụng', '1986-05-07', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Nông dân', '270101'),
('270101032', 'Phan Thanh Tỉnh', '1986-01-22', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101033', 'Bùi Phú Hữu', '1999-02-01', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101034', 'Dụng Văn Anh Thỏa', '1985-10-07', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101035', 'Nguyễn Văn Hùng', '1985-05-23', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101036', 'Phạm Hoàng Huy', '1997-03-27', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101037', 'Trịnh Hoàng Khải', '1990-03-14', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công an', '270101'),
('270101038', 'Nguyễn Thành Qui', '1998-06-14', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Nông dân', '270101'),
('270101039', 'Dương Doãn Trung', '1993-04-13', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Bộ đội', '270101'),
('270101040', 'Vũ Duy Tùng', '1987-01-20', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Giáo viên', '270101'),
('270101041', 'Đoàn Văn Việt', '1990-11-04', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101042', 'Nguyễn Đại Dương', '1990-05-26', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101043', 'Nguyễn Hiệp Hưng', '1991-06-26', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101044', 'Quản Hữu Ngọc Nam', '1986-08-29', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101045', 'Lê Quang Ninh', '1984-02-09', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101046', 'Tô Ngọc Tuấn', '1984-08-20', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101047', 'Bùi Tấn Anh', '1999-09-28', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101048', 'Bùi Duy Luật', '1987-10-01', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101049', 'Nguyễn Văn Quản', '1994-12-15', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101050', 'Phan Chí Thanh', '1983-08-25', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101051', 'Trương Chí Bửu', '2001-09-26', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101052', 'Lữ Quốc Đạt', '1995-05-10', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101053', 'Nguyễn Tấn Tài', '1986-06-22', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101054', 'Nguyễn Minh Chiến', '1982-09-22', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101055', 'Nguyễn Hữu Khôi', '1986-01-26', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101056', 'Nguyễn Văn Minh Phụng', '1998-09-22', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101057', 'Bùi Văn Thiệu', '1984-12-23', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101058', 'Võ Văn Việt', '1998-12-15', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101059', 'Nguyễn Thành Đạt', '1993-08-29', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101060', 'Bùi Minh Hải', '1985-01-24', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101061', 'Đặng Minh Hiếu', '1999-04-18', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101062', 'Huỳnh Thị Hồng', '1983-08-17', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101063', 'Đặng Phương Nam', '1982-03-27', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101064', 'Nguyễn Thị Tuyết Ngân', '1983-07-07', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101065', 'Võ Quỳnh Nhi', '1986-10-19', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101066', 'Triệu Thị Kiều Oanh', '1986-08-06', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101067', 'Nguyễn Tấn Tài', '1997-11-08', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101068', 'Hoàng Quỳnh Vân', '1990-05-22', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101069', 'Nguyễn Thị Nhật Ánh', '1993-05-30', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101070', 'Phùng Thị Thu Hà', '1986-07-05', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công an', '270101'),
('270101071', 'Lê Thị Hằng', '1994-11-20', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101072', 'Lã Thị Thu Hương', '2001-01-07', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Bộ đội', '270101'),
('270101073', 'Trần Thị Mai Hương', '1988-11-02', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101074', 'Tưởng Thị Hồng Nhung', '1988-07-29', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101075', 'Lê Thị Quỳnh', '1983-09-09', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101076', 'Phạm Thị Phương Anh', '1996-04-24', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270101'),
('270101077', 'Đỗ Thị Ngưng Bích', '2001-05-12', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101078', 'Nguyễn Thái Dương', '1990-06-22', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101079', 'Nguyễn Thị Duyên', '1987-10-22', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Giáo viên', '270101'),
('270101080', 'Trần Đức Hạnh', '1997-09-04', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Công an', '270101'),
('270101081', 'Đỗ Huy Hoàng', '1984-08-02', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101082', 'Lưu Mạnh Hùng', '2001-01-20', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101083', 'Nguyễn Đình Khoa', '1997-11-11', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270101'),
('270101084', 'Nguyễn Tùng Lâm', '1986-09-01', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101085', 'Trần Đức Lương', '2000-04-17', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Bộ đội', '270101'),
('270101086', 'Phạm Văn Phúc', '1988-02-29', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270101'),
('270101087', 'Dương Văn Phụng', '1996-09-13', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Tiểu thương', '270101'),
('270101088', 'Vũ Thị Phương', '1982-12-27', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Tiểu thương', '270101'),
('270101089', 'Nguyễn Danh Quang', '1990-12-12', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270101'),
('270101090', 'Nguyễn Quốc Trưởng', '1991-05-06', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công nhân', '270101'),
('270101091', 'Lê Văn Vụ', '1990-05-06', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101092', 'Nguyễn Thị Diễm Hương', '1993-04-06', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270101'),
('270101093', 'Trần Thị Ngọc Phương', '1986-01-28', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Giáo viên', '270101'),
('270101094', 'Nguyễn Văn Kha', '1999-08-24', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Tiểu thương', '270101'),
('270101095', 'Lưu Thị Hà', '1984-03-26', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101096', 'Đinh Thị Huyền', '1999-07-02', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101097', 'Phạm Thị Phượng', '1998-04-30', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101098', 'Phạm Thị Thu Hà', '1984-11-04', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101099', 'Lưu Thị Hà Phương', '1990-06-09', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101100', 'Vũ Mỹ Duyên', '2001-04-27', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101101', 'Đặng Ngọc Anh', '1999-04-09', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101102', 'Lương Đình Phú', '1993-03-25', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công nhân', '270101'),
('270101103', 'Trần Thị Huyền Trang', '1985-02-19', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101104', 'Lê Minh Trường', '1993-06-15', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101105', 'Phạm Thị Khánh Chi', '1983-09-20', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270101'),
('270101106', 'Nguyễn Thị Hương Trà', '1986-04-30', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101107', 'Nguyễn Hương Thảo Vy', '1989-07-24', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Nông dân', '270101'),
('270101108', 'Bùi Tố Uyên', '1995-12-19', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270101'),
('270101109', 'Nguyễn Thị Mai Anh', '1991-07-21', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Nông dân', '270101'),
('270101110', 'Nguyễn Thị Ngọc Ánh', '1988-08-07', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Công an', '270101'),
('270101111', 'Nguyễn Thị Bích', '2000-11-05', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270101'),
('270101112', 'Trần Thị Kiều Diễm', '1996-05-27', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101113', 'Nguyễn Thị Hằng', '2000-11-04', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270101'),
('270101114', 'Phạm Thị Hằng', '1998-05-07', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101115', 'Nguyễn Thị Như Hoa', '1992-01-11', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Bộ đội', '270101'),
('270101116', 'Trần Khánh Huyền', '1993-08-22', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Nông dân', '270101'),
('270101117', 'Lê Thị Lan', '1996-01-01', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101118', 'Ngô Thị Loan', '1984-03-22', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Tiểu thương', '270101'),
('270101119', 'Nguyễn Viết Lợi', '1987-06-01', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Bộ đội', '270101'),
('270101120', 'Hoàng Thị Minh', '1996-08-02', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101121', 'Nguyễn Thị Bích Ngọc', '1994-09-05', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Nông dân', '270101'),
('270101122', 'Phan Thị Oanh', '2000-03-16', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270101'),
('270101123', 'Bùi Thị Minh Phương', '2000-06-29', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Nông dân', '270101'),
('270101124', 'Phạm Thị Như Quỳnh', '1989-10-15', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Công an', '270101'),
('270101125', 'Vũ Thị Thuy', '1987-09-10', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Nông dân', '270101'),
('270101126', 'Nguyễn Thị Thúy', '1982-03-30', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Mường', 'Công nhân', '270101'),
('270101127', 'Nguyễn Thị Thanh Thúy', '1987-11-02', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Bộ đội', '270101'),
('270101128', 'Nguyễn Thị Thủy', '1985-12-06', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270101129', 'Đỗ Thị Trang', '1993-05-02', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Giáo viên', '270101'),
('270101130', 'Phạm Hồng Trang', '1998-09-19', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270101'),
('270101131', 'Phan Thị Huyền Trang', '1983-08-11', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270101'),
('270101132', 'Vương Thùy Trang', '1996-09-03', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Tày', 'Công nhân', '270101'),
('270101133', 'Trần Thị Hải Yến', '1986-11-13', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Nông dân', '270101'),
('270101134', 'Nguyễn Thị Lan Anh', '1982-12-20', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270101'),
('270101135', 'Nghiêm Xuân Ánh', '1991-09-15', 'Nam', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Thái', 'Nông dân', '270101'),
('270101136', 'Nguyễn Thị Linh Chi', '1994-07-12', 'Nữ', 'Bắc Ninh', 'Phường Vũ Ninh, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270101'),
('270102001', 'Lê Hương Giang', '2000-06-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102002', 'Nguyễn Thị Hà', '1997-12-03', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102003', 'Nguyễn Thị Thu Hà', '1998-01-20', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102004', 'Trần Thị Hằng', '1986-03-26', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102005', 'Nguyễn Thị Hiên', '1983-10-23', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Nông dân', '270102'),
('270102006', 'Vũ Thị Hiền', '1998-06-30', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102007', 'Nguyễn Thị Quỳnh Hoa', '1994-08-16', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102008', 'Nguyễn Thị Hương', '1993-05-15', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102009', 'Trương Trọng Lịch', '1986-06-03', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102010', 'Lê Chí Long', '1994-09-04', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102011', 'Lê Thị Luyến', '1991-06-30', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102012', 'Vũ Hương Mai', '1991-10-01', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102013', 'Nguyễn Thị Nam', '1994-08-07', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102014', 'Phạm Thị Nhung', '1984-12-05', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102015', 'Đỗ Thiện Phát', '1994-07-05', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102016', 'Nguyễn Thị Phúc', '1990-03-20', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102017', 'Lê Thị Phương', '1993-04-10', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102018', 'Lê Thị Hoài Thương', '1995-03-16', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102019', 'Trần Thị Thủy', '1997-10-26', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102020', 'Lê Ngọc Tiến', '1992-03-19', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102021', 'Nguyễn Hồng Trang', '1997-02-28', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102022', 'Lê Bá Trung', '1994-02-22', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102023', 'Vũ Thị Hương Tuyết', '1991-02-08', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102024', 'Phạm Thị Thanh Vân', '1997-05-09', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102025', 'Nguyễn Đức Ánh', '1993-08-27', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102026', 'Nguyễn Thị Bình', '1998-08-23', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102027', 'Lại Ngọc Châu', '1987-08-25', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102028', 'Hà Việt Cường', '1983-03-27', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102029', 'Đoàn Tiến Đạt', '1986-07-09', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102030', 'Phạm Thị Hạnh', '1985-11-13', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102031', 'Nguyễn Minh Hiếu', '1984-05-04', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102032', 'Nguyễn Thanh Huyền', '1997-06-25', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102033', 'Ngô Vũ Nhật Linh', '1988-02-26', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102034', 'Vũ Thị Tố Oanh', '1984-06-21', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Giáo viên', '270102'),
('270102035', 'Kim Thu Phương', '1992-01-13', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270102'),
('270102036', 'Nguyễn Thị Như Phương', '1998-10-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102037', 'Lê Anh Quân', '1991-06-08', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102038', 'Đồng Thị Anh', '1991-01-29', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102039', 'Nguyễn Thị Hoài Anh', '1998-03-31', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Công an', '270102'),
('270102040', 'Nguyễn Thị Phương Anh', '1998-03-21', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Giáo viên', '270102'),
('270102041', 'Đặng Hoàng Hà', '1988-03-03', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102042', 'Phạm Thị Việt Hà', '1999-02-06', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Bộ đội', '270102'),
('270102043', 'Trần Thị Thu Hà', '1999-07-29', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Công an', '270102'),
('270102044', 'Đinh Thu Hằng', '1994-11-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102045', 'Lê Thị Hằng', '1999-07-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270102'),
('270102046', 'Phạm Thị Hằng', '1989-03-20', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102047', 'Phan Thị Thu Hằng', '2001-06-25', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Tiểu thương', '270102'),
('270102048', 'Trần Thị Hằng', '1993-11-23', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270102'),
('270102049', 'Trần Thị Ngọc Hoàn', '1991-12-31', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270102'),
('270102050', 'Nguyễn Thu Hường', '1987-09-08', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Công an', '270102'),
('270102051', 'Nguyễn Thị Huyền', '1984-08-13', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Bộ đội', '270102'),
('270102052', 'Nguyễn Thị Hương Lan', '2001-02-24', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102053', 'Hoàng Thị Nhật Lệ', '1990-08-28', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Tiểu thương', '270102'),
('270102054', 'Trần Thu Hoài Liên', '1988-05-08', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Bộ đội', '270102'),
('270102055', 'Đỗ Thùy Linh', '1997-06-27', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102056', 'Hoàng Thị Linh', '1984-06-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270102'),
('270102057', 'Phan Thị Linh', '1987-04-29', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270102'),
('270102058', 'Trần Thị Thùy Linh', '1987-10-28', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102059', 'Vũ Thị Thùy Linh', '1982-12-20', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270102'),
('270102060', 'Phan Thị Ly', '1987-04-05', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102061', 'Tạ Tuyết Mai', '1995-10-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102062', 'Đào Thị Minh Ngọc', '1992-12-13', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102063', 'Nguyễn Hồng Ngọc', '1994-01-26', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102064', 'Nguyễn Thị Ngọc', '1996-08-04', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102065', 'Nguyễn Thị Hồng Nhung', '2000-12-07', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công an', '270102'),
('270102066', 'Phạm Thị Nhung', '1984-10-28', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102067', 'Vũ Thị Hồng Nhung', '1994-06-29', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102068', 'Nguyễn Thị Hải Phương', '1982-09-09', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102069', 'Mai Thu Quỳnh', '1992-02-27', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102070', 'Nguyễn Thị Thúy Quỳnh', '1994-06-07', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102071', 'Nguyễn Thị Huyền Thanh', '1988-04-21', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102072', 'Nguyễn Thị Hồng Thao', '1992-02-20', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102073', 'Nguyễn Thị Hoài Thu', '1985-08-30', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102074', 'Nguyễn Thị Ngọc Thư', '1994-03-03', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102075', 'Nguyễn Thị Thủy', '1999-01-21', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Tiểu thương', '270102'),
('270102076', 'Nguyễn Thị Trang', '1997-05-08', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Bộ đội', '270102'),
('270102077', 'Đặng Thị Tuyết', '1991-09-30', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102078', 'Dương Thị Vân Anh', '2000-02-19', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102079', 'Ngô Thị Hà', '1982-05-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bác Sĩ', '270102'),
('270102080', 'Phạm Thị Bích Hằng', '1982-07-16', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Sinh viên', '270102'),
('270102081', 'Lê Thị Hảo', '1984-06-26', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Bác Sĩ', '270102'),
('270102082', 'Bùi Thị Hiền', '1992-10-22', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102083', 'Lê Thị Hiền', '1999-09-26', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công an', '270102'),
('270102084', 'Mầu Thị Phương Hiền', '1999-07-10', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Công nhân', '270102'),
('270102085', 'Trần Thị Huế', '1999-11-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102086', 'Lê Thu Huệ', '1985-02-11', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Bác Sĩ', '270102'),
('270102087', 'Nguyễn Thị Hương', '2000-07-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102088', 'Phạm Thị Hương', '1988-12-28', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Công an', '270102'),
('270102089', 'Lương Thị Thúy Hường', '1998-07-03', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Giáo viên', '270102'),
('270102090', 'Lê Thị Thu Huyền', '1988-03-02', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270102'),
('270102091', 'Nguyễn Thu Huyền', '1986-08-21', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Giáo viên', '270102'),
('270102092', 'Phạm Thị Thanh Huyền', '1987-10-16', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Giáo viên', '270102'),
('270102093', 'Đặng Thị Diệu Linh', '1993-04-22', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102094', 'Mai Thị Thùy Linh', '1996-06-16', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Công nhân', '270102'),
('270102095', 'Nguyễn Thị Khánh Linh', '2000-01-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270102'),
('270102096', 'Nguyễn Thúy Linh', '1982-11-11', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bác Sĩ', '270102'),
('270102097', 'Nguyễn Thùy Linh', '1990-07-20', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Bác Sĩ', '270102'),
('270102098', 'Trương Huyền Linh', '2000-03-22', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Công an', '270102'),
('270102099', 'Lê Thị Lý', '1985-10-29', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bác Sĩ', '270102'),
('270102100', 'Nghiêm Thị Minh Lý', '1982-06-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Giáo viên', '270102'),
('270102101', 'Trần Thị Ngọc Mai', '1986-05-12', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102102', 'Giang Thùy Nga', '1998-12-30', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Giáo viên', '270102'),
('270102103', 'Lê Thị Kim Ngân', '1984-11-25', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102104', 'Nguyễn Thị Quỳnh', '1983-04-18', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102105', 'Đoàn Thị Vân Thanh', '1985-08-29', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102106', 'Nguyễn Thị Thu', '1985-09-08', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270102'),
('270102107', 'Khuất Thị Thúy', '1986-09-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102108', 'Phan Thị Thúy', '1993-08-30', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Nông dân', '270102'),
('270102109', 'Dương Thị Trang', '1996-09-14', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102110', 'Nguyễn Thị Trang', '1986-06-18', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102111', 'Nguyễn Thị Bích Vân', '1990-09-01', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Tiểu thương', '270102'),
('270102112', 'Nguyễn Thị Hà Vy', '2001-12-13', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102113', 'Lê Hải Yến', '1999-12-05', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102114', 'Nguyễn Thị Yến', '1988-12-21', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102115', 'Nguyễn Thị Yến', '1997-02-28', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bác Sĩ', '270102'),
('270102116', 'Vũ Thị Hải Yến', '1989-07-11', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Sinh viên', '270102'),
('270102117', 'Nguyễn Công Kỳ Anh', '1991-09-15', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Tày', 'Bác Sĩ', '270102'),
('270102118', 'Trương Việt Anh', '1995-03-04', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102119', 'Đỗ Thị Ánh', '1999-04-17', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công an', '270102'),
('270102120', 'Phạm Thị Linh Chi', '1996-03-09', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102121', 'Nguyễn Thị Đắc', '1998-01-14', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Bộ đội', '270102'),
('270102122', 'Phạm Việt Đức', '1997-03-03', 'Nam', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Mường', 'Bộ đội', '270102'),
('270102123', 'Trần Thị Thùy Dung', '1987-02-11', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Bộ đội', '270102'),
('270102124', 'Nguyễn Thị Thùy Dương', '1987-05-27', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Nùng', 'Công nhân', '270102'),
('270102125', 'Phạm Thị Hương Giang', '1994-05-14', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Nông dân', '270102'),
('270102126', 'Nguyễn Thị Hằng', '1983-07-18', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Kinh', 'Công nhân', '270102'),
('270102127', 'Nguyễn Thu Hằng', '1985-08-11', 'Nữ', 'Bắc Ninh', 'Phường Đáp Cầu, Thành phố Bắc Ninh', 'Thái', 'Bộ đội', '270102'),
('270302001', 'Hoàng Văn Minh', '2001-11-10', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302002', 'Nguyễn Đức Diện', '1992-08-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302003', 'Lê Mạnh Hùng', '1982-10-18', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302004', 'Nguyễn Thị Ngọc Yến', '1993-07-31', 'Nữ', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302005', 'Ngô Quang Lam', '1986-09-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302006', 'Hoàng Tuấn Anh', '1988-11-08', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302007', 'Đỗ Quốc Hưng', '1984-11-09', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302008', 'Trần Hữu Huấn', '1983-04-06', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302009', 'Đỗ Mạnh Hà', '1984-05-23', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302010', 'Mạc Đình Hùng', '1985-08-11', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302011', 'Thái Hoàng Long', '1983-12-27', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302012', 'Trần Văn Thắng', '1999-01-27', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302013', 'Vương Mạnh Cường', '2001-05-28', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302014', 'Nguyễn Trung Kiên', '1982-02-27', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302015', 'Trịnh Anh Minh', '1991-11-07', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302016', 'Đỗ Ngọc Khánh', '1986-02-13', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302017', 'Nguyễn Duy Tuấn', '1988-08-01', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302018', 'Lê Phú Bình', '1993-10-30', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302019', 'Đặng Đình Đạt', '1995-02-18', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302020', 'Kiều Quốc Huy', '1992-07-16', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302021', 'Giang Hoàng Nam', '1985-06-03', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302022', 'Vũ Thị Huệ Chi', '1987-11-30', 'Nữ', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302023', 'Vũ Thành Đạt', '1987-01-28', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302024', 'Nguyễn Tùng Dương', '2000-02-07', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302025', 'Lê Hải Hoàng', '2000-10-02', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302026', 'Nguyễn Hoàng Long', '1995-01-01', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302027', 'Trịnh Hoàng Long', '1992-04-15', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302028', 'Đoàn Thị Thanh Nhàn', '1999-09-11', 'Nữ', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302029', 'Nguyễn Thị Ngọc Tú', '1993-03-26', 'Nữ', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302030', 'Nguyễn Anh Tuấn', '1986-02-18', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302031', 'Vũ Đức Anh', '1991-11-13', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302032', 'Nguyễn Thị Hoa', '1992-09-16', 'Nữ', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302033', 'Nguyễn Thanh Hưng', '1989-11-05', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302034', 'Nguyễn Đức Minh', '1988-06-30', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302035', 'Trần Bích Ngọc', '2001-06-11', 'Nữ', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302036', 'Nguyễn Văn Tài', '1996-04-20', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302037', 'Lê Đình Tỉnh', '1990-03-04', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302038', 'Lê Minh Tuấn Anh', '1999-10-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302039', 'Bùi Tuấn Dương', '1999-08-15', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302040', 'Bùi Đức Hạnh', '1984-09-19', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302041', 'Trần Đức Thành', '1995-08-24', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302042', 'Lê Nguyên Tùng', '1988-08-06', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302043', 'Phạm Quang Thiện', '1982-12-07', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302044', 'Mai Việt Tuấn', '1990-03-29', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302045', 'Phùng Văn Khánh', '1994-02-18', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Giáo viên', '270302'),
('270302046', 'Trần Việt Tiến', '1986-12-22', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Công an', '270302'),
('270302047', 'Vũ Xuân Trường', '1989-10-26', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Công nhân', '270302'),
('270302048', 'Đặng Quốc Việt', '1991-09-12', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Công nhân', '270302'),
('270302049', 'Phạm Như Lộc', '1999-09-06', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Sinh viên', '270302'),
('270302050', 'Nguyễn Như Quyết', '1992-03-27', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Công nhân', '270302'),
('270302051', 'Lê Doãn Thái', '1985-02-26', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Sinh viên', '270302'),
('270302052', 'Nguyễn Viết Thi', '2000-07-15', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Bác Sĩ', '270302'),
('270302053', 'Tạ Đức Trường', '1984-08-06', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mông', 'Bác Sĩ', '270302'),
('270302054', 'Nguyễn Quang Vinh', '1991-10-25', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Bác Sĩ', '270302'),
('270302055', 'Nguyễn Quốc Đạt', '1983-01-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Công an', '270302'),
('270302056', 'Vi Trung Hiếu', '1999-02-20', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Công nhân', '270302'),
('270302057', 'Nguyễn Hữu Phúc', '1997-09-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mông', 'Sinh viên', '270302'),
('270302058', 'Bùi Trọng Đạt', '2000-05-28', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Công nhân', '270302'),
('270302059', 'Đỗ Tấn Dũng', '1996-07-05', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Công nhân', '270302'),
('270302060', 'Hoàng Nghĩa Nam', '1990-09-01', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mông', 'Giáo viên', '270302'),
('270302061', 'Đàm Xuân Tuyến', '1992-04-08', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mông', 'Công an', '270302'),
('270302062', 'Đỗ Thế Vinh', '1988-12-10', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Công an', '270302'),
('270302063', 'Vũ Thành Đạt', '1993-02-11', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Giáo viên', '270302'),
('270302064', 'Nguyễn Văn Định', '1991-10-08', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Bác Sĩ', '270302'),
('270302065', 'Nguyễn Quang Huy', '2000-03-08', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mông', 'Công an', '270302'),
('270302066', 'Lê Anh Quân', '1995-11-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Công an', '270302'),
('270302067', 'Lê Đắc Trường', '1989-12-23', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Công an', '270302'),
('270302068', 'Nguyễn Quang Chuyên', '1988-09-29', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Bác Sĩ', '270302'),
('270302069', 'Nguyễn Quang Hiếu', '1999-12-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302070', 'Vương Trung Hiếu', '1994-11-25', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302071', 'Nguyễn Văn Huy', '1987-01-08', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302072', 'Nguyễn Hồng Sơn', '1988-11-19', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302073', 'Nguyễn Viết Tuyền', '1997-12-14', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302074', 'Nguyễn Hồng Quân', '1995-01-06', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270302'),
('270302075', 'Lưu Văn Truyền', '1987-09-18', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302076', 'Trần Xuân Tùng', '1995-02-28', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302077', 'Phạm Tiến Thưởng', '1999-11-04', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302078', 'Lê Ngọc Sơn', '1986-07-28', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302079', 'Trần Công Quang', '1996-07-06', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302080', 'Lê Tri Phương', '1988-01-31', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270302'),
('270302081', 'Phan Đức Duy', '1997-11-07', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302082', 'Trần Sơn Tây', '1998-11-18', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270302'),
('270302083', 'Đoàn Văn Long', '1983-09-15', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302084', 'Phạm An Thiện', '1986-12-30', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302085', 'Nguyễn Tùng Lâm', '1991-11-13', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302086', 'Lê Hoàng Anh', '2000-03-11', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302087', 'Phan Tiến Anh', '1984-05-02', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270302'),
('270302088', 'Nguyễn Trọng Bách', '1983-12-23', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270302089', 'Trần Văn Chiển', '1985-03-29', 'Nam', 'Bắc Ninh', 'xã Mão Điền, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270302'),
('270303001', 'Ngô Thế Đông', '1986-01-28', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270303'),
('270303002', 'Phí Mạnh Lợi', '1985-12-20', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270303'),
('270303003', 'Phạm Hương Trà', '1985-08-04', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303004', 'Nguyễn Duy Tuân', '1992-10-16', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270303'),
('270303005', 'Nguyễn Tuấn Anh', '1997-10-24', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303006', 'Bùi Công Huy', '1996-03-12', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303007', 'Phan Nam', '2000-07-26', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303008', 'Đỗ Trung Nguyên', '1993-11-16', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303009', 'Nguyễn Chí Tùng', '1986-03-23', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303010', 'Hoàng Ngọc Dũng', '1996-07-23', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270303'),
('270303011', 'Nguyễn Tùng Đăng', '1993-06-26', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303012', 'Hoàng Minh Hà', '1997-12-09', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303013', 'Lý Tuấn Linh', '2000-11-18', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270303'),
('270303014', 'Phạm Hồng Thái', '1990-07-24', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270303'),
('270303015', 'Nguyễn Đức Toàn', '1998-11-13', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bác Sĩ', '270303'),
('270303016', 'Lương Anh Tuấn', '1989-07-29', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303');
INSERT INTO `resume_btl` (`CCCD`, `fullname`, `datebirth`, `gender`, `hometown`, `address`, `religion`, `job`, `village_id`) VALUES
('270303017', 'Trương Sơn Kiên', '1997-05-07', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Sinh viên', '270303'),
('270303018', 'Nguyễn Anh Văn', '1991-10-01', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303019', 'Bùi Việt Hùng', '1996-04-24', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303020', 'Nguyễn Duy Hưng', '2001-12-22', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303021', 'Trần Văn Hướng', '1992-12-02', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303022', 'Nguyễn Văn Trường', '1996-10-03', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303023', 'Nguyễn Quang Vinh', '2000-01-27', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303024', 'Nguyễn Phương Nam', '1990-07-14', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303025', 'Cao Thị Mai Anh', '1996-02-20', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303026', 'Phạm Mai Hoa', '1989-07-20', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303027', 'Nguyễn Huy An', '1999-11-29', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303028', 'Nguyễn Hồng Anh', '1992-05-22', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303029', 'Lương Thị Thu Hà', '1994-12-08', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303030', 'Tạ Thị Cẩm Nhung', '1987-05-23', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303031', 'Phạm Văn Phúc', '1986-04-16', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303032', 'Dương Thùy Trang', '1989-11-18', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303033', 'Nguyễn Quý Trung', '1990-07-25', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303034', 'Lưu Thu Yến', '1997-05-15', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303035', 'Đinh Công Hoàng', '1983-03-11', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303036', 'Lê Nguyễn Trà My', '1993-03-13', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303037', 'Vũ Thanh Hải', '1985-03-21', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303038', 'Nguyễn Văn Huynh', '2001-02-27', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303039', 'Vũ Hồng Thịnh', '1990-01-04', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303040', 'Trần Trung Hiếu', '1996-01-06', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303041', 'Nguyễn Đức Trí', '1998-06-24', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303042', 'Hoàng Minh Khánh', '1995-06-04', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303043', 'Nguyễn Việt Dũng', '2000-06-21', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Bộ đội', '270303'),
('270303044', 'Phạm Thị Dinh', '1988-02-26', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303045', 'Cao Vũ Tùng Lâm', '1995-12-06', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303046', 'Trịnh Minh Tú', '1990-02-19', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303047', 'Phạm Phương Huyền', '1984-02-14', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303048', 'Đặng Thị Thúy', '1991-07-31', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303049', 'Phùng Minh Đức Duy', '1997-07-16', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303050', 'Hoàng Văn Quang', '2000-11-09', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303051', 'Nguyễn Minh Tuấn', '1995-08-29', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303052', 'Phạm Thị Thuỳ Linh', '1997-06-19', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303053', 'Phạm Thanh Hải', '1991-03-31', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Công an', '270303'),
('270303054', 'Nguyễn Thị Thúy', '1994-05-03', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Bộ đội', '270303'),
('270303055', 'Nguyễn Trí Dũng', '1999-08-19', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303056', 'Lê Xuân Giang', '1993-02-26', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303057', 'Ngọ Duy Thiệu', '2001-01-13', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Công nhân', '270303'),
('270303058', 'Nguyễn Lê Thùy Linh', '1986-08-03', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Công nhân', '270303'),
('270303059', 'Đào Minh Thư', '1982-07-06', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303060', 'Trần Bảo Châu', '1997-02-24', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Nông dân', '270303'),
('270303061', 'Lê Lan Hương', '1999-07-19', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Bộ đội', '270303'),
('270303062', 'Nguyễn Duy Long', '1995-11-18', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Công an', '270303'),
('270303063', 'Nguyễn Lực', '1984-11-25', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303064', 'Lê Huy Phúc', '1986-09-04', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Bộ đội', '270303'),
('270303065', 'Lương Ngọc Vũ', '1996-07-10', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Bộ đội', '270303'),
('270303066', 'Vũ Thị Hải Yến', '1996-07-24', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Bộ đội', '270303'),
('270303067', 'Trần Minh Chính', '1982-07-20', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303068', 'Bùi Thanh Hằng', '1996-02-17', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303069', 'Nguyễn Thu Hiền', '1999-01-02', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Tiểu thương', '270303'),
('270303070', 'Phùng Thị Thu Hương', '1997-02-06', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Nùng', 'Công an', '270303'),
('270303071', 'Nguyễn Quang Huy', '1992-10-21', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Bộ đội', '270303'),
('270303072', 'Nguyễn Tiến Quốc', '1993-09-09', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303073', 'Lưu Danh Trinh', '1996-06-11', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Giáo viên', '270303'),
('270303074', 'Dương Nguyễn Lê Dung', '2001-10-29', 'Nữ', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Thái', 'Công nhân', '270303'),
('270303075', 'Đỗ Tuấn Hùng', '1992-03-23', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Nông dân', '270303'),
('270303076', 'Ngô Hoàng Thế Sơn', '1997-06-20', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Tày', 'Công nhân', '270303'),
('270303077', 'Nguyễn Hữu Tuân', '1997-08-21', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303078', 'Nguyễn Khắc Thành', '1982-04-21', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Nông dân', '270303'),
('270303079', 'Nguyễn Minh Hoàng', '1996-06-19', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công nhân', '270303'),
('270303080', 'Nguyễn Hồng Đăng', '1983-01-03', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Công nhân', '270303'),
('270303081', 'Trần Quang Huy', '1997-11-17', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Công an', '270303'),
('270303082', 'Nguyễn Văn Long', '1982-11-15', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Công nhân', '270303'),
('270303083', 'Phạm Đức Nhật', '1991-05-26', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Kinh', 'Tiểu thương', '270303'),
('270303084', 'Lưu Mạnh Cường', '1993-02-08', 'Nam', 'Bắc Ninh', 'xã Song Hổ, huyện Thuận Thành, tỉnh Bắc Ninh', 'Mường', 'Công an', '270303'),
('401320007', 'Bùi Trần Thiên Hoan', '1997-02-27', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320008', 'Huỳnh Lê Khang', '1993-11-13', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320010', 'Điệp Văn Lâm', '1986-07-29', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320012', 'Đặng Hải Long', '1998-12-21', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320013', 'Hoàng Cao Lộc', '1989-02-08', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320015', 'Trần Văn Nam', '2000-01-24', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320016', 'Nguyễn Thị Kim Nga', '1998-05-29', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320017', 'Bùi Phát', '1983-09-14', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320018', 'Tou Tiang Sam Pô', '1989-12-12', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320019', 'Trương Việt Quang', '1996-01-08', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320020', 'Phạm Trường Sơn', '1997-04-23', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320021', 'Nguyễn Đình Trọng', '1998-09-07', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320022', 'Mai Văn Tiến', '1991-01-11', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320024', 'Nguyễn Ngọc Thuận', '1988-01-17', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320025', 'Bùi Đình Thuận', '1987-12-05', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320027', 'Phạm Trung Vĩ', '1983-12-17', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320028', 'Lê Trường Vinh', '1994-09-21', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320029', 'La Triều Vỹ', '1982-10-24', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320030', 'Phan Văn Cường', '2001-03-10', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320032', 'Nguyễn Văn Đời', '1988-08-27', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320033', 'Lê Trọng Khánh', '1992-12-06', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320035', 'Đỗ Phi Long', '1988-06-07', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320036', 'Cao Hữu Quốc Nguyên', '1999-11-26', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320037', 'Hồ Ngọc Phước', '1996-03-09', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320038', 'Hồ Trọng Tín', '1988-06-16', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320039', 'Lê Thanh Tùng', '1985-10-26', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320040', 'Đỗ Khánh Hưng', '1983-07-20', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320041', 'Nguyễn Thị Minh Hiền', '1993-12-08', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320042', 'Lê Văn Lập', '1993-09-28', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320043', 'Nguyễn Ngọc Tân', '1984-12-04', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320044', 'Nguyễn Đức Huy', '1984-07-23', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320045', 'Võ Nguyễn Hạnh Uyên', '1994-01-24', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320046', 'Kon Sa Ha Nai', '1997-05-23', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320047', 'Văn Công Tuấn Anh', '1991-06-21', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Giáo viên', '401320'),
('401320048', 'K\' Brên', '1985-08-13', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công an', '401320'),
('401320049', 'Nguyễn Thành Công', '2001-04-08', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Công nhân', '401320'),
('401320050', 'Nguyễn Thị Mỹ Dung', '1986-10-21', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Công nhân', '401320'),
('401320051', 'Trần Đình Đạt', '1993-05-06', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Sinh viên', '401320'),
('401320052', 'Trần Văn Đức', '1998-04-24', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công nhân', '401320'),
('401320053', 'Huỳnh Thị Lâm Đa', '1990-02-14', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Sinh viên', '401320'),
('401320054', 'Nguyễn Văn Hùng', '1983-10-06', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Bác Sĩ', '401320'),
('401320055', 'Trịnh ÁNh Hằng', '1991-08-19', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mông', 'Bác Sĩ', '401320'),
('401320056', 'Đặng Thị Kim Hương', '1994-11-03', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Bác Sĩ', '401320'),
('401320057', 'Phan Văn Hùng', '1988-09-03', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công an', '401320'),
('401320058', 'Nguyễn Hoàng Khải', '1982-09-06', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Công nhân', '401320'),
('401320059', 'Hoàng Quốc Khương', '1996-08-14', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mông', 'Sinh viên', '401320'),
('401320060', 'Trần Thanh Mai', '1987-12-12', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Công nhân', '401320'),
('401320061', 'Trịnh Văn Mười', '1985-11-02', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Công nhân', '401320'),
('401320062', 'Nguyyễn Tuấn Minh', '1997-12-16', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mông', 'Giáo viên', '401320'),
('401320063', 'Trần Tuấn Nghĩa', '1984-08-09', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mông', 'Công an', '401320'),
('401320064', 'Lê Thị Hoài Ngân', '1986-03-04', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công an', '401320'),
('401320065', 'Lê Như Quỳnh', '1982-10-17', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401320'),
('401320066', 'Lương Quang Quý', '1995-08-03', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Bác Sĩ', '401320'),
('401320067', 'Nguyễn Văn Thư', '1997-09-15', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mông', 'Công an', '401320'),
('401320068', 'Ka Thanh', '2000-02-04', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Công an', '401320'),
('401320069', 'Huỳnh Thị Dạ Thu', '1984-07-14', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Công an', '401320'),
('401320070', 'Nguyễn Tấn Tàu', '1991-01-12', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Bác Sĩ', '401320'),
('401320071', 'Hoàng Quốc Thạch', '2001-10-09', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320072', 'Nguyễn Võ Cẩm Tú', '1993-07-04', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320073', 'Trần Minh Tâm', '1983-02-04', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320074', 'Trần Thị Cẩm Thư', '1985-07-08', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320075', 'Ma Trâm', '1988-08-10', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320076', 'Nguyễn Bảo Tiến', '1988-07-10', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320077', 'Ka Thu', '1986-09-28', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320078', 'Lê Hoàng Khánh Vũ', '1989-08-26', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320079', 'Vũ Đình Thắng', '1986-08-03', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320080', 'Hoàng Xuân Dũng', '1995-12-29', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320081', 'Nguyễn Phước Huân', '1982-03-07', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320082', 'Nguyễn Đình Mạnh', '1988-01-02', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320083', 'Nguyễn Văn Quảng', '2000-01-23', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320084', 'Lê Hoàng Sinh', '1997-10-05', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320085', 'Nguyễn Thị Thu Hiếu', '1995-04-27', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320086', 'Lê Hữu Tường', '1992-02-05', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320087', 'Bùi Văn Chung', '1990-09-02', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320088', 'Nguyễn Văn Cầm', '1998-12-06', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320089', 'Nguyễn Văn Công', '1984-06-16', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320090', 'Nguyễn Minh Hoàng', '2000-02-26', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320091', 'Trương Đức Phi Hùng', '1987-01-30', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320092', 'Mai Trung Hiếu', '1993-01-23', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320093', 'Phạm Thế Mỹ', '1996-07-21', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320094', 'Nguyễn Văn Nam', '1997-11-02', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320095', 'Cil Ha Ninh', '1996-01-31', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320096', 'Nguyễn Công Anh Phú', '1991-10-08', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320097', 'Trương Bá Minh Quân', '1984-08-21', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320098', 'Nguyễn Hữu Sang', '1996-03-23', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320099', 'Touneh Ya Thiết', '1997-06-10', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320100', 'Quàng Nhật Nam Thái', '1984-09-11', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401320'),
('401320101', 'Dương Thị Hà Trang', '1987-01-27', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320102', 'Đặng Văn Tuấn', '1984-03-19', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320103', 'Trần Thị Bích Thu', '1997-06-21', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320104', 'Trần Tiến Thành', '1995-09-27', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320105', 'Lê Tuấn Vũ', '1993-08-10', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320106', 'Lê Tuấn Anh', '1995-10-05', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bác Sĩ', '401320'),
('401320107', 'Hoàng Văn Bông', '1991-05-30', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320108', 'Đồng Văn Đức', '1987-02-01', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401320109', 'Nguyễn Văn Học', '1989-01-30', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401320'),
('401320110', 'Lê Thị Mỹ Lộc', '1983-01-27', 'Nữ', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320111', 'Trịnh Văn Lên', '1988-05-04', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320112', 'Võ Nhật Nam', '1990-11-28', 'Nam', 'Nghệ An', 'xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401320'),
('401320888', 'Nguyễn Tân Long', '2001-03-25', 'Nam', 'Bỉm Sơn, Thanh Hóa', 'Thôn 2, xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Sinh viên', '401320'),
('401320999', 'Đỗ Quang Huynh', '2001-11-29', 'Nam', 'Thuận Thành, Bắc Ninh', 'Thôn 2, xã Lĩnh Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Sinh viên', '401320'),
('401321001', 'Phan Thị Hoàng Trinh', '1998-08-25', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321002', 'Trần Thị Như Quỳnh', '1989-08-02', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321003', 'Phạm Đỗ Trình', '1999-02-18', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401321'),
('401321004', 'Lê Tâm Hoàng Ngân', '1990-06-15', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321005', 'Bùi Thị Ngọc ÁNh', '1996-11-28', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321006', 'Phạm Thành Công', '1988-08-02', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401321'),
('401321007', 'Nguyễn Thị Ngọc Chi', '2000-09-27', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321008', 'Phạm Thị Dịu', '1983-10-04', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321009', 'Trần Minh Khánh', '1995-01-17', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321010', 'Nguyễn Ngọc Quỳnh Như', '1992-04-25', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321011', 'Chế Thụy Phương Thanh', '1995-10-08', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321012', 'Nguyễn Thị Vân Anh', '1996-04-29', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321013', 'Lê Đại Hải Dương', '1992-02-28', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401321'),
('401321014', 'Đoàn Thị Ngọc Hoa', '1997-06-07', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401321'),
('401321015', 'La Minh Trí', '1988-06-13', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321016', 'Nguyễn Thị Phương Trâm', '1991-07-11', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321017', 'Phạm Thị Thảo', '1996-09-28', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321018', 'Thân Thị Tươi', '2001-11-23', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321019', 'Nguyễn Thị Thúy Vi', '1990-10-31', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401321'),
('401321020', 'Nguyễn Văn Linh', '1995-07-22', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401321'),
('401321021', 'Lê Tuấn Anh', '1982-12-02', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321022', 'Nguyễn Thanh Huân', '1993-05-01', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321023', 'Cao Hoàng Trung Hiệp', '2000-03-02', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321024', 'Phùng Văn Lâm', '1986-01-07', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321025', 'Phan Nguyễn Bảo Ngân', '1985-11-27', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401321'),
('401321026', 'Vy Văn Quỳnh', '1998-07-23', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321027', 'Lý Đình Quyết', '1989-03-22', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321028', 'Trương Văn Sáng', '2000-09-27', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321029', 'Võ Văn Thành', '1984-11-30', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321030', 'Lê Thị Lan Trinh', '1983-08-20', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321031', 'Nguyễn Chí Thanh', '1989-05-07', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321032', 'Nguyễn Văn Thắng', '1986-03-05', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công an', '401321'),
('401321033', 'Lê Quốc Ý', '1987-06-29', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401321'),
('401321034', 'Hoàng Đức Duy', '1997-06-08', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321035', 'Đàm Thanh Đức', '2001-12-22', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321036', 'Lê Văn Đạt', '2001-02-28', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công nhân', '401321'),
('401321037', 'Nguyễn Văn Đạt', '1993-04-24', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công nhân', '401321'),
('401321038', 'Nguyễn Văn Hoàng', '2001-01-16', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321039', 'Tô Quốc Hoài', '1997-02-04', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401321'),
('401321040', 'Nguyễn Ngọc Minh', '1985-10-02', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401321'),
('401321041', 'Hà Phong', '1982-04-23', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Công an', '401321'),
('401321042', 'Ty Đình Bảo Anh', '1993-11-07', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321043', 'Nguyễn Minh Anh', '1985-07-24', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Bộ đội', '401321'),
('401321044', 'Mai Văn Cường', '1990-09-01', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401321'),
('401321045', 'Lê Hoàng Thuận', '1984-05-14', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401321'),
('401321046', 'Phạm Hải Độ', '1987-10-18', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321047', 'Nguyễn Trung Nghĩa', '1984-09-19', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321048', 'Nguyễn Tấn Phướng', '1985-09-17', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Tiểu thương', '401321'),
('401321049', 'Phạm Văn Quang', '1987-06-24', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Công an', '401321'),
('401321050', 'Nguyễn Định Thành', '1985-02-06', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Bộ đội', '401321'),
('401321051', 'Lê Vinh', '1989-12-15', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321052', 'Nguyễn Đình Vân', '1996-01-02', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401321'),
('401321053', 'Phan Huỳnh Hoàng Vũ', '1982-01-07', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công nhân', '401321'),
('401321054', 'Nguyễn Duy Giáp', '1995-02-26', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Nông dân', '401321'),
('401321055', 'Nguyễn Thiên Phúc', '1990-10-31', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Công nhân', '401321'),
('401321056', 'Lê Thị Thu Thủy', '1992-11-15', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321057', 'Trần Văn Tuấn Hùng', '1990-08-08', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321058', 'Mai Hữu Lục', '1995-08-18', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401321'),
('401321059', 'Lê Hồng Thảo Vy', '1988-01-23', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công nhân', '401321'),
('401321060', 'Thái Thị Vy', '1990-04-16', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321061', 'Y Phước Niê', '1999-06-13', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công nhân', '401321'),
('401321062', 'Nguyễn Văn Hùng', '1986-08-29', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321063', 'Trần Văn Khương', '1987-05-02', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công an', '401321'),
('401321064', 'Phương Hữu Phương Linh', '1984-09-08', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Bộ đội', '401321'),
('401321065', 'Nguyễn Đạt Lâm', '1984-02-24', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Công an', '401321'),
('401321066', 'Ma Mai', '1987-10-28', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Nông dân', '401321'),
('401321067', 'Hà Văn Thân', '1996-07-12', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Nông dân', '401321'),
('401321068', 'Đỗ Xuân Trung', '1995-10-31', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công an', '401321'),
('401321069', 'Đinh Văn Linh', '1995-01-14', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Giáo viên', '401321'),
('401321070', 'Đinh Thị Tiết', '1995-07-17', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công nhân', '401321'),
('401321071', 'Bế Văn Dần', '1986-12-10', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401321'),
('401321072', 'Nguyễn Thị Hà', '1994-03-25', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công an', '401321'),
('401321073', 'Nông Văn Nghiêm', '1996-05-23', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401321'),
('401321074', 'Hồ Đạt Quý', '1992-08-29', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401321'),
('401321075', 'Ma Văn Tiệp', '1993-10-05', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321076', 'Nguyễn Tự Thành', '1994-07-01', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công nhân', '401321'),
('401321077', 'Trần Thị Thanh Thùy', '1998-10-06', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Tiểu thương', '401321'),
('401321078', 'Bơnah Ria Tora', '1988-08-13', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Công an', '401321'),
('401321079', 'Hoàng Thị Anh', '1997-03-04', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401321'),
('401321080', 'Vũ Huy Cường', '1983-04-09', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công an', '401321'),
('401321081', 'Lê Tự Chinh', '1994-10-01', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401321'),
('401321082', 'Nguyễn Văn Dũng', '2001-02-03', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Công nhân', '401321'),
('401321083', 'Nay H\' Djơm', '1989-08-07', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Tiểu thương', '401321'),
('401321084', 'Nông Văn Điền', '1994-06-19', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Nông dân', '401321'),
('401321085', 'Nguyễn Phi Khanh', '1998-02-01', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401321'),
('401321086', 'Nguyễn Hoàng Anh Khoa', '1982-07-28', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Giáo viên', '401321'),
('401321087', 'Nguyễn Ngọc Lân', '1998-09-29', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Nùng', 'Tiểu thương', '401321'),
('401321088', 'Cao Thị Ngân', '2001-03-24', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321089', 'Đinh Y Nhung', '1993-07-21', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Mường', 'Công nhân', '401321'),
('401321090', 'Y Trọng Niê', '1989-09-15', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401321'),
('401321091', 'Nguyễn Văn Phúc', '1996-05-21', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Công an', '401321'),
('401321092', 'Nguyễn Văn Phước', '1999-04-20', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Nông dân', '401321'),
('401321093', 'Phạm Thanh Sơn', '1993-03-03', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Thái', 'Nông dân', '401321'),
('401321094', 'Đào Duy Sang', '1983-10-26', 'Nam', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Tày', 'Nông dân', '401321'),
('401321095', 'Vũ Thị Thảo', '1983-10-17', 'Nữ', 'Nghệ An', 'xã Cao Sơn, huyện Anh Sơn, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401321'),
('401613004', 'Phạm Phương Huyền', '1990-12-23', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613005', 'Đặng Thị Thúy', '1987-01-05', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613006', 'Phùng Minh Đức Duy', '1988-07-16', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613007', 'Hoàng Văn Quang', '1987-10-22', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613008', 'Nguyễn Minh Tuấn', '2001-01-23', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613009', 'Phạm Thị Thuỳ Linh', '1996-01-27', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613010', 'Phạm Thanh Hải', '1998-09-27', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401613'),
('401613011', 'Nguyễn Thị Thúy', '1992-12-15', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401613'),
('401613012', 'Nguyễn Trí Dũng', '1984-09-14', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613013', 'Lê Xuân Giang', '1997-07-14', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613014', 'Ngọ Duy Thiệu', '1986-04-11', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613015', 'Nguyễn Lê Thùy Linh', '1999-04-05', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613016', 'Đào Minh Thư', '1987-07-04', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613017', 'Trần Bảo Châu', '1986-03-06', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401613'),
('401613018', 'Lê Lan Hương', '1992-07-05', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401613'),
('401613019', 'Nguyễn Duy Long', '1990-06-05', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công an', '401613'),
('401613020', 'Nguyễn Lực', '1988-07-04', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613021', 'Lê Huy Phúc', '1986-02-28', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Bộ đội', '401613'),
('401613022', 'Lương Ngọc Vũ', '1982-01-19', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401613'),
('401613023', 'Vũ Thị Hải Yến', '1985-11-11', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401613'),
('401613024', 'Trần Minh Chính', '1987-08-03', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613025', 'Bùi Thanh Hằng', '2000-09-30', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613026', 'Nguyễn Thu Hiền', '1984-09-01', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Tiểu thương', '401613'),
('401613027', 'Phùng Thị Thu Hương', '1996-10-31', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công an', '401613'),
('401613028', 'Nguyễn Quang Huy', '1999-10-21', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Bộ đội', '401613'),
('401613029', 'Nguyễn Tiến Quốc', '1995-06-22', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613030', 'Lưu Danh Trinh', '1988-07-14', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613031', 'Dương Nguyễn Lê Dung', '2001-04-05', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613032', 'Đỗ Tuấn Hùng', '1997-06-02', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401613'),
('401613033', 'Ngô Hoàng Thế Sơn', '1998-08-14', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Công nhân', '401613'),
('401613034', 'Nguyễn Hữu Tuân', '1992-03-17', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613035', 'Nguyễn Khắc Thành', '1990-08-01', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613036', 'Nguyễn Minh Hoàng', '1988-07-31', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613037', 'Nguyễn Hồng Đăng', '1983-09-25', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613038', 'Trần Quang Huy', '1998-09-11', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613039', 'Nguyễn Văn Long', '1989-11-15', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613040', 'Phạm Đức Nhật', '2001-10-20', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613041', 'Lưu Mạnh Cường', '1989-11-23', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401613'),
('401613042', 'Đoàn Trung Hiếu', '1998-01-18', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Bộ đội', '401613'),
('401613043', 'Trần Danh Châu', '1990-04-05', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công an', '401613'),
('401613044', 'Trần Ngọc Đại', '2000-12-26', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401613'),
('401613045', 'Lại Nguyên Khánh', '1985-12-11', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Nông dân', '401613'),
('401613046', 'Phạm Ngọc Tuấn', '1991-09-11', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401613'),
('401613047', 'Mai Hồng Hải Hà', '1989-11-30', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Giáo viên', '401613'),
('401613048', 'Nguyễn Chí Nguyễn', '1989-11-04', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613049', 'Lê Mai Phương Hoà', '1997-05-23', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613051', 'Bùi Nguyễn Anh Khoa', '1996-07-15', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401613'),
('401613052', 'Bùi Trọng Khôi', '1994-08-13', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613053', 'Nguyễn Quang Đức', '1999-02-02', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613054', 'Đặng Xuân Khoái', '1986-02-24', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613055', 'Trần Hải', '1990-10-12', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Tiểu thương', '401613'),
('401613056', 'Mã Ngọc Quyền', '2000-04-07', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công an', '401613'),
('401613057', 'Nguyễn Hữu Tiến', '2000-07-02', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401613'),
('401613058', 'Lê Tấn Sang', '2000-08-13', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401613'),
('401613059', 'Lê Ngọc Huy', '2000-01-21', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613060', 'Võ Quân Minh', '1986-08-02', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613061', 'Đoàn Phương Nam', '2001-01-14', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Tiểu thương', '401613'),
('401613062', 'Cao Minh Nhựt', '1992-03-10', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401613'),
('401613063', 'Hoàng Hải Phú', '1997-08-07', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Giáo viên', '401613'),
('401613064', 'Võ Thành Quốc', '1994-04-21', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Giáo viên', '401613'),
('401613065', 'Trương Hoàng Thịnh', '2001-04-23', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Tiểu thương', '401613'),
('401613066', 'Tăng Thái Tính', '1986-12-27', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613067', 'Đoàn Thị Bích Duyên', '1998-02-20', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613069', 'Trần Nguyễn Huy Khang', '1995-07-13', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613070', 'Bùi Hữu Nghĩa', '1997-09-07', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401613'),
('401613071', 'Lê Quốc Nhật Phi', '1988-12-15', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Nông dân', '401613'),
('401613072', 'Huỳnh Văn Phụng', '1989-05-12', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401613'),
('401613073', 'Phan Thanh Tỉnh', '1994-11-10', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613074', 'Bùi Phú Hữu', '1994-05-25', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613075', 'Dụng Văn Anh Thỏa', '1984-12-08', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613076', 'Nguyễn Văn Hùng', '1995-04-18', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613077', 'Phạm Hoàng Huy', '1999-07-28', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613078', 'Trịnh Hoàng Khải', '1991-03-29', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401613'),
('401613079', 'Nguyễn Thành Qui', '1996-07-28', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401613'),
('401613080', 'Dương Doãn Trung', '1991-04-27', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401613'),
('401613081', 'Vũ Duy Tùng', '1991-09-23', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Giáo viên', '401613'),
('401613082', 'Đoàn Văn Việt', '1989-09-27', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613083', 'Nguyễn Đại Dương', '1997-11-19', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613084', 'Nguyễn Hiệp Hưng', '2000-11-10', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613085', 'Quản Hữu Ngọc Nam', '1997-01-01', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613086', 'Lê Quang Ninh', '1997-02-11', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613087', 'Tô Ngọc Tuấn', '1993-09-25', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613088', 'Bùi Tấn Anh', '1988-02-18', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613089', 'Bùi Duy Luật', '1988-05-13', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613090', 'Nguyễn Văn Quản', '1990-01-25', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613091', 'Phan Chí Thanh', '2000-10-26', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613092', 'Trương Chí Bửu', '1995-05-03', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613093', 'Lữ Quốc Đạt', '1999-03-29', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613094', 'Nguyễn Tấn Tài', '1998-01-12', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613095', 'Nguyễn Minh Chiến', '1996-08-24', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613096', 'Nguyễn Hữu Khôi', '2001-04-02', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613097', 'Nguyễn Văn Minh Phụng', '1988-09-13', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613098', 'Bùi Văn Thiệu', '1991-12-05', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613099', 'Võ Văn Việt', '1995-07-11', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613100', 'Nguyễn Thành Đạt', '1996-05-06', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613');
INSERT INTO `resume_btl` (`CCCD`, `fullname`, `datebirth`, `gender`, `hometown`, `address`, `religion`, `job`, `village_id`) VALUES
('401613101', 'Bùi Minh Hải', '1994-05-27', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613102', 'Đặng Minh Hiếu', '1987-06-28', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613103', 'Huỳnh Thị Hồng', '1991-09-11', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613104', 'Đặng Phương Nam', '1985-09-30', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613105', 'Nguyễn Thị Tuyết Ngân', '2000-03-31', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613106', 'Võ Quỳnh Nhi', '1986-03-20', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613107', 'Triệu Thị Kiều Oanh', '1982-07-12', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613108', 'Nguyễn Tấn Tài', '1987-04-24', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613109', 'Hoàng Quỳnh Vân', '1990-09-03', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613110', 'Nguyễn Thị Nhật Ánh', '2000-10-22', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613111', 'Phùng Thị Thu Hà', '1987-08-23', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401613'),
('401613112', 'Lê Thị Hằng', '1993-06-29', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613113', 'Lã Thị Thu Hương', '1992-05-08', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401613'),
('401613114', 'Trần Thị Mai Hương', '1998-10-04', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613115', 'Tưởng Thị Hồng Nhung', '1997-03-15', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613116', 'Lê Thị Quỳnh', '1992-08-08', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613117', 'Phạm Thị Phương Anh', '1982-10-19', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401613'),
('401613118', 'Đỗ Thị Ngưng Bích', '1993-11-14', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613119', 'Nguyễn Thái Dương', '1983-08-21', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613120', 'Nguyễn Thị Duyên', '1986-04-24', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Giáo viên', '401613'),
('401613121', 'Trần Đức Hạnh', '1991-12-26', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công an', '401613'),
('401613122', 'Đỗ Huy Hoàng', '1992-04-03', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613123', 'Lưu Mạnh Hùng', '2001-09-18', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613124', 'Nguyễn Đình Khoa', '1982-06-02', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401613'),
('401613125', 'Nguyễn Tùng Lâm', '1999-05-31', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613126', 'Trần Đức Lương', '1999-07-31', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Bộ đội', '401613'),
('401613127', 'Phạm Văn Phúc', '1986-05-22', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công nhân', '401613'),
('401613128', 'Dương Văn Phụng', '1993-01-22', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Tiểu thương', '401613'),
('401613129', 'Vũ Thị Phương', '2001-10-07', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Tiểu thương', '401613'),
('401613130', 'Nguyễn Danh Quang', '1993-12-10', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613131', 'Nguyễn Quốc Trưởng', '1982-06-08', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613132', 'Lê Văn Vụ', '1983-07-16', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613133', 'Nguyễn Thị Diễm Hương', '1985-07-21', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401613'),
('401613134', 'Trần Thị Ngọc Phương', '1998-07-12', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Giáo viên', '401613'),
('401613135', 'Nguyễn Văn Kha', '1997-01-17', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Tiểu thương', '401613'),
('401613136', 'Lưu Thị Hà', '1991-12-27', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613137', 'Đinh Thị Huyền', '1985-11-22', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613138', 'Phạm Thị Phượng', '1984-09-17', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613139', 'Phạm Thị Thu Hà', '1988-11-18', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613140', 'Lưu Thị Hà Phương', '1992-04-29', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613141', 'Vũ Mỹ Duyên', '1986-10-26', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613142', 'Đặng Ngọc Anh', '1985-02-24', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613143', 'Lương Đình Phú', '1999-02-13', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613144', 'Trần Thị Huyền Trang', '1987-08-14', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613145', 'Lê Minh Trường', '1992-01-18', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613146', 'Phạm Thị Khánh Chi', '1982-05-09', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401613'),
('401613147', 'Nguyễn Thị Hương Trà', '1986-06-30', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613148', 'Nguyễn Hương Thảo Vy', '1986-01-08', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401613'),
('401613149', 'Bùi Tố Uyên', '1984-03-18', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401613'),
('401613150', 'Nguyễn Thị Mai Anh', '1995-01-22', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401613'),
('401613151', 'Nguyễn Thị Ngọc Ánh', '1995-08-20', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công an', '401613'),
('401613152', 'Nguyễn Thị Bích', '1986-09-18', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401613'),
('401613153', 'Trần Thị Kiều Diễm', '1992-04-03', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613154', 'Nguyễn Thị Hằng', '2000-08-27', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401613'),
('401613155', 'Phạm Thị Hằng', '1982-01-17', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401613'),
('401613156', 'Nguyễn Thị Như Hoa', '1983-08-18', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Bộ đội', '401613'),
('401613157', 'Trần Khánh Huyền', '1988-08-20', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Nông dân', '401613'),
('401613158', 'Lê Thị Lan', '1982-07-04', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613159', 'Ngô Thị Loan', '1987-01-16', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Tiểu thương', '401613'),
('401613160', 'Nguyễn Viết Lợi', '1998-10-10', 'Nam', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Bộ đội', '401613'),
('401613161', 'Hoàng Thị Minh', '1999-05-15', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401613162', 'Nguyễn Thị Bích Ngọc', '1989-07-23', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Nông dân', '401613'),
('401613163', 'Phan Thị Oanh', '1988-12-10', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401613'),
('401613164', 'Bùi Thị Minh Phương', '1992-03-22', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Nông dân', '401613'),
('401613165', 'Phạm Thị Như Quỳnh', '1984-07-20', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công an', '401613'),
('401613166', 'Vũ Thị Thuy', '1993-07-27', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401613'),
('401613167', 'Nguyễn Thị Thúy', '1999-06-21', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401613'),
('401613168', 'Nguyễn Thị Thanh Thúy', '2001-07-05', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401613'),
('401613169', 'Nguyễn Thị Thủy', '1983-08-18', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401613'),
('401613170', 'Đỗ Thị Trang', '1983-11-16', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Giáo viên', '401613'),
('401613171', 'Phạm Hồng Trang', '1998-08-22', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công nhân', '401613'),
('401613172', 'Phan Thị Huyền Trang', '1992-04-17', 'Nữ', 'Nghệ An', 'xã Đặng Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401613'),
('401615001', 'Nguyễn Thị Hoài Thương', '1984-11-21', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615002', 'Liêng Hót Ha Thanh', '1995-11-21', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615003', 'Nguyễn Huỳnh Phước Thuận', '1996-08-25', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615004', 'Nguyễn Thị Mỹ Vui', '1986-12-15', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615005', 'K\' Ban', '1991-06-07', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401615'),
('401615006', 'Nguyễn Kiên Cường', '1994-05-22', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401615'),
('401615007', 'Phan Trọng Đại', '1996-02-01', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401615'),
('401615008', 'Trương Thị Hiên', '1983-12-01', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Giáo viên', '401615'),
('401615009', 'Lê Như Bá Hải', '1988-09-27', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615010', 'Phạm Thị Hoa', '1988-12-16', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615011', 'Nguyễn Thị Thu Hường', '1993-09-15', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615012', 'Phạm Thị Huyên', '1985-01-14', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615013', 'Hoàng Văn Kiên', '1982-02-08', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615014', 'Đổng Minh Lý', '1989-05-31', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615015', 'Trần Khánh Linh', '1998-01-02', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615016', 'Lãnh Văn Mạnh', '1997-03-18', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615017', 'Nguyễn Thị Nhung', '1994-04-23', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615018', 'Đặng Thị Cẩm Nhung', '1989-06-22', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615019', 'Ka Nhung', '1993-11-25', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615020', 'Hoàng Thu Nguyệt', '1999-06-14', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615021', 'Nguyễn Thị Kim Phượng', '1986-08-28', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615022', 'Dương Thị Mộng Sim', '1997-01-02', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615023', 'Hoàng Trang', '1989-01-01', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615024', 'Nguyễn Thị Thùy Trâm', '1991-02-10', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615025', 'Vũ Thị Huyền Trang', '1991-07-03', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615026', 'H\' Thủy', '1990-11-07', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615027', 'Đỗ Trung Thành', '1997-06-29', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615028', 'Vũ Trần Thái Thanh', '1983-04-08', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615029', 'Ngô Nữ Thanh Thanh', '1997-01-27', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615030', 'Quang Nguyễn Bảo Vân', '1992-08-05', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615031', 'Lưu Nguyễn Thành Tín', '2000-07-30', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615032', 'Nai Ánh', '1992-06-13', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615033', 'Trần Thị Nhung', '1991-03-10', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615034', 'Nguyễn Thị Quỳnh Như', '1988-06-17', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615035', 'Đỗ Thúy Vi', '1988-10-30', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615036', 'Lâm Thị Thùy Vân', '1991-02-18', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615037', 'Sử Thị Kim Dàn', '1994-04-03', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615038', 'Trần Thị Mỹ Duyên', '1985-08-13', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công an', '401615'),
('401615039', 'Trương Thị Minh Hiếu', '1997-11-01', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615040', 'Nguyễn Ngọc Minh', '1982-01-19', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401615'),
('401615041', 'Trần Lệ Quyên', '2000-01-02', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615042', 'Ngô Thị Thanh Thảo', '1987-11-11', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615043', 'Vương Tiểu Huyền', '1982-05-11', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615044', 'Nguyễn Thị Huyền', '2000-02-19', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401615'),
('401615045', 'Lê Thị Quỳnh Như', '1995-02-15', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615046', 'Kon Sơ K\' Ry Phương', '1991-10-31', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615047', 'Nguyễn Công Tuấn', '1992-11-09', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Giáo viên', '401615'),
('401615048', 'Nhâm Ngọc Huyền Trân', '1986-10-14', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công an', '401615'),
('401615049', 'Nguyễn Thị Hoài Thương', '1992-03-06', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615050', 'Trần Nguyên Vệ', '1987-10-18', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615051', 'Cao Thị Ngọc Bích', '1982-09-18', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401615'),
('401615052', 'Phan Hồ Thanh Hằng', '1985-07-21', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615053', 'Đỗ Thị Thu Hương', '1996-05-02', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Bộ đội', '401615'),
('401615054', 'Đặng Thị Ái Liên', '1991-03-22', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công nhân', '401615'),
('401615055', 'Nguyễn Thùy Linh', '1984-12-21', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Tiểu thương', '401615'),
('401615056', 'Trần Nguyễn Yến Nhi', '1996-12-02', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Tiểu thương', '401615'),
('401615057', 'Võ Thị Thanh Tuyền', '1996-08-03', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401615'),
('401615058', 'Nguyễn Đào Ngọc Trâm', '1989-06-14', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401615'),
('401615059', 'Lê Ngọc Lan Thanh', '1988-07-16', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615060', 'Lê Dương Thanh Vân', '1985-03-31', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401615'),
('401615061', 'Trương Khánh Dung', '1985-12-31', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Giáo viên', '401615'),
('401615062', 'Dương Thanh Hoàng Mai', '1985-11-17', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Tiểu thương', '401615'),
('401615063', 'Nguyễn Lê Thùy Thảo Nhiên', '1989-09-18', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615064', 'Nguyễn Lê Thụy Hồng Ngọc', '1991-07-03', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615065', 'Hoàng Thị Mỹ Nương', '2001-01-28', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615066', 'Huỳnh Tấn Phong', '1987-08-12', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615067', 'Nguyễn Thị Hồng Hà', '1996-05-10', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615068', 'Jơ Rlơng Nai Huyền', '1985-05-25', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615069', 'Khánh Thị Trúc Mai', '2000-03-08', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615071', 'Lê Phương Nhi', '1990-02-05', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615072', 'Trần Thanh Thư', '1998-11-08', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615073', 'Lê Tấn Quốc Tân', '2001-11-19', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công nhân', '401615'),
('401615074', 'Phạm Ngọc Thảo Uyên', '2001-04-07', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615075', 'Lê Huỳnh Thái Bảo', '1998-02-16', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401615'),
('401615076', 'Ma Quốc Bảo', '1999-05-21', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615077', 'Trần Đức Hiệp', '1994-03-04', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Nông dân', '401615'),
('401615078', 'Trịnh Hùng Phong', '2000-07-02', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Công an', '401615'),
('401615079', 'Nguyễn Minh Quang', '1997-03-17', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Bộ đội', '401615'),
('401615080', 'Võ Thị Thu Hằng', '1983-10-12', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615081', 'Lê Thị Bích Loan', '1999-03-12', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615082', 'Nguyễn Đức Tân', '1994-02-16', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615083', 'Hà Mạnh Hảo', '1997-05-24', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Bộ đội', '401615'),
('401615084', 'Pang Ting Khuin', '1994-06-21', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Nông dân', '401615'),
('401615085', 'Võ Lý Hùng', '1994-08-04', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615086', 'Nguyễn Thị Hoài', '1985-10-28', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Tiểu thương', '401615'),
('401615087', 'Nguyễn Thị Mai', '1996-08-19', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Bộ đội', '401615'),
('401615088', 'Nguyễn Thị Ánh Nguyệt', '1984-09-17', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615089', 'Đoàn Thị Soa', '1999-02-13', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Nông dân', '401615'),
('401615090', 'Vương Anh Thư', '1985-08-16', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615091', 'Phan Nguyễn Tâm Trang', '2001-09-10', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Nông dân', '401615'),
('401615092', 'Nguyễn Thị Hồng Nhung', '1993-06-08', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công an', '401615'),
('401615093', 'Hồ Tấn Toàn', '2000-04-11', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401615'),
('401615094', 'Lê Nguyễn Trọng Nghĩa', '1986-05-08', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Mường', 'Công nhân', '401615'),
('401615095', 'Hồ Thị Lan Anh', '1997-09-05', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Bộ đội', '401615'),
('401615096', 'Cao Thị Anh', '1996-07-24', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615097', 'Nguyễn Lương Bằng', '1988-08-12', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Giáo viên', '401615'),
('401615098', 'Trương Công Chính', '2000-11-14', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Công nhân', '401615'),
('401615099', 'Nguyễn Bá Dương', '1982-11-10', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615100', 'Phạm Nguyễn Thái Duy', '1994-10-05', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Tày', 'Công nhân', '401615'),
('401615101', 'Nguyễn Chí Đức', '1991-12-21', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Nông dân', '401615'),
('401615102', 'K\' Đik', '1997-04-28', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615103', 'Nguyễn Thị Hạnh', '2001-01-07', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Thái', 'Nông dân', '401615'),
('401615104', 'Nguyễn Thành Khẩn', '1985-07-31', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615105', 'Nguyễn Thị Linh', '1989-05-06', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615106', 'Ngô Thị Phương', '2000-04-04', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615107', 'Trần Minh Phương', '1991-06-20', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615108', 'Vy Bích Phượng', '1990-02-04', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615109', 'Đinh Đinh Tuyết Sang', '1999-06-22', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Nùng', 'Nông dân', '401615'),
('401615110', 'Võ Văn Thao', '1991-06-28', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615111', 'Nguyễn Thị Ngọc Tuyết', '1995-10-11', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615112', 'Từ Văn Việt', '1990-09-25', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615113', 'Đỗ Thiện Văn', '1982-10-03', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615114', 'Hà Thế Vỹ', '1985-09-10', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615115', 'Hồ Thị Kim Yến', '2000-12-24', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615116', 'Lê Thị Kim Liên', '1995-03-21', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615117', 'Ngô Hoàng Thiện Mỹ', '1991-05-20', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615118', 'Nguyễn Hoàng Phương', '1993-10-17', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615119', 'Nguyễn Thị Minh Thi', '1990-02-09', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615120', 'Nguyễn Đoàn Minh Huy', '1996-06-21', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615121', 'Vũ Tiến Hoàng', '1983-12-18', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615122', 'Đinh Hồng Quân', '1997-03-18', 'Nam', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615123', 'Nguyễn Thị Thanh Tâm', '1999-08-20', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615124', 'H\' Chang Niê', '1997-05-18', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615125', 'Bùi Thị Ngọc Bích', '1991-10-16', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615126', 'Vũ Thụy Quỳnh Hương', '1996-09-13', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615127', 'Nguyễn Trúc Loan', '1997-11-19', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615128', 'Nguyễn Mỹ Linh', '1999-05-27', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615129', 'Hoàng Mai', '1997-12-26', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Giáo viên', '401615'),
('401615130', 'Hồ Phan Kim Ngân', '1993-10-15', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Bộ đội', '401615'),
('401615131', 'Hoàng Kim Ngọc', '1998-03-30', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615132', 'Nguyễn Thị Thanh Nhàn', '1993-01-27', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615'),
('401615133', 'Nguyễn Thị Truyện', '1989-06-18', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Tiểu thương', '401615'),
('401615134', 'Nguyễn Hoài Bảo Trâm', '1985-11-19', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615135', 'Bùi Ngọc Phương Trinh', '1992-04-09', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công an', '401615'),
('401615136', 'Phan Thị Thanh Trúc', '2001-06-26', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Công nhân', '401615'),
('401615137', 'Nguyễn Ngọc Nguyên Thảo', '1987-08-18', 'Nữ', 'Nghệ An', 'xã Nam Sơn, huyện Đô Lương, tỉnh Nghệ An', 'Kinh', 'Nông dân', '401615');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `town`
--

CREATE TABLE `town` (
  `town_id` varchar(4) NOT NULL,
  `town_name` varchar(50) NOT NULL,
  `province_id` varchar(2) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `town`
--

INSERT INTO `town` (`town_id`, `town_name`, `province_id`, `total`) VALUES
('0101', 'Quận Ba Đình', '01', 1000),
('0102', 'Quận Hoàn Kiếm', '01', 1500),
('0105', 'Quận Cầu Giấy', '01', 1000),
('0115', 'Quận Bắc Từ Liêm', '01', 1000),
('2701', 'Thành phố Bắc Ninh', '27', 800),
('2702', 'Huyện Yên Phong', '27', 600),
('2703', 'Huyện Thuận Thành', '27', 600),
('3801', 'Thành phố Thanh Hóa', '38', 600),
('3802', 'Thị xã Bỉm Sơn', '38', 500),
('3803', 'Thành phố Sầm Sơn', '38', 500),
('4011', 'Huyện Con Cuông', '40', 500),
('4013', 'Huyện Anh Sơn', '40', 1000),
('4016', 'Huyện Đô Lương', '40', 900);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_btl`
--

CREATE TABLE `user_btl` (
  `user` char(80) NOT NULL,
  `PASSWORD` longtext NOT NULL,
  `role` varchar(10) NOT NULL,
  `time_open` datetime DEFAULT NULL,
  `time_close` datetime DEFAULT NULL,
  `per_declare` varchar(10) DEFAULT 'yes',
  `parent_user` varchar(255) DEFAULT NULL,
  `name_unit` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_btl`
--

INSERT INTO `user_btl` (`user`, `PASSWORD`, `role`, `time_open`, `time_close`, `per_declare`, `parent_user`, `name_unit`) VALUES
('01', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'A2', '2021-12-15 00:00:00', NULL, 'yes', 'admin', 'Thành phố Hà Nội'),
('0101', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'A3', '2021-12-10 17:27:00', '2021-12-08 22:26:00', 'yes', '01', 'Quận Ba Đình'),
('40', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'A2', '2021-12-22 10:45:17', '2021-12-30 10:45:17', 'yes', 'admin', 'Tỉnh Nghệ An'),
('4013', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'A3', '2021-12-22 10:45:42', '2021-12-28 10:45:42', 'yes', '40', 'Huyện Anh Sơn'),
('401320', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'B1', '2021-12-22 10:46:29', '2021-12-30 10:46:29', 'yes', '4013', 'Xã Lĩnh Sơn'),
('40132001', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'B2', NULL, NULL, 'yes', '401320', 'Thôn 1'),
('4016', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'A3', NULL, NULL, 'yes', '40', 'Huyện Đô Lương'),
('admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'A1', NULL, NULL, 'yes', '0', 'Cán Bộ TW');

--
-- Bẫy `user_btl`
--
DELIMITER $$
CREATE TRIGGER `after_userbtl_insert` AFTER INSERT ON `user_btl` FOR EACH ROW BEGIN 
	if(length(NEW.user) = 2) THEN
    	INSERT INTO province(province_id, province, total)
        VALUES (NEW.user, NEW.name_unit, 0);
     ELSEIF (length(NEW.user) = 4) THEN
    	INSERT INTO town(town_id, town_name,province_id, total)
        VALUES (NEW.user, NEW.name_unit, LEFT(NEW.user, 2), 0);
      ELSEIF(length(NEW.user) = 6) THEN
    	INSERT INTO village(village_id, village_name,town_id, total)
        VALUES (NEW.user, NEW.name_unit,LEFT(NEW.user, 4), 0);
        end IF;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `view_danso`
-- (See below for the actual view)
--
CREATE TABLE `view_danso` (
`fullname` varchar(50)
,`CCCD` varchar(12)
,`datebirth` date
,`gender` varchar(10)
,`hometown` varchar(50)
,`address` varchar(50)
,`religion` varchar(50)
,`job` varchar(50)
,`village` varchar(50)
,`town` varchar(50)
,`province` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `view_diachi`
-- (See below for the actual view)
--
CREATE TABLE `view_diachi` (
`village_id` varchar(6)
,`village` varchar(50)
,`town` varchar(50)
,`province` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `village`
--

CREATE TABLE `village` (
  `village_id` varchar(6) NOT NULL,
  `village_name` varchar(50) NOT NULL,
  `town_id` varchar(4) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `village`
--

INSERT INTO `village` (`village_id`, `village_name`, `town_id`, `total`) VALUES
('010501', 'Phường Nghĩa Đô', '0105', 250),
('010502', 'Phường Nghĩa Tân', '0105', 250),
('010503', 'Phường Mai Dịch', '0105', 250),
('010504', 'Phường Dịch Vọng', '0105', 250),
('011505', 'Phường Thụy Phương', '0115', 250),
('011510', 'Phường Cổ Nhuế 1', '0115', 250),
('011511', 'Phường Cổ Nhuế 2', '0115', 250),
('011512', 'Phường Phú Diễn', '0115', 250),
('270101', 'Phường Vũ Ninh', '2701', 300),
('270102', 'Phường Đáp Cầu', '2701', 250),
('270103', 'Phường Thị Cầu', '2701', 250),
('270301', 'Xã Đại Đồng Thành', '2703', 200),
('270302', 'Xã Mão Điền', '2703', 200),
('270303', 'Xã Song Hồ', '2703', 200),
('380101', 'Phường Hàm Rồng', '3801', 200),
('380102', 'Phường Đông Thọ', '3801', 200),
('380103', 'Phường Nam Ngạn', '3801', 200),
('380201', 'Phường Bắc Sơn', '3802', 150),
('380202', 'Phường Ba Đình', '3802', 150),
('380203', 'Phường Lam Sơn', '3802', 200),
('401312', 'Xã Tào Sơn', '4013', 250),
('401319', 'Xã Khai Sơn', '4013', 250),
('401320', 'Xã Lĩnh Sơn', '4013', 300),
('401321', 'Xã Cao Sơn', '4013', 200),
('401601', 'Thị trấn Đô Lương', '4016', 400),
('401613', 'Xã Đặng Sơn', '4016', 300),
('401615', 'Xã Nam Sơn', '4016', 200);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `diachi`
--
DROP TABLE IF EXISTS `diachi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `diachi`  AS SELECT `village`.`village_id` AS `village_id`, `village`.`village_name` AS `village`, `town`.`town_name` AS `town`, `province`.`province` AS `province` FROM ((`village` join `town` on(`town`.`town_id` = `village`.`town_id`)) join `province` on(`province`.`province_id` = `town`.`province_id`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `donvi`
--
DROP TABLE IF EXISTS `donvi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donvi`  AS SELECT `province`.`province_id` AS `id`, `province`.`province` AS `name_unit` FROM `province` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `view_danso`
--
DROP TABLE IF EXISTS `view_danso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_danso`  AS   (select `r`.`fullname` AS `fullname`,`r`.`CCCD` AS `CCCD`,`r`.`datebirth` AS `datebirth`,`r`.`gender` AS `gender`,`r`.`hometown` AS `hometown`,`r`.`address` AS `address`,`r`.`religion` AS `religion`,`r`.`job` AS `job`,`v`.`village_name` AS `village`,`t`.`town_name` AS `town`,`p`.`province` AS `province` from (((`resume_btl` `r` join `village` `v` on(`v`.`village_id` = `r`.`village_id`)) join `town` `t` on(`t`.`town_id` = `v`.`town_id`)) join `province` `p` on(`p`.`province_id` = `t`.`province_id`)))  ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `view_diachi`
--
DROP TABLE IF EXISTS `view_diachi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_diachi`  AS SELECT `village`.`village_id` AS `village_id`, `village`.`village_name` AS `village`, `town`.`town_name` AS `town`, `province`.`province` AS `province` FROM ((`village` join `town` on(`town`.`town_id` = `village`.`village_id`)) join `province` on(`province`.`province_id` = `town`.`province_id`)) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Chỉ mục cho bảng `resume_btl`
--
ALTER TABLE `resume_btl`
  ADD PRIMARY KEY (`CCCD`),
  ADD KEY `fk_ten` (`village_id`);

--
-- Chỉ mục cho bảng `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`town_id`,`province_id`),
  ADD KEY `fk_name_province` (`province_id`);

--
-- Chỉ mục cho bảng `user_btl`
--
ALTER TABLE `user_btl`
  ADD PRIMARY KEY (`user`);

--
-- Chỉ mục cho bảng `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`village_id`,`town_id`),
  ADD KEY `fk_name_village` (`town_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `resume_btl`
--
ALTER TABLE `resume_btl`
  ADD CONSTRAINT `fk_ten` FOREIGN KEY (`village_id`) REFERENCES `village` (`village_id`);

--
-- Các ràng buộc cho bảng `town`
--
ALTER TABLE `town`
  ADD CONSTRAINT `fk_name_province` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`);

--
-- Các ràng buộc cho bảng `village`
--
ALTER TABLE `village`
  ADD CONSTRAINT `fk_name_village` FOREIGN KEY (`town_id`) REFERENCES `town` (`town_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
