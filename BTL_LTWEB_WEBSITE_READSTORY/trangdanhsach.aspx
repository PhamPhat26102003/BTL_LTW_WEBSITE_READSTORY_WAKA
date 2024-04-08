<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangdanhsach.aspx.cs" Inherits="BTL_LTWEB_WEBSITE_READSTORY.trangdanhsach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/general.css" />
    <link rel="stylesheet" href="style/trangdanhsach.css" />
    <link rel="stylesheet" href="font/netflix-fonts.css" />
</head>
<body>
    
   <form action="trangdanhsach.aspx" method="post" runat="server">
    <header class="header">
      <div class="container">
        <div class="header__wrapper">
          <div class="header__left">
            <a href="trangchu.aspx" class="header__logo">
              <img src="images/logo.png" alt="" />
            </a>
            <ul class="header__menu">
              <li class="header__menu-item">
                <a href="trangdanhsach.aspx" class="header__menu-link">Tất cả truyện</a>
              </li>
              <li class="header__menu-item">
                <a href="trangdanhsach.aspx" class="header__menu-link">Tình cảm lãng mạn</a>
              </li>
              <li class="header__menu-item">
                <a href="trangdanhsach.aspx" class="header__menu-link">Trinh thám kinh dị</a>
              </li>
              <li class="header__menu-item">
                <a href="trangdanhsach.aspx" class="header__menu-link">Khoa học viễn tưởng</a>
              </li>
              <li class="header__menu-item">
                <a href="trangdanhsach.aspx" class="header__menu-link">Tâm lý xã hội</a>
              </li>
            </ul>
          </div>
          <div class="header__right">
            <div class="header__search">
               <asp:TextBox ID="txtSearch" runat="server" class="header__search-input" Placeholder="Nhập tên sách, tác giả,..."></asp:TextBox>
               <asp:Button runat="server" Text="Search" OnClick="btnSearch_Click" style="background:none;color:white;cursor:pointer"/>
            </div>
            <div class="header__buttons">
              <div class ="user" id ="Div1" runat ="server" visible ="false"></div>
              <asp:Button ID="Exit" Class="header__button signup" runat="server" Text="Đăng Xuất" OnClick="Exit_Click" Visible ="false" />
              <asp:Button ID="Profiles" Class="header__button profile" runat="server" Text="P" OnClick="Profile_Click" Visible ="false"
                                        style="border-radius:100%;width:40px;height:40px;color:rgb(21 176 136);" />
              <asp:Button ID="Register" Class="header__button signup" runat="server" Text="Đăng Ký" OnClick="Register_Click" />
              <asp:Button ID="Login" Class="header__button login" runat="server" Text="Đăng Nhập" OnClick="Login_Click" /> 
            </div>
          </div>
        </div>
      </div>
    </header>
    <main>
      <section class="proposal">
        <div class="proposal__books">
          <div class="proposal__content active">
            <div class="proposal__details">
              <div class="proposal__recommended">WAKA ĐỀ XUẤT</div>
              <h2 class="proposal__title">
                Một phút cho tâm lí, một tí hiểu cuộc đời 1
              </h2>
              <p class="proposal__description">
                Cuối cùng là cuốn Quản lý học Phật giáo - Từ góc độ hoằng pháp,
                thông qua các chuyên đề về nhân sự, xã hội, giáo dục… và những
                trải nghiệm cá nhân trong con đường hoằng pháp của mình, Đại sư
                Tinh Vân đã chia sẻ những kinh nghiệm quản lý các mối quan hệ và
                cách thức để đạt tới thành công. Ngài lấy con người làm trung
                tâm, cá nhân làm bản vị, quản lý cơ quan,
              </p>
            </div>
            <div class="proposal__actions">
              <button class="proposal__button read">
                <img
                  src="icons/icon-read-book.svg"
                  alt=""
                  class="proposal__button-icon" />
                <span class="proposal__button-label">Đọc sách</span>
              </button>
              <button class="proposal__button favourite">
                <img
                  src="icons/icon-heart.svg"
                  alt=""
                  class="proposal__button-icon" />
              </button>
            </div>
          </div>
          <div class="proposal__content">
            <div class="proposal__details">
              <div class="proposal__recommended">WAKA ĐỀ XUẤT</div>
              <h2 class="proposal__title">
                Một phút cho tâm lí, một tí hiểu cuộc đời 2
              </h2>
              <p class="proposal__description">
                Cuối cùng là cuốn Quản lý học Phật giáo - Từ góc độ hoằng pháp,
                thông qua các chuyên đề về nhân sự, xã hội, giáo dục… và những
                trải nghiệm cá nhân trong con đường hoằng pháp của mình, Đại sư
                Tinh Vân đã chia sẻ những kinh nghiệm quản lý các mối quan hệ và
                cách thức để đạt tới thành công. Ngài lấy con người làm trung
                tâm, cá nhân làm bản vị, quản lý cơ quan,
              </p>
            </div>
            <div class="proposal__actions">
              <button class="proposal__button read">
                <img
                  src="icons/icon-read-book.svg"
                  alt=""
                  class="proposal__button-icon" />
                <span class="proposal__button-label">Đọc sách</span>
              </button>
              <button class="proposal__button favourite">
                <img
                  src="icons/icon-heart.svg"
                  alt=""
                  class="proposal__button-icon" />
              </button>
            </div>
          </div>
          <div class="proposal__content">
            <div class="proposal__details">
              <div class="proposal__recommended">WAKA ĐỀ XUẤT</div>
              <h2 class="proposal__title">
                Một phút cho tâm lí, một tí hiểu cuộc đời 3
              </h2>
              <p class="proposal__description">
                Cuối cùng là cuốn Quản lý học Phật giáo - Từ góc độ hoằng pháp,
                thông qua các chuyên đề về nhân sự, xã hội, giáo dục… và những
                trải nghiệm cá nhân trong con đường hoằng pháp của mình, Đại sư
                Tinh Vân đã chia sẻ những kinh nghiệm quản lý các mối quan hệ và
                cách thức để đạt tới thành công. Ngài lấy con người làm trung
                tâm, cá nhân làm bản vị, quản lý cơ quan,
              </p>
            </div>
            <div class="proposal__actions">
              <button class="proposal__button read">
                <img
                  src="icons/icon-read-book.svg"
                  alt=""
                  class="proposal__button-icon" />
                <span class="proposal__button-label">Đọc sách</span>
              </button>
              <button class="proposal__button favourite">
                <img
                  src="icons/icon-heart.svg"
                  alt=""
                  class="proposal__button-icon" />
              </button>
            </div>
          </div>
        </div>
        <div class="proposal__slider">
          <div class="proposal__slider-list">
            <a href="" class="proposal__slider-item active">
              <img src="images/book1.png" alt="" />
            </a>
            <a href="" class="proposal__slider-item next">
              <img src="images/book2.png" alt="" />
            </a>
            <a href="" class="proposal__slider-item prev">
              <img src="images/book3.png" alt="" />
            </a>
          </div>
          <div class="proposal__slider-buttons">
            <button class="proposal__slider-button" id="prev">
              <img src="icons/icon-prev-slide.svg" alt="" />
            </button>
            <button class="proposal__slider-button" id="next">
              <img src="icons/icon-next-slide.svg" alt="" />
            </button>
          </div>
          <div class="proposal__slider-dots">
            <li class="active"></li>
            <li></li>
            <li></li>
          </div>
        </div>
      </section>
      <section class="search">
        <div class="search__icon">
          <img src="icons/icon-search.svg" alt="" />
        </div>
        <div class="search__results">
          <p class="search__query" id="result" name="result" runat="server" style="color:#15b088">
          </p>
          <p class="search__count" id="count" name="count" runat="server">
          </p>
        </div>
      </section>
      <section class="story">
        <div class="story-filter">
          <h2 class="story-filter__title">Thể loại</h2>
          <ul class="story-filter__list" runat="server">
                <li class="story-filter__item">
                          <asp:Button ID="btnAll" runat="server" Text="Tất cả các truyện" OnClick="filter"
                                        style="background:none;color:white;font-size:17px;cursor:pointer"/>
                    </li>
                    <li class="story-filter__item">
                            <asp:Button ID="btnRomantic" runat="server" Text="Tình cảm lãng mạn" OnClick="filter"
                                        style="background:none;color:white;font-size:17px;cursor:pointer"/>
                    </li>
                    <li class="story-filter__item">
                            <asp:Button ID="btnDetective" runat="server" Text="Trinh thám kinh dị" OnClick="filter"
                                        style="background:none;color:white;font-size:17px;cursor:pointer"/>
                    </li>
                    <li class="story-filter__item">
                            <asp:Button ID="btnFiction" runat="server" Text="Khoa học viễn tưởng" OnClick="filter"
                                        style="background:none;color:white;font-size:17px;cursor:pointer"/>
                    </li>
                    <li class="story-filter__item">
                            <asp:Button ID="btnMentality" runat="server" Text="Tâm lý xã hội" OnClick="filter"
                                        style="background:none;color:white;font-size:17px;cursor:pointer"/>
                    </li>

                    <h2 class="story-filter__title">Trạng thái</h2>
                    <ul class="story-filter__list">
                         <li class="story-filter__item" runat="server"  style="font-size:17px;cursor:pointer">
                             <asp:CheckBox ID="chkCompleted" Text="Hoàn thành" runat="server" AutoPostBack="true" OnCheckedChanged="checkStatusList"/>
                          </li>
                          <li class="story-filter__item" runat="server">
                             <asp:CheckBox ID="chkOngoing" Text="Chưa hoàn thành" runat="server" AutoPostBack="true" OnCheckedChanged="checkStatusList"/>
                         </li>
                    </ul>    
          </ul>
          <h2 class="story-filter__title">Số Chữ</h2>
          <ul class="story-filter__list">
            <li class="story-filter__item">
              <input type="checkbox" id="sm" class="story-filter__input" />
              <label class="story-filter__label" for="sm"
                >Dưới 300.000 chữ</label
              >
            </li>
            <li class="story-filter__item">
              <input type="checkbox" id="md" class="story-filter__input" />
              <label class="story-filter__label" for="md"
                >300.000 - 500.000 chữ</label
              >
            </li>
            <li class="story-filter__item">
              <input type="checkbox" id="lg" class="story-filter__input" />
              <label class="story-filter__label" for="lg"
                >500.000 - 1.000.000 chữ</label
              >
            </li>
            <li class="story-filter__item">
              <input type="checkbox" id="xl" class="story-filter__input" />
              <label class="story-filter__label" for="xl"
                >Trên 1.000.000 chữ</label
              >
            </li>
          </ul>
        </div>
        <div class="story-list">
            <asp:ListView ID="ListPage" runat="server">
                <ItemTemplate>
                     <div class="story__item">
                        <div class="story__item-link">
                            <a href="trangchitiet.aspx?id=<%# Eval("id") %>">
                                <img src="<%# Eval("image") %>" alt="" class="story__item-image" />
                            </a>
                          <div class="story__item-detail">
                            <a href="trangchitiet.aspx?id=<%# Eval("id") %>" class="story--detail__title">
                              <h3 class="story--detail__heading"><%# Eval("name") %></h3>
                            </a>
                            <p class="story--detail__author">
                              <a href="#"><%# Eval("nameAuthor") %></a>
                            </p>
                            <div class="story--detail__tag">Miễn phí</div>
                            <div class="story--detail__buttons">
                              <button class="story--detail__button read">
                                <img
                                  src="icons/icon-read-book.svg"
                                  alt=""
                                  class="story--detail__icon" />
                                <span class="story--detail__button-text">Đọc sách</span>
                              </button>
                              <button class="story--detail__button favourite">
                                <img
                                  src="icons/icon-heart.svg"
                                  alt=""
                                  class="story--detail__icon" />
                              </button>
                            </div>
                            <p class="story--detail__description">
                                <%# Eval("summary") %>
                            </p>
                            <a href="trangchitiet.aspx?id=<%# Eval("id") %>" class="story--detail__details-link">Chi tiết</a>
                          </div>
                        </div>
                        <a href="trangchitiet.aspx?id=<%# Eval("id") %>" class="story__item-title"><%# Eval("name") %></a>
                      </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
      </section>
    </main>
    <footer class="footer">
      <div class="container footer__container">
        <div class="footer__brand">
          <a href="" class="footer__logo">
            <img src="images/logo.png" alt="" />
          </a>
          <p class="footer__company-name">Công ty cổ phần sách điện tử Waka</p>
          <div class="footer__contact-info">
            <div class="footer__contact-item">
              <img
                src="icons/icon-phone-footer.svg"
                alt=""
                class="footer__contact-icon" />
              <span class="footer__contact-value">0877736289</span>
            </div>
            <div class="footer__contact-item">
              <img
                src="icons/icon-email-footer.svg"
                alt=""
                class="footer__contact-icon" />
              <span class="footer__contact-value">Support@waka.vn</span>
            </div>
          </div>
        </div>
        <div class="footer__section">
          <h3 class="footer__section-title">Về chúng tôi</h3>
          <div class="footer__links-wrapper">
            <ul class="footer__links">
              <li class="footer__link-item">Giới thiệu</li>
              <li class="footer__link-item">Cơ cấu tổ chức</li>
              <li class="footer__link-item">Lĩnh vực hoạt động</li>
            </ul>
            <ul class="footer__links">
              <li class="footer__link-item">Cơ hội đầu tư</li>
              <li class="footer__link-item">Tuyển dụng</li>
              <li class="footer__link-item">Liên hệ</li>
            </ul>
          </div>
        </div>
        <div class="footer__section">
          <h3 class="footer__section-title">Thông tin hữu ích</h3>
          <ul class="footer__links">
            <li class="footer__link-item">Thỏa thuận sử dụng dịch vụ</li>
            <li class="footer__link-item">Quyền lợi</li>
            <li class="footer__link-item">Quy định riêng tư</li>
          </ul>
        </div>
        <div class="footer__section">
          <h3 class="footer__section-title">Tin tức</h3>
          <ul class="footer__links">
            <li class="footer__link-item">Tin dịch vụ</li>
            <li class="footer__link-item">Review sách</li>
            <li class="footer__link-item">Lịch phát hành</li>
          </ul>
        </div>
        <div class="footer__qr">
          <img src="images/qr-code-footer.png" alt="" class="footer__qr-code" />
          <div class="footer__qr-app">
            <img src="images/app-store.png" alt="" class="footer__app-store" />
            <img src="images/google-play.png" alt="" />
          </div>
        </div>
      </div>
      <div class="footer__info">
        <p>
          Công ty Cổ phần Sách điện tử Waka - Tầng 6, tháp văn phòng quốc tế Hòa
          Bình, số 106, đường Hoàng Quốc Việt, phường Nghĩa Đô, Quận Cầu Giấy,
          thành phố Hà Nội, Việt Nam.
        </p>
        <p>ĐKKD số 0108796796 do SKHĐT TP Hà Nội cấp ngày 24/06/2019</p>
        <p>
          Giấy xác nhận Đăng ký hoạt động phát hành xuất bản phẩm điện tử số
          8132/XN-CXBIPH do Cục Xuất bản, In và Phát hành cấp ngày 31/12/2019
        </p>
        <p>
          Giấy chứng nhận Đăng ký cung cấp dịch vụ nội dung thông tin trên mạng
          Viễn thông di động số 19/GCN-DĐ do Cục Phát thanh, truyền hình và
          thông tin điện tử ký ngày 11/03/2020
        </p>
        <p>
          Số VPGD: 024.73086566 | Số CSKH: 1900545482 nhánh 5 | Hotline:
          0877736289
        </p>
      </div>
    </footer>
  </form>
    <script src="script/general.js"></script>
    <script src="script/trangdanhsach.js"></script>
  </body>
</html>
