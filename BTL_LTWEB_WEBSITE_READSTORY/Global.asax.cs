using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["listStory"] = new List<story>();
            List<story> stories = (List<story>)Application["listStory"];

            stories.Add(new story(1, "Cẩm Nang Xử lý Cực Phẩm", "Mộng Huyền Tư Thi", "Nội dung của câu chuyện này xoay quanh cuộc sống và cuộc phiêu lưu của nhân vật chính" +
                " trong một thế giới phong phú với các loại võ thuật, ma pháp và các thế lực siêu nhiên khác nhau. Nhân vật chính phải đối mặt với nhiều thử thách, khó khăn" +
                " và nguy hiểm, trong khi trải nghiệm qua sự phát triển và trưởng thành của bản thân.", "Hoàn thành", "./images/str1.jpg"));
            stories.Add(new story(2, "Boss phản diện ngày ngày tìm đường chết", "Nữu Nữu Mật", "Câu chuyện xoay quanh nhân vật Trần Khê, người bị hệ thống đưa vào nhiều thế " +
                "giới khác nhau. Hệ thống nói rằng chỉ cần tăng doanh số bán sách, cô sẽ sống lại. Vì vậy, Trần Khê xắn tay áo lên và bắt đầu viết truyện.Tuy nhiên, sau khi " +
                "trải qua nhiều thế giới, cô cảm thấy có gì đó sai sai. Bộ truyện của cô đang lọt vào danh sách best seller, nhưng tình tiết lại vô lý đùng đùng. Trần Khê rầu" +
                " rĩ nhìn lên trời và than thở: “Toàn là nhờ đồng nghiệp làm nền ấy mà.”Nhiều năm sau, cô trở thành một trùm phản diện yêu chiều vợ hết mực, giàu nứt đố đổ vách…" +
                " Nhưng liệu cô có tìm được đường chết cho mình hay không?", "Đang ra", "./images/str2.png"));
            stories.Add(new story(3, "Quyến rũ Vô hạn", "Nữu Nữu Mật", "Bộ truyện xoay quanh cuộc sống của Trần Y Ngôn, một bác sĩ thú y mạnh mẽ và Vu Thế Khanh, tổng giám đốc tập" +
                " đoàn lớn bị bại liệt. Không chỉ có những tình tiết hài hước, truyện còn mang đến những pha vả vặt và tình huống đầy thú vị.", "Hoàn thành", "./images/str3.png"));
            stories.Add(new story(4, "Sống lại trở thành Đại lão giới khoa học", "Du Nhân", "Kiếp trước, Lâu Minh Nguyệt là huyền thoại ở Đế Đô, mới hai mươi hai tuổi đã là “đại lão" +
                " siêu cấp” đứng trên thần đàn, trở thành đỉnh cao không thể chạm tới trong lòng vô số người. Tuy nhiên, đến cuối cùng, cô bị thân tín hãm hại và chết ở tuổi hai mươi" +
                " lăm.Khi cô mở mắt lần nữa, cô đã sống lại vào hai mươi năm sau, trở thành một cô học trò dốt nát lớp 11 trường cấp ba Lâm Nam. .", "Hoàn thành", "./images/str4.png"));
            stories.Add(new story(5, "Vọng âm sau màn hình", "Phong Lâu Tư", "Lần đầu tiên “gặp được” Thịnh Lâm đại đại của mình, Tề Tĩnh Đường bị cô ấy tống vào tù.Lần thứ hai gặp " +
                "Thịnh Lâm đại đại của mình, Tề Tĩnh Đường bị cô ấy coi thành kẻ thần kinh.Lần thứ ba gặp Thịnh Lâm đại đại của mình, Tề Tĩnh Đường bị cô ấy đưa đến Cục Cảnh sát.Đến lúc" +
                " Tề Tĩnh Đường cho rằng cuối cùng mình cũng thành công trên con đường theo đuổi thần tượng, anh lại chợt phát hiện ra rằng… Đại đại của anh, đang chuẩn bị tiễn anh xuống " +
                "địa ngục.Câu chuyện thương nhau lắm cắn nhiều giữa nữ ma đầu ngoài mềm trong rắn và nhóc xui xẻo ngoài rắn trong mềm, vừa giống như khe nhỏ sơn lâm, vừa giống như vọng âm " +
                "sau màn hình.", "Đang ra", "./images/str5.jpg"));
            stories.Add(new story(6, "Đại Yến có một nữ thần thám", "Kim Trùng Lâu", "Cơn mưa phùn rả rích chọt ào ào đổ xuống. Dịch Trường An thu lại chiếc dù giấy, cẩn thận đặt lại bên" +
                " hành lang, nhẹ nhàng gỗ của thư phòng: Lương huynh ? Cửa phòng kẽo kẹt một tiếng, một người phụ nữ dung mạo xinh đẹp chùng ba mươi tuổi bước ra, hốc mắt vẫn còn đỏ hoe.", "Hoàn thành", "./images/str6.png"));
            stories.Add(new story(7, "Tết ở làng địa ngục", "Thảo Trang", "Tết Ở Làng Địa Ngục được chuyển thể từ tiểu thuyết cùng tên của nhà văn Thảo Trang. Cốt truyện xoay quanh ngôi " +
                "làng Địa Ngục, nơi xảy ra hàng loạt sự kiện ma quái. Ngôi làng này có tên là Địa Ngục vì từng là nơi sinh sống của con cháu của một băng cướp giết người khét tiếng. Sau " +
                "khi bị triều đình tiêu diệt, tàn dư của băng cướp đã trốn sâu vào núi và lập nên làng Địa Ngục. Từ đó, hậu duệ của băng cướp đều không thể thoát khỏi ngôi làng này. Khi c" +
                "ó người lạ xuất hiện trong làng, rất nhiều vụ án mạng kỳ dị, man rợ xảy đến, khiến cuộc sống của người dân cứ như đang ở địa ngục thực sự", "Hoàn thành", "./images/str7.jpg"));
            stories.Add(new story(8, "Flawless hoàn hảo Elsie Silver", "Silver", "Khả Tương giúp đỡ một người già bị ngã nhưng cuối cùng lại bị lừa đảo tổng tiền, được rất nhiều cư dân mạng" +
                " chủ v, hai năm trở lại đây vẫn luôn dùng hình tượng người đẹp nhân hậu mà tóm được một lượng fan đông đảo.Thế nhưng nửa năm trước cô ta lại bị bóc phốt rằng cụ già năm ấy " +
                "bị chính bạn trai cô ta xô ngã, sau khi ẩm thầm giải quyết riêng với nhau lại xây dựng hình tượng bị lừa đảo tổng tiền ở trên mạng...", "Hoàn thành", "./images/str8.png"));
            stories.Add(new story(9, "Những vụ án kỳ bí", "Diên Bác Lão Cửu", "Năm 23 tuổi tôi tốt nghiệp trường cảnh sát, kể từ đó, tôi bắt đầu gia nhập vào Tổ Điều tra số 2 của đội trọng ăn," +
                " làm cảnh sát hình sự năm năm. Sau này, vết thương ở hông khiên tôi bắt buộc phải chuyển sang vị trí văn phòng, hiện tại đã kết hôn sinh con, hưởng thụ cuộc sống vui vẻ. Nhưng " +
                "điều tôi muốn nói ở đây là, năm năm ấy đã thay đổi nhân sinh quan, cũng đã đảo lộn một vài nhận thức truyền thống của tối..", "Đang ra", "./images/str9.jpg"));
            stories.Add(new story(10, "Chúng ta làm gì với Trái Đất", "Phạm Hữu Khánh (Bản Dịch)", "Sai lầm trí mạng So với tất cả những nơi tôi từng đặt chân đến, thành phố Pripyat ở Ukraine " +
                "hoàn toàn khác biệt.Nơi đây chìm trong bầu không khí tăm tối và tuyệt vọng.", "Đang ra", "./images/str10.png"));
            stories.Add(new story(11, "Hiểu về trái tim", "Minh Niệm", "Trong cả cuộc đời nghiên cứu của tôi, động cơ thúc đẩy công việc làm không phải là danh hay lợi, mà là tình người, tình " +
                "thương dân tộc và đất nước. Khi đánh giá một người nghệ sĩ, tôi không đặt trọng tâm vào tài sắc vẹn toàn, mà vào tài đức vẹn toàn,...", "Hoàn thành", "./images/str11.jpg"));
            stories.Add(new story(12, "Không diệt không sinh đừng sợ hãi ", "Thích Nhất Hạnh", "Lần đầu tiên tôi dự một đám ma là năm 1968, khi Sam Rameau, ông ngoại tôi chết.Từ đó tới nay, có" +
                " tới hơn hai chục lần nữa, tôi đã đứngtrước cái huyệt mới đào, cảm thấy bối rối, bất an vì những câu hỏitrong tôi về cái chết.Chỉ có hai trường hợp để tin thôi sao ? Hoặc cólinh" +
                " hồn bất diệt ? hoặc không còn lại gì sau khi chết...", "Đang ra", "./images/str12.jpg"));
            stories.Add(new story(13, "Cứ Yêu Cứ Chiều", "Tinh Nguyệt", "Cơn mưa phùn rả rích chọt ào ào đổ xuống. Dịch Trường An thu lại chiếc dù giấy, cẩn thận đặt lại bên hành lang, nhẹ nhàng" +
                " gỗ của thư phòng...", "Hoàn thành", "./images/str13.jpg"));
            stories.Add(new story(14, "Bỉ Ngạn Đơm Thương", "Văn Nghê", "Hơn một tháng trước, đại lao đột nhiên bùng phát bệnh dịch quan cai và phạm nhân thì nhau để bênh, thuốc thái yviên đưa đến" +
                " không hề có hiệu quả, cuối cùng phải mới một vị thầy thuốc họ Tân đến đấy khám chữa bệnh", "Hoàn thành", "./images/str14.png"));
            stories.Add(new story(15, "Vương Phi ngốc nghếch là đặc công", "Nhất Thần Tương Tư", "Châu Như Chương và mẹ đi đến gian chính của nhà họ Thôi trở chuyên với bão trên một lát rồi mới mạng" +
                " 10 cũng đến căn phòng đang thờ phụng bài vị của Châu Như Quân...", "Hoàn thành", "./images/str15.jpg"));
            stories.Add(new story(16, "Cuộc sống trà  xanh của thái tử điện hạ ", "Cẩm Hoàng", "Châu Như Chương và mẹ đi đến gian chính của nhà họ Thôi trở chuyên với bão trên một lát rồi mới mạng 10" +
                " cũng đến căn phòng đang thờ phụng bài vị của Châu Như Quân...", "Đang ra", "./images/str16.png"));
            stories.Add(new story(17, "Kim Phượng Hoa Đình", "Tây Tử Tình", "May thay, sau khi cô ấy chết đã gặp được người có họ tên giống mình là Tô Phức Đồng, cô sẽ dạy dỗ đám khốn nạn này thay cô" +
                " ấy, đòi lại cả gốc lẫn lãi cho những tủi nhục mà cô ấy từng chịu...", "Hoàn thành", "./images/str17.png"));
            stories.Add(new story(18, "Boss là nữ phụ", "Mặc Linh", "Hai năm nay, Đình Nình hầu Thôi Trình thống lĩnh bình ở Tuyên phú, Đại Đông. Phần lớn lương thực đến từ Ban Tây, nạn thể phí ở Sơn" +
                " Tây đã hành họ đại quân của Đình Tình Yêu khô xơ không ít Lương thực này ta vẫn đã không đảnh cũng tự thua nần tất nhiên Đình Nình hiểu cực kì quan tâm đến vấn đề này...", "Hoàn thành", "./images/str18.jpg"));
            stories.Add(new story(19, "Nam Chính Bệnh Kiều Cầu cưng chiều", "Cố Nam Tây", "Võng văn nữ đại thần Trần Khê treo, nàng đang thử đem phù lăng cải bẹ kẹp tại trứng luộc nước trà lý, cho phép" +
                " là quá mức xa hoa xúc phát thiên nộ, động đất. Dựa vào tá cuồng táo chứng đặc hữu dư thừa tinh lực liên cứu mười bảy cá nhân, tại lần thứ mười tám chạy vào cứu người lúc bị thạch đầu " +
                "phách xuống mặt...", "Đang ra", "./images/str19.jpg"));
            stories.Add(new story(20, "Giải mã 12 cung hoàng đạo 2024", "Ban biên tập Waka", "Vòng tròn 12 cung Hoàng đạo bao gồm Bạch Dương, Kim Ngưu, Song Tử, Cự Giải, Sư Tử, Xử Nữ, Thiên Bình, Thiên Yết," +
                " Nhân Mã, Ma Kết, Bảo Bình, Song Ngư. Theo đó, mỗi một cung ứng với một Chòm Sao chiếu mệnh tạo nên 12 tính cách đa dạng, phong phú, không hòa quyện, không trộn lẫn. Dựa vào cung hoàng đạo " +
                "tương ứng với ngày sinh nhật của mỗi người, ngoài việc đoán được tính cách của mỗi người, các nhà chiêm tinh học còn có thể dự đoán được một phần nào đó tương lai của họ trong một năm",
                "Đang ra", "./images/str20.png"));

            stories.Add(new story(21, "Nhiệm Vụ Ái Hồn", "Một Con Mèo Ngốc", "Truyện kể về một chàng trai trẻ tên Thịnh, người đang sống trong một thế giới đầy áp lực từ công việc và cuộc sống xã hội. Một ngày," +
                " anh gặp được cô gái tên Trâm - một cô gái sống trong một thế giới tĩnh lặng, nơi mà mọi thứ trở nên yên bình và thanh thản. Trâm chính là người mở ra cho Thịnh một cách nhìn mới về cuộc sống và " +
                "giúp anh tìm lại sự yên bình bên trong mình thông qua tình yêu và sự hiểu biết.", "Hoàn thành", "./images/str21.jpg"));
            stories.Add(new story(22, "Đám Cưới Hào Môn", "Anh Vũ Tắm Trăng", "Vệ Ninh là một cô gái bình thường, sống trong một gia đình nghèo khó. Trong một lần tình cờ, cô được gặp Tạ Thiên Bắc, một doanh nhân " +
                "giàu có và quyền lực. Hai người họ bắt đầu một mối quan hệ đầy biến động, từ sự khắc nghiệt, căng thẳng cho đến sự hiểu biết và tình yêu.Mặc dù Vệ Ninh và Tạ Thiên Bắc đã phải đối mặt với nhiều trở" +
                " ngại và thử thách, bao gồm sự ganh ghét, ganh tỵ từ môi trường xã hội và gia đình, nhưng cuối cùng họ đã vượt qua mọi khó khăn và cùng nhau hạnh phúc.", "Hoàn thành", "./images/str22.jpg"));
            stories.Add(new story(23, "Uông Xưởng Công", "Bình Bạch Huynh", "Câu chuyện xoay quanh cuộc sống của nhân vật chính là ông Uông, một công nhân lao động trong một xưởng sản xuất ở Hà Nội. Qua cuộc sống của" +
                " ông Uông, tác giả tái hiện lại hình ảnh của một thế giới lao động đầy gian khổ, mệt mỏi, và đầy những nỗi lo âu.", "Hoàn thành", "./images/str23.jpg"));
            stories.Add(new story(24, "Hành tẩu Âm Dương", "A Thất", "Câu chuyện xoay quanh cuộc phiêu lưu của nhân vật chính Lệnh Hồ Xung, một thiếu niên trẻ tuổi với khát vọng tìm kiếm sự thăng tiến và sức mạnh. Lệnh " +
                "Hồ Xung bắt đầu cuộc hành trình của mình từ một kẻ lang thang trên giang hồ, qua những thử thách và gian nan, anh trở thành một cao thủ võ lâm và cuối cùng đạt được đỉnh cao trong võ công.", "Hoàn thành", "./images/str24.jpg"));
            stories.Add(new story(25, "Cám Dỗ Ngọt Ngào", "Thanh Phi Vũ", "Câu chuyện kể về tình yêu giữa hai nhân vật chính: Vũ Phong, một chàng trai giàu có, đẹp trai và tài năng, và Lạc Du, một cô gái thông minh, tài" +
                " năng và có bề ngoại hình thu hút.Dù bắt đầu từ những hoàn cảnh khác nhau, hai người vẫn định mệnh gặp nhau và phát triển mối quan hệ tình cảm. Nhưng cuộc sống không lúc nào êm đềm, họ phải đối mặt với " +
                "nhiều thử thách và khó khăn từ cả nội tâm và bên ngoài. Qua những cám dỗ và sóng gió của cuộc đời, họ học được cách yêu thương, tin tưởng và cống hiến cho nhau.", "Hoàn thành", "./images/str25.jpg"));
            stories.Add(new story(26, "Tung Hoành Trong lòng Anh Tô", "Phó Cửu", "Câu chuyện tập trung vào cuộc sống của một nhóm bạn học sinh trung học ở một ngôi làng nhỏ ở Việt Nam. Nhân vật chính là Anh Tô, một chàng" +
                " trai vô tư, hồn nhiên và đầy năng động. Anh cùng nhóm bạn của mình trải qua những kỷ niệm đẹp và những trải nghiệm đầy ý nghĩa trong thời gian ở trường.", "Hoàn thành", "./images/str26.jpg"));
            stories.Add(new story(27, "Phương Trình Thanh Xuân Chờ Giải", "Tư MÃ Tử Sửu", "Câu chuyện xoay quanh cuộc sống và tình yêu của hai nhân vật chính là Thanh Xuân và Chờ Giải. Thanh Xuân là một cô gái trẻ xinh đẹp," +
                " thông minh và có sự nghiệp ổn định. Trong khi đó, Chờ Giải là một chàng trai lạnh lùng, bí ẩn và giàu có.Hai người họ gặp nhau trong một tình huống đầy trớ trêu và dần dần phát triển một mối quan hệ phức tạp," +
                " từ sự đối đầu và chống lại nhau đến sự hiểu biết và yêu thương. Tuy nhiên, cuộc sống không bao giờ đơn giản, và họ phải đối mặt với nhiều thử thách và rắc rối từ cả môi trường xã hội và quá khứ cá nhân.", "Hoàn thành", "./images/sr27.jpg"));
            stories.Add(new story(28, "Yêu Thầm Kẻ Sát Nhân Nhà bên", "Bản Khuyết trường Ca", "Câu chuyện diễn ra tại một khu nghỉ dưỡng ở Anh, nơi một vụ án giết người kỳ bí xảy ra. Người chết là một phụ nữ trẻ đẹp tên là " +
                "Mrs. McGinty, và tất cả các dấu vết đều chỉ vào James Bentley, một người đàn ông trẻ là người làm việc cho bà McGinty và bị kết án vì tội giết người.Tuy nhiên, một cựu cảnh sát đang nghỉ hưu tên là Hercule " +
                "Poirot tin rằng Bentley vô tội và bắt đầu điều tra vụ án. Trong quá trình này, Poirot phải đối mặt với những bí ẩn và dối trá, từ những hiểu lầm đến những âm mưu giết người, để tìm ra sự thật đằng sau vụ án.", "Hoàn thành", "./images/str28.png"));
            stories.Add(new story(29, "Tình Đầu Dấu yêu", "Tam Nguyêth Đường Mặc", "Câu chuyện kể về tình yêu của hai nhân vật chính là Đinh Thái Bảo và Vân Khanh. Hai người họ đã từng là bạn thân từ thời thơ ấu và dần dần phát" +
                " triển tình cảm với nhau. Tuy nhiên, vì những biến cố trong cuộc sống và mâu thuẫn gia đình, họ đã bị chia lìa.", "Hoàn thành", "./images/str29.png"));
            stories.Add(new story(30, "Cuộc Chiến Công Sở", "RobertI.Sutton", "Câu chuyện xoay quanh nhân vật chính là Antoine, một nhân viên văn phòng bình thường nhưng luôn đầy ắp những suy nghĩ châm biếm và những ý tưởng lập dị" +
                ". Cuộc sống hàng ngày của anh ta trở nên rối ren khi anh phát hiện ra một âm mưu trong công ty, và từ đó, cuộc chiến chống lại sự tham lam và tham nhũng bắt đầu.", "Hoàn thành", "./images/str30.jpg"));

            //Data category
            Application["listCategory"] = new List<category>();
            List<category> listCategory = (List<category>)Application["listCategory"];

            listCategory.Add(new category(1, "Trinh thám - Kinh dị"));
            listCategory.Add(new category(2, "Học tập - Hướng nghiệp"));
            listCategory.Add(new category(3, "Giáo dục - Văn hóa & Xã hội"));
            listCategory.Add(new category(4, "Ngôn tình"));
            listCategory.Add(new category(5, "Sách thiếu nhi"));
            listCategory.Add(new category(6, "Makerting - Bán hàng"));
            listCategory.Add(new category(7, "Sức khỏe - Làm đẹp"));
            listCategory.Add(new category(8, "Nghệ thuật sống"));
            listCategory.Add(new category(9, "Tác phẩm kinh điển"));
            listCategory.Add(new category(10, "Sức khỏe tinh thần"));
            listCategory.Add(new category(11, "Tài chính cá nhân"));
            listCategory.Add(new category(12, "Tư duy sáng tạo"));
            listCategory.Add(new category(13, "Tâm linh - Tôn giáo"));
            listCategory.Add(new category(14, "Quản trị - Lãnh đạo"));
            listCategory.Add(new category(15, "Khoa học - Công nghệ"));
            listCategory.Add(new category(16, "Phát triển cá nhân"));
            listCategory.Add(new category(17, "Chứng khoán - Bất động sản - đầu tư"));
            listCategory.Add(new category(18, "Kinh doanh - Làm giàu"));
            listCategory.Add(new category(19, "Truyện - Tiểu thuyết"));
            listCategory.Add(new category(20, "Doanh nhân - Bài học kinh doanh"));

            //Data account
            Application["listAccount"] = new List<account>();
            List<account> list = (List<account>)Application["listAccount"];
            list.Add(new account("admin", "2003", "admin2003@gmail.com"));
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["danhsach"] = new List<account>();
            Session["HideButton"] = false;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}