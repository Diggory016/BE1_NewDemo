-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2024 at 08:34 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Thời sự', 'thoi-su', 0),
(2, 'Kinh tế', 'kinh-te', 0),
(3, 'Thể thao', 'the-thao', 0),
(4, 'Kinh doanh', 'kinh-doanh', 0),
(5, 'Thế giới', 'the-gioi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int NOT NULL,
  `featured` int NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `author` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Chặn quốc lộ, hủy nổ bom từ trường 240 kg', 'Quảng Trị Công binh đã chặn quốc lộ 15D khoảng 45 phút để hủy nổ bom từ trường nặng 240 kg nằm gần biên giới Việt - Lào, ngày 23/10.', 'Khoảng 10h45, thượng tá Phạm Anh Vũ, Phó Tham mưu trưởng Bộ Chỉ huy quân sự tỉnh Quảng Trị cùng lực lượng công binh tiếp cận quả bom ở suối Khe Say, xã A Ngo, huyện Đakrông.\r\n\r\nMột ngày trước, dân quân xã A Ngo phát hiện bom khi tuần tra biên giới Việt Lào, vị trí cách quốc lộ 15D khoảng 300 m, cách cửa khẩu quốc tế La Lay gần 2 km.Bom còn sót lại sau chiến tranh mang ký hiệu MK36, dài 1,5 m, đường kính 0,27 m, nặng 240 kg, chứa 80 kg thuốc nổ, bán kính sát thương 1,5 km. Xác định không thể di chuyển bom khỏi khe suối, Bộ Chỉ huy quân sự tỉnh Quảng Trị xin ý kiến Bộ Tư lệnh Quân khu 4 dùng phương án hủy nổ tại chỗ.\r\n\r\nĐược sự nhất trí của cấp trên, Bộ Chỉ huy quân sự tỉnh Quảng Trị đã phối hợp với Đồn biên phòng cửa khẩu quốc tế La Lay, công an xã A Ngo chốt chặn khoảng 3 km quốc lộ 15D từ cửa khẩu về hướng huyện Đakrông và các con đường lân cận, thông báo cho nhân dân vùng biên giới di dời đến nơi an toàn.\r\n\r\nQuả bom được công binh hủy nổ tại chỗ, đảm bảo an toàn.Quảng Trị từng hứng chịu nhiều bom đạn từ máy bay và tàu chiến Mỹ trong chiến tranh. Diện tích bị ô nhiễm bom mìn, vật liệu nổ chiếm 82% tổng diện tích đất đai (trên 390.000 ha).\r\n\r\nQuốc lộ 15D dài 78 km, điểm đầu tại xã A Ngo, điểm cuối tới cửa khẩu quốc tế La Lay, khu vực biên giới Việt - Lào.', '9a84c83e6167d9398076-2357-1729679773.jpg', 1, 0, 1000, '2024-10-23 11:46:22', '2024-10-24 08:54:17', 4),
(2, 'Israel bị tố không kích thủ đô Syria', 'Truyền thông Syria cho biết Israel không kích thủ đô Damascus và địa điểm quân sự gần thành phố Homs, khiến một binh sĩ nước này thiệt mạng.', '\"Israel vào khoảng 3h40 (7h40 giờ Hà Nội) ngày 24/10 tung đòn không kích từ phía Cao nguyên Golan và phía bắc Lebanon nhằm vào hai vị trí tại khu Kafr Sousa, thủ đô Damascus và một vị trí quân sự tại ngoại ô thành phố Homs\", hãng thông tấn SANA của Syria đưa tin.\r\n\r\nSANA cho biết trận không kích khiến một binh sĩ Syria thiệt mạng, 7 người bị thương và gây ra một số thiệt hại vật chất, song chưa công bố thêm chi tiết.\r\n\r\nLực lượng Phòng vệ Israel (IDF) chưa bình luận về thông tin trên.Israel nhiều lần không kích các vị trí tại Syria sau khi nội chiến tại nước này bùng phát. Mục tiêu của những chiến dịch này thường là các nhóm vũ trang có liên hệ với Iran, trong đó có Hezbollah, song đôi khi IDF tấn công vị trí quân chính phủ Syria.\r\n\r\nGiới chức Israel hiếm khi lên tiếng về các đòn tập kích ở Syria, nhưng từng nhiều lần tuyên bố không để \"kẻ thù không đội trời chung\" Iran tăng cường hiện diện tại nước này.\r\n\r\nTần suất các vụ không kích nhằm vào Syria của quân đội Israel tăng lên từ khi xung đột Dải Gaza bùng phát vào đầu tháng 10/2023. Israel từng áp dụng chiến thuật \"gõ nóc nhà\", thả bom huấn luyện trước 10 phút để cảnh cáo khi tấn công mục tiêu ở Syria, song gần đây chuyển sang các đòn không kích trực diện gây thương vong lớn hơn.IDF hôm 23/10 tập kích dữ dội vùng ngoại ô thủ đô Beirut của Lebanon, khu vực được ví như thành trì của Hezbollah, cùng thành phố Tyre ở miền nam nước này. Bộ Y tế Lebanon cho biết một người thiệt mạng và 5 người bị thương trong trận không kích, trong đó có một trẻ em.\r\n\r\nCác đợt không kích diễn ra trong lúc Mỹ đang nỗ lực thúc đẩy thỏa thuận ngừng bắn giữa Israel và những nhóm vũ trang trong khu vực, trong đó có Hezbollah tại Lebanon và Hamas ở Dải Gaza. Mỹ đang tìm cách ngăn xung đột khu vực lan rộng khi Israel lên kế hoạch trả đũa vụ tập kích tên lửa của Iran hồi đầu tháng 10.', '5563187178137268509b-Israel-7670-1729741200.jpg', 2, 0, 2000, '2024-10-24 03:52:22', '2024-10-24 08:54:36', 2),
(3, 'Real mất thêm hai trụ cột trước khi đấu Barca', 'Thủ môn Thibaut Courtois và tiền đạo Rodrygo lỡ trận El Clasico ở vòng 11 La Liga này 26/10 vì chấn thương.', 'Real vừa thắng ngược Dortmund 5-2, dù bị dẫn hai bàn trong hiệp một, ở lượt ba Champions League. Đây là lần thứ hai Real thắng ngược trên sân nhà tại Champions League dù bị dẫn hai bàn, sau trận thắng AS Roma 4-2 hồi tháng 9/2004.\r\n\r\nNhưng Real chịu tổn thất với chấn thương của hai trụ cột.\r\n\r\nRodrygo gặp vấn đề, nhường chỗ cho Aurelien Tchouameni ở phút 85 và phải chườm đá. Theo COPE Cadena, tiền đạo Brazil bị rách gân kheo đùi phải và sẽ được kiểm tra để xác định rõ mức độ chấn thương. Real chưa thông báo chính thức, nhưng tiền đạo Brazil sẽ không kịp bình phục cho trận El Clasico trên sân Bernabeu vào cuối tuần. Courtois bắt trọn 90 phút trước Dortmund, nhưng phải tập tễnh rời sân sau trận. Hôm 23/10, trang chủ Real xác nhận thủ thành người Bỉ chấn thương cơ khép ở chân trái, nhưng không thông báo thời gian hồi phục.\r\n\r\nHồi tháng 9, Courtois cũng vắng mặt ba tuần sau trận gặp Atletico Madrid vì chấn thương tương tự. Theo beIN Sports, thủ thành 32 tuổi sẽ ngồi ngoài từ hai đến ba tuần.\r\n\r\nNhư vậy, sau trận El Clasico cuối tuần này, Courtois và Rodrygo nguy cơ lỡ trận đấu sân khách với Valencia ở La Liga ngày 2/11, rồi trận tiếp AC Milan tại lượt bốn Champions League ngày 5/11.\r\n\r\nVới chấn thương của Courtois, HLV Carlo Ancelotti gần như chắc chắn sẽ trao suất bắt chính cho Andriy Lunin. Còn khi Rodrygo vắng mặt, HLV Italy có thể trở lại sơ đồ kim cương 4-1-2-1-2 quen thuộc, với bộ đôi tiền đạo Kylian Mbappe và Vinicius. Ông cũng có những lựa chọn tấn công thay thế chất lượng khác, như Arda Guler hay Endrick.Ngoài Courtois và Rodrygo, Real còn vắng Dani Carvajal, Brahim Diaz, David Alaba vì chấn thương. Phía đối diện, Barca chắc chắn không có sự phục vụ của Eric Garcia, Marc-Andre ter Stegen, Marc Bernal, Andreas Christensen, Ronald Araujo và Ferran Torres.\r\n\r\nBarca thắng chín, thua một qua 10 vòng đầu và đang giữ đỉnh bảng La Liga với 27 điểm. Real bất bại khi thắng bảy, hòa ba, nhưng xếp thứ hai khi kém Barca ba điểm.\r\n\r\nMùa trước, Real thắng cả ba trận gặp Barca - khi đó được dẫn dắt bởi Xavi. Đội bóng hoàng gia thắng 3-2 trên sân nhà, 2-1 trên sân khách tại La Liga và 4-1 ở chung kết Siêu Cup Tây Ban Nha.', 'Rodrygo-5383-1729724474.jpg', 3, 0, 5000000, '2024-10-23 23:07:56', '2024-10-24 08:54:53', 1),
(4, 'Giá vàng thế giới giảm mạnh', 'Mỗi ounce vàng quay đầu giảm gần 50 USD ngay sau khi lên mức cao kỷ lục mới, do lãi suất trái phiếu chính phủ và đôla Mỹ tăng.', 'Chốt phiên giao dịch 23/10, giá vàng thế giới giao ngay giảm gần 34 USD về 2.714 USD một ounce.\r\n\r\nTrước đó, kim loại quý có thời điểm lập đỉnh mới tại 2.758 USD, sau đó quay đầu giảm gần 50 USD và hồi lại ở cuối phiên.\r\n\r\nGiới phân tích cho rằng đồng đôla mạnh lên và lợi suất trái phiếu chính phủ Mỹ tăng đã lấn át nhu cầu trú ẩn do bầu cử Mỹ và xung đột tại Trung Đông. Dollar Index tăng 0,4% lên cao nhất 3 tháng, khiến vàng kém hấp dẫn với người mua ngoài Mỹ. Trong khi đó, lợi suất trái phiếu chính phủ Mỹ cũng lên đỉnh 3 tháng.\r\n\r\n\"Vàng đã trải qua thời kỳ khó khăn, khi lợi suất nhích lên. Việc nhà đầu tư bán ra kiếm lời cũng gây sức ép lên kim loại quý\", Bob Haberkorn - chiến lược gia thị trường tại RJO Futures nhận định.Từ đầu năm, vàng đã tăng hơn 31%, nhờ nhu cầu trú ẩn trong thời kỳ biến động kinh tế - chính trị. Giá liên tiếp lập đỉnh mới sau khi Cục Dự trữ liên bang Mỹ (Fed) giảm lãi suất tháng trước.\r\n\r\nHaberkorn dự báo kim loại quý này lên 2.800 USD một ounce cuối tuần này, nhờ nhu cầu trú ẩn. Cuộc thăm dò mới nhất của Reuters/Ipsos cho thấy tỷ lệ ủng hộ Phó tổng thống Kamala Harris hiện là 46%, nhỉnh hơn so với 43% của cựu Tổng thống Donald Trump.\r\n\r\n\"Sự bất ổn liên quan đến bầu cử Tổng thống Mỹ và khối nợ tăng cao tại nước này sẽ có lợi cho vàng. Họ phải phát hành hàng tỷ USD trái phiếu nữa ngay trước khi cuộc bầu cử diễn ra\", Ole Hansen - Giám đốc Chiến lược Hàng hóa tại Saxo Bank nhận định.Ngoài vàng, các kim loại quý khác cũng giảm. Giá bạc hạ 3,6% về 33,5 USD một ounce. Bạch kim mất 1,8% còn 1.018 USD và palladium giảm 1,8% về 1.056 USD.', 'gold-2024-10-24T081318-825-5443-1729732612.jpg', 4, 0, 2000000, '2024-10-24 01:37:56', '2024-10-24 08:55:24', 3),
(6, 'Cổ phiếu VHM, STB bị bán mạnh', 'Dẫn đầu thanh khoản, hai mã VHM và STB bị bán mạnh, thị giá về sát mức sàn khiến chỉ số chứng khoán giảm mạnh nhất hai tháng rưỡi', 'VHM đỏ sắc cả ngày khi các lệnh bán ra được cài từ đầu phiên. Giá giảm nhanh khi sang buổi chiều, bên mua liên tục chào giá sàn nhưng không có nguồn cung để khớp lệnh. Cổ phiếu Vinhomes đóng cửa ở 43.850 đồng, giảm 6,7% so với tham chiếu. Thanh khoản dẫn đầu thị trường với hơn 1.527 tỷ đồng, chiếm gần 10% tổng giá trị giao dịch toàn sàn HoSE', 'dsc04414-jpeg-1729759959-17297-2866-8473-1729760273.jpg', 4, 0, 4000000, '2024-10-24 09:15:00', '2024-10-24 09:15:00', 3),
(5, '0', 'Ca sĩ Björn Ulvaeus của ABBA, diễn viên Julianne Moore và nhiều nhà văn, nhạc sĩ đồng loạt ký thư phản đối AI dùng trái phép tác phẩm của họ.', 'Theo Guardian ngày 22/10, hơn 13.500 người làm ngành sáng tạo như chuyên gia văn học, âm nhạc, điện ảnh, sân khấu và truyền hình khắp thế giới ký vào tuyên bố phản đối việc khai thác trái phép tác phẩm của họ để đào tạo trí tuệ nhân tạo (AI). Thư do cựu giám đốc điều hành công ty công nghệ Stability AI kiêm nhạc sĩ Anh - Ed Newton-Rex - công bố qua trang web Statement on AI training. Số người tham gia dự kiến tiếp tục tăng.\r\n\r\nBản kiến nghị nêu rõ: \"Sử dụng trái phép các thành quả sáng tạo để huấn luyện AI là mối đe dọa lớn và bất công đối với kế sinh nhai của những người đứng sau tác phẩm đó. Không nên cho phép\".\r\n\r\nNgoài các nghệ sĩ, danh sách có nhiều lãnh đạo, thành viên của những tổ chức, hiệp hội nghệ thuật như Liên đoàn Nhạc sĩ Mỹ, Hiệp hội diễn viên Mỹ SAG-AFTRA, Hội đồng Nhà văn châu Âu và Universal Music Group.Hãng tin cho biết tuyên bố này xuất hiện trong bối cảnh các cuộc tranh chấp pháp lý giữa ngành sáng tạo và các công ty công nghệ như OpenAI đang diễn ra. Theo giới nghệ sĩ, việc dùng tác phẩm của họ để huấn luyện mô hình AI tạo sinh (dạng trí tuệ nhân tạo có thể tự sáng tạo nội dung, ý tưởng, hình ảnh) mà không có sự cho phép là vi phạm bản quyền.\r\n\r\nEd Newton-Rex từng là giám đốc âm thanh của hãng công nghệ Stability AI nhưng từ chức năm 2023 do bất đồng quan điểm về cách làm việc. Anh không đồng tình cách doanh nghiệp cho rằng việc lấy nội dung có bản quyền để huấn luyện AI mà không cần giấy phép là \"sử dụng hợp lý\" (fair use - thuật ngữ trong luật sở hữu trí tuệ Mỹ, cho phép mọi người dùng tác phẩm không cần sự đồng ý của chủ sở hữu bản quyền).\r\n\r\nTheo anh, những người kiếm sống từ công việc sáng tạo \"rất lo lắng\" về tình hình hiện tại. Cựu giám đốc nhận định: \"Các công ty cần có ba nguồn lực chính để xây dựng AI tạo sinh: Con người, khả năng tính toán và dữ liệu. Họ chi rất nhiều tiền cho hai yếu tố đầu tiên - đôi khi lên đến một triệu USD cho một kỹ sư và cả tỷ USD cho mỗi mô hình, nhưng lại muốn có nguồn đào tạo miễn phí\".\r\n\r\nNewton-Rex cũng nhận xét việc các nhà phát triển AI gọi tác phẩm gốc là \"dữ liệu đào tạo\" có thể làm đánh mất giá trị nhân văn của tác phẩm. \"Điều chúng ta bàn về sáng tạo là những sáng tác, hội họa và âm nhạc của con người\", anh bổ sung.\r\n\r\nKhông chỉ phản đối nhóm doanh nghiệp, Newton-Rex cảnh báo chính phủ Anh có thể gây hậu quả lớn nếu để công nghệ AI thu thập thành quả lao động của người làm công việc sáng tạo. Hôm 16/10, tờ Financial Times đưa tin các bộ trưởng của quốc gia này sẽ tham vấn đề xuất cho phép AI lấy tác phẩm từ nghệ sĩ và nhà xuất bản, trừ khi họ \"từ chối\" (opt-out). Newton-Rex nói phần đông nhà sáng tạo không biết chiến lược của những công ty công nghệ, nên dễ rơi vào thế bất lợi.\r\n\r\nAnh phân tích: \"Tôi từng điều hành các kế hoạch \'opt-out\' của nhiều công ty AI. Ngay cả những chương trình tốt nhất, hầu hết nghệ sĩ bỏ lỡ cơ hội từ chối do không biết thông tin hoặc không nhận email thông báo. Hoàn toàn bất công khi đặt gánh nặng từ chối đào tạo AI lên vai những người có tác phẩm bị trưng dụng. Nếu chính phủ thực sự nghĩ đây là điều tốt cho lĩnh vực sáng tạo thì họ cũng nên tạo phương thức giúp những người muốn tham gia có thể tự nguyện đăng ký\".', '462541968-1078621243652985-679-4502-2647-1729676848.jpg', 5, 0, 6000000, '2024-10-23 09:51:56', '2024-10-24 08:55:09', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Trần Văn A'),
(2, 'Nguyễn Văn B'),
(3, 'Lê Nguyễn Thanh c'),
(4, 'Hoàng Lê Anh D'),
(5, 'Vũ Hoàng Nguyễn Trung F');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
