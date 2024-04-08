<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="BTL_LTWEB_WEBSITE_READSTORY.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quên mật khẩu</title>
    <link href="style/general.css" rel="stylesheet" />
    <link href="style/forgot.css" rel="stylesheet"/>
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
    <form method="post" runat="server" onsubmit="return check()">
         <div class ="home">
             <a href="login.aspx">Đăng nhập</a>
             <a>></a>
             <a href="forgot.aspx">Quyên mật khẩu</a>
         </div>
        <h3>Quên mật khẩu</h3>

        <div class="error" id="error" runat="server" style="color:red"></div>
        <div class="succes"  id="succes_user" runat="server" style="color:greenyellow"></div>
        <div class="succes"  id="succes_pass" runat="server" style="color:greenyellow"></div>

        <label for="email" id="emailTitle" runat="server">Nhập email liên kết</label>
        <input type="text" placeholder="Nhập email" id="email" name="email" runat="server">
        <div class ="user" id ="user" runat ="server"></div>

        <label for="password" id="passTitle" visible ="false" runat="server">Nhập mật khẩu</label>
        <input type="password" placeholder="Mật khẩu" id="password" name="password" runat="server" visible ="false">

        <label for="password" id="rePassTitle" visible ="false" runat="server">Nhập lại mật khẩu</label>
        <input type="password" placeholder="Nhập lại mật khẩu" id="repeatPass" name="repeatPass" runat="server" visible ="false">

        <button type="submit" value="Xác nhận" runat="server">Xác nhận</button>
        <div class="social">
          <div class="fb">
              <a href="trangchu.aspx">Trang chủ</a>
          </div>
        </div>
    </form>

    <footer class="footer" style="margin-top:40%">
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
