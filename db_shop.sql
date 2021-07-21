-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 06:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Apple', 'apple', 1, 0, '0', '2020-12-14 16:15:39', '4', '2020-12-14 22:37:23', '1', 1, 1),
(2, 'Samsung', 'samsung', 1, 0, '0', '2020-12-14 16:13:24', '4', '2020-12-14 22:37:28', '1', 1, 1),
(7, 'Huawei', 'huawei', 2, 0, '1', '2020-12-14 21:39:01', '1', '2020-12-14 21:39:01', '1', 1, 1),
(8, 'Xiaomi', 'xiaomi', 2, 0, '2', '2020-12-14 21:39:48', '1', '2020-12-14 23:41:32', '4', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'sale.smart.store.2019@gmail.com', '123456', 'nhom7@gmail.com', '30000', 'Web Site Bán Điện Thoại Di Động', 'Web bán điện thoại di động uy tín hàng đầu UTT');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(1, 'Người Yêu Cũ Hỏi Thăm', '097654321', 'phanthuong292@gmail.com', 'Dạo này anh sống tốt chứ', '2020/14/12', 1, 0, 'Phan Văn Thưởng'),
(2, 'Thắc mắc', '097654321', 'phanthuong292@gmail.com', 'Sao giá đắt vậy shop', '2020/14/12', 1, 1, 'Phan Văn Thưởng'),
(4, 'Câu hỏi', '097654322', 'vanthuan222@gmail.com', 'Thời gian giao hàng đến Triều Khúc là bao lâu', '2020/14/12', 1, 1, 'Nguyễn Văn Thuận'),
(5, 'Câu hỏi', '097654323', 'thanhminh123@gmail.com', 'Thời gian giao hàng đến Triều Khúc là bao lâu', '2020/14/12', 1, 1, 'Bạch Thanh Minh'),
(6, 'Yêu cầu', '097654324', 'phuongthao123@gmail.com', 'Ship nhanh cái shop ơi', '2020/14/12', 1, 1, 'Khuất Thị Phương Thảo'),
(7, 'Câu hỏi', '097654324', 'phuongthao123@gmail.com', 'Thời gian giao hàng đến Triều Khúc là bao lâu', '2020/14/12', 1, 1, 'Khuất Thị Phương Thảo'),
(9, 'Câu hỏi', '097654322', 'vanthuan222@gmail.com', ' Giá ship tới Đồ Sơn là bao nhiêu ạ', '2020/14/12', 1, 1, 'Nguyễn Văn Thuận'),
(10, 'Câu hỏi', '097654323', 'thanhminh123@gmail.com', ' Giá ship tới Đồ Sơn là bao nhiêu ạ', '2020/14/12', 1, 1, 'Bạch Thanh Minh');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(4, 'Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11', 'Mới đây, Xperia 1 II tại thị trường Đài Loan đã chính thức được lên đời Android 11. Hy vọng sau chiếc Xperia 1 II, sẽ có nhiều mẫu smartphone Sony hơn được cập nhật Android mới.', '<article>\r\n    <h1 class=\"titledetail\">Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11</h1>\r\n    \r\n<div class=\"userdetail\">\r\n        <a href=\"/tin-tuc/profile/2004791\">\r\n                <img width=\"20\" height=\"20\" data-src=\"https://cdn.tgdd.vn/UserUpload/Social2019/WP_20160416_13_37_14_ProL2R9Z.jpg\" src=\"https://cdn.tgdd.vn/UserUpload/Social2019/WP_20160416_13_37_14_ProL2R9Z.jpg\">\r\n            Hữu Tình\r\n        </a>\r\n    <span>7 phút trước</span>\r\n\r\n\r\n</div>\r\n\r\n    \r\n<div class=\"imgwrap\"><img alt=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\" data-original=\"https://cdn.tgdd.vn/Files/2020/12/15/1313884/update_android_11-_1440x938-800-resize.jpg\" src=\"https://cdn.tgdd.vn/Files/2020/12/15/1313884/update_android_11-_1440x938-800-resize.jpg\" title=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\"></div><h2>Mới đây, <a href=\"https://www.thegioididong.com/dtdd/sony-xperia-1-ii\" target=\"_blank\" title=\"Xperia 1 II\">Xperia 1 II</a>&nbsp;tại thị trường Đài Loan đã chính thức được lên đời Android 11. Hy vọng sau chiếc Xperia 1 II, sẽ có nhiều mẫu smartphone <a href=\"https://www.thegioididong.com/dtdd-sony\" target=\"_blank\" title=\"Sony\">Sony</a>&nbsp;hơn được cập nhật Android mới.</h2><p>Bản cập nhật có dung lượng 933 MB và đi kèm cả bản vá lỗi bảo mật tháng 11/2020. Cùng với các tính năng của Android gốc, bản cập nhật này còn có các tính năng khác được liệt kê dưới đây:</p><ul><li>Cinema Pro bổ sung hỗ trợ quay video chuyển động chậm 4K HDR 120fps (trước đây là 4K HDR 60fps).</li><li>Photo Pro bổ sung chế độ MR mới để cài đặt / lưu các tùy chọn thường dùng.</li><li>Đã có chế độ chờ SIM kép 5G + 4G (trước đây là chế độ chờ 4G + 4G).</li><li>BatteryCare hiện cung cấp các tùy chọn tạm dừng sạc pin khi đã đầy 80% hoặc 90% dung lượng.</li><li>Thêm tính năng ghi màn hình vào thanh thông báo.</li><li>Thêm nhiều hình nền mới</li><li>Nhấn và giữ nút nguồn để điều khiển ngôi nhà thông minh.</li><li>Cho phép bật Wi-Fi và Wi-Fi hotspot cùng lúc.</li><li>Cập nhật băng tần cho modem.</li></ul><p>Hiện chưa rõ bản cập nhật Android 11 dành cho Xperia 1 II khi nào sẽ tới với thị trường nước ta. Bạn có đang dùng chiếc <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"smartphone\">smartphone</a> Xperia 1 II không? Hãy thử kiểm tra xem đã có chưa nhé!</p><p>Nguồn: <a rel=\"nofollow\" href=\"https://www.gsmarena.com/sony_xperia_1_ii_receiving_android_11_in_taiwan-news-46731.php\" target=\"_blank\" title=\"Android 11\" type=\"Android 11\">Gsmarena</a></p><p>Xem thêm: <a href=\"https://www.thegioididong.com/tin-tuc/samsung-bat-dau-phat-hanh-one-ui-3-0-cho-dong-galaxy-note-20-1313291\" target=\"_blank\" title=\"Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20\" type=\"Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20\">Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20</a></p>\r\n    <div class=\"ifrS8\"></div>\r\n<input type=\"hidden\" value=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\" id=\"txtTitle\">\r\n\r\n        <span class=\"btv\">Biên tập bởi Nguyễn Khắc Ngọc</span>\r\n    <div class=\"slidePS\"></div>\r\n\r\n    <div class=\"likewied\">\r\n        <div class=\"likeshare\">\r\n            <div class=\"fb-like fb_iframe_widget\" data-href=\"https://www.thegioididong.com//tin-tuc/sony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884\" data-layout=\"button_count\" data-action=\"like\" data-size=\"small\" data-show-faces=\"false\" data-share=\"true\" fb-xfbml-state=\"rendered\" fb-iframe-plugin-query=\"action=like&amp;app_id=459645584142044&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2F%2Ftin-tuc%2Fsony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\"><span style=\"vertical-align: bottom; width: 145px; height: 28px;\"><iframe name=\"ffe523fc1df75\" width=\"1000px\" height=\"1000px\" data-testid=\"fb:like Facebook Social Plugin\" title=\"fb:like Facebook Social Plugin\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" allow=\"encrypted-media\" src=\"https://www.facebook.com/v2.6/plugins/like.php?action=like&amp;app_id=459645584142044&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df21fc9516f74dac%26domain%3Dwww.thegioididong.com%26origin%3Dhttps%253A%252F%252Fwww.thegioididong.com%252Ff101755be0bf50c%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2F%2Ftin-tuc%2Fsony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\" style=\"border: none; visibility: visible; width: 145px; height: 28px;\" class=\"\"></iframe></span></div>\r\n        </div>\r\n        <a onclick=\"ShowFrmFebck(this)\" class=\"messenger\"><b></b>Không hài lòng bài viết</a>\r\n        <div class=\"viewed\"><i class=\"iconnews-view\"></i>7 lượt xem</div>\r\n    </div>\r\n\r\n    <form id=\"frmUnsatf\" onsubmit=\"return SendFebck(\'#frmUnsatf\')\" class=\"hide\" method=\"post\" data-value=\"0\">\r\n        <textarea name=\"txtContent\" rows=\"3\" placeholder=\"Mời bạn góp ý để chúng tôi phục vụ tốt hơn\"></textarea>\r\n        <span>Hãy để lại thông tin để được hỗ trợ khi cần thiết (Không bắt buộc):</span>\r\n        <div>\r\n            <label onclick=\"changeSex(this)\" data-sex=\"1\" class=\"choosed\"><i></i>Anh</label>\r\n            <label onclick=\"changeSex(this)\" data-sex=\"2\"><i></i>Chị</label>\r\n        </div>\r\n        <input type=\"text\" name=\"txtFullName\" placeholder=\"Họ tên\">\r\n        <input type=\"text\" name=\"txtPhoneNumber\" placeholder=\"Số điện thoại\">\r\n        <input type=\"text\" name=\"txtEmail\" placeholder=\"Email\">\r\n        <input type=\"hidden\" name=\"txtSex\" value=\"1\">\r\n        <input type=\"hidden\" name=\"txtNewsId\" value=\"1313884\">\r\n        <button type=\"submit\">Gửi góp ý<span>Cam kết bảo mật thông tin cá nhân</span></button>\r\n        <label class=\"alert\" id=\"alert\"></label>\r\n    </form>\r\n\r\n</article>', 'sony.jpg', '2020-12-14 23:18:02', '1', '2020-12-14 18:03:27', '1'),
(5, 'Rơi khỏi máy bay từ độ cao 600m, iPhone 6S vẫn sống sót gần như không một vết xước', 'Rơi khỏi máy bay từ độ cao 600m, iPhone 6S vẫn sống sót gần như không một vết xước', '<article>\r\n    <h1 class=\"titledetail\">Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11</h1>\r\n    \r\n<div class=\"userdetail\">\r\n        <a href=\"/tin-tuc/profile/2004791\">\r\n                <img width=\"20\" height=\"20\" data-src=\"https://cdn.tgdd.vn/UserUpload/Social2019/WP_20160416_13_37_14_ProL2R9Z.jpg\" src=\"https://cdn.tgdd.vn/UserUpload/Social2019/WP_20160416_13_37_14_ProL2R9Z.jpg\">\r\n            Hữu Tình\r\n        </a>\r\n    <span>7 phút trước</span>\r\n\r\n\r\n</div>\r\n\r\n    \r\n<div class=\"imgwrap\"><img alt=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\" data-original=\"https://cdn.tgdd.vn/Files/2020/12/15/1313884/update_android_11-_1440x938-800-resize.jpg\" src=\"https://cdn.tgdd.vn/Files/2020/12/15/1313884/update_android_11-_1440x938-800-resize.jpg\" title=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\"></div><h2>Mới đây, <a href=\"https://www.thegioididong.com/dtdd/sony-xperia-1-ii\" target=\"_blank\" title=\"Xperia 1 II\">Xperia 1 II</a>&nbsp;tại thị trường Đài Loan đã chính thức được lên đời Android 11. Hy vọng sau chiếc Xperia 1 II, sẽ có nhiều mẫu smartphone <a href=\"https://www.thegioididong.com/dtdd-sony\" target=\"_blank\" title=\"Sony\">Sony</a>&nbsp;hơn được cập nhật Android mới.</h2><p>Bản cập nhật có dung lượng 933 MB và đi kèm cả bản vá lỗi bảo mật tháng 11/2020. Cùng với các tính năng của Android gốc, bản cập nhật này còn có các tính năng khác được liệt kê dưới đây:</p><ul><li>Cinema Pro bổ sung hỗ trợ quay video chuyển động chậm 4K HDR 120fps (trước đây là 4K HDR 60fps).</li><li>Photo Pro bổ sung chế độ MR mới để cài đặt / lưu các tùy chọn thường dùng.</li><li>Đã có chế độ chờ SIM kép 5G + 4G (trước đây là chế độ chờ 4G + 4G).</li><li>BatteryCare hiện cung cấp các tùy chọn tạm dừng sạc pin khi đã đầy 80% hoặc 90% dung lượng.</li><li>Thêm tính năng ghi màn hình vào thanh thông báo.</li><li>Thêm nhiều hình nền mới</li><li>Nhấn và giữ nút nguồn để điều khiển ngôi nhà thông minh.</li><li>Cho phép bật Wi-Fi và Wi-Fi hotspot cùng lúc.</li><li>Cập nhật băng tần cho modem.</li></ul><p>Hiện chưa rõ bản cập nhật Android 11 dành cho Xperia 1 II khi nào sẽ tới với thị trường nước ta. Bạn có đang dùng chiếc <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"smartphone\">smartphone</a> Xperia 1 II không? Hãy thử kiểm tra xem đã có chưa nhé!</p><p>Nguồn: <a rel=\"nofollow\" href=\"https://www.gsmarena.com/sony_xperia_1_ii_receiving_android_11_in_taiwan-news-46731.php\" target=\"_blank\" title=\"Android 11\" type=\"Android 11\">Gsmarena</a></p><p>Xem thêm: <a href=\"https://www.thegioididong.com/tin-tuc/samsung-bat-dau-phat-hanh-one-ui-3-0-cho-dong-galaxy-note-20-1313291\" target=\"_blank\" title=\"Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20\" type=\"Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20\">Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20</a></p>\r\n    <div class=\"ifrS8\"></div>\r\n<input type=\"hidden\" value=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\" id=\"txtTitle\">\r\n\r\n        <span class=\"btv\">Biên tập bởi Nguyễn Khắc Ngọc</span>\r\n    <div class=\"slidePS\"></div>\r\n\r\n    <div class=\"likewied\">\r\n        <div class=\"likeshare\">\r\n            <div class=\"fb-like fb_iframe_widget\" data-href=\"https://www.thegioididong.com//tin-tuc/sony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884\" data-layout=\"button_count\" data-action=\"like\" data-size=\"small\" data-show-faces=\"false\" data-share=\"true\" fb-xfbml-state=\"rendered\" fb-iframe-plugin-query=\"action=like&amp;app_id=459645584142044&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2F%2Ftin-tuc%2Fsony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\"><span style=\"vertical-align: bottom; width: 145px; height: 28px;\"><iframe name=\"ffe523fc1df75\" width=\"1000px\" height=\"1000px\" data-testid=\"fb:like Facebook Social Plugin\" title=\"fb:like Facebook Social Plugin\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" allow=\"encrypted-media\" src=\"https://www.facebook.com/v2.6/plugins/like.php?action=like&amp;app_id=459645584142044&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df21fc9516f74dac%26domain%3Dwww.thegioididong.com%26origin%3Dhttps%253A%252F%252Fwww.thegioididong.com%252Ff101755be0bf50c%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2F%2Ftin-tuc%2Fsony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\" style=\"border: none; visibility: visible; width: 145px; height: 28px;\" class=\"\"></iframe></span></div>\r\n        </div>\r\n        <a onclick=\"ShowFrmFebck(this)\" class=\"messenger\"><b></b>Không hài lòng bài viết</a>\r\n        <div class=\"viewed\"><i class=\"iconnews-view\"></i>7 lượt xem</div>\r\n    </div>\r\n\r\n    <form id=\"frmUnsatf\" onsubmit=\"return SendFebck(\'#frmUnsatf\')\" class=\"hide\" method=\"post\" data-value=\"0\">\r\n        <textarea name=\"txtContent\" rows=\"3\" placeholder=\"Mời bạn góp ý để chúng tôi phục vụ tốt hơn\"></textarea>\r\n        <span>Hãy để lại thông tin để được hỗ trợ khi cần thiết (Không bắt buộc):</span>\r\n        <div>\r\n            <label onclick=\"changeSex(this)\" data-sex=\"1\" class=\"choosed\"><i></i>Anh</label>\r\n            <label onclick=\"changeSex(this)\" data-sex=\"2\"><i></i>Chị</label>\r\n        </div>\r\n        <input type=\"text\" name=\"txtFullName\" placeholder=\"Họ tên\">\r\n        <input type=\"text\" name=\"txtPhoneNumber\" placeholder=\"Số điện thoại\">\r\n        <input type=\"text\" name=\"txtEmail\" placeholder=\"Email\">\r\n        <input type=\"hidden\" name=\"txtSex\" value=\"1\">\r\n        <input type=\"hidden\" name=\"txtNewsId\" value=\"1313884\">\r\n        <button type=\"submit\">Gửi góp ý<span>Cam kết bảo mật thông tin cá nhân</span></button>\r\n        <label class=\"alert\" id=\"alert\"></label>\r\n    </form>\r\n\r\n</article>', 'sony1.jpg', '2020-12-14 00:27:23', '1', '2020-12-14 22:53:05', '1'),
(6, 'Học theo Apple, Xiaomi sẽ ra mắt Mi 11 Mini để cạnh tranh với iPhone 12 Mini', 'Học theo Apple, Xiaomi sẽ ra mắt Mi 11 Mini để cạnh tranh với iPhone 12 Mini', '<article>\r\n    <h1 class=\"titledetail\">Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11</h1>\r\n    \r\n<div class=\"userdetail\">\r\n        <a href=\"/tin-tuc/profile/2004791\">\r\n                <img width=\"20\" height=\"20\" data-src=\"https://cdn.tgdd.vn/UserUpload/Social2019/WP_20160416_13_37_14_ProL2R9Z.jpg\" src=\"https://cdn.tgdd.vn/UserUpload/Social2019/WP_20160416_13_37_14_ProL2R9Z.jpg\">\r\n            Hữu Tình\r\n        </a>\r\n    <span>7 phút trước</span>\r\n\r\n\r\n</div>\r\n\r\n    \r\n<div class=\"imgwrap\"><img alt=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\" data-original=\"https://cdn.tgdd.vn/Files/2020/12/15/1313884/update_android_11-_1440x938-800-resize.jpg\" src=\"https://cdn.tgdd.vn/Files/2020/12/15/1313884/update_android_11-_1440x938-800-resize.jpg\" title=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\"></div><h2>Mới đây, <a href=\"https://www.thegioididong.com/dtdd/sony-xperia-1-ii\" target=\"_blank\" title=\"Xperia 1 II\">Xperia 1 II</a>&nbsp;tại thị trường Đài Loan đã chính thức được lên đời Android 11. Hy vọng sau chiếc Xperia 1 II, sẽ có nhiều mẫu smartphone <a href=\"https://www.thegioididong.com/dtdd-sony\" target=\"_blank\" title=\"Sony\">Sony</a>&nbsp;hơn được cập nhật Android mới.</h2><p>Bản cập nhật có dung lượng 933 MB và đi kèm cả bản vá lỗi bảo mật tháng 11/2020. Cùng với các tính năng của Android gốc, bản cập nhật này còn có các tính năng khác được liệt kê dưới đây:</p><ul><li>Cinema Pro bổ sung hỗ trợ quay video chuyển động chậm 4K HDR 120fps (trước đây là 4K HDR 60fps).</li><li>Photo Pro bổ sung chế độ MR mới để cài đặt / lưu các tùy chọn thường dùng.</li><li>Đã có chế độ chờ SIM kép 5G + 4G (trước đây là chế độ chờ 4G + 4G).</li><li>BatteryCare hiện cung cấp các tùy chọn tạm dừng sạc pin khi đã đầy 80% hoặc 90% dung lượng.</li><li>Thêm tính năng ghi màn hình vào thanh thông báo.</li><li>Thêm nhiều hình nền mới</li><li>Nhấn và giữ nút nguồn để điều khiển ngôi nhà thông minh.</li><li>Cho phép bật Wi-Fi và Wi-Fi hotspot cùng lúc.</li><li>Cập nhật băng tần cho modem.</li></ul><p>Hiện chưa rõ bản cập nhật Android 11 dành cho Xperia 1 II khi nào sẽ tới với thị trường nước ta. Bạn có đang dùng chiếc <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"smartphone\">smartphone</a> Xperia 1 II không? Hãy thử kiểm tra xem đã có chưa nhé!</p><p>Nguồn: <a rel=\"nofollow\" href=\"https://www.gsmarena.com/sony_xperia_1_ii_receiving_android_11_in_taiwan-news-46731.php\" target=\"_blank\" title=\"Android 11\" type=\"Android 11\">Gsmarena</a></p><p>Xem thêm: <a href=\"https://www.thegioididong.com/tin-tuc/samsung-bat-dau-phat-hanh-one-ui-3-0-cho-dong-galaxy-note-20-1313291\" target=\"_blank\" title=\"Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20\" type=\"Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20\">Sớm hơn dự kiến, Samsung đã bắt đầu phát hành bản cập nhật One UI 3.0 dựa trên Android 11 cho dòng Galaxy Note 20</a></p>\r\n    <div class=\"ifrS8\"></div>\r\n<input type=\"hidden\" value=\"Sony Xperia 1 II vừa được cập nhật Android 11, thêm các tính năng, tiện ích mới và cả bán vá lỗi bảo mật tháng 11\" id=\"txtTitle\">\r\n\r\n        <span class=\"btv\">Biên tập bởi Nguyễn Khắc Ngọc</span>\r\n    <div class=\"slidePS\"></div>\r\n\r\n    <div class=\"likewied\">\r\n        <div class=\"likeshare\">\r\n            <div class=\"fb-like fb_iframe_widget\" data-href=\"https://www.thegioididong.com//tin-tuc/sony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884\" data-layout=\"button_count\" data-action=\"like\" data-size=\"small\" data-show-faces=\"false\" data-share=\"true\" fb-xfbml-state=\"rendered\" fb-iframe-plugin-query=\"action=like&amp;app_id=459645584142044&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2F%2Ftin-tuc%2Fsony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\"><span style=\"vertical-align: bottom; width: 145px; height: 28px;\"><iframe name=\"ffe523fc1df75\" width=\"1000px\" height=\"1000px\" data-testid=\"fb:like Facebook Social Plugin\" title=\"fb:like Facebook Social Plugin\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" allow=\"encrypted-media\" src=\"https://www.facebook.com/v2.6/plugins/like.php?action=like&amp;app_id=459645584142044&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df21fc9516f74dac%26domain%3Dwww.thegioididong.com%26origin%3Dhttps%253A%252F%252Fwww.thegioididong.com%252Ff101755be0bf50c%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2F%2Ftin-tuc%2Fsony-xperia-1-ii-vua-duoc-cap-nhat-android-11-1313884&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\" style=\"border: none; visibility: visible; width: 145px; height: 28px;\" class=\"\"></iframe></span></div>\r\n        </div>\r\n        <a onclick=\"ShowFrmFebck(this)\" class=\"messenger\"><b></b>Không hài lòng bài viết</a>\r\n        <div class=\"viewed\"><i class=\"iconnews-view\"></i>7 lượt xem</div>\r\n    </div>\r\n\r\n    <form id=\"frmUnsatf\" onsubmit=\"return SendFebck(\'#frmUnsatf\')\" class=\"hide\" method=\"post\" data-value=\"0\">\r\n        <textarea name=\"txtContent\" rows=\"3\" placeholder=\"Mời bạn góp ý để chúng tôi phục vụ tốt hơn\"></textarea>\r\n        <span>Hãy để lại thông tin để được hỗ trợ khi cần thiết (Không bắt buộc):</span>\r\n        <div>\r\n            <label onclick=\"changeSex(this)\" data-sex=\"1\" class=\"choosed\"><i></i>Anh</label>\r\n            <label onclick=\"changeSex(this)\" data-sex=\"2\"><i></i>Chị</label>\r\n        </div>\r\n        <input type=\"text\" name=\"txtFullName\" placeholder=\"Họ tên\">\r\n        <input type=\"text\" name=\"txtPhoneNumber\" placeholder=\"Số điện thoại\">\r\n        <input type=\"text\" name=\"txtEmail\" placeholder=\"Email\">\r\n        <input type=\"hidden\" name=\"txtSex\" value=\"1\">\r\n        <input type=\"hidden\" name=\"txtNewsId\" value=\"1313884\">\r\n        <button type=\"submit\">Gửi góp ý<span>Cam kết bảo mật thông tin cá nhân</span></button>\r\n        <label class=\"alert\" id=\"alert\"></label>\r\n    </form>\r\n\r\n</article>', 'sony2.jpg', '2020-12-14 17:22:04', '1', '2020-12-14 17:22:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Phan Thưởng', 'thuong292', 'e10adc3949ba59abbe56e057f20f883e', '', '+84987848632', 'phanthuong292@gmail.com', '2020-12-14 22:10:08', 1, 1),
(9, 'Văn Thuận', 'thuan123', 'e10adc3949ba59abbe56e057f20f883e', '', '+84969825132', 'vanthuan123@gmail.com', '2020-12-14 17:15:12', 1, 1),
(70, 'Khuất Thị Phương Thảo', 'phuongthao', 'e10adc3949ba59abbe56e057f20f883e', '', '09876363232', 'phuongthao123@gmail.com', '2020-12-15 00:00:00', 1, 1),
(71, 'Bạch Thanh Minh', 'bachminh123', 'e10adc3949ba59abbe56e057f20f883e', '', '0987634622', 'thanhminh12123@gmail.com', '2020-12-15 00:00:00', 1, 1),
(72, 'Phan Van Thuong', 'phanthuong292', 'e10adc3949ba59abbe56e057f20f883e', '', '0987847332', 'phanthuong292', '2021-05-27 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MH1', 100000, 30, 30, '2019-09-29', 500000, 'Giảm 100k', '2020-12-14', 1, 1, 1),
(2, 'NHOM7', 200000, 20, 3, '2019-06-12', 500000, 'Giảm 200k', '2020-12-14', 1, 0, 1),
(3, 'NYC', 200000, 300, 103, '2019-07-20', 300000, 'Giảm 200k', '2020-12-14', 1, 1, 1),
(4, 'DS12', 150000, 68, 23, '2019-06-30', 500000, 'Giảm 300k', '2020-12-14', 1, 1, 1),
(13, 'OK', 150000, 200, 0, '2019-07-26', 100000, 'Giảm 150k', '2020-12-14', 1, 1, 1),
(18, 'NOCODE', 100000, 1, 0, '2021-01-04', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2020-12-14', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(99, 'dgWZiR7I', 72, '2021-06-11 08:53:11', 'Phan Van Thuong', '0987847332', 60830000, 30000, 0, 31, 318, 'Xom 1', 1, 0),
(100, '5v2UaRNO', 72, '2021-06-11 09:45:04', 'Phan Van Thuong', '0987847332', 12730000, 30000, 0, 79, 777, 'Xom1', 1, 0),
(101, 'u6artGOz', 72, '2021-06-11 09:48:05', 'Phan Van Thuong', '0987847332', 15430000, 30000, 0, 77, 752, 'Xom 2', 1, 0),
(102, 'aQjrFZAP', 2, '2021-06-11 09:53:24', 'Phan Thưởng', '+84987848632', 12730000, 30000, 0, 4, 53, 'Xom 2', 1, 0),
(103, 'bjTQulry', 2, '2021-06-17 05:36:59', 'Phan Thưởng', '+84987848632', 19530000, 30000, 0, 79, 777, 'Xóm 3', 1, 2),
(104, 'NvHswmrK', 2, '2021-06-17 05:41:08', 'Phan Thưởng', '+84987848632', 15430000, 30000, 0, 1, 277, 'Xóm 1', 1, 1),
(105, 'CLD1KVeu', 9, '2021-06-19 17:08:43', 'Văn Thuận', '+84969825132', 15430000, 30000, 0, 31, 313, 'Xóm 1', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(124, 99, 27, 2, 12700000, 1, 1),
(125, 99, 2, 1, 20000000, 1, 1),
(126, 99, 28, 1, 15400000, 1, 1),
(127, 100, 27, 1, 12700000, 1, 1),
(128, 101, 28, 1, 15400000, 1, 1),
(129, 102, 27, 1, 12700000, 1, 1),
(130, 103, 23, 1, 19500000, 1, 1),
(131, 104, 28, 1, 15400000, 1, 1),
(132, 105, 28, 1, 15400000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'UTT Company', 'UTTCOMPANY', 'dienthoai', '2020-12-14 22:47:31', 4, '2020-12-14 16:08:31', 4, 1, 1),
(2, 'Thế giới di động', 'DD', ' dienthoai', '2020-12-14 23:30:37', 1, '2020-12-14 10:52:13', 1, 1, 1),
(3, 'Amazon', 'AMAZON', 'dienthoai', '2020-12-14 16:06:31', 4, '2020-12-14 23:40:22', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 2, 'Samsung Galaxy S10+ (Plus) Green', 'samsung-galaxy-s10-plus-green', '5df5496a8fb411fd207b39eae9802655.jpg', '5a6fb8ec2db3063e1e241a3e75d4e3ee.png', 'Samsung Galaxy S10 Plus Green chính hãng, nhiều ưu đãi khi đặt trước', '<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" style=\"height:525px; width:840px\" /></p>\r\n\r\n<h2><strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;ch&iacute;nh h&atilde;ng, nhiều ưu đ&atilde;i khi đặt trước</strong></h2>\r\n\r\n<p><em>Vậy l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Samsung Galaxy S&nbsp;</a></strong>thế hệ thứ 10 đ&atilde; được ra mắt, v&agrave; kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng một ch&uacute;t n&agrave;o. Trong bộ ba si&ecirc;u phẩm d&ograve;ng S năm nay,<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;</strong>l&agrave; thiết bị đắt gi&aacute; cũng như được trang bị những t&iacute;nh năng đ&igrave;nh đ&aacute;m nhất từ&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\">Samsung</a></strong>. Đ&acirc;y hứa hẹn sẽ trở th&agrave;nh một trong những smartphone ho&agrave;n hảo nhất năm 2019. Ngo&agrave;i ra, c&aacute;c si&ecirc;u phẩm dự kiến tr&igrave;nh l&agrave;ng của Samsung như&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s10e.html\" target=\"_blank\"><strong>Samsung Galaxy S10e</strong></a>,&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-10-chinh-hang.html\" target=\"_blank\"><strong>Samsung Galaxy Note 10&nbsp;</strong></a>với những thiết kế c&ugrave;ng t&iacute;nh năng đột ph&aacute; hứa hẹn sẽ b&ugrave;ng nổ giới c&ocirc;ng nghệ trong năm nay.&nbsp;</em></p>\r\n\r\n<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"thiết kế samsung galaxy s10 plus\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-1.jpg_1.jpg\" /></p>\r\n\r\n<p>Về thiết kế mặt lưng, tr&ecirc;n Galaxy S10 Plus, thay v&igrave; đặt camera nằm dọc, Samsung đ&atilde; xoay ngang cụm camera giống như tr&ecirc;n Note 9. Đồng thời v&acirc;n tay cũng đ&atilde; được t&iacute;ch hợp thẳng v&agrave;o trong m&agrave;n h&igrave;nh. Nhờ đ&oacute; m&agrave; thiết kế tr&ecirc;n m&aacute;y tr&ocirc;ng gọn g&agrave;ng, vu&ocirc;ng vứt hơn. Song song với đ&oacute;, Galaxy S10 Plus cũng c&oacute; độ mỏng rất ấn tượng, chỉ 7.8mm v&agrave; c&oacute; hai khối lượng dựa v&agrave;o tuỳ phi&ecirc;n bản: 175g (bản thường), 198g (bản gốm).</p>\r\n\r\n<p><img alt=\"màn hình samsung galaxy s10\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" /></p>\r\n\r\n<p>Samsung cũng kh&ocirc;ng qu&ecirc;n mang l&ecirc;n S10 Plus khả năng kh&aacute;ng nước IP68 cũng như mặt k&iacute;nh bảo vệ Gorilla Glass 5 ở ph&iacute;a sau. Về m&agrave;u sắc, Samsung Galaxy S10 Plus sở hữu rất nhiều phi&ecirc;n bản m&agrave;u sắc như: Prism White, Prism Black, Prism Green, Prism Blue, Canary Yellow, Flamingo Pink, Ceramic Black, Ceramic White. Nhưng hiện tại bạn c&oacute; thể đặt h&agrave;ng trước c&aacute;c m&agrave;u như Prism White, Prism Black v&agrave; Prism Green.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Dynamic AMOLED 2K, t&iacute;ch hợp cảm biến v&acirc;n tay si&ecirc;u &acirc;m&nbsp;</strong></h3>\r\n\r\n<p>Tr&ecirc;n m&agrave;n h&igrave;nh Galaxy S10 Plus, nếu như thiết kế Infinity-O l&agrave; một điểm c&aacute;ch t&acirc;n, th&igrave; chất lượng hiển thị lại l&agrave; một lời khẳng định về chất lượng. M&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus được trang bị tấm nền Dynamic AMOLED do ch&iacute;nh Samsung ph&aacute;t triển. Với kỹ thuật Dynamic Tone Mapping, m&agrave;n h&igrave;nh sử dụng tấm nền tr&ecirc;n sẽ hỗ trợ tối ưu độ tương phản cho từng khung h&igrave;nh kh&aacute;c nhau. Song song với đ&oacute;, Dynamic AMOLED cũng đạt chuẩn HDR10+. Đi k&egrave;m với độ ph&acirc;n giải rất cao - 1440 x 3040, m&agrave;n h&igrave;nh tr&ecirc;n Galaxy S10 Plus chắc chắn sẽ mang đến những trải nghiệm hiển thị xuất sắc chưa từng c&oacute;.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ với Exynos 9820, dung lượng RAM 8GB tối thiểu</strong></h3>\r\n\r\n<p>Galaxy S10 Plus được Samsung n&acirc;ng cấp l&ecirc;n vi xử l&yacute; Exynos 9820. Đ&acirc;y l&agrave; một CPU được thiết kế tr&ecirc;n tiến tr&igrave;nh 8nm v&agrave; chắc chắn sẽ mang đến một tốc độ xử l&yacute; nhanh hơn thế hệ cũ 9810 rất nhiều. Nh&acirc;n NPU cũng xuất hiện nhằm hỗ trợ c&aacute;c thuật to&aacute;n xử l&yacute; AI. B&ecirc;n cạnh đ&oacute;, mức ti&ecirc;u thụ pin của bộ vi xử l&yacute; n&agrave;y cũng &iacute;t hơn đ&aacute;ng kể. Song song với vi xử l&yacute; mạnh mẽ, Samsung cũng trang bị cho Galaxy S10 Plus bộ nhớ RAM tối thiểu l&agrave; 8GB (cho hai phi&ecirc;n bản 128<strong>/<a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-512gb.html\" target=\"_blank\">512GB</a></strong>&nbsp;bộ nhớ trong). Đặc biệt hơn, bản tối đa cấu h&igrave;nh&nbsp;<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-1tb.html\" target=\"_blank\">Galaxy S10 Plus 1TB</a></strong>&nbsp;sẽ sở hữu dung lượng RAM l&ecirc;n đến 12GB.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-5.jpg\" style=\"height:531px; width:840px\" /></p>\r\n', 1, 320, 60, 10, 18290000, 15290000, '2020-12-14 23:14:00', '4', '2020-12-14 17:11:20', '1', 1, 1),
(2, 1, 'Apple iPhone XR 128GB Black Chính hãng', 'apple-iphone-xr-128gb-black-chinh-hang', '1c8f01e59cf56a2c2e946b58f64f7624.jpg', 'b6a64d0316b06e976ad4324a4063e341.jpg#13b9fc538c72f97683304fcd8c7194fb.jpg#2aa38bbfc27b9aac9d958fb4898bbe08.png', 'Sức mạnh đầu bảng thế giới smartphone', '<p><strong>Bạn cần mua một chiếc iPhone thời thượng, cấu h&igrave;nh mạnh mẽ v&agrave; camera xuất sắc nhất trong tầm gi&aacute; hợp l&yacute;. iPhone XR 128GB ch&iacute;nh l&agrave; lựa chọn d&agrave;nh cho bạn.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-16.jpg\" style=\"height:534px; width:800px\" /></strong>Bộ vi xử l&yacute; Apple A12 Bionic tr&ecirc;n iPhone XR 128GB đang l&agrave; con chip mạnh mẽ nhất thế giới smartphone hiện nay. Bạn sẽ c&oacute; 6 nh&acirc;n, trong đ&oacute; 2 nh&acirc;n hiệu năng cao nhanh hơn 15% v&agrave; 4 nh&acirc;n tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của iPhone X. Đồng thời GPU đồ họa của A12 Bionic mạnh hơn tới 50%, cho ph&eacute;p bạn chơi mọi tựa game ở cấu h&igrave;nh cao nhất một c&aacute;ch nhẹ nh&agrave;ng v&agrave; mượt m&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-12.jpg\" style=\"height:533px; width:800px\" />B&ecirc;n cạnh sức mạnh đ&aacute;ng kinh ngạc, Apple A12 Bionic c&ograve;n l&agrave; con chip hỗ trợ tr&iacute; tuệ nh&acirc;n tạo. Với 8 nh&acirc;n Neural Engine c&oacute; khả năng học hỏi theo thời gian thực, iPhone XR c&oacute; thể nhận ra th&oacute;i quen sử dụng điện thoại của bạn, sau đ&oacute; đưa ra những dự đo&aacute;n, h&agrave;nh động xử l&yacute; nhanh dựa tr&ecirc;n những g&igrave; bạn l&agrave;m từng ng&agrave;y. 8 nh&acirc;n AI ri&ecirc;ng biệt c&ograve;n hỗ trợ cho iPhone XR trong rất nhiều trường hợp, từ nhận diện khu&ocirc;n mặt, chụp ảnh x&oacute;a ph&ocirc;ng, smart HDR cho đến c&ocirc;ng nghệ thực tế tăng cường AR. Mọi thứ đều trở n&ecirc;n dễ d&agrave;ng với bạn tr&ecirc;n iPhone XR.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-2.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h3><strong>Camera chỉ một l&agrave; đủ</strong></h3>\r\n\r\n<p>Kh&ocirc;ng cần qu&aacute; nhiều camera sau mang t&iacute;nh chạy đua, iPhone XR 128GB vẫn nổi bật khi sở hữu cảm biến camera xuất sắc h&agrave;ng đầu. Camera ch&iacute;nh tr&ecirc;n iPhone XR c&oacute; độ ph&acirc;n giải 12MP, khẩu độ f/1.8, lấy n&eacute;t nhanh gấp đ&ocirc;i, chụp đ&ecirc;m sắc n&eacute;t v&agrave; c&oacute; khả năng chụp ảnh x&oacute;a ph&ocirc;ng ưu việt. T&iacute;nh năng nổi bật nhất l&agrave; Smart HDR, chụp đẹp trong mọi điều kiện &aacute;nh s&aacute;ng nhờ khả năng b&ugrave; trừ s&aacute;ng ho&agrave;n hảo. iPhone XR kh&ocirc;ng chỉ chụp ảnh x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c m&agrave; c&ograve;n c&oacute; thể điều chỉnh được độ mờ của hậu cảnh, th&ecirc;m c&aacute;c hiệu ứng để ảnh ch&acirc;n dung của bạn đẹp một c&aacute;ch chuy&ecirc;n nghiệp.</p>\r\n\r\n<h3><strong>Chiếc iPhone m&agrave;n h&igrave;nh lớn tr&agrave;n viền cạnh</strong></h3>\r\n\r\n<p>Đ&uacute;ng như đặc trưng của d&ograve;ng iPhone X, iPhone XR 128GB sử dụng thiết kế tr&agrave;n viền gi&uacute;p cho d&ugrave; m&agrave;n h&igrave;nh lớn tới 6,1 inch nhưng iPhone XR vẫn nhỏ gọn hơn so với iPhone 8 Plus, dễ d&agrave;ng cầm nắm thao t&aacute;c bằng một tay. M&agrave;n h&igrave;nh iPhone XR c&ocirc;ng nghệ Liquid Retina sắc n&eacute;t, m&agrave;u sắc ch&iacute;nh x&aacute;c, độ s&aacute;ng cao, t&aacute;i tạo cuộc sống v&ocirc; c&ugrave;ng ch&acirc;n thực. Đ&acirc;y l&agrave; m&agrave;n h&igrave;nh LCD đẹp nhất thế giới smartphone với 6 tấm cảm biến đ&egrave;n nền dưới m&agrave;n h&igrave;nh, tự động điều chỉnh c&acirc;n bằng trắng th&ocirc;ng minh để thay đổi nhiệt độ m&agrave;u dựa theo m&ocirc;i trường, gi&uacute;p bạn lu&ocirc;n được tận hưởng m&agrave;n h&igrave;nh đẹp v&agrave; dễ chịu cho mắt.<img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-17.jpg\" style=\"height:583px; width:800px\" /></p>\r\n\r\n<h3><strong>Thoải m&aacute;i lựa chọn m&agrave;u sắc theo &yacute; th&iacute;ch</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; kiểu d&aacute;ng đẹp mắt khi được ho&agrave;n thiện từ nh&ocirc;m v&agrave; vỏ k&iacute;nh bền nhất trong thế giới smartphone, iPhone XR c&ograve;n l&agrave; chiếc iPhone nhiều lựa chọn m&agrave;u sắc nhất. Rất nhiều m&agrave;u sắc đang chờ bạn lựa chọn: Đỏ, v&agrave;ng, trắng, hồng, đen, xanh. Đội ngũ thiết kế của Apple đ&atilde; d&ugrave;ng 7 tấm nền m&agrave;u sắc để m&agrave;u sơn c&oacute; độ s&acirc;u đầy ấn tượng phản chiếu qua lớp k&iacute;nh sang trọng. Vỏ k&iacute;nh cũng mang lại cho iPhone XR khả năng sạc kh&ocirc;ng d&acirc;y. Đặc biệt, iPhone XR c&ograve;n rất bền vững nhờ khả năng chống nước, mang tới sự y&ecirc;n t&acirc;m khi sử dụng.</p>\r\n\r\n<h3><strong>Thời lượng pin tuyệt vời</strong></h3>\r\n\r\n<p>Một trong những l&yacute; do để iPhone XR được y&ecirc;u th&iacute;ch ch&iacute;nh l&agrave; thời lượng pin. Đ&acirc;y l&agrave; chiếc iPhone c&oacute; thời lượng pin tốt nhất hiện nay, đảm bảo cho bạn sử dụng thoải m&aacute;i trong thời gian l&ecirc;n tới hai ng&agrave;y. C&ocirc;ng việc v&agrave; giải tr&iacute; lu&ocirc;n lu&ocirc;n tr&ocirc;i chảy với một chiếc điện thoại hiệu năng mạnh, pin tốt như iPhone XR.</p>\r\n\r\n<h3><strong>N&acirc;ng tầm bảo mật khu&ocirc;n mặt</strong></h3>\r\n\r\n<p>Nhận diện khu&ocirc;n mặt Face ID tr&ecirc;n iPhone XR đ&atilde; được n&acirc;ng l&ecirc;n tầm cao mới. Bạn c&oacute; thể mở kh&oacute;a iPhone, đăng nhập v&agrave;o ứng dụng hay thanh to&aacute;n chỉ trong nh&aacute;y mắt m&agrave; kh&ocirc;ng cần nhập mật khẩu. Đơn giản chỉ l&agrave; cầm m&aacute;y l&ecirc;n, điện thoại sẽ qu&eacute;t khu&ocirc;n mặt si&ecirc;u nhanh v&agrave; x&aacute;c thực mở kh&oacute;a ngay lập tức.<img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-11.jpg\" style=\"height:533px; width:800px\" /></p>\r\n', 1, 20, 26, 20, 21000000, 20000000, '2020-12-14 23:28:34', '1', '2020-12-14 17:08:04', '1', 1, 1),
(4, 2, 'Samsung Galaxy M20 Blue', 'samsung-galaxy-m20-blue', 'fa97ee4b0f27dcf536795b32c58ae1c0.jpg', '23fd459c94ccc1d5f5092169543ff3c2.jpg', 'Điện thoại Samsung Galaxy M20 - Cấu hình mạnh mẽ, thiết kế màn hình giọt nước', '<p><em>Nối tiếp th&agrave;nh c&ocirc;ng sau series&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-a.html\" target=\"_blank\">Galaxy A</a>,<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\">h&atilde;ng điện thoại SamSung</a>&nbsp;sẽ&nbsp;<em>ra mắt d&ograve;ng Galaxy M.</em><em>Theo đ&oacute;, Galaxy M10, Galaxy M20 l&agrave; 2 mẫu điện thoại đầu ti&ecirc;n được ra mắt v&agrave; sẽ được cập nhật&nbsp;<a href=\"https://www.android.com/versions/pie-9-0/\" target=\"_blank\">Android Pie 9</a>&nbsp;v&agrave;o th&aacute;ng 8/2018.</em></em></p>\r\n\r\n<h3><strong><a href=\"https://www.lifewire.com/what-is-tft-lcd-578664\" target=\"_blank\">M&agrave;n h&igrave;nh&nbsp;TFT LCD</a>&nbsp;tr&agrave;n viền, thiết kế&nbsp;giọt nước độc đ&aacute;o cho tỷ lệ hiển thị cao</strong></h3>\r\n\r\n<p>Tuy với chất liệu nhựa nhưng&nbsp;<strong>Samsung Galaxy M20&nbsp;</strong>vẫn mang trong m&igrave;nh một thiết kế nguy&ecirc;n khối sang trọng như một thiết bị cao cấp. Khi kh&ocirc;ng sờ v&agrave;o, mặt lưng b&oacute;ng bẩy cho cảm gi&aacute;c như&nbsp; mặt lưng k&iacute;nh sang trọng.</p>\r\n\r\n<p>Phần mặt trước được thiết kế với mặt k&iacute;nh cong 2,5 D. Sau thiết kế mang h&igrave;nh đục lỗ tr&ecirc;n&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a8-2018-chinh-hang.html\" target=\"_blank\">Samsung Galaxy A8</a>, th&igrave; M20 đ&atilde; quay trở lại với thiết kế giọt nước. Với k&iacute;ch thước 6.3 inch được thiết kế giọt nước c&ugrave;ng m&agrave;n h&igrave;nh tr&agrave;n viền đ&atilde; mang đến cho tỉ lệ hiển thị của Samsung Galaxy M20 l&ecirc;n tới gần 100%.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-m20-hinh-1.jpg\" style=\"height:592px; width:840px\" /></p>\r\n\r\n<p>Được trang bị c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;TFT LCD c&oacute; độ ph&acirc;n giải m&agrave;n h&igrave;nh fullHD+ 1080 x 2340 pixels, 16 triệu m&agrave;u. Nhờ đ&oacute; m&agrave;n h&igrave;nh Samsung Galaxy M20 cho khả năng hiển thị tốt với c&aacute;c icon kh&ocirc;ng bị vỡ, h&igrave;nh ảnh tươi s&aacute;ng.</p>\r\n\r\n<h3><strong>Điện thoại Samsung Galaxy M20 c&oacute; hiệu năng mạnh mẽ</strong></h3>\r\n\r\n<p>SamSung đ&atilde; trang bị cho sản phẩm của m&igrave;nh con chip tự sản xuất Exynos 7904 8 nh&acirc;n 64-bit, trong đ&oacute; 2 nh&acirc;n 2.2 GHz Cortex-A73 &amp; 6 nh&acirc;n 1.6 GHz Cortex-A53 tr&ecirc;n nền tảng hệ hiều h&agrave;nh Android 8.1 (Oreo). Nhờ đ&oacute; m&agrave;&nbsp;<strong>Samsung Galaxy M20</strong>c&oacute; một hiệu năng mạnh mẽ, c&aacute;c thao t&aacute;c tr&ecirc;n ứng dụng trơn tru.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-m20-hinh-2.jpg\" style=\"height:585px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Samsung Galaxy M20 c&ograve;n được trang bị con chip GPU Mali G71 cho khả năng chơi game tốt, đặc biệt l&agrave; những game đồ họa hay c&aacute;c tựa game đ&igrave;nh đ&aacute;m hiện nay như PUBG Mobile hoặc Asphalt 8.</p>\r\n\r\n<p>Với dung lượng RAM 3 GB, bộ nhớ trong 32 GB n&ecirc;n M20 cho khả năng hoạt động mượt m&agrave;, hạn chế t&igrave;nh trạng reload khi mở nhiều ứng dụng. Như vậy M20 hứa hẹn đ&aacute;p ứng được nhu cầu của những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<h3><strong>Samsung Galaxy M20 sở hữu camera k&eacute;p cho chất lượng ảnh sắc n&eacute;t&nbsp;</strong></h3>\r\n\r\n<p>Galaxy M20 được trang bị cụm camera k&eacute;p với độ ph&acirc;n giải lần lượt l&agrave; 13 MP (khẩu độ F/1.9) + 5 MP (khẩu độ F/2.2) c&ugrave;ng nhiều t&iacute;nh năng chụp ảnh n&acirc;ng cao như chụp ảnh x&oacute;a ph&ocirc;ng, HDR, chạm nấy n&eacute;t. Ngo&agrave;i ra camera 5 MP c&ograve;n c&oacute; khả năng chụp h&igrave;nh với g&oacute;c si&ecirc;u rộng lần đầu ti&ecirc;n được trang bị tr&ecirc;n sản phẩm smartphone phổ th&ocirc;ng. C&oacute; lẽ SamSung đ&atilde; d&agrave;nh rất nhiều ưu &aacute;i cho Galaxy M20 khi sản phẩm n&agrave;y lại tiếp tục sở hữu một t&iacute;nh năng lần đầu ti&ecirc;n xuất hiện tr&ecirc;n c&aacute;c sản phẩm smartphone tầm trung. Với t&iacute;nh năng cao cấp n&agrave;y người d&ugrave;ng c&oacute; thể tha hồ lưu lại những khoảnh khắc trong cuộc sống h&agrave;ng ng&agrave;y hoặc c&oacute; thể tự tạo cho m&igrave;nh những bộ ảnh hết sức tuyệt vời.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-m20-hinh-5.jpg\" style=\"height:544px; width:840px\" /></p>\r\n\r\n<h3>Mua điện thoại Samsung Galaxy M20 ở đ&acirc;u? Gi&aacute; bao nhi&ecirc;u?</h3>\r\n\r\n<p>Một sản phẩm tầm trung nhưng mang cấu h&igrave;nh mạnh mẽ,&nbsp;<strong>Samsung Galaxy M20</strong>&nbsp;hứa hẹn l&agrave; một đối thủ đ&aacute;ng gờm trong thị trường smartphone tầm trung, cạnh tranh trực tiếp với c&aacute;c t&ecirc;n tuổi Trung Quốc như Oppo, Huawei trong năm 2019. Nếu bạn quan t&acirc;m h&atilde;y đến ngay hệ thống cửa h&agrave;ng CellphoneS hoặc truy cập ngay webite để tham khảo gi&aacute; b&aacute;n chi tiết của sản phẩm n&agrave;y.</p>\r\n', 2, 400, 44, 10, 4990000, 4250000, '2020-12-14 21:45:31', '1', '2020-12-14 17:12:15', '1', 1, 1),
(5, 2, 'Samsung Galaxy A50 White', 'samsung-galaxy-a50-white', '636872943529900358_samsung-galaxy-a50-trang-1.png', '2803038d1e70c78f962564f440b52282.jpg#63f7ee76f51d47c525d4f3813ee9dc29.jpg', 'Điện thoại Samsung Galaxy A50 – Smartphone với màn hình tràn viền, cụm 3 camera ấn tượng', '<p><em>Sau&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a20.html\" target=\"_blank\"><strong>Galaxy A20</strong></a>&nbsp;v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-a30-64gb.html\" target=\"_blank\"><strong>Galaxy A30</strong></a>&nbsp;th&igrave; mới đ&acirc;y&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\"><strong>SamSung</strong></a>&nbsp;tiếp tục bổ sung một c&aacute;i t&ecirc;n mới v&agrave;o danh s&aacute;ch&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-a.html\" target=\"_blank\"><strong>Galaxy A</strong></a>&nbsp;của m&igrave;nh, đ&oacute; ch&iacute;nh l&agrave;&nbsp;<strong>SamSung Galaxy A50</strong>. A50 với nhiều c&ocirc;ng nghệ với v&agrave; hấp dẫn như cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh, cụm 3 camera hứa hẹn sẽ mang đến trải nghiệm tuyệt vời cho người d&ugrave;ng.</em></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 6.4 inch &ndash; tận hưởng trọn vẹn với m&agrave;n h&igrave;nh v&ocirc; cực</strong></h3>\r\n\r\n<p>Galaxy A50 sở hữu một m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn l&ecirc;n đến 6.4 inch c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Infinity-U tr&agrave;n viền mang đến những trải nghiệm tận c&ugrave;ng cho người d&ugrave;ng. C&ugrave;ng với đ&oacute; l&agrave; tấm nền&nbsp;<a href=\"https://www.lifewire.com/super-amoled-4151073\" target=\"_self\">Super AMOLED</a>&nbsp;chuẩn FHD+ v&agrave; m&agrave;n h&igrave;nh 16 triệu m&agrave;u nhờ đ&oacute; A50 mang đến những trải nghiệm xem ho&agrave;n to&agrave;n kh&aacute;c biệt với những h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thực v&agrave; sống động đến từng chi tiết.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-1.jpg\" style=\"height:469px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh một m&agrave;n h&igrave;nh v&ocirc; cực với chất lượng hiển thị tốt th&igrave; Galaxy A50 c&ograve;n sở hữu một thiết kế ấn tượng với mặt k&iacute;nh 3D cao cấp kết hợp viền m&agrave;n h&igrave;nh cong tr&agrave;n tinh tế tạo n&ecirc;n một tổng thể nguy&ecirc;n khối liền mạch ho&agrave;n hảo nhờ đ&oacute; m&aacute;y cho khả năng cầm nắm kh&aacute; chắc chắn. Ngo&agrave;i ra, m&agrave;u sắc cũng l&agrave; một điểm nhấn ấn tượng tr&ecirc;n A50 khi m&aacute;y sở hữu nhiều phi&ecirc;n bản m&agrave;u độc đ&aacute;o&nbsp; như đen thi&ecirc;n thạch, xanh đại dương v&agrave; trắng ngọc trai.</p>\r\n\r\n<h3><strong>Bộ ba camera sau với khả năng chụp ảnh AI cho những bức ảnh chuẩn nhiếp ảnh gia</strong></h3>\r\n\r\n<p>Với ba ổng k&iacute;nh đa khẩu độ, từ camera g&oacute;c si&ecirc;u rộng 8MP mang đến g&oacute;c chụp 123 độ thật như mắt nh&igrave;n đến camera đo chiều s&acirc;u 5MP v&agrave; camera khẩu độ lớn 25MP thu s&aacute;ng vượt trội. Ngo&agrave;i ra, cụm camera sau tr&ecirc;n Galaxy A50 c&ograve;n được t&iacute;ch hợp nhiều t&iacute;nh năng th&ocirc;ng minh như chế độ tối ưu h&oacute;a cảnh gi&uacute;p nhận diện chủ thể. Hay c&ocirc;ng nghệ tr&iacute; th&ocirc;ng minh nh&acirc;n tạo AI gi&uacute;p tự động tối ưu độ s&aacute;ng, độ b&atilde;o h&ograve;a gi&uacute;p bức ảnh lu&ocirc;n đẹp ho&agrave;n hảo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-2.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<p>Tất cả đ&oacute; gi&uacute;p Galaxy A50 cho ra những bức ảnh c&oacute; chất lượng như được chụp bởi những nhiếp ảnh gia chuy&ecirc;n nghiệp. Bất kể thời gian v&agrave; kh&ocirc;ng gian, h&agrave;nh tr&igrave;nh của bạn sẽ trở n&ecirc;n trọn vẹn với cụm 3 camera sẵn s&agrave;ng bắt trọn mọi n&eacute;t đẹp d&ugrave; trong điều kiện thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p>Đặc bi&ecirc;t với t&iacute;nh năng nhận diện ảnh lỗi khi Galaxy A50 c&oacute; thể ph&acirc;n biệt được c&aacute;c trường hợp mắt nhắm, ống k&iacute;nh bị mờ hay ngược s&aacute;ng. Nhờ đ&oacute; người d&ugrave;ng c&oacute; thể kịp thời điều chỉnh v&agrave; cho ra những khoảnh khắc ho&agrave;n hảo v&agrave; sắc n&eacute;t nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Galaxy-A50-3.jpg\" style=\"height:446px; width:840px\" /></p>\r\n\r\n<h3><strong>Mở kh&oacute;a nhanh v&agrave; bảo mật an to&agrave;n với x&aacute;c thực sinh trắc học</strong></h3>\r\n\r\n<p>Galaxy A50 với&nbsp; c&ocirc;ng nghệ bảo mật sinh trắc học t&acirc;n tiến với khả năng qu&eacute;t v&acirc;n tay&nbsp; dưới m&agrave;n h&igrave;nh nhanh ch&oacute;ng v&agrave; an to&agrave;n. Ngo&agrave;i ra, bạn cũng c&oacute; thể lựa chọn một phương thức kh&aacute;c v&agrave; nhanh ch&oacute;ng kh&ocirc;ng k&eacute;m đ&oacute; ch&iacute;nh l&agrave; nhận diện khu&ocirc;n mặt. Việc bạn cần l&agrave;m l&agrave; giữ điện thoại trước mặt, c&ocirc;ng nghệ nhận diện khu&ocirc;n mặt sẽ gi&uacute;p bạn truy cập v&agrave;o điện thoại một c&aacute;ch nhanh ch&oacute;ng nhưng kh&ocirc;ng k&eacute;m phần an to&agrave;n.</p>\r\n', 2, 368, 12, 10, 6990000, 6390000, '2020-12-14 21:49:23', '1', '2020-12-14 17:04:43', '1', 1, 1),
(6, 8, 'Redmi Note 7 32GB Pink', 'redmi-note-7-32gb-pink', 'dff47577347f3fddcda326afac0c7f34.jpg', '467d27927f4a8057bcf3dd2bb7fe7ef4.jpg#06488aaef1d138e77c10e4c750305f1c.jpg', 'Cấu hình đỉnh giá bất ngờ', '<h2><a href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-note-7\" target=\"_blank\">Xiaomi Redmi Note 7</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;gi&aacute; rẻ mới được giới thiệu v&agrave;o đầu năm 2019 với nhiều trang bị đ&aacute;ng gi&aacute; như&nbsp;thiết kế notch giọt nước hay camera l&ecirc;n tới 48 MP.</h2>\r\n\r\n<h3>Hiệu năng mạnh mẽ trải nghiệm game mượt m&agrave;</h3>\r\n\r\n<p>Redmi Note 7 xứng đ&aacute;ng l&agrave; một trong những chiếc smartphone c&oacute; hiệu năng tốt, với điểm Antutu đo được khoảng 137586.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/42/167535/Slider/vi-vn-xiaomi-redmi-note-7-thietke.jpg\" style=\"height:433px; width:780px\" />Nhờ được cung cấp sức mạnh bởi con chip Snapdragon 660 c&ugrave;ng RAM 4 GB, m&aacute;y chiến mượt m&agrave; c&aacute;c d&ograve;ng game hiện n&agrave;y với cấu h&igrave;nh tầm trung hoặc cao (tuỳ game) như Li&ecirc;n Qu&acirc;n, PUBG,...</p>\r\n\r\n<p>Giao diện trực quan dễ sử dụng, c&oacute; thể tuỳ chỉnh ph&iacute;m điều hướng cũng l&agrave; một ưu điểm của m&aacute;y.</p>\r\n\r\n<h3>Thiết kế hiện đại, theo xu thế</h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi\" target=\"_blank\">điện thoại Xiaomi</a>&nbsp;mới l&agrave; một sự lột x&aacute;c ho&agrave;n to&agrave;n về thiết kế so với c&aacute;c d&ograve;ng Redmi trước đ&acirc;y.<img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/42/167535/xiaomi-redmi-note-7-tgdd-4.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>M&aacute;y sở hữu cho m&igrave;nh&nbsp;mặt lưng bằng kính ph&ocirc;́i màu gradient, mang lại cho m&aacute;y cảm gi&aacute;c cao cấp v&agrave; sang trọng hơn rất nhiều.</p>\r\n\r\n<p>4 g&oacute;c m&aacute;y được tăng cường độ bền đ&aacute;ng kể gi&uacute;p chống vỡ k&iacute;nh gấp 4 lần so với c&aacute;c smartphone kh&aacute;c tr&ecirc;n thị trường hiện nay.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh giọt nước th&iacute;ch mắt</h3>\r\n\r\n<p>Xiaomi Redmi Note 7 sở hữu m&agrave;n h&igrave;nh 6.3 inch của c&oacute; tỷ lệ khung h&igrave;nh 19.5:9,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">độ ph&acirc;n giải Full HD+</a>(2.340 x 1.080 pixel).</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/42/167535/xiaomi-redmi-note-7-tgdd-1.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h3>Camera chất lượng tốt trong tầm gi&aacute;</h3>\r\n\r\n<p>Xiaomi Redmi Note 7 trở th&agrave;nh chiếc điện thoại c&oacute; camera &quot;khủng&quot; gi&aacute; rẻ nhất tr&ecirc;n thị trường hiện nay với &quot;số chấm&quot; l&ecirc;n tới&nbsp;&nbsp;48 MP.</p>\r\n', 1, 420, 10, 10, 4990000, 4550000, '2020-12-14 21:54:51', '1', '2020-12-14 16:59:20', '1', 1, 1),
(7, 1, 'Apple iPhone X 64GB White  Chính hãng', 'apple-iphone-x-64gb-white-chinh-hang', '636483223586180190_1.jpg', '49159254e59c88f0fd2cc7a61dcc45c8.jpg', 'iPhone X 64GB – Siêu phẩm kỷ niệm 10 năm của Apple', '<p><em>Sản phẩm kỷ niệm 10 năm ra mắt của Apple n&ecirc;n&nbsp;<strong>iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A</strong>&nbsp;c&oacute; sự thay đổi so với bộ đ&ocirc;i&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_blank\">iPhone 8, 8 Plus</a>&nbsp;trước đ&oacute; từ t&iacute;nh năng đến thiết kế khiến nhiều người d&ugrave;ng smartphone khao kh&aacute;t. Ngo&agrave;i ra, bạn c&oacute; thể tham khảo phi&ecirc;n bản dung lượng bộ nhớ trong cao hơn l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/apple-iphone-x-256-gb-chinh-hang-vn.html\" target=\"_blank\">iPhone X 256GB</a></strong></em></p>\r\n\r\n<h3><strong>iPhone m&atilde; VN/A l&agrave; g&igrave;? V&igrave; sao n&ecirc;n chọn iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A?</strong></h3>\r\n\r\n<p>Trước khi ra mắt mỗi sản phẩm cho từng thị trường th&igrave; Apple đ&atilde; nghi&ecirc;n cứu rất kỹ lưỡng để ph&ugrave; hợp nhất với thị trường đ&oacute;. V&iacute; dụ như với Nhật Bản v&agrave; H&agrave;n Quốc đ&oacute; l&agrave; cấm chụp l&eacute;n n&ecirc;n smartphone của 2 thị trường n&agrave;y sẽ kh&ocirc;ng tắt được &acirc;m chụp h&igrave;nh. V&agrave; điện thoại iPhone tại thị trường Việt Nam cũng sẽ như vậy, Apple đ&atilde; nghi&ecirc;n cứu những th&oacute;i quen, quy định của Việt Nam để sản xuất ra iPhone X 64GB ch&iacute;nh h&atilde;ng m&atilde; VN/A.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-1.jpg\" style=\"height:586px; width:840px\" /></p>\r\n\r\n<p>Vậy cụ thể iPhone m&atilde; VA/A l&agrave; g&igrave;? iPhone m&atilde; VN/A l&agrave; h&agrave;nh do ch&iacute;nh Apple sản xuất cho từng thị trường cụ thể v&agrave; đảm bảo chất lượng, kiểm duyệt của Apple. N&ecirc;n khi mua<em>&nbsp;iPhone X 64GB ch&iacute;nh h&atilde;ng m&atilde; VN/A</em>&nbsp;kh&aacute;ch h&agrave;ng sẽ được hưởng nhiều ưu đ&atilde;i hơn so với iPhone cũ, iPhone x&aacute;ch tay. Đ&oacute; l&agrave; ch&iacute;nh s&aacute;ch bảo h&agrave;nh hấp dẫn, nguồn gốc r&otilde; r&agrave;ng, sản phẩm đầy phụ kiện. Đ&acirc;y l&agrave; những điều m&agrave; iPhone X cũ sẽ kh&ocirc;ng thể c&oacute; hoặc c&oacute; kh&ocirc;ng đầy đủ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-2.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>So với những năm trước th&igrave; Apple từng sản xuất những mẫu smartphone c&oacute; dung lượng chỉ 16GB, 32GB th&igrave; 64GB đ&atilde; l&agrave; một dung lượng lớn, đủ để đ&aacute;p ứng mọi nhu cầu sử dụng của kh&aacute;ch h&agrave;ng. Được chạy tr&ecirc;n một hệ điều h&agrave;nh iOS đ&atilde; được tối ưu h&oacute;a, iPhone X 64GB cho ph&eacute;p người d&ugrave;ng thoải m&aacute;i lưu trữ &acirc;m nhạc, h&igrave;nh ảnh, video hay tải c&aacute;c ứng dụng m&agrave; kh&ocirc;ng lo đầy bộ nhớ.</p>\r\n\r\n<h3><strong>iPhone X 64GB thiết kế đột ph&aacute; với m&agrave;n h&igrave;nh tai thỏ</strong></h3>\r\n\r\n<p>Sau 4 năm trung th&agrave;nh với một kiểu thiết kế, bắt đầu từ iPhone 6/ 6 Plus đến&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_blank\">iPhone 8/8 Plus</a>, th&igrave; m&atilde;i đến iPhone X Apple mới c&oacute; một sự thay đổi ho&agrave;n to&agrave;n trong thiết kế của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-5.jpg\" style=\"height:466px; width:840px\" /></p>\r\n\r\n<p>Face ID hoạt động bằng c&aacute;ch sử dụng camera hồng ngoại, m&ocirc;̣t đ&egrave;n chi&ecirc;́u v&agrave; cảm bi&ecirc;́n ch&acirc;́m với hơn 30.000 điểm kh&ocirc;ng nh&igrave;n thấy được để x&acirc;y dựng v&agrave; đ&ocirc;́i chi&ecirc;́u t&acirc;́t cả đường n&eacute;t tr&ecirc;n khu&ocirc;n mặt của người d&ugrave;ng mang lại khả năng nhận diện khu&ocirc;n mặt cực k&igrave; chuẩn x&aacute;c. D&ugrave; người d&ugrave;ng c&oacute; cạo đi r&acirc;u, thay đổi kiểu t&oacute;c th&igrave; Face ID cũng dễ d&agrave;ng nhận ra v&agrave; mở kh&oacute;a iPhone một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<h3><strong>Vi xử l&yacute;&nbsp;<a href=\"https://cellphones.com.vn/sforum/chipset-apple-a11-bionic-tren-iphone-8-va-iphone-x-danh-bai-tat-ca-cac-thiet-bi-android-voi-diem-geekbench-cao-ngat-nguong\" target=\"_blank\">Apple A11 Bionic</a>&nbsp;đem lại những trải nghiệm d&ugrave;ng tuyệt vời</strong></h3>\r\n\r\n<p>Hiệu năng l&agrave; điều chưa bao giờ phải b&agrave;n c&atilde;i với c&aacute;c sản phẩm từ Apple v&agrave;&nbsp;<em>iPhone X 64Gb</em>&nbsp;cũng kh&ocirc;ng ngoại lệ.&nbsp;<strong>iPhone X 64GB</strong>&nbsp;được trang bị chip xử l&yacute; A11 Bionic s&aacute;u l&otilde;i (Hexa core) 64 bit đem lại tốc độ nhanh hơn 25% so với chip A10, tiết kiệm năng lượng l&ecirc;n tới 70%.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iPhone-X-64GB-chinh-hang-VNA-6.jpg\" style=\"height:466px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;&nbsp;<a href=\"https://www.notebookcheck.net/Apple-A11-Bionic-GPU-GPU-Benchmarks-and-Specs.250994.0.html\" target=\"_blank\">chip xử l&yacute; đồ họa GPU M11</a>&nbsp;cũng gi&uacute;p cải thiện tốc độ l&ecirc;n khoảng 30% so với GPU cũ. Nhờ vậy, người d&ugrave;ng c&oacute; thể lướt game nhanh v&agrave; mượt hơn.</p>\r\n\r\n<h3><strong>Mua iPhone X 64GB ch&iacute;nh h&atilde;ng VN/A gi&aacute; tốt tại CellphoneS</strong></h3>\r\n\r\n<p>Smartphone&nbsp;<em><strong>iPhone X 64GB ch&iacute;nh h&atilde;ng</strong></em>&nbsp;l&agrave; một flagship rất đ&aacute;ng để trải nghiệm. Hiện sản phẩm đang được b&aacute;n ch&iacute;nh h&atilde;ng tại hệ thống cửa h&agrave;ng của CellphoneS,nếu bạn quan t&acirc;m đến sản phẩm n&agrave;y th&igrave; h&atilde;y đến c&aacute;c hệ thống cửa h&agrave;ng&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS&nbsp;</a>để được trải nghiệm tận tay. Ngo&agrave;i ra, khi mua iPhone X 64GB ch&iacute;nh h&atilde;ng kh&aacute;ch h&agrave;ng sẽ được hưởng nhiều ch&iacute;nh s&aacute;ch ưu đ&atilde;i mua h&agrave;ng trả g&oacute;p với thẻ t&iacute;n dụng, bảo h&agrave;nh 12 th&aacute;ng ch&iacute;nh h&atilde;ng, 1 đổi 1 trong 30 ng&agrave;y, miễn ph&iacute; giao h&agrave;ng, thu tiền tại nh&agrave;.</p>\r\n', 2, 190, 20, 0, 21900000, 21900000, '2020-12-14 22:04:43', '1', '2020-12-14 16:57:33', '1', 1, 1),
(8, 1, 'iPhone Xs Max 64GB  Rose gold', 'iphone-xs-max-64gb-rose-gold', '636748771945393060_iPhone-Xs-Max-gold.jpg', 'eb94d71b8618424db4dafbb58b39ee25.jpg#8161dd6861975d560bc1d272ed332243.jpg#a1505c545351e44c877c2edf96ebecbf.jpg', 'iPhone Xs Max 64GB Rose gold (Vàng hồng) là chiếc iPhone có màn hình lớn nhất từ trước đến nay, mang đến những trải nghiệm tuyệt vời về màn hình và thời lượng pin.', '<h2><strong>M&agrave;n h&igrave;nh lớn 6,5 inch chuẩn Super Retina si&ecirc;u sắc n&eacute;t</strong></h2>\r\n\r\n<p><strong>iPhone Xs Max 64GB</strong>&nbsp;c&oacute; m&agrave;n h&igrave;nh vượt trội so với mọi thế hệ iPhone trước đ&acirc;y khi lớn tới 6,5 inch, được l&agrave;m từ tấm nền OLED, hỗ trợ hiển thị HDR. HDR mang đến m&agrave;u sắc ch&iacute;nh x&aacute;c, m&agrave;u đen c&oacute; chiều s&acirc;u, độ s&aacute;ng v&agrave; độ tương phản tuyệt vời. Bạn sẽ được tận hưởng một m&agrave;n h&igrave;nh cực lớn, độ ph&acirc;n giải si&ecirc;u cao 2688 x 1242 pixels cho trải nghiệm xem đ&aacute;ng kinh ngạc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-xs-max-3.jpg\" style=\"height:455px; width:907px\" /></p>\r\n\r\n<p>Nếu như bạn lo lắng m&agrave;n h&igrave;nh lớn sẽ khiến cho&nbsp;<strong>iPhone Xs Max 64GB&nbsp;</strong>kh&oacute; cầm nắm tr&ecirc;n tay th&igrave; h&atilde;y qu&ecirc;n ngay nỗi lo đ&oacute;, v&igrave; viền m&agrave;n h&igrave;nh tr&agrave;n 4 cạnh gi&uacute;p cho iPhone Xs Max thậm ch&iacute; c&ograve;n nhỏ gọn hơn iPhone 8 Plus. Ch&uacute;ng ta c&oacute; một chiếc m&aacute;y m&agrave;n h&igrave;nh lớn hơn rất nhiều, nhưng vẫn đủ gọn g&agrave;ng để dễ d&agrave;ng cầm nắm v&agrave; thao t&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-xs-max-2.JPG\" style=\"height:654px; width:981px\" /></p>\r\n\r\n<h2><strong>Sự kết hợp giữa k&iacute;nh v&agrave; th&eacute;p, sang trọng nhưng kh&ocirc;ng k&eacute;m phần bền vững</strong></h2>\r\n\r\n<p><strong>iPhone Xs Max 64GB</strong>&nbsp;được ho&agrave;n thiện từ những vật liệu đặc biệt, đ&oacute; l&agrave; viền th&eacute;p kh&ocirc;ng gỉ s&aacute;ng b&oacute;ng v&agrave; mặt k&iacute;nh bền nhất trong thế giới smartphone. Kỹ thuật gia c&ocirc;ng ch&iacute;nh x&aacute;c ho&agrave;n hảo của Apple mang đến chiếc điện thoại cứng c&aacute;p, thời trang, vừa vặn trong l&ograve;ng b&agrave;n tay bạn. Ba m&agrave;u sắc thời thượng X&aacute;m kh&ocirc;ng gian, Bạc v&agrave; V&agrave;ng cho những lựa chọn c&aacute; t&iacute;nh. Đặc biệt, hai phi&ecirc;n bản m&agrave;u V&agrave;ng v&agrave; X&aacute;m được sơn bằng qu&aacute; tr&igrave;nh xử l&yacute; m&agrave;u PVD, tạo hiệu ứng &aacute;nh s&aacute;ng qua lớp k&iacute;nh rất đẹp mắt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xs-3.jpg\" style=\"height:700px; width:1050px\" /></p>\r\n\r\n<h2><strong>Face ID thế hệ mới, mật khẩu ch&iacute;nh l&agrave; khu&ocirc;n mặt của bạn</strong></h2>\r\n\r\n<p>Face ID tr&ecirc;n&nbsp;<strong>iPhone Xs Max 64GB</strong>&nbsp;khiến cho việc bảo mật đơn giản v&agrave; an to&agrave;n hơn. Bạn c&oacute; thể mở kh&oacute;a, đăng nhập, thanh to&aacute;n nhanh ch&oacute;ng th&ocirc;ng qua nhận diện khu&ocirc;n mặt. Ngay khi đưa m&aacute;y l&ecirc;n, hệ thống camera TrueDepth sẽ nhận diện tới 30.000 điểm tr&ecirc;n khu&ocirc;n mặt của bạn v&agrave; mở kh&oacute;a ngay lập tức. Đồng thời, hệ thống n&agrave;y cũng sẽ ghi nhớ v&agrave; học hỏi th&oacute;i quen của bạn để sau n&agrave;y d&ugrave; c&oacute; đội mũ hay đeo k&iacute;nh th&igrave; Face ID vẫn nhận diện nhanh ch&oacute;ng đầy ch&iacute;nh x&aacute;c. Face ID của iPhone Xs Max ch&iacute;nh l&agrave; phương thức bảo mật an to&agrave;n nhất tr&ecirc;n smartphone từ trước đến nay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xs-4.jpg\" style=\"height:812px; width:1217px\" /></p>\r\n', 2, 160, 30, 0, 28900000, 28900000, '2020-12-14 22:08:30', '1', '2020-12-14 16:55:46', '1', 1, 1),
(9, 7, 'Huawei Mate 20 Pro (Xanh dương)', 'huawei-mate-20-pro-xanh-duong', '636753320259321737_huawei-mate20-pro-xanhla-1.jpg', 'cf69d7775e92df0125cf38b8dc38e697.jpg', 'Huawei Mate 20 Pro chính hãng - Thông tin giá bán, cấu hình chi tiết, quà tặng khủng', '<p>Huawei đang dần chứng minh với thế giới rằng họ l&agrave; c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n sản xuất smartphone chất lượng cao nắm trong tay gần 10% thị phần smartphone to&agrave;n thế giới.&nbsp;Điện thoại&nbsp;<strong>Huawei Mate 20 Pro</strong>&nbsp;tiếp tục được&nbsp;<a href=\"https://cellphones.com.vn/mobile/huawei.html\" target=\"_blank\">Huawei</a>&nbsp;cho ra đời nhằm củng cố điều đ&oacute;.</p>\r\n\r\n<h2>Thiết kế Huawei Mate 20 Pro đẳng cấp</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-1_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;v&agrave;&nbsp;<em><a href=\"https://cellphones.com.vn/huawei-mate-20-chinh-hang.html\" target=\"_blank\">Huawei Mate 20</a></em>&nbsp;đều sở hữu thiết kế hai mặt k&iacute;nh b&oacute;ng bẩy tạo vẻ đẹp tinh tế v&agrave; bắt mắt với bất cứ ai nh&igrave;n v&agrave;o. B&ecirc;n cạnh đ&oacute;, kiểu d&aacute;ng vu&ocirc;ng vắn hiện đại v&agrave; những đường bo cong hợp l&yacute; để tạo cảm gi&aacute;c cầm nắm chắc chắn. Đặc biệt, với thiết kế cong 2 b&ecirc;n giống như tr&ecirc;n chiếc Mate RS Porsche Design hay giống c&aacute;c thiết bị Galaxy d&ograve;ng S mới đến từ Samsung gi&uacute;p cho m&aacute;y dễ d&agrave;ng nằm gọn trong tay người d&ugrave;ng.</p>\r\n\r\n<h2>M&agrave;n h&igrave;nh Mate 20 Pro tr&agrave;n viền sắc n&eacute;t</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-4_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Mate 20 Pro</strong>&nbsp;sở hữu m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6.39 inches c&ugrave;ng độ ph&acirc;n giải&nbsp;2K+ 3120x1440 cho khả năng hiển thị ngo&agrave;i trời v&agrave; g&oacute;c nh&igrave;n cực tốt. B&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;OLED đem lại h&igrave;nh ảnh v&agrave; video được t&aacute;i tạo một c&aacute;ch ch&acirc;n thực, sắc n&eacute;t với độ s&aacute;ng, độ tương phản cao ở từng chi tiết, thỏa m&atilde;n nhu cầu giải tr&iacute; của người d&ugrave;ng.</p>\r\n\r\n<h2>Cấu h&igrave;nh Huawei Mate 20 Pro ch&iacute;nh h&atilde;ng mạnh mẽ</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-6.png\" style=\"height:453px; width:640px\" /></p>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;<strong>ch&iacute;nh h&atilde;ng</strong>&nbsp;được trang bị chip mới l&agrave; Kirin 980 do ch&iacute;nh Huawei tự sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm c&oacute; NPU d&agrave;nh ri&ecirc;ng cho tr&iacute; th&ocirc;ng minh nh&acirc;n tạo đem lại khả năng xử l&yacute; t&aacute;c vụ năng v&ocirc; c&ugrave;ng mượt m&agrave; v&agrave; ổn định.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, RAM 6 GB thoải m&aacute;i cho bạn c&ugrave;ng bộ nhớ trong 128GB gi&uacute;p bạn lưu trữ dữ liệu thỏa th&iacute;ch.&nbsp;<strong>Mate 20 Pro</strong>&nbsp;được chạy tr&ecirc;n nền hệ điều h&agrave;nh Android 9.</p>\r\n\r\n<h2>Camera Huawei Mate 20 Pro ch&iacute;nh h&atilde;ng bắt trọn từng khoảnh khắc</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-mate-20-pro-chinh-hang-3_1.png\" style=\"height:600px; width:640px\" /></p>\r\n\r\n<p><strong>Mate 20 Pro</strong>&nbsp;Ch&iacute;nh h&atilde;ng được trang bị ba camera trang bị AI bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 40MP v&agrave; hai camera phụ c&oacute; độ ph&acirc;n giải 20MP đơn sắc + 8MP tele hỗ trợ c&ocirc;ng nghệ AI, nhận dạng được nhiều bối cảnh kh&aacute;c nhau như phong cảnh, đồ ăn... gi&uacute;p cho camera c&oacute; thể bắt được chủ thể khu&ocirc;n h&igrave;nh v&agrave; l&agrave;m mờ hậu cảnh một c&aacute;ch ch&iacute;nh x&aacute;c. C&ograve;n camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải l&ecirc;n đến 24MP gi&uacute;p người d&ugrave;ng c&oacute; những bức ảnh tự sướng ảo diệu, tự tin chia sẻ cho bạn b&egrave;.</p>\r\n\r\n<h2>Thời lượng pin Mate 20 Pro ch&iacute;nh h&atilde;ng ấn tượng</h2>\r\n\r\n<p><strong>Huawei Mate 20 Pro</strong>&nbsp;ch&iacute;nh h&atilde;ng sở hữu pin với dung lượng 4.200 mAh, con chip tiết kiệm pin cho thời gian sử dụng l&agrave; dư dả trong một ng&agrave;y. Ngo&agrave;i ra,&nbsp;<strong>Mate 20 Pro&nbsp;</strong>c&ograve;n được hỗ trợ c&ocirc;ng nghệ sạc nhanh cho ph&eacute;p điện thoại tăng 50% tốc độ chỉ trong 25 ph&uacute;t gi&uacute;p cho người d&ugrave;ng mau ch&oacute;ng sử dụng m&aacute;y khi cần thiết. Ngo&agrave;i ra, Huawei Mate 20 Pro c&ograve;n hỗ trợ sạc ngược cho c&aacute;c thiết bị được trang bị c&ocirc;ng nghệ NFC.</p>\r\n\r\n<p>Mua&nbsp;<a href=\"https://cellphones.com.vn/huawei-mate-20-pro-chinh-hang.html\" target=\"_blank\"><em>Huawei Mate 20 Pro Ch&iacute;nh h&atilde;ng gi&aacute; bao nhi&ecirc;u</em></a>, chế độ bảo h&agrave;nh như thế n&agrave;o? H&atilde;y đến với CellphoneS, hệ thống b&aacute;n lẻ điện thoại tr&ecirc;n to&agrave;n quốc hiện sẽ cung cấp cho kh&aacute;ch h&agrave;ng sản phẩm Huawei&nbsp;<strong><em>Mate 20 Pro</em></strong>&nbsp;ch&iacute;nh h&atilde;ng trong thời gian sớm nhất khi được nh&agrave; sản xuất ra mắt c&ugrave;ng với việc b&aacute;n mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn, chế độ hậu m&atilde;i v&ocirc; c&ugrave;ng tốt. Đối với c&aacute;c kh&aacute;ch h&agrave;ng ở xa c&oacute; nhu cầu mua sản phẩm c&oacute; thể tham khảo qua dịch vụ mua h&agrave;ng v&agrave; thanh to&aacute;n tận nơi miễn ph&iacute; của CellphoneS. Đặc biệt, đối với những sản phẩm mới ra mắt, kh&aacute;ch h&agrave;ng c&oacute; thể đặt cọc online để ưu ti&ecirc;n nhận m&aacute;y v&agrave; sở hữu nhiều phần qu&agrave; hấp dẫn.</p>\r\n', 2, 220, 30, 10, 16990000, 15990000, '2020-12-14 22:14:17', '1', '2020-12-14 17:14:06', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(10, 7, 'Huawei P30 Xanh dương', 'huawei-p30-xanh-duong', '23f164c8a75a27464e75292caebde305.png', '80d45cc3bfdb292db80ed7802e27debf.jpg', 'Điện thoại Huawei P30 chính hãng – Chiếc điện thoại thông minh độc đáo nhất', '<p><em><strong><a href=\"https://cellphones.com.vn/mobile/huawei.html\" target=\"_blank\">Huawei</a></strong>&nbsp;vừa mới tr&igrave;nh l&agrave;ng chiếc smartphone cao cấp Huawei P30 c&ugrave;ng với&nbsp;<a href=\"https://cellphones.com.vn/huawei-p30-pro.html\" target=\"_blank\"><strong>P30 Pro</strong></a>&nbsp;v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/huawei-p30-lite.html\" target=\"_blank\"><strong>P30 Lite</strong></a>. Được thừa hưởng những thiết kế của Huawei P20, hơn nữa thiết bị cũng được cải tiến mạnh mẽ về camera cũng như hiệu năng. Huawei P30 hứa hẹn sẽ l&agrave; đối thủ đ&aacute;ng gờm trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại cho người d&ugrave;ng những trải nghiệm tuyệt vời.</em></p>\r\n\r\n<h3>Thiết kế m&agrave;n h&igrave;nh Huawei P30 xứng đ&aacute;ng l&agrave; smartphone cao cấp</h3>\r\n\r\n<p>Điện thoại&nbsp;<strong>Huawei P30</strong>&nbsp;nổi bật với m&agrave;u &ldquo;Gradient&rdquo; vốn đ&atilde; được sử dụng tr&ecirc;n Huawei P20, được lấy cảm hứng từ xu hướng sử dụng bản m&agrave;u Gradients tr&ecirc;n c&aacute;c giao diện. Với lớp phủ quang học NCVM b&ecirc;n dưới mặt k&iacute;nh, kết hợp phản chiếu kh&uacute;c xạ &aacute;nh s&aacute;ng để tạo n&ecirc;n dải m&agrave;u tươi mới, gi&uacute;p n&oacute; c&oacute; thể đổi m&agrave;u từ m&agrave;u t&iacute;m sang xanh lục, sang xanh lam.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-1.jpg\" style=\"height:559px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, mặt lưng k&iacute;nh cao cấp đi k&egrave;m với bộ khung kim loại cứng c&aacute;p ở th&acirc;n m&aacute;y gi&uacute;p bảo vệ Huawei P30 tr&aacute;nh khỏi những t&aacute;c động vật l&yacute; b&ecirc;n ngo&agrave;i. M&aacute;y d&ugrave;ng m&agrave;n h&igrave;nh khuyết đỉnh nhưng được l&agrave;m nhỏ gọn hơn v&agrave; c&oacute; h&igrave;nh giọt nước gi&uacute;p cho m&aacute;y c&oacute; c&aacute;i nh&igrave;n tổng thể tinh tế hơn phi&ecirc;n bản trước.</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh,&nbsp;<strong>điện thoại</strong>&nbsp;<strong>Huawei P30</strong>&nbsp;được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6 inch nhưng do được tối ưu phần viền n&ecirc;n tổng thể m&aacute;y vẫn rất vừa vặn trong l&ograve;ng b&agrave;n tay. Hơn nữa, phần nội dung được tr&agrave;n ra s&aacute;t c&aacute;c m&eacute;p cạnh sẽ n&acirc;ng cao việc trải nghiệm giải tr&iacute; như xem phim hay chơi game. Ngo&agrave;i ra, độ ph&acirc;n giải Full HD+ (1080 x 2340 Pixels) kết hợp với c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.trustedreviews.com/news/what-is-oled-3285263\" target=\"_blank\">OLED</a>&nbsp;cho chất lượng hiển thị h&igrave;nh ảnh sắc n&eacute;t với m&agrave;u sắc rực rỡ, độ tương phản cao.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-2.jpg\" style=\"height:531px; width:840px\" /></p>\r\n\r\n<p>Điểm mạnh của m&agrave;n h&igrave;nh OLED l&agrave; khả năng thể hiện những m&agrave;u sắc rực rỡ, bắt mắt v&agrave; trung thực, m&agrave;u đen gần như l&agrave; tuyệt đối. Ngo&agrave;i ra, g&oacute;c nh&igrave;n si&ecirc;u rộng, c&oacute; thể đạt xấp xỉ l&ecirc;n đến 180 độ, người d&ugrave;ng c&oacute; thể tận hưởng trọn vẹn chất lượng h&igrave;nh ảnh ngay cả khi kh&ocirc;ng nh&igrave;n trực diện. Điểm yếu duy nhất l&agrave; ti&ecirc;u tốn nhiều năng lượng nhưng do khả năng tối ưu về chip, hệ điều h&agrave;nh n&ecirc;n Huawei P30 cũng sẽ cho thời gian sử dụng ấn tượng.</p>\r\n\r\n<h3>Chụp ảnh chuy&ecirc;n nghiệp với ba camera sau tr&ecirc;n Huawei P30</h3>\r\n\r\n<p><em>Huawei P30</em>&nbsp;sở hữu ba camera&nbsp;<a href=\"http://en.leica-camera.com/\" target=\"_blank\">Leica</a>&nbsp;quen thuộc ở mặt sau, bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải cực khủng 40MP c&oacute; hỗ trợ zoom quang học 5x, camera phụ lần lượt l&agrave; 20MP v&agrave; 13MP trợ chống rung quang học để nội suy h&igrave;nh ảnh v&agrave; hỗ trợ chụp trắng đen. Huawei P30 chắc chắn sẽ kh&ocirc;ng l&agrave;m cho người d&ugrave;ng thất vọng với những bức ảnh ưng &yacute;.</p>\r\n\r\n<p>C&ograve;n camera trước của cũng được h&atilde;ng đặc biệt chăm ch&uacute;t khi trang bị độ ph&acirc;n giải 24MP t&iacute;ch hợp c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo AI c&ugrave;ng đ&egrave;n LED trợ s&aacute;ng, hỗ trợ chế độ l&agrave;m đẹp sẽ cho người d&ugrave;ng những bức ảnh selfie đẹp n</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-3.jpg\" style=\"height:423px; width:840px\" /></p>\r\n\r\n<p>Huawei P30 đ&atilde; được bỏ đi n&uacute;t home v&agrave; thay v&agrave;o đ&oacute; chỉ c&ograve;n bảo mật nhận diện khu&ocirc;n mặt Face Unlock. C&ocirc;ng nghệ n&agrave;y hoạt động với cơ chế kết hợp camera hồng ngoại v&agrave; laser ph&aacute;t s&aacute;ng bề mặt khoang dọc (<a href=\"https://en.wikipedia.org/wiki/Vertical-cavity_surface-emitting_laser\" target=\"_blank\">VCSEL</a>). Đồng thời, t&iacute;nh năng n&agrave;y hoạt động hiệu quả, thậm ch&iacute; tốc độ mở kh&oacute;a của m&aacute;y c&ograve;n nhanh hơn cả iPhone X.</p>\r\n\r\n<p>Với dung lượng pin cao 4.300 mAh mang lại thời lượng sử dụng rất tốt, người d&ugrave;ng thoải m&aacute;i sử dụng m&aacute;y trong 2 ng&agrave;y. Hơn nữa, m&aacute;y cũng hỗ trợ t&iacute;nh năng sạc si&ecirc;u nhanh Huawei Super Charge gi&uacute;p tiết kiệm 30% thời gian sạc nhưng vẫn đảm bảo an to&agrave;n cho người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/huawei/huawei-p30-4.jpg\" style=\"height:561px; width:840px\" /></p>\r\n', 2, 310, 41, 0, 16900000, 16900000, '2020-12-14 22:18:49', '1', '2020-12-14 17:15:05', '1', 1, 1),
(12, 8, 'Xiaomi Mi 8 64GB Đen', 'xiaomi-mi-8-64gb-den', '74ca778d59300c8f71236c436fa6dd9e.jpg', 'c7a3137f57a2855ef38d9d023d6a1042.jpg#a0a18f7b513c1519f364b69f327918ea.png', 'Điện thoại Xiaomi Mi 8 64GB – Smartphone giá rẻ cấu hình mạnh đáng mua nhất hiện nay', '<p><em><strong>(*) Điện thoại Xiaomi ch&iacute;nh h&atilde;ng, c&oacute; sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn c&oacute; thể sử dụng ngay b&igrave;nh thường. Kh&aacute;c với c&aacute;c m&aacute;y h&agrave;ng x&aacute;ch tay: kh&ocirc;ng c&oacute; sẵn rom tiếng Việt, chặn c&aacute;c ứng dụng của Google</strong></em></p>\r\n\r\n<p><em>Những năm gần đ&acirc;y&nbsp;<a href=\"https://cellphones.com.vn/mobile/xiaomi.html\" target=\"_blank\">Xiaomi</a>&nbsp;đang c&oacute; những bước tiến mạnh mẽ trở th&agrave;nh một trọng những nh&agrave; sản xuất smartphone lớn nhất thế giới. Những chiếc điện thoại Xiaomi thường c&oacute; thiết kế đẹp, cấu h&igrave;nh mạnh nhưng lại c&oacute; gi&aacute; cả rẻ hơn so với c&aacute;c h&agrave;ng đ&oacute;. Điển h&igrave;nh trong đ&oacute; c&oacute; chiếc điện thoại&nbsp;<strong>Xiaomi Mi 8 64GB</strong>&nbsp;v&agrave; n&oacute; đang c&oacute; b&aacute;n với mức gi&aacute; kh&aacute; tốt tại CellphoneS.</em></p>\r\n\r\n<h3><strong>Xiaomi Mi 8 64GB c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền với thiết kế tai thỏ độc đ&aacute;o</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Xiaomi c&oacute; thiết kế tr&agrave;n viền l&agrave; 6.21 inch với c&aacute;c cạnh b&ecirc;n đều rất mỏng gi&uacute;p tối đa hiển thị v&agrave; t&ocirc;n l&ecirc;n vẻ cao cấp của Xiaomi Mi 8. Độ ph&acirc;n giải m&agrave;n h&igrave;nh Xiaomi Mi 8 l&agrave; full HD+ (1080*2248 pixels) với mật độ điểm ảnh l&ecirc;n đến 402 ppi. V&igrave; thế Xiaomi Mi 8 cho chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t đến từng chi tiết v&agrave; v&ocirc; c&ugrave;ng mềm mại cho sự trải nghiệm một c&aacute;ch ch&acirc;n thật nhất khi sử dụng.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-2.jpg\" style=\"height:520px; width:840px\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.samsung.com/global/galaxy/what-is/amoled/\" target=\"_blank\">AMOLED&nbsp;</a>16 triệu&nbsp;m&agrave;u cao cấp kh&ocirc;ng những gi&uacute;p chất lượng h&igrave;nh ảnh hiển thị tốt hơn m&agrave; n&oacute; c&ograve;n c&oacute; độ bền cao v&agrave; c&acirc;n bằng m&agrave;u sắc tốt hơn so với c&aacute;c c&ocirc;ng nghệ m&agrave;n h&igrave;nh kh&aacute;c. Tuy bền nhưng AMOLED kh&ocirc;ng c&oacute; độ d&agrave;y cao gi&uacute;p c&aacute;c thao t&aacute;c vuốt tr&ecirc;n Xiaomi Mi 8 trở n&ecirc;n rất linh hoạt v&agrave; ch&acirc;n thật. Ngo&agrave;i ra, hai cạnh b&ecirc;n hai cạnh b&ecirc;n của m&aacute;y cũng được thiết kế mỏng v&agrave; v&aacute;t cong 2.5D cho cảm gi&aacute;c vuốt rất chạm dễ d&agrave;ng hơn.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ chiến mọi tựa game với&nbsp;<a href=\"https://cellphones.com.vn/sforum/snap-845-co-diem-benchmark-diem-do-hoa-cao-hon-han-iphone-x\" target=\"_blank\">Snapdragon 845</a></strong></h3>\r\n\r\n<p>Xiaomi Mi 8 chạy tr&ecirc;n nền tảng&nbsp;<a href=\"https://www.trustedreviews.com/news/android-8-1-oreo-features-release-date-download-changes-phones-3317301\" target=\"_blank\">Android 8.1 (Oreo)</a>&nbsp;sở&nbsp;hữu một trong những con chip mạnh nhất hiện nay Snapdragon 845. V&igrave; thế c&aacute;c thao t&aacute;c hằng ng&agrave;y như lướt web, facebook, youtube,&hellip; đều rất mượt m&agrave;. Kh&ocirc;ng những thế Xiaomi Mi 8 c&ograve;n c&oacute; thể chiến mọi tựa game 3D hiện nay một c&aacute;ch dễ d&agrave;ng nhưng ở một số game vẫn chưa để được chế độ max setting v&igrave; sự tối ưu h&oacute;a ứng dụng tr&ecirc;n nền tảng&nbsp;<a href=\"https://cellphones.com.vn/sforum/android-phan-mem-doc-hai\" target=\"_blank\">Android</a>&nbsp;vẫn chưa tốt.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-64gb-3.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, với RAM 6GB cũng gi&uacute;p đ&atilde; nhiệm m&aacute;y chạy một c&aacute;ch mượt m&agrave;, &iacute;t khi bị reload. Sự chuyển qua chuyển lại giữa c&aacute;i ứng dụng dường như kh&ocirc;ng c&oacute; độ trễ. Bộ nhớ trong 64GB gi&uacute;p mọi lưu trữ tr&ecirc;n Xiaomi Mi 8 được tốt nhất hạn chế tr&agrave;n bộ nhớ.</p>\r\n\r\n<h3><strong>Camera 12MP sắc n&eacute;t với t&iacute;nh năng x&oacute;a ph&ocirc;ng tuyệt vời</strong></h3>\r\n\r\n<p>Kh&ocirc;ng những c&oacute; hiệu năng mạnh mẽ Xiaomi Mi 8 c&ograve;n c&oacute; camera ấn tượng. Cụm camera k&eacute;p được Xiaomi trang bị với camera ch&iacute;nh 12 MP (khẩu độ f/2.4) v&agrave; camera phụ 12MP (khẩu độ f/1.8). Với bộ đ&ocirc;i camera n&agrave;y chẳng những gi&uacute;p Xiaomi Mi 8<strong>&nbsp;</strong>cho ra những h&igrave;nh ảnh ch&acirc;n thật m&agrave; n&oacute; c&ograve;n l&agrave;m được nhiều điều hơn thế. Cụm camera k&eacute;p c&oacute; c&aacute;c t&iacute;nh năng như chụp x&oacute;a ph&ocirc;ng, tự động lấy n&eacute;t, zoom quang 2X, LED flash k&eacute;p. Đồng thời, camera n&agrave;y c&ograve;n được trang bị c&ocirc;ng nghệ chống rung quang học 4 trục thế hệ mới v&agrave; c&oacute; thể quay video 2160p@60fps. Nhờ vậy m&agrave; người d&ugrave;ng c&oacute; thể ghi lại những khoảnh khắc đẹp hằng ng&agrave;y của m&igrave;nh một c&aacute;ch dễ d&agrave;ng v&agrave; ch&acirc;n thật nhất.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-4.jpg\" style=\"height:360px; width:840px\" /></p>\r\n\r\n<p>Camera trước Xiaomi Mi 8 c&oacute; độ ph&acirc;n giải 20MP (khẩu độ f/2.0) với khả năng quay video 1080P gi&uacute;p c&aacute;c cuộc gọi videocall cho h&igrave;nh ảnh sắc n&eacute;t dễ chịu với người đối diện. T&iacute;nh năng l&agrave;m đẹp cũng gi&uacute;p những tấm ảnh selfie trở n&ecirc;n mịn m&agrave;ng v&agrave; tươi tắn hơn.</p>\r\n\r\n<h3><strong>Xiaomi Mi 8 64GB - dung lượng bộ nhớ trong lớn cho khả năng lưu chữ tốt</strong></h3>\r\n\r\n<p>Ngo&agrave;i dung lượng 64GB Xiaomi Mi 8 c&ograve;n c&oacute; dung lượng 128GB. Nhưng hiện nay người d&ugrave;ng vẫn ưa chuộng phi&ecirc;n bản 64GB nhiều hơn. 64GB nghe c&oacute; vẻ nhỏ hơn rất nhiều so với phi&ecirc;n bản 128GB nhưng khả năng lưu trữ của n&oacute; vẫn v&ocirc; c&ugrave;ng lớn. V&agrave; phi&ecirc;n bản Xiaomi Mi 8 64GB cũng rẻ hơn so với phi&ecirc;n bản 128GB. Vậy với 64GB người d&ugrave;ng c&oacute; thể lưu trữ được những g&igrave;?</p>\r\n\r\n<p>- Khi mua m&aacute;y cần dung lượng cho c&agrave;i đặt hệ điều h&agrave;nh v&agrave; c&aacute;c ứng dụng bắt buộc kh&aacute;c như google, CH play,&hellip; n&ecirc;n dung lượng thực tế chỉ c&ograve;n khoảng 42GB trống</p>\r\n\r\n<p>- 42GB c&oacute; thể c&agrave;i hơn 30 game từ 1GB-2GB tr&ecirc;n CH play. Những game n&agrave;y đa phần đều l&agrave; game hay c&oacute; đồ họa tốt.</p>\r\n\r\n<p>- Người d&ugrave;ng c&oacute; c&oacute; thể lưu trữ h&agrave;ng ng&agrave;n b&agrave;i h&aacute;t v&agrave; ảnh chụp với dung lượng n&agrave;y.</p>\r\n\r\n<p>- C&oacute; thể quay video hơn 20 video full HD mỗi video 20&rsquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-8-64-gb-7.jpg\" style=\"height:562px; width:840px\" /></p>\r\n\r\n<p>Như vậy mới thấy với dung lượng 64GB m&agrave; người d&ugrave;ng đ&atilde; c&oacute; thể lưu trữ được dữ liệu khủng như thế n&agrave;o. Dĩ nhi&ecirc;n những điều tr&ecirc;n chỉ l&agrave; v&iacute; dụ tr&ecirc;n thực tế khi sử dụng điện thoại người d&ugrave;ng sẽ ph&acirc;n bổ dữ liệu của m&igrave;nh để lưu trữ nhạc, video, game, ảnh, c&aacute;c ứng dụng,.. nhưng vẫn c&ograve;n rất nhiều dung lượng trống b&ecirc;n trong điện thoại.&nbsp;</p>\r\n\r\n<p>Tuy vậy với những người thường xuy&ecirc;n sử dụng điện thoại để l&agrave;m việc quay video, lưu trữ h&igrave;nh ảnh rất nhiều th&igrave; cần c&acirc;n nhắc mua phi&ecirc;n bản Xiaomi Mi 8 128GB để cho khả năng lưu trữ được tốt hơn.</p>\r\n\r\n<h3><strong>Vi&ecirc;n pin 3400 mAh cho thời gian sử dụng tốt t&iacute;ch hợp&nbsp;<a href=\"https://www.qualcomm.com/solutions/mobile-computing/features/quick-charge\" target=\"_blank\">sạc nhanh Quick Charge</a>&nbsp;4.0</strong></h3>\r\n\r\n<p>Với vi&ecirc;n pin lớn 3400 mAh sẽ gi&uacute;p Xiaomi Mi 8 64GB trụ được đến cuối ng&agrave;y mới sạc cới c&aacute;c thao t&aacute;c hằng ng&agrave;y như nghe nhạc, chơi game, lướt web, face book,&hellip; Nhưng n&ecirc;u sử dụng li&ecirc;n tục dĩ nhi&ecirc;n vi&ecirc;n pin n&agrave;y sẽ kh&ocirc;ng đ&aacute;p ứng đủ nhu cầu người d&ugrave;ng bắt buộc phải sạc th&ecirc;m một lần nữa trong ng&agrave;y.&nbsp;</p>\r\n', 1, 220, 4, 0, 8490000, 8490000, '2020-12-14 22:27:35', '1', '2020-12-14 16:42:14', '1', 1, 1),
(13, 8, 'Xiaomi Mi 9 Tím', 'xiaomi-mi-9-tim', 'c2a795629d0748415fef66b954e5943a.jpg', '2675a4cd565d020d5bb2ef292b3a4d96.jpg#f016a6a0b3c651a1263b13f23e7c6aa5.jpg', 'Điện thoại Xiaomi Mi 9 chính hãng – smartphone cao cấp cấu hình “khủng long”', '<p><em><strong>(*) Điện thoại Xiaomi ch&iacute;nh h&atilde;ng, c&oacute; sẵn tiếng Việt, đầy đủ ứng dụng của Google. Bạn c&oacute; thể sử dụng ngay b&igrave;nh thường. Kh&aacute;c với c&aacute;c m&aacute;y h&agrave;ng x&aacute;ch tay: kh&ocirc;ng c&oacute; sẵn rom tiếng Việt, chặn c&aacute;c ứng dụng của Google</strong></em></p>\r\n\r\n<p>Sau sự ra mắt th&agrave;nh c&ocirc;ng của h&agrave;ng loạt smartphone cao cấp gi&aacute; rẻ, Xiaomi tiếp tục tr&igrave;nh l&agrave;ng chiếc điện thoại cao cấp mới với t&ecirc;n gọi l&agrave; Xiaomi Mi 9. L&agrave; thiết bị được trang bị vi xử l&yacute; Snapdragon 855 mạnh nhất của Qualcomm v&agrave; camera sở hữu độ ph&acirc;n giải cao 48MP. Xiaomi Mi 9 l&agrave; chiếc smartphone đầy hứa hẹn cho những ai th&iacute;ch chụp ảnh, với cấu h&igrave;nh camera rất cao.</p>\r\n\r\n<h3>Thiết kế, m&agrave;n h&igrave;nh Xiaomi Mi 9 cao cấp, hiện đại</h3>\r\n\r\n<p>Xiaomi Mi 9 mang thiết kế đặc trưng của phi&ecirc;n bản tiền nhiệm, mặt lưng k&iacute;nh được cường lực b&oacute;ng bẩy kết hợp với bộ khung nh&ocirc;m chắc chắn tạo n&ecirc;n vẻ đẹp h&agrave;i h&ograve;a khiến cho người d&ugrave;ng kh&ocirc;ng khỏi rời mắt. B&ecirc;n cạnh đ&oacute;, mặt lưng được v&aacute;t cong nhẹ v&agrave; bốn g&oacute;c được bo tr&ograve;n gi&uacute;p cho cảm gi&aacute;c cầm nắm được tốt hơn. Hơn nữa, m&aacute;y d&ugrave;ng m&agrave;n h&igrave;nh khuyết đỉnh nhưng được l&agrave;m nhỏ gọn hơn v&agrave; c&oacute; h&igrave;nh giọt nước gi&uacute;p cho m&aacute;y c&oacute; c&aacute;i nh&igrave;n tổng thể tinh tế hơn Mi 8.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-1.jpg\" style=\"height:488px; width:840px\" />Về m&agrave;n h&igrave;nh, Xiaomi Mi 9 được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn 6.4 inch nhưng do được tối ưu phần viền n&ecirc;n tổng thể m&aacute;y vẫn rất vừa vặn trong l&ograve;ng b&agrave;n tay. Hơn nữa, phần nội dung được tr&agrave;n ra s&aacute;t m&eacute;p cạnh sẽ n&acirc;ng cao việc trải nghiệm giải tr&iacute; như xem phim hay chơi game. Ngo&agrave;i ra, độ ph&acirc;n giải Full HD+ tỉ lệ 19:9 gi&uacute;p hiển thị nhiều th&ocirc;ng tin hơn v&agrave; hỗ trợ tốt cho c&ocirc;ng việc lẫn giải tr&iacute; hơn so với 18:9 th&ocirc;ng thường</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-2.jpg\" style=\"height:472px; width:840px\" /></p>\r\n\r\n<p>Hơn nữa, c&ocirc;ng nghệ m&agrave;n h&igrave;nh AMOLED đem lại m&agrave;u sắc hiển thị rực rỡ, nịnh mắt, độ s&aacute;ng v&agrave; độ tương phản cao, m&agrave;u đen s&acirc;u v&agrave; đậm v&agrave; đặc biệt l&agrave; khả năng tiết kiệm hơn so với c&aacute;c c&ocirc;ng nghệ m&agrave;n h&igrave;nh kh&aacute;c qua đ&oacute; cho thời gian sử dụng vượt trội&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .</p>\r\n\r\n<h3>Chụp ảnh ấn tượng với ba camera của Xiaomi Mi 9</h3>\r\n\r\n<p>Xiaomi Mi 9 sở hữu đến ba camera ở mặt sau, bao gồm camera ch&iacute;nh c&oacute; độ ph&acirc;n giải cực khủng 48MP cảm biến Sony IMX 586, camera phụ lần lượt l&agrave; 13MP v&agrave; 16MP, cảm biến TOF 3D (Time-of-Flight c&oacute; khả năng cảm biến nhận diện chiều s&acirc;u, khoảng c&aacute;ch 3D). Xiaomi Mi 9 chắc chắn sẽ khiến cho người d&ugrave;ng h&agrave;i l&ograve;ng với những bức ảnh ưng &yacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-3.jpg\" style=\"height:556px; width:840px\" /></p>\r\n\r\n<p>C&ograve;n camera trước của cũng được h&atilde;ng đặc biệt chăm ch&uacute;t khi trang bị độ ph&acirc;n giải 24MP Sony IMX576 t&iacute;ch hợp c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo AI c&ugrave;ng đ&egrave;n LED trợ s&aacute;ng, mang lại những bức ảnh selfie r&otilde; n&eacute;t v&agrave; ch&acirc;n thực.</p>\r\n\r\n<h3>Hiệu năng mạnh mẽ v&agrave; t&iacute;nh năng bảo mật v&acirc;n tay dưới m&agrave;n h&igrave;nh tr&ecirc;n Xiaomi Mi 9</h3>\r\n\r\n<p>Xiaomi Mi 9 được t&iacute;ch hợp vi xử l&yacute; hiện đang đứng đầu về hiệu năng Snapdragon 855. Đ&acirc;y l&agrave; chip c&oacute; nhiều ưu điểm như: c&oacute; khả năng truy cập dữ liệu với tốc độ 5G, CPU nhanh hơn tới 45%, xử l&yacute; đồ họa nhanh hơn 20% so với người tiền nhiệm, Snapdragon 845, Quay video 4K chế độ Portrait, hỗ trợ VR tr&ecirc;n di động với độ ph&acirc;n giải 8K v&agrave; tốc độ 120 fps. Nh&igrave;n chung, Snapdragon 855 kh&ocirc;ng chỉ mang lại cho người d&ugrave;ng khả năng xử l&yacute; mạnh hơn m&agrave; c&ograve;n nhiều trải nghiệm tuyệt vời hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/xiaomi/xiaomi-mi-9-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, RAM 6 GB cho người d&ugrave;ng khả năng chạy đa nhiệm mượt m&agrave;, đi c&ugrave;ng l&agrave; bộ nhớ trong 64 GB gi&uacute;p bạn lưu trữ dữ liệu c&aacute; nh&acirc;n thỏa th&iacute;ch. Xiaomi Mi 9 được chạy tr&ecirc;n hệ điều h&agrave;nh MIUI 10 dựa tr&ecirc;n nền tảng Android 9 Pie.</p>\r\n\r\n<p>Điểm nổi bật của chiếc m&aacute;y n&agrave;y l&agrave; cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh. Cảm biến n&agrave;y được đặt ngay dưới m&agrave;n h&igrave;nh AMOLED v&agrave; được hoạt động khi đầu ng&oacute;n tay người d&ugrave;ng chạm l&ecirc;n bề mặt m&agrave;n h&igrave;nh, cảm biến sẽ ph&aacute;t ra c&aacute;c tia s&aacute;ng đọc dấu v&acirc;n tay, sau đ&oacute; chuyển th&ocirc;ng tin về bộ cảm biến quang học. Sau đ&oacute;, bộ xử l&yacute; AI sẽ ph&acirc;n t&iacute;ch v&agrave; ghi nhận 300 điểm kh&aacute;c biệt tr&ecirc;n v&acirc;n tay, như khoảng c&aacute;ch giữa c&aacute;c đường v&acirc;n v&agrave; cuối c&ugrave;ng l&agrave; ghi nhận mở kh&oacute;a thiết bị.</p>\r\n\r\n<p>Xiaomi Mi 9 sở hữu vi&ecirc;n pin c&oacute; dung lượng 3.700 mAh, cung cấp đủ điện năng để người d&ugrave;ng sử dụng trong v&ograve;ng một ng&agrave;y với c&aacute;c nhu cầu cơ bản. Ngo&agrave;i ra, m&aacute;y c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh sạc nhanh 32W để tiết kiệm thời gian sạc pin.</p>\r\n', 2, 260, 16, 0, 11990000, 11990000, '2020-12-14 22:30:05', '1', '2020-12-14 16:40:11', '1', 1, 1),
(21, 1, 'Apple iPhone 8 Plus 64GB Chính hãng', 'apple-iphone-8-plus-64gb-chinh-hang', 'a6a1f3a7e3191930164237d7abbcf552.jpg', '511ea2148be73decc55c4cc807626d5a.jpg#328c007de67c9215673348a2cb1f0743.jpg#3249faead50a8a99fc7ff3178f70de6a.jpg#21cecadc38c1d1b3bea0df11ea01f981.jpg', 'iPhone 8 Plus 64GB - Smartphone đến từ thương hiệu Apple uy tín', '<p><em>Trong thời buổi hiện đại ng&agrave;y nay, smartphone l&agrave; một trong những thiết bị di động kh&ocirc;ng thể thiếu đối với bất k&igrave; người d&ugrave;ng n&agrave;o. Nổi bật v&agrave; thịnh h&agrave;nh trong c&aacute;c thương hiệu tr&ecirc;n thị trường hiện nay kh&ocirc;ng thể n&agrave;o kh&ocirc;ng kể đến h&atilde;ng Apple. C&aacute;c sản phẩm đến từ Apple đều mang lại chất lượng ho&agrave;n hảo. Như thường lệ,&nbsp;<strong>iPhone 8 Plus</strong>&nbsp;<strong>64GB&nbsp;</strong>ra đời với thiết kế c&ugrave;ng t&iacute;nh năng tuyệt vời sẽ mang đến cho người d&ugrave;ng những trải nghiệm th&uacute; vị nhất.</em></p>\r\n\r\n<h3><strong>Tại sao người d&ugrave;ng n&ecirc;n chọn mua iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A?</strong></h3>\r\n\r\n<p>L&yacute; do để người d&ugrave;ng lựa chọn chiếc&nbsp;<strong><em><a href=\"https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html\" target=\"_self\">iPhone 8 Plus</a></em></strong>&nbsp;ch&iacute;nh h&atilde;ng VN/A v&igrave; đ&acirc;y l&agrave; chiếc điện thoại c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; v&agrave; chất lượng đảm bảo. Đ&acirc;y l&agrave; sản phẩm h&agrave;ng ch&iacute;nh h&atilde;ng sản xuất cho thị trường Việt Nam, do đại l&yacute; Apple được ủy quyền tại Việt Nam ph&acirc;n phối.&nbsp;Chất lượng h&agrave;ng h&oacute;a của iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A được đảm bảo theo đ&uacute;ng ti&ecirc;u chuẩn nh&agrave; sản xuất. Đặc biệt, tại hệ thống CellphoneS c&oacute; dịch vụ đổi mới 30 ng&agrave;y sau khi mua sản phẩm, bảo hiểm 1 năm hoặc hơn tại c&aacute;c trung t&acirc;m bảo h&agrave;nh ủy quyền.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-2.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, cả hai mặt k&iacute;nh của điện thoại đều được cắt 2.5D ho&agrave;n hảo v&agrave; tinh tế, cụm camera cũng được bọc v&ograve;ng kim loại để mang đến n&eacute;t sang trọng nhưng cũng kh&ocirc;ng k&eacute;m phần hiện đại cho điện thoại. Mặt k&iacute;nh n&agrave;y cũng sẽ c&oacute; thể hỗ trợ c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y rất độc đ&aacute;o.</p>\r\n\r\n<h3><strong>Trang bị camera k&eacute;p 12 MP, quay phim 4K chất lượng cao</strong></h3>\r\n\r\n<p>Hệ thống camera k&eacute;p tại mặt sau của iPhone 8 Plus 64GB được cải tiến mạnh mẽ với một ống k&iacute;nh rộng độ ph&acirc;n giải 12MP (f/1.8) v&agrave; một ống k&iacute;nh tele đồng độ ph&acirc;n giải (f.2/8). Hệ thống camera k&eacute;p n&agrave;y được n&acirc;ng cấp cho khả năng thu nhận &aacute;nh s&aacute;ng nhiều hơn, gi&uacute;p h&igrave;nh ảnh sắc n&eacute;t v&agrave; chi tiết hơn trong mọi điều kiện m&ocirc;i trường. Với cấu h&igrave;nh n&agrave;y, iPhone 8 Plus cho ph&eacute;p bạn&nbsp;<a href=\"https://cellphones.com.vn/sforum/moi-xem-bo-phim-ngan-4k-tuyet-dep-duoc-quay-toan-bo-bang-iphone-6s-plus\" target=\"_blank\">quay video chất lượng 4K</a>. Camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 7MP (f/2.2) kết hợp c&ugrave;ng c&ocirc;ng nghệ chống rung tự động ti&ecirc;n tiến.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-3.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, đ&acirc;y l&agrave; lần đầu ti&ecirc;n iPhone t&iacute;ch hợp t&iacute;nh năng&nbsp;<a href=\"https://www.pocket-lint.com/phones/news/apple/142244-what-is-apple-s-portrait-lighting-and-how-does-it-work-on-iphone\" target=\"_blank\">Portrait Lightning</a>&nbsp;tr&ecirc;n camera&nbsp;trước nhằm gi&uacute;p người d&ugrave;ng điều chỉnh &aacute;nh s&aacute;ng trực tiếp khi thực hiện c&aacute;c t&aacute;c vụ selfie.Ngo&agrave;i ra, tr&ecirc;n iPhone 8 Plus 64GB cũng được Apple trang bị c&ocirc;ng nghệ ổn định h&igrave;nh ảnh quang học OIS gi&uacute;p lấy n&eacute;t nhanh v&agrave; ch&iacute;nh x&aacute;c hơn. Điện thoại cũng c&oacute; khả năng quay phim chất lượng cao 4K/60fps v&agrave; 1080p/240fps kết hợp c&ugrave;ng c&aacute;c chức năng hiện đại kh&aacute;c, gi&uacute;p người d&ugrave;ng c&oacute; những trải nghiệm h&igrave;nh ảnh tuyệt vời nhất.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ v&agrave; nhanh ch&oacute;ng từ chip Apple A11 Bionic 6 nh&acirc;n</strong></h3>\r\n\r\n<p>iPhone 8 Plus 64GB được trang bị con chip&nbsp;<a href=\"https://cellphones.com.vn/sforum/chipset-apple-a11-bionic-tren-iphone-8-va-iphone-x-danh-bai-tat-ca-cac-thiet-bi-android-voi-diem-geekbench-cao-ngat-nguong\" target=\"_blank\">Apple A11 Bionic 6</a>&nbsp;nh&acirc;n mới nhất, trong đ&oacute; 2 nh&acirc;n c&oacute; khả năng xử l&yacute; nhanh hơn 25%, 4 nh&acirc;n c&ograve;n lại c&oacute; tốc độ nhanh hơn 70% so với d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/sforum/chip-apple-a10-se-co-toi-6-nhan-xu-ly\" target=\"_blank\">chip A10</a>. Hệ điều h&agrave;nh&nbsp;<a href=\"https://cellphones.com.vn/sforum/25-thu-thuat-nho-co-the-ban-chua-biet-tren-he-dieu-hanh-ios-11-4-1\" target=\"_blank\">iOS 11</a>&nbsp;tr&ecirc;n m&aacute;y được đ&aacute;nh gi&aacute; cao với nhiều cải tiến vượt bậc về giao diện, cho khả năng đa nhiệm mượt m&agrave;, hỗ trợ mạnh t&iacute;nh năng thực tế ảo AR, gi&uacute;p người d&ugrave;ng c&oacute; được trải nghiệm ho&agrave;n hảo hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-4.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, GPU cũng được Apple tự sản xuất để đưa v&agrave;o chiếc iPhone 8 Plus 64GB mới với khả năng ti&ecirc;u thụ điện năng chỉ bằng 1/2 so với trước. Điều n&agrave;y sẽ cho ph&eacute;p điện thoại vừa hoạt động v&ocirc; c&ugrave;ng mạnh mẽ vừa c&oacute; thể dễ d&agrave;ng tối ưu h&oacute;a c&aacute;c t&aacute;c vụ đồ họa, c&ocirc;ng nghệ AR cũng như tr&iacute; tuệ nh&acirc;n tạo m&agrave; Apple đang ph&aacute;t triển.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t với c&ocirc;ng nghệ&nbsp;<a href=\"https://www.pocket-lint.com/tablets/news/apple/137264-what-is-apple-true-tone-display\" target=\"_blank\">True Tone</a></strong></h3>\r\n\r\n<p>Đối với iPhone 8 Plus 64GB, người d&ugrave;ng sẽ c&oacute; trải nghiệm tr&ecirc;n m&agrave;n&nbsp;h&igrave;nh&nbsp;<a href=\"https://www.macworld.co.uk/feature/apple/retina-display-3466732/\" target=\"_blank\">Retina</a>&nbsp;5.5 inch chuẩn HD, tấm nền LCD cảm ứng điện dung c&ugrave;ng c&ocirc;ng nghệ&nbsp;<a href=\"https://www.tomshardware.com/reviews/ips-in-plane-switching-definition,5748.html\" target=\"_blank\">IPS</a>, 16 triệu m&agrave;u, độ ph&acirc;n giải 1080 x 1920 pixels c&ugrave;ng mật độ điểm ảnh 401ppi cho khả năng hiển thị ho&agrave;n hảo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-6.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, iPhone 8 Plus 64GB c&ograve;n trang bị t&iacute;nh năng sạc nhanh hiện đại. Điện thoại c&oacute; thể sạc đầy 50% pin dung lượng 2900mAh chỉ trong vỏn vẹn 30 ph&uacute;t, thay v&igrave; phải mất hơn 1 giờ như tr&ecirc;n chiếc iPhone 7 tiền nhiệm. Bởi lẽ, đế sạc kh&ocirc;ng d&acirc;y được hỗ trợ kết nối với c&aacute;p Type &ndash; C hỗ trợ d&ograve;ng điện l&ecirc;n tới 100W, thay v&igrave; chỉ 10W như cổng&nbsp;<a href=\"https://whatis.techtarget.com/definition/micro-USB\" target=\"_blank\">microUSB</a>&nbsp;th&ocirc;ng thường.</p>\r\n\r\n<h3><strong>iPhone 8 Plus 64GB được t&iacute;ch hợp nhiều t&iacute;nh năng hiện đại: cảm biến v&acirc;n tay&nbsp;<a href=\"https://cellphones.com.vn/sforum/3-meo-don-gian-giup-cam-bien-van-tay-touch-id-tren-iphone-nhay-hon\" target=\"_blank\">Touch ID</a>, ti&ecirc;u chuẩn kh&aacute;ng nước IP68</strong></h3>\r\n\r\n<p>iPhone 8 Plus 64GB vẫn được t&iacute;ch hợp cảm biến v&acirc;n tay Touch ID v&agrave;o n&uacute;t Home như iPhone 7/ 7 Plus, điều n&agrave;y cho ph&eacute;p người d&ugrave;ng dễ d&agrave;ng truy cập v&agrave;o c&aacute;c ứng dụng, thực hiện nhiều t&aacute;c vụ hơn với c&aacute;c mức phản hồi lực kh&aacute;c nhau v&agrave; độ bảo mật được tối ưu hơn.</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;,<strong>&nbsp;</strong>&nbsp;iPhone 8 Plus 64GB c&ograve;n được trang bị kh&aacute;ng nước, bụi đạt chuẩn IP68. Trang bị n&agrave;y cho ph&eacute;p điện thoại chịu nước ở độ s&acirc;u 1 m&eacute;t trong v&ograve;ng 30 ph&uacute;t. Người d&ugrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng điện thoại dưới trời mưa hay trong m&ocirc;i trường kh&oacute;i bụi.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-8plus-64gb-7.jpeg\" style=\"height:572px; width:840px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, loa ngo&agrave;i tr&ecirc;n iPhone 8 Plus cũng cho c&ocirc;ng suất lớn hơn 25% so với người tiền nhiệm. Điện thoại c&ograve;n sử dụng cổng Lightning v&agrave; tai nghe Earpods để ph&ugrave; hợp với những ai đang sử dụng&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-7-7-plus.html\" target=\"_blank\">iPhone 7/7Plus</a>.</p>\r\n\r\n<h3><strong>Mua iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A đảm bảo chất lượng tại hệ thống&nbsp;<a href=\"https://cellphones.com.vn/\" target=\"_blank\">CellphoneS</a></strong></h3>\r\n\r\n<p>Nếu bạn đang muốn t&igrave;m mua một chiếc smartphone với chất lượng ho&agrave;n hảo v&agrave; gi&aacute; cả hợp l&yacute; th&igrave;&nbsp;<strong>iPhone 8 Plus 64GB ch&iacute;nh h&atilde;ng VN/A&nbsp;</strong>sẽ l&agrave; một lựa chọn tuyệt vời.&nbsp;Đặc biệt hơn, tại ​hệ thống&nbsp;<strong>CellphoneS</strong>​, bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi mua sản phẩm n&agrave;y v&igrave; ​CellphoneS c&oacute; chế độ bảo h&agrave;nh &ndash; đổi trả chu đ&aacute;o c&ugrave;ng dịch vụ giao h&agrave;ng &ndash; thu tiền tại nh&agrave; miễn ph&iacute; tr&ecirc;n to&agrave;n quốc</p>\r\n', 2, 240, 17, 12, 19500000, 18200000, '2020-12-14 00:03:02', '1', '2020-12-14 00:03:02', '2', 1, 1),
(23, 1, 'Apple iPad Pro 11 2018 Wi-fi 64GB Chính hãng', 'apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang', 'ae20440301730c38e1ca3f1440c50fcc.jpg', '765bd745b649eb90984b26d9d29a6e66.jpg#a031fcbb6b6a47fe5159c21c55c84df2.jpg#fe694bb7f08d8a12e62d7e23ce43d5aa.jpg', 'Apple iPad Pro 11 2018 Wi-fi 64GB Chính hãng - Cấu hình và tính năng', '<p>Nhằm mục đ&iacute;ch biến&nbsp;<a href=\"https://cellphones.com.vn/tablet/ipad-pro.html\" target=\"_blank\">iPad Pro</a>&nbsp;th&agrave;nh chiếc m&aacute;y t&iacute;nh bảng c&oacute; khả năng thay thế đảm nhiệm c&ocirc;ng việc cho laptop, năm nay Apple đ&atilde; ra mắt phi&ecirc;n bản n&acirc;ng cấp mạnh mẽ về thiết kế lẫn hiệu năng &ldquo;khủng&rdquo; cho&nbsp;<strong>Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</strong>.</p>\r\n\r\n<h3>Thiết kế viền si&ecirc;u mỏng tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Về thiết kế,&nbsp;<strong>iPad Pro 11 2018 Wi-fi 64GB</strong>&nbsp;sở hữu phần c&aacute;c cạnh viền xung quanh mỏng đều nhau ở bốn cạnh. M&aacute;y đ&atilde; bỏ đi ph&iacute;m home truyền thống thay v&agrave;o đ&oacute; l&agrave; c&aacute;c cử chỉ vuốt khi sử dụng như tr&ecirc;n iPhone X. Tổng k&iacute;ch thước của sản phẩm l&agrave; 247.6 x 178.5 x 5.9mm v&agrave; c&oacute; trọng lượng 468g. Với k&iacute;ch thước n&agrave;y c&ugrave;ng với c&aacute;c cạnh xung quanh được bo tr&ograve;n mềm mại sẽ tạo cho người d&ugrave;ng cảm gi&aacute;c cầm nắm v&ocirc; c&ugrave;ng chắc chắn v&agrave; thoải m&aacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-1_1.jpg\" style=\"height:839px; width:840px\" /></p>\r\n\r\n<h3>Trang bị c&ocirc;ng nghệ Face ID cao cấp tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Sản phẩm đ&atilde; được Apple thay thế phương thức bảo mật cảm biến v&acirc;n tay th&agrave;nh Face ID. Với cụm camera TrueDepth được t&iacute;ch hợp tr&ecirc;n&nbsp;<strong>iPad Pro 11 2018</strong>&nbsp;sẽ cho ph&eacute;p m&aacute;y nhận dạng tối đa 2 gương mặt người d&ugrave;ng. Đồng thời bất cứ hướng xoay cầm m&aacute;y theo chiều n&agrave;o của người d&ugrave;ng, Face ID cũng c&oacute; thể thực hiện mở kh&oacute;a được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-2_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-4_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Trang bị cổng USB-Type C tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Apple thay thế cổng kết nối Lightning tr&ecirc;n d&ograve;ng thiết bị iPad Pro của m&igrave;nh. Với việc t&iacute;ch hợp USB-Type C sẽ cho ph&eacute;p người d&ugrave;ng đồng bộ h&oacute;a tốt hơn với c&aacute;c thiết bị ngoại vi kh&aacute;c tr&ecirc;n thị trường. Đồng thời cổng kết nối n&agrave;y sẽ gi&uacute;p tốc độ truyền tải dữ liệu nhanh l&ecirc;n đến 10 gigabit. Người d&ugrave;ng c&oacute; thể xuất h&igrave;nh ảnh truyền từ m&agrave;n h&igrave;nh&nbsp;<strong>iPad Pro 11 64GB</strong>&nbsp;ra m&agrave;n h&igrave;nh ngo&agrave;i với độ ph&acirc;n giải khủng l&ecirc;n đến 5K.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-3_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/tablet/apple/apple-ipad-pro-11-2018-wi-fi-64gb-chinh-hang-5_1.jpg\" style=\"height:840px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng đỉnh cao tr&ecirc;n Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</h3>\r\n\r\n<p><strong><a href=\"https://cellphones.com.vn/apple-ipad-pro-11-2018-wifi-64-gb-chinh-hang.html\" target=\"_blank\">Apple iPad Pro 11 2018 Wi-fi 64GB Ch&iacute;nh h&atilde;ng</a></strong>&nbsp;được mệnh danh l&agrave; chiếc m&aacute;y t&iacute;nh bảng đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; hiệu năng mạnh hơn cả c&aacute;c d&ograve;ng laptop c&ugrave;ng mức gi&aacute; tr&ecirc;n thị trường. Cụ thể trang bị con chip Apple A12X Bionic với 8 l&otilde;i CPU nhanh hơn đến 35% so với thiết bị tiềm nhiệm v&agrave; 7 l&otilde;i GPU cho tốc độ xử l&yacute; đồ họa nhanh hơn 2 lần so với con chip A11X. Con chip n&agrave;y được sản xuất theo tiến tr&igrave;nh 7nm tối t&acirc;n nhất tr&ecirc;n thị trường. Sở hữu b&ecirc;n trong 10 tỷ b&oacute;ng b&aacute;n dẫn mang đến hiệu năng cực xuất sắc trong mọi t&aacute;c vụ từ đơn giản đến phức tạp nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 470, 33, 15, 22500000, 19500000, '2020-12-14 23:15:34', '1', '2020-12-14 17:53:49', '1', 1, 1),
(25, 2, 'Samsung Galaxy Note 9 Xanh đen', 'samsung-galaxy-note-9-xanh-den', 'bb0cd93933cdc906b66e3fc8a961ee35.jpg', 'd153c29c6407ab35d622591d57ab5e68.jpg#7b8e18f37db91158adc2bad1c146f40d.jpg', 'Điện thoại Samsung Galaxy Note 9 – Smartphone đầu tiên sở hữu bút S Pen hỗ trợ Bluetooth có thể dùng như điều khiển từ xa', '<p><em><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-note.html\" target=\"_blank\"><strong>Galaxy Note</strong></a>&nbsp;lu&ocirc;n l&agrave; d&ograve;ng sản phẩn đầu ti&ecirc;n được&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\"><strong>Samsung</strong></a>&nbsp;đưa v&agrave;o những c&ocirc;ng nghệ mới hoặc những &yacute; tưởng thiết kế c&aacute;ch t&acirc;n nhất. Tuy nhi&ecirc;n chiếc Note 9 lại đi theo một hướng kh&aacute;c với với tập trung v&agrave;o ho&agrave;n thiện những thứ sẵn c&oacute; v&agrave; đưa ra một số c&ocirc;ng nghệ mới để c&oacute; thể cải thiện trải nghiệm cho người d&ugrave;ng. L&agrave; một người c&oacute; đam m&ecirc; về c&ocirc;ng nghệ cũng như l&agrave; một SamFan ch&acirc;n ch&iacute;nh th&igrave; chiếc si&ecirc;u phẩm&nbsp;<strong>Samsung Galaxy Note 9</strong>&nbsp;sẽ l&agrave; một lựa chọn bạn kh&ocirc;ng n&ecirc;n bỏ qua.</em></p>\r\n\r\n<h3><strong>Thiết kế sang trọng với bộ khung nh&ocirc;m v&agrave; hai mặt lưng k&iacute;nh cường lực&nbsp;<a href=\"https://cellphones.com.vn/sforum/gorilla-glass-5-chinh-thuc-ra-mat\" target=\"_blank\">Gorilla Glass 5</a></strong></h3>\r\n\r\n<p>Nh&igrave;n tổng thể, thiết kế của Note 9 cơ bản vẫn kh&ocirc;ng kh&aacute;c biệt so với Note 8. Kiểu d&aacute;ng chung của m&aacute;y vẫn vậy với khung nh&ocirc;m v&agrave; hai mặt lưng k&iacute;nh cường lực Gorilla Glass 5. Hai m&eacute;p k&iacute;nh mặt trước v&agrave; sau bo cong nhẹ hơn Galaxy S8/S9 v&agrave; c&aacute;c g&oacute;c bo vu&ocirc;ng hơn n&ecirc;n tr&ocirc;ng khỏe khoắn v&agrave; nam t&iacute;nh chứ kh&ocirc;ng mềm mại như d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Galaxy S</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh1.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, phần cạnh của&nbsp;<strong>Galaxy Note 9</strong>&nbsp;kh&ocirc;ng c&ograve;n bo cong v&agrave;o hai mặt k&iacute;nh v&agrave; b&oacute;ng lo&aacute;ng như phi&ecirc;n bản tiền nhiệm. Samsung đ&atilde; gia tăng độ nh&aacute;m ở phần khung viền, c&aacute;c m&eacute;p cạnh m&agrave;n h&igrave;nh đồng thời cũng được v&aacute;t nhẹ gi&uacute;p cho trải nghiệm cầm nắm được an to&agrave;n hơn, kh&oacute; bị tuột tay hơn với k&iacute;ch thước đồ sộ 6.4 inch của m&igrave;nh.</p>\r\n\r\n<h3><strong>Smartphone sở hữu m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.trustedreviews.com/news/what-is-oled-3285263\" target=\"_blank\">OLED</a>&nbsp;cho khả&nbsp;năng hiển thị tốt</strong></h3>\r\n\r\n<p>Một điều đ&aacute;ng khen tr&ecirc;n Note 9 l&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh được n&acirc;ng l&ecirc;n th&agrave;nh 6.4 inch so với tiền nhiệm nhưng k&iacute;ch thước tổng thể kh&ocirc;ng đổi, ch&iacute;nh nhờ Samsung đ&atilde; l&agrave;m cho phần viền cạnh dưới mỏng hơn. Cạnh tr&ecirc;n c&ograve;n lại kh&ocirc;ng đổi khi Samsung n&oacute;i kh&ocirc;ng với m&agrave;n h&igrave;nh tai thỏ (notch) vốn l&agrave; xu hướng thiết kế hiện nay. Về tỉ lệ v&agrave; độ ph&acirc;n giải th&igrave; Note 9 kh&ocirc;ng kh&aacute;c nhiều so với Note 8 khi vẫn sử dụng m&agrave;n h&igrave;nh 18:5:9 k&egrave;m độ ph&acirc;n giải 2960x1440 pixels sắc n&eacute;t.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh2.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Tất nhi&ecirc;n về chất lượng hiện thị th&igrave; Note 9 vẫn l&agrave; một trong những mẫu smartphone c&oacute; m&agrave;n h&igrave;nh OLED tốt nhất hiện nay. Theo đ&aacute;nh gi&aacute; Display Mate, m&aacute;y c&oacute; độ ch&iacute;nh x&aacute;c m&agrave;u tuyệt đối v&agrave; khả năng hiện thị m&agrave;u sắc ch&iacute;nh x&aacute;c nhất, độ s&aacute;ng tăng cao hơn 27% so với Note 8 v&agrave; độ tương phản l&agrave; 32 %. Tr&ecirc;n thực tế, Note 9 mang đến trải nghiệm ho&agrave;n hảo tr&ecirc;n mọi g&oacute;c cạnh, m&agrave;n h&igrave;nh lớn khi kết hợp c&ugrave;ng m&agrave;u sắc sống động gi&uacute;p cho những trải nghiệm khi xem phim hay chơi game đều thật sự tuyệt hảo.</p>\r\n\r\n<h3><strong>B&uacute;t S Pen được kết nối&nbsp;<a href=\"https://cellphones.com.vn/sforum/bluetooth-5-1-ra-mat-ho-tro-them-dinh-vi-va-dieu-huong-chinh-xac-den-tung-centimet\" target=\"_blank\">Bluetooth</a>&nbsp;chỉ cần sạc 40 gi&acirc;y cho thời gian sử dụng 30 ph&uacute;t</strong></h3>\r\n\r\n<p>Một điểm đặc biệt l&agrave; b&uacute;t S Pen mới đ&atilde; được bổ sung kết nối Bluetooth để sử dụng điều khiển từ xa cho một số ứng dụng tr&ecirc;n điện thoại như chuyển chế độ chụp v&agrave; chụp ảnh, nghe nhạc, ghi &acirc;m, di chuyển tới lui khi xem ảnh v&agrave; điều khiển slide tr&igrave;nh chiếu PowerPoint, &hellip; S Pen đ&atilde; trở n&ecirc;n đa dụng hơn v&agrave; đến được với số người dụng hơn, kh&ocirc;ng chỉ hữu &iacute;ch với nh&oacute;m người cần vẽ vời hay viết ghi ch&uacute; nữa. B&acirc;y giờ bạn đ&atilde; c&oacute; thể tự sướng kh&ocirc;ng lo rung tay hay c&oacute; để điều khiển file thuyết tr&igrave;nh ngay tr&ecirc;n Note 9 với sự hỗ trợ của&nbsp;<a href=\"https://www.samsung.com/vn/apps/samsung-dex/\" target=\"_blank\">DeX&nbsp;</a>HDMI&nbsp;v&agrave; b&uacute;t S Pen m&agrave; kh&ocirc;ng cần d&ugrave;ng đến laptop nữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh3.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh3.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"Khi nghe tin rò rỉ bút S Pen hỗ trợ Bluetooth, nhiều người đã lo ngại vấn đề sạc pin của nó. Thực tế thì S Pen khing dùng pin mà dùng siêu tụ điện, có thể sạc đầy chỉ trong 40 giây sau khi đút vào máy theo như công bố của Samsung. Mỗi lần sạc bút đủ dùng trong 30 phút ở chế độ kết nỗi Bluetooth với điện thoại, tương đương 200 lần bấm. Khi hết pin, bút vẫn có thể sử dụng các chức năng thông thường như viết, vẽ, tin nhắn động, …  Camera được tích hợp công nghệ Dual Pixel cho khả năng chụp ảnh thiếu sáng ấn tượng Với sự kết hợp của AI (trí thông minh nhân tạo) thì camera Note 9 sẽ mang đến chất lượng hình ảnh khá ấn tượng sau khoảng thời gian sử dụng. Khả năng nhận dạng khá nhanh chóng các trường hợp thường thấy ở smartphone như ống kính bị ẩn, phát hiện ra chủ thể đang nhắm mắt.\" /><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh4.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p>Sở hữu khẩu độ cao, khả năng t&ugrave;y chỉnh khẩu độ theo từng m&ocirc;i trường &aacute;nh s&aacute;ng. Note 9 kh&ocirc;ng kh&oacute; để l&agrave;m chủ những khung h&igrave;nh thiếu s&aacute;ng. Độ chi tiết vẫn thể hiện kh&aacute; tốt, m&agrave;u sắc kh&ocirc;ng bị bệch. Ngo&agrave;i ra với lợi thế từ c&ocirc;ng nghệ Dual Pixel t&iacute;ch hợp b&ecirc;n trong cảm biến ảnh của Note 9, tốc độ chụp trong điều kiện thiếu s&aacute;ng vẫn đảm bảo chủ thể kh&ocirc;ng bị rung, nh&egrave;o khi đang di chuyển.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh khi sở hữu chip&nbsp;<a href=\"https://cellphones.com.vn/sforum/exynos-9810-vuot-moc-4-000-diem-don-loi-trong-bai-kiem-tra-hieu-nang-cua-geekbench\" target=\"_blank\">Exynos 9810</a>&nbsp;v&agrave; thời lượng pin l&ecirc;n đến 4000 mAh</strong></h3>\r\n\r\n<p>Với những g&igrave; ưu t&uacute; v&agrave; mạnh mẽ nhất th&igrave; Samsung đ&atilde; trang bị cho Note 9 bộ vi xử l&yacute; Exynos 9810 k&egrave;m theo đ&oacute; l&agrave; bộ nhớ RAM 6 GB cho phi&ecirc;n bản 128 GB v&agrave; 8 GB cho phi&ecirc;n bản 512 GB. Thừa sức để đ&aacute;p ứng cho người d&ugrave;ng ở mọi thao t&aacute;c d&ugrave; l&agrave; những tựa game nặng k&yacute; nhất hiện nay th&igrave; mọi thứ vẫn rất mượt m&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-note-9-hinh5.jpg_1.jpg\" style=\"height:560px; width:840px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"Không những thế, Note 9 còn sở hữu dung lượng pin khủng lên đến 4000 mAh giúp cho người dùng có thể tự tin bật Wi-Fi và 4G liên tục. Với nhu cầu sử dụng hàng ngày thì thông thường 1 ngày rưỡi đến 2 ngày mới phải sạc một lần. Có thể nói đây là yếu tố rất đáng giá vì phần lớn smartphone cao cấp hiện tại chỉ có thời lượng pin trung bình chứ không quá thoải mái sử dụng.  Mua Samsung Galaxy Note 9 giá ưu đãi chỉ có tại CellphoneS Cả về thiết kế, hiệu năng, camera lẫn bút S Pen đều được Samsung trau chuốt từng chút một, tạo nên một khối thống nhất hoàn hảo và khác biệt hơn bất kỳ mẫu máy cao cấp nào trên thị trường hiện nay. Hiện tại CellphoneS đang có mức giá hết sức ưu đãi dành cho sản phẩm Samsung Galaxy Note 10 cùng với đó là thời gian bảo hành dài hạn lên đến 12 tháng từ ngày quý khách mua sản phẩm.\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, Note 9 c&ograve;n sở hữu dung lượng pin khủng l&ecirc;n đến 4000 mAh gi&uacute;p cho người d&ugrave;ng c&oacute; thể tự tin bật Wi-Fi v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/sforum/mang-4g-la-gi-toc-do-co-that-su-vuot-troi-hon-3g\" target=\"_blank\">4G</a>&nbsp;li&ecirc;n tục. Với nhu cầu sử dụng h&agrave;ng ng&agrave;y th&igrave; th&ocirc;ng thường 1 ng&agrave;y rưỡi đến 2 ng&agrave;y mới phải sạc một lần. C&oacute; thể n&oacute;i đ&acirc;y l&agrave; yếu tố rất đ&aacute;ng gi&aacute; v&igrave; phần lớn smartphone cao cấp hiện tại chỉ c&oacute; thời lượng pin trung b&igrave;nh chứ kh&ocirc;ng qu&aacute; thoải m&aacute;i sử dụng.</p>\r\n\r\n<h3><strong>Mua Samsung Galaxy Note 9 gi&aacute; ưu đ&atilde;i&nbsp;</strong></h3>\r\n\r\n<p>Cả về thiết kế, hiệu năng, camera lẫn b&uacute;t S Pen đều được Samsung trau chuốt từng ch&uacute;t một, tạo n&ecirc;n một khối thống nhất ho&agrave;n hảo v&agrave; kh&aacute;c biệt hơn bất kỳ mẫu m&aacute;y cao cấp n&agrave;o tr&ecirc;n thị trường hiện nay. Hiện tại CellphoneS đang c&oacute; mức gi&aacute; hết sức ưu đ&atilde;i d&agrave;nh cho sản phẩm Samsung Galaxy Note 10 c&ugrave;ng với đ&oacute; l&agrave; thời gian bảo h&agrave;nh d&agrave;i hạn l&ecirc;n đến 12 th&aacute;ng từ ng&agrave;y qu&yacute; kh&aacute;ch mua sản phẩm.</p>\r\n', 2, 367, 5, 15, 22980000, 18900000, '2020-12-14 00:14:46', '1', '2020-12-14 16:37:01', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(27, 2, 'Samsung Galaxy S8+ Chính hãng', 'samsung-galaxy-s8-chinh-hang', 'cadd73e4617f599e52932e90a8f94976.jpg', 'b96fbb511e7d5d4424ca2eae52a3eb28.jpg#d5276929094f87e470ca2d957917c59d.jpg#ab6c2dc71ee55a8e3aa58b9dfe6ec896.jpg#d7ed3e9c74108cfa3d260b8b097ca6a1.jpg', 'Thiết kế Samsung Galaxy S8 Plus: vẻ đẹp độc đáo từ màn hình “không viền”', '<h2>Samsung Galaxy S8 Plus ch&iacute;nh h&atilde;ng</h2>\r\n\r\n<p>Sau th&agrave;nh c&ocirc;ng vang dội của bộ đ&ocirc;i&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s/galaxy-s7-s7-edge.html\" target=\"_blank\">Galaxy S7, Galaxy S7 Edge</a>, Samsung tiếp tục mang đến cho thị trường nhiều bất ngờ với cặp&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s8.html\" target=\"_blank\">Galaxy S8/S8 Plus</a>&nbsp;sở hữu thiết kế độc đ&aacute;o v&agrave; nhiều t&iacute;nh năng mới th&uacute; vị. Trong đ&oacute;, Galaxy S8 Plus được dự b&aacute;o sẽ l&agrave; đối thủ xứng tầm của d&ograve;ng iPhone Plus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-1.jpg\" style=\"height:458px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; thiết kế nguy&ecirc;n khối với bộ khung nh&ocirc;m v&agrave; hai mặt trước sau ốp k&iacute;nh cường lực b&oacute;ng bảy, nhưng Galaxy S8 Plus đ&atilde; được n&acirc;ng l&ecirc;n một tầm cao mới khi phần viền được l&agrave;m cực mỏng, tr&agrave;n ra s&aacute;t c&aacute;c m&eacute;p cạnh, tạo n&ecirc;n m&agrave;n h&igrave;nh m&agrave; Samsung gọi l&agrave; &ldquo;v&ocirc; cực&rdquo;, tạo n&ecirc;n một vẻ đẹp vừa độc đ&aacute;p vừa quyến rũ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh Samsung Galaxy S8 Plus: hai cạnh cong, hiển thị sắc n&eacute;t đến từng chi tiết</h3>\r\n\r\n<p>Hai cạnh b&ecirc;n của Galaxy S8 Plus được l&agrave;m cong 3D v&agrave; vẫn được t&iacute;ch hợp thanh c&ocirc;ng cụ gi&uacute;p người d&ugrave;ng truy cập nhanh c&aacute;c ứng dụng rất tiện lợi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-2.jpg\" style=\"height:427px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh, Samsung trang bị độ ph&acirc;n giải 1440 x 2960 theo tỷ lệ mới (18.5:9) nhằm tối ưu h&oacute;a đa nhiệm, kết hợp c&ugrave;ng k&iacute;ch thước lớn, l&ecirc;n đến 6.2 inch mang lại cho người d&ugrave;ng trải nghiệm ấn tượng khi xem phim v&agrave; chơi game giải tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng Samsung Galaxy S8 Plus: mạnh mẽ đến kinh ngạc</h3>\r\n\r\n<p>Samsung Galaxy S8 Plus C&ocirc;ng ty được trang bị vi xử l&yacute; Exynos 8895 t&aacute;m nh&acirc;n sản xuất tr&ecirc;n tiến tr&igrave;nh 10nm hiện đại cho hiệu năng cực kỳ đ&aacute;ng nể. N&oacute; đạt kết quả benchmark vượt trội hơn tất cả những smartphone c&oacute; mặt tr&ecirc;n thị trường v&agrave;o thời điểm ra mắt, kể cả iPhone 7 Plus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-3.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Nhiều t&iacute;nh năng hữu &iacute;ch trang bị tr&ecirc;n Samsung Galaxy S8 Plus</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với Galaxy S8 Plus, người d&ugrave;ng tự tin nghe điện thoại dưới trời mưa v&igrave; m&aacute;y được t&iacute;ch hợp ti&ecirc;u chuẩn chống nước IP68 (ng&acirc;m được trong nước ở độ s&acirc;u 1,5m trong v&ograve;ng 30 ph&uacute;t).</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Galaxy S8 Plus hỗ trợ người d&ugrave;ng bảo mật theo nhiều h&igrave;nh thức: bằng mật khẩu, h&igrave;nh vẽ, v&acirc;n tay hoặc mống mắt. Bạn cũng c&oacute; thể mở kh&oacute;a nhanh bằng c&aacute;ch k&iacute;ch hoạt chế độ nhận diện khu&ocirc;n mặt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-5.jpg\" style=\"height:327px; width:640px\" /></p>\r\n\r\n<p>Những thao t&aacute;c hằng ng&agrave;y sẽ được thực hiện nhanh ch&oacute;ng m&agrave; kh&ocirc;ng cần d&ugrave;ng đến đ&ocirc;i tay nhờ trợ l&yacute; ảo Bixby mới (điều khiển bằng giọng n&oacute;i) m&agrave; Samsung trang bị cho Galaxy S8 Plus. Đặc biệt, h&atilde;ng c&ograve;n ph&aacute;t h&agrave;nh một phụ kiện đặc biệt c&oacute; t&ecirc;n Samsung DeX để biến Galaxy S8 Plus th&agrave;nh m&aacute;y t&iacute;nh để b&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Camera Samsung Galaxy S8 Plus: ng&agrave;y c&agrave;ng gần hơn với m&aacute;y ảnh chuy&ecirc;n nghiệp</h3>\r\n\r\n<p>Với độ ph&acirc;n giải 12MP, ống k&iacute;nh khẩu độ lớn f/1.7, c&ocirc;ng nghệ lấy n&eacute;t DualPixel v&agrave; c&ocirc;ng nghệ chống rung quang học, camera sau của Galaxy S8 Plus mang lại những bức ảnh si&ecirc;u n&eacute;t, kh&ocirc;ng hề thua k&eacute;m m&aacute;y ảnh chuy&ecirc;n nghiệp DSLR.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s8-plus-chinh-hang-7.jpg\" style=\"height:370px; width:640px\" /></p>\r\n\r\n<h3>Thời lượng pin Samsung Galaxy S8 Plus đ&aacute;p ứng tốt nhu cầu</h3>\r\n\r\n<p>Với vi&ecirc;n pin dung lượng 3500mAh v&agrave; con chip Exynos mới tiết kiệm điện năng, Galaxy S8 Plus đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; giải tr&iacute; trong ng&agrave;y. M&aacute;y cũng được t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng nạp lại năng lượng cho thiết bị th&ocirc;ng qua cổng USB Type-C (cắm được c&aacute;p theo cả 2 chiều) v&agrave; đế sạc kh&ocirc;ng d&acirc;y.</p>\r\n', 2, 430, 54, 20, 17900000, 12700000, '2020-12-14 21:46:25', '1', '2020-12-14 21:46:25', '', 1, 1),
(28, 2, 'Samsung Galaxy S10 White', 'samsung-galaxy-s10-white', '15e1004aae0ad9dc632fab1c2c49a46f.jpg', 'b4b312066a992ca228092a0fd28d66d4.jpg#6143e44c305aec0801910443dc700a6c.png', 'Điện thoại Samsung Galaxy S10 - Cập nhật thông tin cấu hình, giá bán, chương trình khuyến mãi', '<p><em>Sự kiện Samsung Unpacked 2019 đ&atilde; kh&eacute;p lại với th&agrave;nh c&ocirc;ng kh&ocirc;ng thể tuyệt vời hơn, ch&iacute;nh l&agrave; biết thế hệ S thứ 10 của m&igrave;nh th&agrave;nh t&acirc;m điểm, chiếm s&oacute;ng to&agrave;n bộ spotlight của Đại hội MWC 2019. Thực sự, Samsung Galaxy S10 kh&ocirc;ng hẳn l&agrave; bản n&acirc;ng cấp ho&agrave;n hảo về mọi mặt nhưng n&oacute; hội tụ đủ, đ&uacute;ng những yếu tố cần thiết để người d&ugrave;ng cả thấy kh&ocirc;ng nh&agrave;m ch&aacute;n v&agrave; h&agrave;o hứng muốn sở hữu. Samsung Galaxy S10 cũng ch&iacute;nh l&agrave; bước s&atilde;i ch&acirc;n xa bắt kịp với c&aacute;c đối thủ song vẫn chứng minh ng&ocirc;i vương của bản th&acirc;n sau một năm nhạt nh&ograve;a.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế đỉnh cao &ndash; điểm nhấn m&agrave;n h&igrave;nh &ldquo;nốt ruồi&rdquo;</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ Infinity O đ&atilde; được Samsung c&ocirc;ng bố v&agrave; ứng dụng tr&ecirc;n c&aacute;c smartphone tầm trung của m&igrave;nh. Tuy kh&ocirc;ng c&ograve;n qu&aacute; xa lạ nhưng với ph&acirc;n kh&uacute;c cao cấp đ&acirc;y l&agrave; một sự mới mẻ b&ecirc;n cạnh một rừng tai thỏ đủ thế loại. Tấm nền hiển thị tr&ecirc;n S10 cũng đ&atilde; được n&acirc;ng cấp, v&agrave; giờ đ&acirc;y sau bao nhi&ecirc;u năng gắn b&oacute; với Super AMOLED, Samsung gọi c&ocirc;ng nghệ mới của m&igrave;nh l&agrave; Dynamic AMOLED. Samsung Galaxy S10 c&oacute; độ ph&acirc;n giải m&agrave;n h&igrave;nh Quad HD+ với tỷ lệ 19:9 mới, điều đặt biệt l&agrave; độ s&aacute;ng của tấm nền mới l&ecirc;n đến 1200nits đạt chuẩn HDR10 v&agrave; HDR10+ đầu ti&ecirc;n tr&ecirc;n thiết bị duy động. Kh&ocirc;ng những thế Samsung Galaxy S10 c&ograve;n được c&ocirc;ng nhận đạt 100% chuẩn m&agrave;u điện ảnh DCI-P3 v&agrave; độ tương phản khủng khiếp 2.000.000:1. Hiển thị tr&ecirc;n Galaxy S10 kh&ocirc;ng c&oacute; g&igrave; để c&oacute; thể ph&agrave;n n&agrave;n bất kể mục đ&iacute;ch sử dụng, điều kiện m&ocirc;i trường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s10.jpg\" style=\"height:408px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; triết l&yacute; thiết kế quen thuộc của Samsung từ 2016, kim loại c&ugrave;ng với 2 mặt k&iacute;nh cong nhưng tr&igrave;nh độ ho&agrave;n thiện của Samsung Galaxy S10 đ&atilde; đạt đến tr&igrave;nh độ tuyệt hảo đến từng chi tiết nhỏ. M&agrave;u sắc cũng l&agrave; điểm thu h&uacute;t của c&aacute;c series S10 vẫn bắt kịp xung hướng Gradient nhưng c&aacute;ch l&agrave;m của Samsung v&ocirc; c&ugrave;ng tinh tế v&agrave; nhẹ nh&agrave;ng d&ugrave; l&agrave; chuyển m&agrave;u nhưng vẫn giữ t&ocirc;ng m&agrave;u ch&iacute;nh chủ đạo kh&ocirc;ng kề qu&aacute; rực, qu&aacute; chỏi nhau. Khung viền được đ&aacute;nh b&oacute;ng, c&ugrave;ng với mặt trước một m&agrave;u đen tạo cho viền c&oacute; cảm đ&atilde; mỏng lại c&agrave;ng mỏng hơn. Cụm ba camera sau đặt ngang hơi hướng của Note 8, kh&ocirc;ng c&ograve;n cảm biến v&acirc;n tay b&agrave;n chạm nữa n&ecirc;n mặt lưng trong gọn g&agrave;n c&acirc;n đối. Cạnh tr&ecirc;n l&agrave; khe sim + thẻ nhớ, dưới vẫn l&agrave; cổng 3.5mm + cổng sạc type-C + loa ngo&agrave;i, ph&iacute;m &acirc;m lượng + ph&iacute;m Bixby vẫn b&ecirc;n tr&aacute;i, b&ecirc;n phải l&agrave; ph&iacute;m nguồn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/s10_-_m_t_sau.jpg\" style=\"height:605px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy được đ&aacute;nh gi&aacute; cao về thiết kế song Samsung Galaxy S10 vẫn vấp phải nhưng tranh c&atilde;i về mặt thiết kế. Về ph&iacute;m nguồn đặt qu&aacute; cao, g&acirc;y thay t&aacute;c cho những người c&oacute; b&agrave;n tay nhỏ kh&oacute; khăn hơn. Hay kịch liệt hơn ch&iacute;nh l&agrave; c&ocirc;ng nghệ Infinity - O, phần nhỏ người d&ugrave;ng kh&ocirc;ng chấp nhận với việc m&agrave;n h&igrave;nh bị 1 lỗ đen ngứa mắt, cản trở hiển thị, phần c&ograve;n lại th&igrave; chấp nhận v&igrave; giới hạn c&ocirc;ng nghệ cũng như thấy b&igrave;nh thường v&igrave; kh&ocirc;ng ản hưởng qu&aacute; nhiều đến khả năng sử dụng hay hiển thị. Rồi ngay cả c&ocirc;ng nghệ mới v&acirc;n tay si&ecirc;u &acirc;m cũng bị ch&ecirc; tr&aacute;ch l&agrave; qu&aacute; chậm, kh&ocirc;ng thể d&aacute;m m&agrave;n h&igrave;nh&hellip; Nhưng tất cả những điều tr&ecirc;n đều kh&ocirc;ng thể phủ nhận l&agrave; Samsung Galaxy S10 gần như tiệm cận đến sự ho&agrave;n hảo.</p>\r\n\r\n<h3><strong>Bộ vi xử l&yacute; mới ho&agrave;n to&agrave;n, dung lượng pin cao chưa từng c&oacute;</strong></h3>\r\n\r\n<p>Ở thị trường Việt Nam, Samsung trang bị con chip &ldquo;nh&agrave; l&agrave;m&rdquo; Exynos 9820 Octa-core, tiến tr&igrave;nh 8nm mới nhất, 3 cụm nh&acirc;n phối hợp với nhau gồm 2xCustomCPU(M4), 2xCortexA75 v&agrave; 4xCortexA55 cho ph&eacute;p xung nhịp tối đa l&ecirc;n đến 2.7Hz. Về GPU th&igrave; Galaxy S10 trang bị Mali G76MP12 tăng đến 40% so với GPU đang trang bị tr&ecirc;n S9. Hỗ trợ chuẩn RAM cao nhất 4x 16-bit CHLPDDR4x l&ecirc;n đến 12GB, Exynos 9820 hổ trợ USF3.0 nhanh gấp 2 lần chuẩn 2.1 (2.9GHz). B&ecirc;n cạnh đ&oacute; tr&ecirc;n Exynos 9820 c&ograve;n được trang bị 2 nh&acirc;n NPU ri&ecirc;ng biệt hổ trợ c&aacute;c t&iacute;nh năng AI t&iacute;ch hợp v&agrave; d&ugrave;ng AI để do lường ch&iacute;nh x&aacute;c c&oacute; tiến tr&igrave;nh tr&ecirc;n m&aacute;y ph&acirc;n bổ t&agrave;i nguy&ecirc;n m&aacute;y, c&ograve;n c&oacute; c&aacute;c khu vực d&agrave;nh ri&ecirc;ng cho bảo mật, xử l&iacute; h&igrave;nh ảnh&hellip; Theo l&iacute; thuyết th&igrave; năng lực xử l&yacute; của 9820 cao hơn 20% so với 9810 v&agrave; tiết kiệm pin hơn 40%.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/samsung-galaxy-s10-cau-hinh.jpg\" style=\"height:343px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dung lượng pin cũng l&agrave; thứ được Samsung nhấn mạnh cho S10, với vi&ecirc;n pin 4100mAh lớn nhất trong c&aacute;c flagship Samsung hiện tại cho ph&eacute;p d&ugrave;ng trong cả ng&agrave;y d&agrave;i, thậm ch&iacute; sạc ngược cho thiết bị kh&aacute;c bằng t&iacute;nh năng Wireless Powershare mới. Đ&acirc;y cũng l&agrave; lần đầy ti&ecirc;n, Samsung n&acirc;ng tốc độ sạc sau vụ việc Note7, từ 18watt l&ecirc;n 25watt kh&aacute; d&egrave; dặt nhưng vẫn l&agrave;m ấm l&ograve;ng người sử dụng khi m&agrave; Samsung đ&atilde; ở qu&aacute; l&acirc;u với chuẩn Quick Charge 2.0.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Screenshot_5.jpg\" style=\"height:318px; width:840px\" /></p>\r\n\r\n<p>Với cấu h&igrave;nh mạnh mẻ hiện tại cũng dung lượng pin thoải m&aacute;i, Galaxy S10 hầu như c&oacute; thẻ g&aacute;nh mọi t&aacute;c vụ nặng nề nhất tr&ecirc;n Android b&acirc;y giờ như chỉnh sửa h&igrave;nh ảnh, l&agrave;m video, t&aacute;c vụ AR, chơi c&aacute;c game khủng nhất tr&ecirc;n CH Play m&agrave; kh&ocirc;ng lo lắng t&igrave;nh trạng chậm, giật lag&hellip;</p>\r\n\r\n<h3><strong>Gia nhập hội flagship ba camera sau &ldquo;chậm nhưng chắc&rdquo;</strong></h3>\r\n\r\n<p>Thiếu s&oacute;t nếu kh&ocirc;ng đề cập đến những n&acirc;ng cấp s&aacute;ng gi&aacute; tr&ecirc;n bộ 3 camera tr&ecirc;n Galaxy S10. Ngo&agrave;i ống k&iacute;nh ch&iacute;nh f1.5-2.4 c&oacute; Dualpixel v&agrave; lấy n&eacute;t theo pha, c&ugrave;ng ống tele 2x f2.4 th&igrave; t&ecirc;n S10 c&ograve;n c&oacute; th&ecirc;m 1 mắt si&ecirc;u rộng l&ecirc;n đến 123 độ f2.2 Điểm được Samsung nhấn mạnh nhất năm nay tr&ecirc;n bộ ba camera ch&iacute;nh l&agrave; chất lượng video khi m&agrave;n được trang bị th&ecirc;m t&iacute;nh năng Steady Shot khiến cho khả năng chống rung tuyệt vời hơn. B&ecirc;n cạnh đ&oacute; sau, c&oacute; v&agrave;i sự thay đổi ch&iacute;nh l&agrave; t&iacute;nh năng x&oacute;a ph&ocirc;ng đ&atilde; được Samsung chuyển từ cam tele về cam ch&iacute;nh. Vừa c&oacute; lợi cũng vừa c&oacute; hại, ảnh từ cam ch&iacute;nh cho ra m&agrave;u sắc chi tiết hay độ s&aacute;ng đều nhỉnh hơn cam tele, g&oacute;c cũng rộng hơn nhưng b&ugrave; lại khi muốn lấy được gần chủ thể phải zoom bằng ch&acirc;n, v&agrave; khả năng t&aacute;ch nền tạo bokeh đều bằng phần mềm n&ecirc;n sẽ c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Screenshot_4.jpg\" style=\"height:488px; width:840px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm nay d&atilde;y nhạy s&aacute;ng cũng ch&iacute;nh l&agrave; một trong những sự cả tiến lớn. Khi m&agrave; cả cam trước lẫn cam sau đều phải gọi l&agrave; xuất sắc khi chụp c&aacute;c bức ngược s&aacute;ng, hay gần nguồn s&aacute;ng mạnh. N&oacute;i về camera trước, sự quay lại của lấy n&eacute;t tự động v&agrave; bổ sung th&ecirc;m g&oacute;c chụp rộng hơn l&agrave;m cho c&aacute;c t&ugrave;y chọn selfie phong ph&uacute; v&agrave; chuy&ecirc;n nghiệp hơn. M&agrave;u da v&agrave; c&aacute;c chi tiết đều được giữ lại nhiều hơn, do độ ph&acirc;n giải được n&acirc;ng l&ecirc;n từ 8MP l&ecirc;n 10MP.</p>\r\n\r\n<h3><strong>Giao diện mới OneUI hiện đại, hổ trợ tốt m&agrave;n h&igrave;nh d&agrave;i</strong></h3>\r\n\r\n<p>C&oacute; qu&aacute; nhiều b&agrave;i đ&aacute;nh gi&aacute; trải nghiệm OneUI kể từ khi S10 chưa xuất hiện, hầu như giao diện được trang bị tr&ecirc;n S10 sẽ kh&ocirc;ng kh&aacute;c qu&aacute; nhiều tr&ecirc;n S9 hay Note9 được cập nhật. OneUI được khen nức nở bởi t&iacute;nh tiện dụng c&ugrave;ng với những thay đổi th&acirc;n thiện hơn với người d&ugrave;ng, c&aacute;c t&iacute;nh năng như Darkmode hay điều khiển cử chỉ đều được trang bị ngo&agrave;i ra nhưng thay đổi nhỏ về c&aacute;ch sắp xếp hiện thị cũng ghi điểm c&ocirc;ng cho OneUI trong mắt người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/s10_-_OneUI.jpg\" style=\"height:566px; width:840px\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n v&agrave;i vấn đề tr&ecirc;n OneUI ch&iacute;nh l&agrave; bộ Icon mới trong hoạt h&igrave;nh v&agrave; k&eacute;m sang hẳn so với giao diện cũ. V&agrave; c&aacute;ch điều hướng cử chỉ tr&ecirc;n OneUI kh&aacute; l&agrave; ngu, chả mấy tuận tiện cho người d&ugrave;ng.</p>\r\n\r\n<h3><strong>C&aacute;c t&iacute;nh năng mới được trang bị tr&ecirc;n Galaxy S10</strong></h3>\r\n\r\n<p>Phải kể đến t&iacute;nh năng được Samsung nhấn kh&aacute; s&acirc;u v&agrave; mạnh tr&ecirc;n S10 ch&iacute;nh l&agrave; t&iacute;nh năng sạc ngược Wireless Powershare. Thực tế đ&acirc;y kh&ocirc;ng phải l&agrave; t&iacute;nh năng mới do Samsung nghĩ ra, nhưng trước đ&oacute; với Huawei chưa bao giờ biến t&iacute;nh năng n&agrave;y trở n&ecirc;n hữu &iacute;ch, bởi mang t&iacute;nh tr&igrave;nh diễn nhiều hơn l&agrave; tiện &iacute;ch. Tuy nhi&ecirc;n với hệ sinh th&aacute;i Galaxy, như tai nghe Galaxy Bubs hay đồng hồ Galaxy Watch, Samsung sẽ gi&uacute;p t&iacute;nh năng n&agrave;y c&oacute; nhiều đất diễn hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-8.jpg\" style=\"height:444px; width:840px\" /></p>\r\n\r\n<p>Một t&iacute;nh năng được xem l&agrave; điểm nhấn của S10 ch&iacute;nh l&agrave; cảm biến v&acirc;n tay si&ecirc;u &acirc;m 3D. đ&acirc;y cũng kh&ocirc;ng phải l&agrave; t&iacute;nh năng mới bởi n&oacute; đ&atilde; được Qualcomm nghi&ecirc;n cứu v&agrave; giới thiệu từ l&acirc;u, nhưng phải đến gần đ&acirc;y khi vị tr&iacute; của n&oacute; được đưa xuống dưới m&agrave;n h&igrave;nh th&igrave; mới được xem l&agrave; t&iacute;nh năng mới, v&agrave; Samsung l&agrave; nh&agrave; sản xuất đầu ti&ecirc;n d&ugrave;ng t&iacute;nh năng n&agrave;y. Cơ chế hoạt độ bằng s&oacute;ng &acirc;m vẻ bản đồ 3D v&acirc;n tay, ch&iacute;nh đến từng nm nếu so với c&ocirc;ng nghệ nhận diện Gương mặt th&igrave; đ&acirc;y ch&iacute;nh l&agrave; FaceID của Apple v&igrave; n&oacute; d&ugrave;ng h&igrave;nh ảnh 3D của sinh trắc học chứ kh&ocirc;ng pahir l&agrave; ảnh 2D th&ocirc;ng thường. T&iacute;nh năng tương lai n&agrave;y cho ph&eacute;p sử dụng cả khi ng&oacute;n tay bị d&iacute;nh nước, dầu, lotion&hellip; nhưng lại cự tuyệt d&aacute;n cường lực hay miếng d&aacute;n th&ocirc;ng thường. Trong tương lai Samsung sẽ chắc chắn cho ra mắt những miếng d&aacute;n hỗ trợ c&ocirc;ng nghệ n&agrave;y vừa d&ugrave;ng được v&acirc;n tay, vừa bảo vệ điện thoại khỏi trầy xướt.</p>\r\n', 2, 320, 312, 20, 20900000, 15400000, '2020-12-14 00:20:01', '1', '2020-12-14 15:12:27', '1', 1, 1),
(30, 2, 'Samsung Galaxy S21', 'samsung-galaxy-s21', '5a5fc66241d76307d15c58889f1a3a14.PNG', '976f4a34427c3e9af19003301aa541e5.PNG', 'Sản phẩm mang đậm màu sắc thanh lịch', '<h2><strong>Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội</strong></h2>\r\n\r\n<p>B&ecirc;n cạnh bi&ecirc;n bản Galaxy Note 20 thường, Samsung c&ograve;n cho ra mắt&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cho khả năng kết nối dữ liệu cao c&ugrave;ng thiết kế nguy&ecirc;n khối sang trọng, bắt mắt. Đ&acirc;y sẽ l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho bạn để sử dụng m&agrave; kh&ocirc;ng bị lỗi thời sau thời gian d&agrave;i ra mắt.</p>\r\n\r\n<h3><strong>Thiết kế khung nh&ocirc;m nguy&ecirc;n khối, mặt sau k&iacute;nh cường lực sang trọng</strong></h3>\r\n\r\n<p>L&agrave; một sản phẩm c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn v&igrave; vậy Samsung đ&atilde; trang bị cho Galaxy Note 20 Ultra 5G&nbsp; với c&ocirc;ng nghệ kết nối dữ liệu mạnh mẽ c&ugrave;ng thiết kế nguy&ecirc;n khối. Gi&uacute;p c&aacute;c linh kiện b&ecirc;n trong điện thoại được cố định chắc chắn đảm bảo mọi thứ b&ecirc;n trong lu&ocirc;n được an to&agrave;n. Kh&ocirc;ng những vậy khung nh&ocirc;m tạo tr&ecirc;n những đường viền cực kỳ sang trọng v&agrave; bắt mắt khi nh&igrave;n v&agrave;o.</p>\r\n\r\n<p><img alt=\"Thiết kế khung nhôm nguyên khối, mặt sau kính cường lực sang trọng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G.jpg\" /></p>\r\n\r\n<p>Mặt sau của SS Galaxy Note n&agrave;y được h&atilde;ng trang bị mặt k&iacute;nh tạo n&ecirc;n vẻ sang trọng v&agrave; cuốn h&uacute;t khi nh&igrave;n v&agrave;o chiếc điện thoại từ b&ecirc;n ngo&agrave;i. Loại k&iacute;nh cho cả mặt trước v&agrave; mặt sau đều l&agrave; k&iacute;nh cường lực Gorilla Glass 6 kh&ocirc;ng những sang trọng m&agrave; c&ograve;n mang đến sự chắc chắn hạn chế rơi vỡ vực tốt.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 6.9 inch độ ph&acirc;n giải 2K 120Hz, cấu h&igrave;nh mạnh mẽ</strong></h3>\r\n\r\n<p>Đối với bất kỳ chiếc điện thoại n&agrave;o đến từ Samsung d&ograve;ng Note lu&ocirc;n l&agrave; những chiếc điện thoại c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn. Samsung Galaxy Note 20 Ultra 5G cũng vậy n&oacute; được trang bị m&agrave;n h&igrave;nh 6.9 inch 2 cạnh b&ecirc;n cong tạo n&ecirc;n vẻ đẹp sang trọng, độ ph&acirc;n giải đạt 2K 1440 x 3200 pixels cho h&igrave;nh ảnh hiển thị cực kỳ sắc n&eacute;t. Ngo&agrave;i ra tần số qu&eacute;t tr&ecirc;n m&agrave;n h&igrave;nh cũng nằm ở mức lớn 120Hz ở độ ph&acirc;n giải FHD v&agrave; 60Hz ở QHD. Mọi h&igrave;nh ảnh khi bạn chơi game với khung h&igrave;nh cao hay trải nghiệm những bộ phim h&agrave;nh động cực kỳ mượt m&agrave; v&agrave; sắc n&eacute;t với c&ocirc;ng nghệ HDR10+.</p>\r\n\r\n<p><img alt=\"Màn hình 6.9 inch độ phân giải 2K 120Hz, cấu hình mạnh mẽ\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-1.jpg\" /></p>\r\n\r\n<p><strong>Samsung Note 20 Ultra 5G</strong>&nbsp;sở hữu b&ecirc;n trong một cấu h&igrave;nh cực kỳ mạnh mẽ c&acirc;n dư sức c&aacute;c tựa game nặng nhất hiện nay. M&aacute;y sử dụng chip Exynos 992 tốc độ si&ecirc;u nhanh đi k&egrave;m bộ nhớ RAM 12GB cho bộ nhớ 256GB gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng đa nhiệm v&agrave; lưu trữ thoải m&aacute;i. Tất cả tạo n&ecirc;n một cấu h&igrave;nh cực kỳ mạnh mẽ c&oacute; thể đ&aacute;p ứng mọi nhu cầu của bạn tr&ecirc;n một chiếc điện thoại.</p>\r\n\r\n<p><img alt=\"Màn hình 6.9 inch độ phân giải 2K 120Hz, cấu hình mạnh mẽ\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-2_1.jpg\" /></p>\r\n\r\n<h3><strong>Trang bị c&ocirc;ng nghệ 5G tương lai, tốc độ cao khi sử dụng dữ liệu</strong></h3>\r\n\r\n<p>Hầu hết tr&ecirc;n tất cả c&aacute;c nước n&oacute;i chung v&agrave; Việt Nam n&oacute;i ri&ecirc;ng đều đang bắt đầu phủ s&oacute;ng băng tần 5G dần dần để thay đổi c&aacute;c chuẩn thấp hiện tại. Nắm bắt được nhu cầu v&agrave; xu hướng thị trường h&atilde;ng đang trang bị Samsung Galaxy Note 20 Ultra c&ocirc;ng nghệ 5G tốc độ cao. Khi lựa chọn chiếc điện thoại n&agrave;y bạn sẽ kh&ocirc;ng cần phải lo lắng chiếc điện thoại của m&igrave;nh sẽ kh&ocirc;ng theo kịp c&aacute;c c&ocirc;ng nghệ đổi mới của tương lai.</p>\r\n\r\n<p><img alt=\"Trang bị công nghệ 5G tương lai, tốc độ cao khi sử dụng dữ liệu\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-3_1.jpg\" /></p>\r\n\r\n<p>Với c&ocirc;ng nghệ 5G người d&ugrave;ng c&oacute; thể truy cập internet với tốc độ cực cao l&ecirc;n đến 10Gb/s nhanh hơn tất cả c&aacute;c đường truyền wifi c&aacute;p quang m&agrave; bạn đang sử dụng. V&igrave; vậy lựa chọn Note 20 Ultra 5G kh&ocirc;ng những mạnh mẽ về cấu h&igrave;nh với k&iacute;ch thước lớn m&agrave; c&ograve;n gi&uacute;p bạn kh&ocirc;ng đi l&ugrave;i so với những c&ocirc;ng nghệ nổi bật v&agrave; quan trọng như 5G.</p>\r\n\r\n<h3><strong>Camera sau 108MP zoom quang học l&ecirc;n đến 50X, camera trước 40MP</strong></h3>\r\n\r\n<p>Kh&ocirc;ng những mang đến cấu h&igrave;nh m&aacute;y hiệu năng cao Galaxy Note 20 Ultra 5G c&ograve;n mang đến cho bạn bộ 3 camera c&oacute; độ ph&acirc;n giải cao. Cụ thể camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 108 MP khẩu độ f/1.8, camera periscope telephoto 13 MP khẩu độ f/3.4, camera g&oacute;c rộng 2 MP khẩu độ f/2.2. Bộ 3 camera n&agrave;y cộng lại cho khả năng zoom quang học l&ecirc;n đến 50X. Gi&uacute;p bạn lưu lại được những h&igrave;nh ảnh chất lượng cao ở khoảng c&aacute;ch xa v&agrave; g&oacute;c cực rộng với độ ph&acirc;n giải l&ecirc;n đến 8K.</p>\r\n\r\n<p><img alt=\"Camera sau 108MP zoom quang học lên đến 50X\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-4.jpg\" /></p>\r\n\r\n<p>Camera trước&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cũng được h&atilde;ng trang bị độ ph&acirc;n giải cực cao l&ecirc;n đến 40MP. Chất lượng độ ph&acirc;n giải m&agrave; camera n&agrave;y mang lại cũng ở mức cao 4K/60fps. Gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i selfie lưu lại những h&igrave;nh ảnh sắc n&eacute;t hay chat video call với h&igrave;nh ảnh cực kỳ r&otilde; r&agrave;ng.</p>\r\n\r\n<p><img alt=\"camera trước 40MP\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-5.jpg\" /></p>\r\n\r\n<h3><strong>Hỗ trợ sạc nhanh 45W qua USB Type C, pin dung lượng lớn 4500mAh</strong></h3>\r\n\r\n<p>Samsung Note 20 Ultra 5G được h&atilde;ng trang bị khả năng sạc nhanh c&ocirc;ng suất l&ecirc;n đến 45W qua cổng USB Type C cho khả năng sạc đầy pin cực kỳ nhanh ch&oacute;ng chưa đến 90 ph&uacute;t. Kh&ocirc;ng những vậy Note 20 Ultra 5G c&ograve;n c&oacute; khả năng sạc ngược cho thiết bị kh&aacute;c với c&ocirc;ng suất 9W. M&aacute;y cũng trang bị khả năng sạc kh&ocirc;ng d&acirc;y c&ocirc;ng suất l&ecirc;n đến 15W.</p>\r\n\r\n<p><img alt=\"Hỗ trợ sạc nhanh 45W qua USB Type C, pin dung lượng lớn 4500mAh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-6.jpg\" /></p>\r\n\r\n<p>Với hiệu năng cực khủng k&egrave;m m&agrave;n h&igrave;nh lớn Samsung đ&atilde; trang bị cho Note 20 Ultra 5G vi&ecirc;n pin li-ion c&oacute; dung lượng l&ecirc;n đến 4500mAh. Bạn c&oacute; thể sử dụng thoải m&aacute;i chiếc điện thoại của m&igrave;nh trong cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng sợ hết pin giữa chừng. Smartphone n&agrave;y c&oacute; thể c&acirc;n mọi tựa game với độ ph&acirc;n giải cao nhất l&ecirc;n đến hơn 8 tiếng li&ecirc;n tục m&agrave; kh&ocirc;ng hết pin với chế độ tiết kiệm pin.</p>\r\n\r\n<h3><strong>B&uacute;t S-Pen si&ecirc;u nhạy, nhiều trang bị kết nối hiện đại, cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh</strong></h3>\r\n\r\n<p>Hầu hết c&aacute;c d&ograve;ng điện thoại Samsung Galaxy Note đều được trang bị b&uacute;t S-Pen v&agrave;&nbsp;<strong>Galaxy Note 20 Ultra 5G</strong>&nbsp;cũng kh&ocirc;ng ngoại lệ. Chiếc b&uacute;t n&agrave;y được cải tiến nhiều hơn so với c&aacute;c d&ograve;ng cũ c&oacute; độ nhạy cực cao v&agrave; điều hướng th&ocirc;ng minh cực kỳ ch&iacute;nh x&aacute;c. Bạn c&oacute; thể sử dụng b&uacute;t S-Pen để thỏa sức s&aacute;ng tạo với những t&iacute;nh năng tuyệt vời v&agrave; c&ocirc;ng nghệ cực kỳ th&ocirc;ng minh.</p>\r\n\r\n<p><img alt=\"Bút S-Pen siêu nhạy, nhiều trang bị kết nối hiện đại\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-7.jpg\" /></p>\r\n\r\n<p>Samsung Note 20 Ultra 5G cũng được trang bị c&aacute;c kết nối mới nhất ti&ecirc;n tiến nhất hiện nay như: Wi-Fi 802.11 ac hỗ trợ băng tần k&eacute;p. Bluetooth 5.0 cũng được Samsung đưa v&agrave;o thiết bị để kết nối mang lại sự ổn định tối đa v&agrave; nhiều cảm biến c&ocirc;ng nghệ mới gi&uacute;p thiết bị th&ocirc;ng minh hơn khi sử dụng.</p>\r\n\r\n<p><img alt=\"cảm biến vân tay dưới màn hình\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-8.jpg\" /></p>\r\n\r\n<p>Nhằm đem lại thiết kế cực kỳ sang trọng v&agrave; tinh tế Samsung đ&atilde; trang bị cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh. Gi&uacute;p chiếc m&aacute;y gọn g&agrave;ng hơn khi cảm biến v&acirc;n tay được đặt chiếm chỗ như trước. Người d&ugrave;ng c&oacute; thể dễ d&agrave;ng mở kh&oacute;a chiếc điện thoại một c&aacute;ch nhanh nhất ngay tr&ecirc;n m&agrave;n h&igrave;nh Note 20 Ultra 5G m&agrave; kh&ocirc;ng gặp phải bất kỳ kh&oacute; khăn n&agrave;o.</p>\r\n\r\n<p><img alt=\"cảm biến vân tay dưới màn hình\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-Galaxy-Note-20-Ultra-5G-9.jpg\" /></p>\r\n\r\n<h2><strong>Mua Galaxy Note 20 Ultra 5G ch&iacute;nh h&atilde;ng, ưu đ&atilde;i hấp dẫn tại CellphoneS</strong></h2>\r\n\r\n<p>CellphoneS l&agrave; trung t&acirc;m b&aacute;n điện thoại c&oacute; chi nh&aacute;nh phủ khắp tại c&aacute;c quận ở H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh. L&agrave; đơn vị được cung cấp&nbsp;<strong>Samsung Galaxy Note 20 Ultra 5G&nbsp;</strong>ch&iacute;nh h&atilde;ng n&ecirc;n mức gi&aacute; tại CellphoneS l&agrave; mức gi&aacute; cực rẻ v&agrave; k&egrave;m nhiều ưu đ&atilde;i đến từ Samsung cũng như CellphoneS. Bạn c&oacute; thể trả g&oacute;p x&eacute;t duyệt nhanh ch&oacute;ng hoặc đặt h&agrave;ng giao h&agrave;ng tận nh&agrave; khi mua h&agrave;ng tại CellphoneS<strong>.</strong></p>\r\n', 2, 1, 0, 20, 20000000, 16000000, '2021-06-06 03:35:59', '1', '2021-06-06 03:35:59', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner', 'banner-1', 'Right-banner.jpg', '2020-12-14 23:06:00', '1', '2020-12-14 23:10:05', '', 0, 1),
(2, 'Banner3', 'Banner-2', 'rightbanner1.jpg', '2020-12-14 23:06:00', '1', '2020-12-14 23:10:36', '', 0, 1),
(3, 'Banner0', 'trang-chu', 'default.jpg', '2020-12-14 23:06:00', '1', '2020-12-14 23:10:19', '', 1, 1),
(4, 'Banner1', 'slider-trang-chu-2', 'Banner1.jpg', '2020-12-14 23:06:00', '1', '2020-12-14 23:10:23', '1', 1, 1),
(5, 'Banner2', 'slider-trang-chu-3', 'Banner2.jpg', '2020-12-14 23:06:00', '1', '2020-12-14 23:10:27', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'Quản Trị Viên', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Triều Khúc', 'user-group.png', '2020-12-14 23:02:21', 1, 1),
(2, 'Quản Lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Triều Khúc', 'bc0d4c186522764fc9457b7bacb635e4.png', '2020-12-14 23:02:47', 1, 1),
(3, 'Nhân Viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '09990990', 'Triều Khúc', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2020-12-14 23:02:44', 1, 1),
(4, 'Nhân Viên', 'nhanvien1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv1@gmail.com', 1, '0985657410', 'Triều Khúc', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2020-12-14 22:08:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn Quyền Quản Lý', '2020-12-14 23:29:15', 1, '2020-12-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2020-12-14 23:29:21', 1, '2020-12-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
