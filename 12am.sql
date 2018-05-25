-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 04:51 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `12am`
--

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap`
--

CREATE TABLE `dangnhap` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fname` text COLLATE utf8_unicode_ci NOT NULL,
  `lname` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dangnhap`
--

INSERT INTO `dangnhap` (`ID`, `username`, `pass`, `fname`, `lname`) VALUES
(1, 'admin', 'admin', '', ''),
(2, 'winterrain9889', '899889', 'asb', 'abc'),
(3, 'winterrain000', '899889', 'abc', 'ada'),
(4, 'a', '2905', 'THeVi', 'Vi');

-- --------------------------------------------------------

--
-- Table structure for table `photostory`
--

CREATE TABLE `photostory` (
  `id` int(11) NOT NULL,
  `Title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Categories` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Time` date NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photostory`
--

INSERT INTO `photostory` (`id`, `Title`, `Image`, `Description`, `Categories`, `Time`, `Year`) VALUES
(1, 'Tú Làn', 'Image/TuLan.jpg', '<strong>Tại trạm dừng ở Tân Hóa, nhân viên Công ty Oxalis thông báo chương trình bằng sơ đồ và huấn luyện du khách sử dụng các trang thiết bị được chuẩn bị rất đầy đủ. Nhóm chúng tôi gồm 18 thành viên, trong đó có hai hướng dẫn viên kiêm huấn luyện viên và năm người khuân vác (porter).\r\n\r\nCả nhóm náo nức hành quân trong cơn mưa mùa Hè lất phất và dai dẳng. Tuần trước, Quảng Bình còn chang chang nắng với gió Lào rát bỏng. Chỉ mấy cơn mưa, cỏ cây hồi sinh mượt mà xanh tít tắp.\r\n\r\nCả nhóm vượt suối Rào Nan nước ngang bụng, lạnh buốt và chảy xiết. Sau đó vượt tiếp mấy quả núi, khi lởm chởm vách đá, lúc cheo leo rừng già; những lối mòn chỉ vừa đủ đặt bàn chân khám phá. Người đi phải dùng cả hai tay để đeo bám hoặc chống đẩy, địa hình luôn khác lạ và mới mẻ.\r\n\r\nĐến trưa, nhóm dùng bữa trong hang Chuột rồi lại tiếp tục hành quân như đoàn thám hiểm thực thụ. Lộ trình ngày đầu chừng 7km, chủ yếu vượt núi băng rừng, tập làm quen với thử thách.\r\n\r\nBuổi chiều, nhóm hạ trại ven dòng suối cạnh hang Tú Làn, nghe ầm ào thác đổ. Mọi người ào xuống tắm, nước lạnh đến tê người. Nhờ thác massage mà các thành viên rũ hết bụi đường và xóa tan mệt nhọc để thưởng thức bữa tối BBQ thịnh soạn. Khuya, mỗi người một lều, có túi ngủ, gối kê. Riêng tôi chọn ngủ võng nghe mưa tí tách.\r\n</strong>\r\n<img src= \"http://oxalis.com.vn/wp-content/uploads/2014/11/91A8611-Edit1.jpg\" width = 700px>\r\n<img src= \"https://znews-photo-td.zadn.vn/w660/Uploaded/jac_iik/2014_08_19/1.jpg\" width = 700px>\r\n<img src= \"https://znews-photo-td.zadn.vn/w660/Uploaded/NokaRW/2015_10_25/hangdongtulan9doanhnha.jpg\" width = 700px>\r\n', 'tulan', '2018-05-15', 2016),
(2, 'Đà Nẵng', 'Image/DaNang.jpg', '<strong>Đà Nẵng nằm giữa ba di sản thế giới: cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn. Đà Nẵng còn có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà, đèo Hải Vân, sông Hàn thơ mộng và cầu quay Sông Hàn – niềm tự hào của thành phố, và biển Mỹ Khê đẹp nhất hành tinh.</strong>\r\n<img src= \"https://znews-photo-td.zadn.vn/w1024/Uploaded/lerl/2015_08_25/lap_lanh_song_han.jpg\" width = 700px>\r\n<img src= \"https://www.dulichcongvu.com/uploads/VIET%20NAM/DA%20NANG/song-han.jpg\" width = 700px>\r\n<img src= \"http://vemaybaymienbac.com.vn/wp-content/uploads/2017/07/14.jpg\" width = 700px>\r\n<img src= \"http://chungculienkebietthuvinhomes.com/upload/images/10987706_10153215250654511_2631555443254004495_n.jpg\" width = 700px>\r\n<img src= \"http://www.vtr.org.vn/FileManager/Anh%20web%202016/Thang7/ffdgdfg.png\" width = 700px>', 'danang', '2018-05-17', 2016),
(3, 'Hà Giang', 'Image/HaGiang.jpg', '<strong>Du lịch Hà Giang mang đến nhiều trải nghiệm thú vị. Hà Giang không chỉ đẹp bởi phong cảnh hùng vĩ, những con đường uốn lượn quanh co dài bất tận, mà nó còn đẹp bởi Sắc Hoa và Tình Người. Hoa nở quanh năm với các mầu sắc diệu kỳ như: Vàng vàng của Hoa Cải, Tim Tím của Tam Giác Mạch, Trắng muốt của Hoa Mận, và một loài hoa đặc biệt nữa đó là “Hoa Đá”, cái tên tôi tự đặt ra khi chiêm ngưỡng quá nhiều những mầu Xám xanh, xám đen của những khối đá trên Cao Nguyên Đồng Văn. Nếu bạn được một lần đi chợ Đồng Văn, bạn sẽ cảm nhận được cái Tình Người quí giá, những chàng trai mời rượu nhau đến Say Xỉn không còn biết đường về, khuôn mặt họ cứ ngơ ngáo nhưng lại chân thật, và tình cảm. Chỉ những người hiểu nhau, quí nhau mới cạn hết những chén rượu Ngô. Thật có quá nhiều cảm xúc để chia sẻ với các bạn về chuyến đi của tôi. Nhưng thôi hãy tạm gác lại và xinh viết chi tiết trong một bài khác. Trước hết tôi muốn chia sẻ một số Kinh nghiệm du lịch Hà Giang của tôi.</strong>\r\n<img src= \"http://dulichthieuso.com/img/images/products/Dinh-deo-Ma-Pi-Leng-huyen-thoai0.jpg?width=160&height=145&mode=stretch\" width = 700px>\r\n<img src= \"http://hagiangsensetravel.com/view/at_cac-diem-du-lich-ha-giang-hap-dan--p2-_3824830324cb4538122733d79dc96b47.jpg\" width = 700px>\r\n<img src= \"https://www.saigontourist.net/uploads/destination/TrongNuoc/mienbac/buckwheat-flower-season-hagiang.jpg\" width = 700px>\r\n<img src= \"http://www.opentour.vn/uploads/image/4-diem-den-trang-mat/du-lich-ha-giang-3ngay-3.png\" width = 700px>\r\n<img src= \"https://thesinhtouristhanoi.com/wp-content/uploads/2017/11/mua-thu-ha-giang.jpg\" width = 700px>', 'hagiang', '2018-05-11', 2017),
(4, 'Quảng Ngãi', 'Image/QuangNgai.jpg', '<strong>Quý khách lên tàu bắt đầu hành trình tham quan Vịnh Hạ Long. Quý khách ăn trưa trên tàu và tận mắt chiêm ngưỡng vẻ đẹp huyền bí của Vịnh Hạ Long với hàng ngàn hòn đảo lớn nhỏ khác nhau tỏng vòng 4 tiếng. Trên đường đi Quý Khách có cơ hộ ngắm nhìn làng chài trên vịnh, ngắm hòn Chó Đá, hòn Gà Chọi, đỉnh Lư Hương, thăm động Thiên Cung…một trong những hang động đẹp nhất của vịnh Hạ Long.Trên đường đi Quý Khách có cơ hộ ngắm nhìn làng chài trên vịnh, ngắm hòn Chó Đá, hòn Gà Chọi, thăm động Thiên Cung…một trong những hang động đẹp nhất của vịnh Hạ Long.</strong>\r\n<img src= \"https://d2tourdanang.com/upload/slider-single/tour-du-lich-quang-ngai-da-nang-4-ngay-3-tron-goi-gia-re-1.jpg\" width = 700px>\r\n<img src= \"https://danatravel.vn/data/tour/500/dao-ly-son-4647-1520825904.jpg\" width = 700px>\r\n<img src= \"https://cdn3.ivivu.com/2015/03/chua-hang-ivivu.jpg\" width = 700px>\r\n<img src= \"http://tourdulichdaolyson.com/view/at_cot-co-to-quoc-tren-dinh-thoi-loi-dao-ly-son_36642391189e8eff017eee46229c0a66.jpg\" width = 700px>\r\n<img src= \"http://lysontourism.vn/wp-content/uploads/2013/08/l%C3%BD-s%C6%A1n-3.jpg\" width = 700px>\r\n', 'quangngai', '2018-05-30', 2017),
(5, 'Phú Quốc', 'Image/PhuQuoc.jpg', '<strong>Cỏ Hồng Đà Lạt là một loài cỏ dại, mọc chen thành từng cụm dưới những tán thông già. Vào thời gian cuối tháng 11, những cây cỏ dại này bắt đầu ra hoa với màu hồng nhẹ nhàng tươi sáng khiến những cụm cỏ trở nên bắt mắt và xinh đẹp, để chụp ảnh với cỏ hồng đẹp nhất bạn nên đi vào buổi sáng hoặc buổi chiều, khi ánh mặt trời đang lên, những ánh nắng ban mai xuyên ngan những đám cỏ cùng những giọt sương còn li ti trên đó tạo nên một khung cảnh lung linh, huyền ảo và xinh đẹp.Vào buổi sáng những đám sương mỏng phủ trên lớp cỏ hồng mới nở tạo nên một vùng trắng xóa nên các bạn nhiếp ảnh còn gọi loài cỏ này là cỏ Tuyết. Để chụp được khung cảnh nên thơ với cỏ tuyết bạn phải dậy thật sớm và mất rất nhiều thời gian di chuyển đến ngọn đồi cỏ bên hồ Suối Vàng để chụp ảnh, vì khi mặt trời đã đứng bóng, sương mai cũng đã tan và cỏ Tuyết lại khoát lên mình màu hồng tươi xinh đẹp.Vào mùa cỏ Hồng cũng là thời khắc giao mùa giữa mùa Thu sang mùa Đông lạnh giá, vì vậy bạn nên chuẩn bị thật nhiều đồ ấm trước khi đến với Đà Lạt mù sương này nhé. Bên cạnh những địa điểm mình chia sẽ ở trên, bạn có thể chạy xe máy quanh Đà Lạt, một số đồi thông trên đường vào Thung Lũng Vàng cũng rực rỡ một màu hồng của loài cỏ đẹp nhất năm này.</strong>\r\n<img src= \"https://toptravels.vn/upload/du-lich-phu-quoc/kinh-nghiem-du-lich-mot-ngay-phu-quoc.jpg\" width = 700px>\r\n<img src= \"http://muachunghcm.com/wp-content/uploads/2017/06/tour-du-lich-phu-quoc-3-ngay-2-dem-1.jpg\" width = 700px>\r\n<img src= \"https://cms.gotadi.com/getattachment/ebb727d0-04d4-45b9-a380-bba8ee70f1e8/vinpearl-phu-quoc-nha-trang-10.jpg.aspx\" width = 700px>\r\n<img src= \"https://cdn3.ivivu.com/2015/01/chim-canh-cut0mua-vui-cho-khach-du-lich-Phu-Quoc-ivivu.com-4.png\" width = 700px>\r\n<img src= \"http://bizweb.dktcdn.net/100/019/923/products/c709dd00269ddcdefe2ba87fc0d85ce9.jpg?v=1455788573097\" width = 700px>', 'phuquoc', '2018-05-14', 2018),
(6, 'Hà Nội', 'Image/HaNoi.jpg', '<strong>Nhắc tới du lịch Sơn La thì chắc chắn không thể không nhắc đến Mộc Châu. Vào dịp cuối năm khi mùa hoa cải nở rộ cũng là lúc du khách khắp nơi và đặc biệt là dân phượt và cánh săn ảnh bắt đầu tìm đến Mộc Châu.\r\n\r\nKhông giống các vựa hoa ở thành phố khi chỉ được trồng trong một phạm vi nhỏ, tại Mộc Châu hoa được trồng kín khắp cả núi rừng, kéo dài từ thung lũng cho tới đỉnh đồi và cứ thế đồi này nối tiếp đồi khác nên chỉ cần mới bắt đầu đặt chân tới đây thôi bạn sẽ thấy dọc những con đường dẫn vào các thôn, bản, làng được phủ một màu trắng xóa của hoa cải đang vào mùa. Tạo cho Mộc Châu một khung cảnh thần tiên, lãng mạn vô cùng tận.Trong hang một cách sắc diệu kỳ, từ trần hang rủ xuống những dải nhũ thạch lấp lánh đủ bảy sắc cầu vồng. Nhiều khối ngũ đá từ trên trần hang chảy xuống nền hang cao tới hơn 20 m như những rễ cây đa cổ thụ rủ xuống mặt đất. Ngoài ra còn rất nhiều nhũ đá mang dáng cây đồng tiền, cây thóc, hình ông tiên, cô tiên, con voi, sư tử, hổ, kỳ đà, đại bàng và cả những đám mây bay lượn.\r\n\r\nCác cửa hang 50 m rộng khoảng 800 m2 vòm hang có chỗ cao hơn 30 m, có hình tròn. Ở chính giữa nền hang có một số hồ khô nước, rộng chừng 200 m2, giữa hồ có con rùa bằng đá to lớn. Bờ bên trái của hồ khối thạch nhũ hình đôi trai gái đang quấn quýt bên nhau.</strong>\r\n<img src= \"https://cdn3.ivivu.com/2013/10/ha-noi6.jpg\" width = 700px>\r\n<img src= \"https://danatravel.vn/data/tour/500/dia-diem-du-lich-ha-noi-den-ngoc-son-1492744748.png\" width = 700px>\r\n<img src= \"https://muachungcdn.com/thumb_w/768,50/i:product/132/1/zrch8/du-lich-ha-noi-co-do-hoa-lu-tam-coc-1-ngay.jpg\" width = 700px>\r\n<img src= \"https://wiki-travel.com.vn/Uploads/picture/Thaophuongnguyen-175728095702-hnx-1.jpg\" width = 700px>\r\n<img src= \"http://phapluatdansinh.phapluatxahoi.vn/upload/ha-linh/thang1/1312018/bus/ha-noi-qua-ong-kinh-dan-du-lich-bui-4.jpg\" width = 700px>', 'hanoi', '2018-05-15', 2018),
(7, 'Nha Trang', 'Image/NhaTrang.jpeg', '<strong>Lần này ai nấy vừa bơi vừa ngắm cả hang Ken điệu đàng bí ẩn. Đèn trên đầu mờ ảo cộng với ánh đèn pin bừng sáng từng vệt khi nhóm bơi qua. Mải mê ngắm thạch nhũ và khẽ khàng lướt nhẹ theo dòng suối, lâu lâu có người giật mình vì cá quẫy dưới chân.\r\n\r\nThế giới thạch nhũ và măng đá sống động, rạng rỡ vui theo ánh sáng lung linh. Cả nhóm đổ bộ vào hang, tha hồ làm người mẫu. Hang động như sân khấu talkshow loang loáng ánh đèn với những người mẫu tùy hứng đang tạo dáng ngộ nghĩnh.\r\n\r\nAi cũng trầm trồ kinh ngạc. Lại tiếp tục bơi ngược trở ra. Tôi dần rút được kinh nghiệm là thay vì bơi sải, cứ nhẹ nhàng khỏa tay bơi ếch thì mọi người tới đâu, mình túc tắc tới đó. Cứ nép sau mấy tay bơi giỏi để ăn gian lực cản là đỡ mệt.</strong>\r\n\r\n<img src= \"https://tourdulichviet.com/storage/upload/images/800x600/tour-du-lich-nha-trang-gia-re-3-ngay-3-dem-giam-32.jpeg\" width = 700px>\r\n<img src= \"https://dulichviet.com.vn//images/bandidau/images/01-N%E1%BB%98I%20%C4%90%E1%BB%8AA%202018/NHA-TRANG/vinpearl-land-tet-du-lich-nha-trang-gia-tot-2018_du-lich-viet.jpg\" width = 700px>\r\n<img src= \"http://znews-photo-td.zadn.vn/w660/Uploaded/jac_iik/2015_04_25/nhatrang1_2.jpg\" width = 700px>\r\n<img src= \"https://tourdulichviet.com/storage/upload/images/800x600/tour-vinpearl-land.jpg\" width = 700px>\r\n<img src= \"https://www.dulichcongvu.com/uploads/VIET%20NAM/vinpear-land-phu-quoc-vui-choi.jpg\" width = 700px>', 'nhatrang', '2018-05-08', 2017),
(8, 'Đà Lạt', 'Image/HongDa2.jpg', '<strong>Cỏ Hồng Đà Lạt là một loài cỏ dại, mọc chen thành từng cụm dưới những tán thông già. Vào thời gian cuối tháng 11, những cây cỏ dại này bắt đầu ra hoa với màu hồng nhẹ nhàng tươi sáng khiến những cụm cỏ trở nên bắt mắt và xinh đẹp, để chụp ảnh với cỏ hồng đẹp nhất bạn nên đi vào buổi sáng hoặc buổi chiều, khi ánh mặt trời đang lên, những ánh nắng ban mai xuyên ngan những đám cỏ cùng những giọt sương còn li ti trên đó tạo nên một khung cảnh lung linh, huyền ảo và xinh đẹp.Vào buổi sáng những đám sương mỏng phủ trên lớp cỏ hồng mới nở tạo nên một vùng trắng xóa nên các bạn nhiếp ảnh còn gọi loài cỏ này là cỏ Tuyết. Để chụp được khung cảnh nên thơ với cỏ tuyết bạn phải dậy thật sớm và mất rất nhiều thời gian di chuyển đến ngọn đồi cỏ bên hồ Suối Vàng để chụp ảnh, vì khi mặt trời đã đứng bóng, sương mai cũng đã tan và cỏ Tuyết lại khoát lên mình màu hồng tươi xinh đẹp.Vào mùa cỏ Hồng cũng là thời khắc giao mùa giữa mùa Thu sang mùa Đông lạnh giá, vì vậy bạn nên chuẩn bị thật nhiều đồ ấm trước khi đến với Đà Lạt mù sương này nhé. Bên cạnh những địa điểm mình chia sẽ ở trên, bạn có thể chạy xe máy quanh Đà Lạt, một số đồi thông trên đường vào Thung Lũng Vàng cũng rực rỡ một màu hồng của loài cỏ đẹp nhất năm này.</strong>\r\n<img src= \"https://media.istockphoto.com/photos/landscape-at-mount-langbiang-picture-id621487546?k=6&m=621487546&s=612x612&w=0&h=rxnSiaeDlR_iReYQUug9TUPqXCvgK9smYcE5Yqe54jg=\" width = 700px>\r\n<img src= \"http://ictketnoi.com/uploads/news/2015/trungtamdalat.jpg\" width = 700px>\r\n<img src= \"http://dalattrongtoi.com/media/images/uploaded/2/2016_02_21/post/thac-datanla-da-lat.jpg\" width = 700px>\r\n<img src= \"https://dulichdalat.pro/wp-content/uploads/2016/09/hoa-da-quy-o-da-lat-2.jpg\" width = 700px>\r\n<img src= \"http://dalat24h.com.vn/wp-content/uploads/2016/04/dalat-suon-doc-1024x730.jpg\" width = 700px>', 'dalat', '2018-05-17', 2016),
(9, 'Quy Nhơn', 'Image/QuyNhon.jpg', 'Asia Park là khu tổ hợp vui chơi giải trí lớn bậc nhất ở Đà Nẵng, với 3 hạng mục chính là công viên vui chơi giải trí, khu Sun Wheel (vòng quay mặt trời) và khu vui chơi trong nhà.Ở công viên vui chơi giải trí, có đến gần 20 trò chơi cực vui và thú vị để bạn khám phá, từ những trò chơi nhẹ nhàng cho trẻ em như Happy Choo Choo, Love Lock… đến những trò chơi cảm giác mạnh cho người lớn cực hay ho như Singapore Sling, Angry Motor…Đến khu Sun Wheel, bạn sẽ được thử cảm giác cheo leo, chênh vênh trên vòng quay khổng lồ và ngắm toàn bộ khung cảnh tuyệt đẹp của Đà Nẵng từ trên cao. Ngoài ra, ở khu Sun Wheen còn có một số công trình tuyệt tác rất đáng để ngắm nhìn như Thuyền Rồng, Tháp Đồng Hồ, Tượng Phật…\r\nKhu vui chơi giải trí trong nhà sẽ khiến bạn cảm thấy phấn khích với những trò chơi cực kỳ vui nhộn như bắn banh Sun Blaster, Soft Play, Canival Game…\r\n<img src= \"https://dulichvietnamhanoi.com/wp-content/uploads/2017/02/3_NK.jpg\" width = 700px>\r\n<img src= \"https://www.vntrip.vn/cam-nang/wp-content/uploads/2017/04/kinh-nghiem-du-lich-quy-nhon-binh-dinh-bai-bien-Ky-Co-1.jpg\" width = 700px>\r\n<img src= \"http://quynhontourist.net/Uploads/Commons/images/du-lich-quy-nhon-1.jpg\" width = 700px>\r\n<img src= \"https://kenh14cdn.com/thumb_w/660/2017/bai-trung-2-1502278296880.jpg\" width = 700px>\r\n<img src= \"https://i.ytimg.com/vi/fvI63tvx32E/maxresdefault.jpg\" width = 700px>', 'quynhon', '2018-05-15', 2018),
(10, 'Sơn La', 'Image/SonLa2.jpg', '<strong>Cao nguyên Mộc Châu nằm ở độ cao 1050 m so với mặt biển, cách Hà Nội gần 200 km về phía Tây Bắc theo quốc lộ 6. Đây là cao nguyên lớn trải dài khoảng 80 km, rộng 25 km, với 1600 ha đồng cỏ.Có thể nói Mộc Châu là nơi tập trung nhiều nhất tài nguyên du lịch của Sơn La và vùng núi Tây Bắc – Bắc Bộ. Khí hậu là tài nguyên du lịch đặc biệt có tính đặc thù của Mộc Châu. Ở giữa cao nguyên Mộc Châu là một vùng tiểu khí hậu với mùa hè mát mẻ có nhiệt độ trung bình là 20 độ C và mùa đông khô ráo hơn các vùng khác.\r\n\r\nĐến với Mộc Châu du khách sẽ được tham quan các di tích lịch sử, động Sơn Mộc Hương, rừng thông, chùa Chiền Viên, thác Dải Yếm, đỉnh Phiêng Luông, và các bản văn hóa của người Mông, người Dao ở Vân Hồ, với những câu hát điệu múa khèn, với các món ăn dân tộc, đặc sản, ẩm thực và các sản phẩm thủ công mỹ nghệ mang đậm bản sắc văn hoá lâu đời.</strong>\r\n<img src= \"https://dulichtaybac.vn/wp-content/uploads/2017/09/bai-hat-tay-bac-nam-xua-don-bac-ho-123815659911360.jpg\" width = 700px>\r\n<img src= \"http://www.vietnamtourism.com/imguploads/news/2014/T11/canhdepsonla.jpg\" width = 700px>\r\n<img src= \"http://media.dulich24.com.vn/bai-viet/an-tuong-cac-mua-hoa-tai-moc-chau-hap-dan-khach-du-lich-55115917/an-tuong-cac-mua-hoa-tai-moc-chau-hap-dan-khach-du-lich.jpg\" width = 700px>\r\n<img src= \"http://www.vccinews.vn/upload/image/2017/moc-chau(1).jpg\" width = 700px>\r\n<img src= \"http://danongplus.com/wp-content/uploads/2016/04/di-du-lich-son-la-mua-nao-dep-nhat-1.jpg\" width = 700px>', 'sonla', '2018-05-08', 2016),
(11, 'Hạ Long', 'Image/HaLong2.jpg', '<strong>Đến với làng chài du khách không chỉ được đắm mình trong không gian êm ả, thanh bình, quyến rũ đến kỳ lạ, được tận mắt ngắm cảnh thiên nhiên sơn thủy hữu tình, tìm hiểu đời sống văn hóa của ngư dân Thế của hòn đảo Chó Đá được hiểu như thế đang ngự trị của một con chó trong tư thế ngồi quay lưng ra biển. Từ hang Đầu Gỗ đi tới đoạn vòng quanh đảo đá, nhìn lên sườn độ cao khoảng 8 m, du khách sẽ được ngắm nhìn tận mắt hòn Chó Đá , được tìm hiểu như nó đã ngồi đó hàng triệu năm canh chừng cho những chuyến ra khơi của du khách luôn được bình an.Những tác phẩm tạo hình tuyệt mỹ, tài hoa của tạo hoá biến hàng ngàn đảo đá vô tri tĩnh lặng thành những tác phẩm điêu khắc với muôn hình dáng vẻ yêu kiều, vừa rất quen thuộc vừa như xa lạ với con người.Tất cả sẽ hiện ra trước mắt khi bạn đến với Hạ Long, ngỡ như một thế giới cổ tích bị hoá đá !</strong>\r\n<img src= \"http://sinhcafetourist.com.vn/Images/images/Ha%20Long.jpg\" width = 700px>\r\n<img src= \"http://a25hotel.com/admin/webroot/upload/image/images/anh%204(2).jpg\" width = 700px>\r\n<img src= \"http://didi-adventure.com/wp-content/uploads/2017/05/ha-long-2-2.jpg\" width = 700px>\r\n<img src= \"https://dulichviet.com.vn//images/bandidau/images/CH%C3%82U%20%C3%81/CH%C3%82U%20%C3%81%20-%20H%C3%80%20N%E1%BB%98I/H%E1%BA%A0%20LONG/du-lich-ha-long-tu-ha-noi-thang11_dulichviet-ha-noi.jpg\" width = 700px>\r\n<img src= \"http://cungmuatour.com.vn/wp-content/uploads/2016/03/hl12-848x477.png\" width = 700px>', 'halong', '2018-04-30', 2016),
(12, 'Long An', 'Image/LongAn.jpg', 'Cụ thể, sáng ngày đầu tiên chạy xe máy từ TP Hà Giang đi Đồng Văn, trên đường đi bạn dừng xe tại Cổng Trời Quản Bạ và trên đèo xuống Quản Bạ, từ đây bạn có thể nhìn bao quát thị trấn, ghi dấu lại những bức hình đẹp. Ăn trưa sớm ở Yên Minh, hành trình tiếp thị trấn Phố Cáo và Sủng Là (đây là 2 điểm đẹp về hoa Mận và Hoa Cải, ở trong thị trấn và cả những con đường khi vào khi ra thị trấn nữa nhé, chỗ nào đẹp thì dừng lại pose). Ngoài ra ở Sung Là bạn có thể vào thăm nhà Pao, nơi đóng phim Chuyện Của Pao, cũng khá ân tượng với phong cách kiến trúc ở đây. Sau khi chơi ở 2 điểm này bạn dừng chân tại nhà họ Vương (điểm này có thể chơi lúc chiều muộn được), tối ngủ tại Đồng Văn. Tối lang thang phố cổ Đồng Văn, cafe phố cổ hoặc tổ chức giao lưu. Ngày 2, nếu bạn đi 2 ngày 2 đêm thì ngày 2 này bạn đi thăm đèo Mã Pí Lèng rồi chạy xe về Yên Minh – Hà Giang, trên đường đi có thể dừng thêm nếu thấy cảnh đẹp, nhớ tính giờ xe chạy về Hà Nội cho kịp. Nếu bạn đi 3 ngày 3 đêm, ngày 2 chạy xe đi Lũng Cú, thăm cột cờ và 1 số bản dân tộc Lô Lô, nên đi sớm để có thể chơi được nhiều. Đầu giờ chiều chạy xe đi Mèo Vạc, trên đường đi dừng tại đỉnh đèo Mã Pí Lèng chụp ảnh, tối ngủ Mèo Vạc. \r\n<img src= \"http://media.dulich24.com.vn/long-an.jpg\" width = 700px>\r\n<img src= \"http://danongplus.com/wp-content/uploads/2016/04/kinh-nghiem-du-lich-long-an-can-biet-4351.jpg\" width = 700px>\r\n<img src= \"https://baomoi-photo-1-td.zadn.vn/w1000_r1/17/08/28/257/23137498/3_145079.jpg\" width = 700px>\r\n<img src= \"http://anhungtravel.com/wp-content/uploads/2017/10/%C4%90%E1%BB%93ng-th%C3%A1p.jpg\" width = 700px>\r\n<img src= \"http://media.phunutoday.vn/files/upload_images/2016/04/11/dongthapmuoi-phunutodayvn.jpg\" width = 700px>\r\n', 'longan', '2018-05-02', 2018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `photostory`
--
ALTER TABLE `photostory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dangnhap`
--
ALTER TABLE `dangnhap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `photostory`
--
ALTER TABLE `photostory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
