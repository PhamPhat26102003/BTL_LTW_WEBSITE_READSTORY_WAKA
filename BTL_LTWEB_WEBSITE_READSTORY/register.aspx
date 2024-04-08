<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BTL_LTWEB_WEBSITE_READSTORY.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng kí</title>
    <link href="style/general.css" rel="stylesheet" />
    <link href="style/register.css" rel="stylesheet"/>
    <script src="script/register.js"></script>
</head>
<body>
    <header class="header" style="background:black;opacity:0.8">
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
          </div>
        </div>
      </div>
    </header>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form runat="server" onsubmit="return checkTT()" action="register.aspx" method="post">
        <h3>Đăng kí tài khoản mới</h3>
         <div class ="error" id="error" runat="server" style="font-size:20px;color:red"></div>
         <div class ="succes" id="succes" runat="server" style="font-size:20px;color:greenyellow"></div>
        <label for="username">Nhập tên tài khoản</label>
        <input type="text" placeholder="Nhập tên tài khoản" id="username" name="username" runat="server">

        <label for="password">Nhập mật khẩu</label>
        <input type="password" placeholder="Mật khẩu" id="password" name="password" runat="server">

        <label for="password">Nhập lại mật khẩu</label>
        <input type="password" placeholder="Nhập lại mật khẩu" id="repeatPass" name="repeatPass" runat="server">

        <label for="email">Nhập email</label>
        <input type="text" placeholder="Nhập email" id="email" name="email" runat="server">

        <button type="submit" value="Đăng kí" runat="server">Đăng kí</button>
        <div class="social">
          <div class="go">
              <a href="login.aspx">Đăng nhập</a>
          </div>
          <div class="fb">
              <a href="trangchu.aspx">Về trang chủ</a>
          </div>
        </div>
    </form>

    <footer class="footer" style="margin-top:45%">
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
</body>
</html>
