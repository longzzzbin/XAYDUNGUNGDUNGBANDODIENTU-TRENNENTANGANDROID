-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2023 lúc 04:58 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `databanhangdientu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(1) NOT NULL,
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsp`, `soluong`, `gia`) VALUES
(1, 1, 2, 1, '41990000'),
(2, 3, 7, 2, '908'),
(3, 4, 3, 1, '39590000'),
(4, 4, 1, 1, '39990000'),
(5, 6, 4, 2, '30990000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(1) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp(),
  `trangthai` int(2) NOT NULL DEFAULT 0,
  `zalopay` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`, `thoigian`, `trangthai`, `zalopay`) VALUES
(1, 7, 'hà đông', '0978645312', 'c@gmail.com', 1, '41990000', '2023-04-02 14:17:00', 2, ''),
(2, 7, 'hà đông', '0978645312', 'c@gmail.com', 1, '41990000', '2023-04-02 14:17:07', 0, ''),
(3, 1, 'thanh xuân', '0147258369', 'test@gmail.com', 2, '1816', '2023-04-02 14:18:05', 0, ''),
(4, 4, 'thanh xuân', '01234567890', 'longzbin@gmail.com', 1, '79580000', '2023-04-02 14:18:57', 0, ''),
(5, 4, 'thanh xuân', '01234567890', 'longzbin@gmail.com', 1, '79580000', '2023-04-02 14:19:06', 0, ''),
(6, 8, 'cầu giấy', '0789465312', 'b@gmail.com', 2, '61980000', '2023-04-02 14:20:10', 4, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'https://i.pinimg.com/564x/66/13/78/661378df9c93258e2f7fb1e3f58ce491.jpg'),
(2, 'Điện thoại', 'https://i.pinimg.com/564x/06/ab/6d/06ab6d05f2c8f3044f49fddd12714fd0.jpg'),
(3, 'Laptop\r\n', 'https://i.pinimg.com/564x/a6/93/b4/a693b4670be4d93cdbdde279c7d8969e.jpg'),
(4, 'Máy tính bảng', 'https://i.pinimg.com/564x/0d/6f/28/0d6f285f86d696c90b7ac4122bf5d730.jpg'),
(5, 'Âm thanh', 'https://i.pinimg.com/564x/5a/93/c1/5a93c1a2ddc96cdd247c1bf9a43ac60d.jpg'),
(6, 'Đơn hàng', 'https://i.pinimg.com/564x/56/ec/c3/56ecc30f86f45fb406b5dbe06788a9de.jpg'),
(7, 'Liên hệ', 'https://i.pinimg.com/564x/25/94/b5/2594b508912d632f1bde2bb2e29ad690.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham2`
--

CREATE TABLE `sanpham2` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham2`
--

INSERT INTO `sanpham2` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'https://i.pinimg.com/564x/66/13/78/661378df9c93258e2f7fb1e3f58ce491.jpg'),
(6, 'Đơn hàng', 'https://i.pinimg.com/564x/56/ec/c3/56ecc30f86f45fb406b5dbe06788a9de.jpg'),
(7, 'Liên hệ', 'https://i.pinimg.com/564x/25/94/b5/2594b508912d632f1bde2bb2e29ad690.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giasp` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `loai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Samsung Galaxy S23 Ultra 12GB 1TB', '39990000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/2/s23-ultra-den_5.png', '\"Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế\"', 1),
(2, 'iPhone 14 Pro Max 1TB | Chính hãng VN/A', '41990000', 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_m_24.png', '\"Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\nPin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến\"', 1),
(3, 'Laptop ASUS ROG Strix G15 G513QR-HQ264T', '39590000', 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/a/s/asus-rog-strix-g15-g513qr-hq264t-r9-5900hx_9b0ba84ae1414114b06752b6d7e83568_master.jpg', '\"Laptop Asus Rog Strix G15 G513QR-HQ264T sở hữu một thiết kế đậm chấn gaming với mật lưng logo đèn LED trắng, phía trước là chiếu nghỉ tay soft-touch tiện lợi. Laptop cũng được trang bị một hệ thống tản nhiệt chất lượng với 4 khe gió cùng keo tản nhiệt kim loại lỏng giúp quá trình trao đổi ký nhanh chóng, giữ nhiệt độ laptop ổn định.\"', 2),
(4, 'Samsung Galaxy Tab S8 Plus 5G 256GB', '30990000', 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/a/tab_s8_ultra.jpg', '\"Chiếc Samsung Galaxy Tab S lớn nhất, hiển thị sống động - 14.6\", Super AMOLED 120Hz\r\nThế hệ S Pen hoàn toàn mới - Độ nhạy cao, độ trễ thấp 2,8ms, nét bút mảnh\r\nGhi lại khoảnh khắc đắt giá - Cụm 2 camera trước 12MP\r\nSử dụng cả ngày dài - Pin khủng 11.200 mAh, sạc nhanh siêu tốc 45W\"', 3),
(5, 'Tai nghe Bluetooth Apple AirPods Pro 2022', '6290000', 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/_/1_264.jpg', '\"Tích hợp chip Apple H2 mang đến chất âm sống động cùng khả năng tái tạo âm thanh 3 chiều vượt trội\r\nCông nghệ Bluetooth 5.3 kết nối ổn định, mượt mà, tiêu thụ năng lượng thấp, giúp tiết kiệm pin đáng kể\r\nChống ồn chủ động loại bỏ tiếng ồn hiệu quả gấp đôi thế hệ trước, giúp nâng cao trải nghiệm nghe nhạc\r\nChống nước chuẩn IPX4 trên tai nghe và hộp sạc, giúp bạn thỏa sức tập luyện không cần lo thấm mồ hôi\"', 4),
(6, 'gh', '5468', '6.jpg', 'vsjan', 1),
(7, 'yh', '908', '17.jpg', 'yh', 4),
(8, 'hah', '943', '18.jpg', 'bab', 2),
(9, 'ka', '125', '19.jpg', 'hsh', 3),
(10, 'haha', '8490', '10.jpg', 'yyy', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`, `status`) VALUES
(1, 'test@gmail.com', '1234', 'test', '0147258369', 0),
(2, 'n.huehhh@gmail.com', '1234', 'hehe', '543149', 0),
(3, 'a@gmail.com', '123456', 'a', '1111111111', 0),
(4, 'longzbin@gmail.com', '123', 'longa', '01234567890', 0),
(5, 'hue@gmail.com', '12345', 'huehue', '0368203202', 0),
(6, 'admin@gmail.com', '12345', 'admin', '0123456789', 1),
(7, 'c@gmail.com', '1234', 'c', '0978645312', 0),
(8, 'b@gmail.com', '1234', 'bbb', '0789465312', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idsp` (`idsp`),
  ADD KEY `iddonhang` (`iddonhang`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham2`
--
ALTER TABLE `sanpham2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai` (`loai`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanpham2`
--
ALTER TABLE `sanpham2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`idsp`) REFERENCES `sanphammoi` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD CONSTRAINT `sanphammoi_ibfk_1` FOREIGN KEY (`loai`) REFERENCES `sanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
