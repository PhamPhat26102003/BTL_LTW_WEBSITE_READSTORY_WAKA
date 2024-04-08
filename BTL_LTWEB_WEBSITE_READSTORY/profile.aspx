<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="BTL_LTWEB_WEBSITE_READSTORY.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin tài khoản</title>
    <link rel="stylesheet" href="style/general.css" />
    <link rel="stylesheet" href="style/profile.css" />
    <link rel="stylesheet" href="style/trangchu.css" />
    <link rel="stylesheet" href="font/netflix-fonts.css"/>
    <script src="script/profile.js"></script>
</head>
<body>
     <header class="header">
              <div class="container">
                <div class="header__wrapper">
                  <div class="header__left">
                    <a href="trangchu.aspx" class="header__logo">
                      <img src="images/logo.png" alt="" />
                    </a>
                    <ul class="header__menu">
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Sách điện tử</a>
                        <div class="header__submenu">
                          <p class="header__submenu-title">Sách điện tử</p>
                          <ul class="header__submenu-list">
                              <asp:ListView ID="ListCategory" runat="server">
                                  <ItemTemplate>
                                      <li class="header__submenu-item">
                                          <a href="/" class="header__submenu-link"
                                            ><%# Eval("name") %></a
                                          >
                                        </li>
                                  </ItemTemplate>
                              </asp:ListView>
                          </ul>
                          <div class="header__submenu-separate"></div>
                          <div class="header__submenu-discover">
                            <p class="header__submenu-discover-title">Khám phá ngay</p>
                            <div class="header__submenu-discover-buttons">
                              <a href="/" class="header__submenu-discover-button">
                                <img
                                  src="icons/icon-sparkles.svg"
                                  alt=""
                                  class="header__submenu-discover-icon" />
                                <span class="header__submenu-discover-label"
                                  >Sách mới nhất</span
                                >
                              </a>
                              <a href="/" class="header__submenu-discover-button">
                                <img
                                  src="icons/icon-open-book.svg"
                                  alt=""
                                  class="header__submenu-discover-icon" />
                                <span class="header__submenu-discover-label"
                                  >Sách đọc nhiều</span
                                >
                              </a>
                              <a href="/" class="header__submenu-discover-button">
                                <img
                                  src="icons/icon-retail-book.svg"
                                  alt=""
                                  class="header__submenu-discover-icon" />
                                <span class="header__submenu-discover-label"
                                  >Sách mua lẻ</span
                                >
                              </a>
                              <a href="/" class="header__submenu-discover-button">
                                <img
                                  src="icons/icon-coin.svg"
                                  alt=""
                                  class="header__submenu-discover-icon" />
                                <span class="header__submenu-discover-label"
                                  >Sách miễn phí</span
                                >
                              </a>
                              <a href="/" class="header__submenu-discover-button">
                                <img
                                  src="icons/icon-nominations.svg"
                                  alt=""
                                  class="header__submenu-discover-icon" />
                                <span class="header__submenu-discover-label"
                                  >Sách đề cử</span
                                >
                              </a>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Sách nói</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Sách hiệu sồi</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Sách tóm tắt</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Podcast</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Combo</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Tuyển tập</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Tủ sách cộng đồng</a>
                      </li>
                      <li class="header__menu-item">
                        <a href="trangdanhsach.aspx" class="header__menu-link">Sáng tác</a>
                      </li>
                    </ul>
                  </div>
                  <div class="header__right">
                    <form method="post" runat="server" class="header__right-form">
                        <div class="header__search">
                            <asp:TextBox ID="txtSearch" runat="server" class="header__search-input" Placeholder="Nhập tên sách, tác giả,..."></asp:TextBox>
                            <asp:Button runat="server" Text="Search" style="background:none;color:white;cursor:pointer"/>
                        </div>
                        <div class="header__buttons">
                            <div class ="user" id ="Div1" runat ="server" visible ="false"></div>
                            <asp:Button ID="Exit" Class="header__button signup" runat="server" Text="Đăng Xuất" OnClick="Exit_Click" Visible ="false" />
                            <asp:Button ID="Profiles" Class="header__button profile" runat="server" Text="P" OnClick="Profile_Click" Visible ="false"
                                        style="border-radius:100%;width:40px;height:40px;color:rgb(21 176 136);" />
                            <asp:Button ID="Register" Class="header__button signup" runat="server" Text="Đăng Ký" OnClick="Register_Click" />
                            <asp:Button ID="Login" Class="header__button login" runat="server" Text="Đăng Nhập" OnClick="Login_Click" />
                        </div>  
                    </form>
                  </div>
                </div>
              </div>
            </header>
            <main>
                <section class="profile">
                    <div class="profile__left">
                        <div class="profile__left-username">
                            <p>Pham Phat</p>
                            <img src="images/user_phamphat.jpg" />
                        </div>

                        <div class="profile__left-service">
                            <button class="profile__left-service--btn1">Nạp sồi</button>
                            <button class="profile__left-service--btn2">Trở thành hội viên</button>
                        </div>

                        <div class="profile__left-categories">
                            <p class="profile__left-categories--item active" onclick="activeItemCategory(this);return false"><img src="images/icons8-account-48.png"/>Quản lý tài khoản</p>
                            <p class="profile__left-categories--item" onclick="activeItemCategory(this);return false"><img src="images/icons8-category-50.png"/>Tủ sách cá nhân</p>
                            <p class="profile__left-categories--item" onclick="activeItemCategory(this);return false"><img src="images/icons8-medal-50.png"/>Thành tích</p>
                            <p class="profile__left-categories--item" onclick="activeItemCategory(this);return false"><img src="images/icons8-bill-48.png" />Lịch sử giao dịch</p>
                            <p class="profile__left-categories--item" onclick="activeItemCategory(this);return false"><img src="images/icons8-online-support-64.png"/>Hỗ trợ khách hàng</p>
                        </div>
                    </div>
                    <div class="profile__right">
                        <p style="font-size:30px;font-weight:600">Quản lý thông tin</p>

                        <div class="profile__right-title">
                            <p class="profile__right-title--item active" onclick="activeTitle(this, 0);return false">Thông tin cá nhân</p>
                            <p class="profile__right-title--item" onclick="activeTitle(this, 1);return false">Tài khoản và bảo mật</p>
                            <p class="profile__right-title--item" onclick="activeTitle(this, 2);return false">Tài khoản liên kết</p>
                        </div>

                        <div class="form">
                             <div class="formInfo__item active">
                                <div class="formInfo__input">
                                    <p class="formInfo__input-title">Tên đăng nhập</p>
                                    <p class="formInfo__input-username" id="Username" runat="server">PhamPhat</p>
                                </div>

                                  <div class="formInfo__input">
                                    <p class="formInfo__input-title">ID người dùng</p>
                                    <p class="formInfo__input-id" id="idUser" runat="server">26102003</p>
                                </div>

                                <div class="formInfo__input">
                                    <p class="formInfo__input-title">Họ và tên</p>
                                    <p class="formInfo__input-name" id="P1" runat="server">Phạm Ngọc Phát</p>
                                </div>

                                <div class="formInfo__input" style="background:none;display:flex;align-items:center;gap:20px;border-bottom:1px solid;border-radius:0px;padding-bottom:20px">
                                    <input type="date" class="formInfo__input-title" />
                                    <select class="formInfo__input-select">
                                        <option value="Nam">Nam</option>
                                        <option value="Nữ">Nữ</option>
                                        <option value="Khác">Khác</option>
                                    </select>
                                </div>

                                <div class="formInfo__btn">
                                    <button class="formInfo__btn-update">Cập nhật</button>
                                    <button class="formInfo__btn-cancel">Hủy</button>
                                </div>
                            </div>

                             <div class="formInfo__item">
                                <div class="formInfo__input">
                                    <p class="formInfo__input-title">Email</p>
                                    <p class="formInfo__input-username" id="Email" runat="server">admin2003@gmail.com</p>
                                </div>

                                  <div class="formInfo__input">
                                    <p class="formInfo__input-title">Mật khẩu</p>
                                    <p class="formInfo__input-id" id="Password" runat="server">26102003</p>
                                </div>

                                <div class="formInfo__btn">
                                    <a>Bạn có sử dụng tài khoản này nữa không?</a><a style="color:rgb(21 176 136);">Xóa tài khoản</a>
                                </div>
                            </div>

                            <div class="formInfo__item" style="margin-top:5%;">
                                <p class="google">
                                    <img src="images/icons8-google-50.png"/>Google
                                </p>

                                <p class="facebook">
                                    <img src="images/icons8-facebook-30.png"/>Facebook
                                    <button class="facebook__btn">Kết nối</button>
                                </p>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
            <footer class="footer">
              <div class="container footer__container">
                <div class="footer__brand">
                  <a href="/" class="footer__logo">
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
    
    <script src="script/general.js"></script>
    <script src="script/trangchu.js"></script>
  </body>
</html>
