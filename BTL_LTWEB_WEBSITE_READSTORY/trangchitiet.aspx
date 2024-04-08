<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchitiet.aspx.cs" Inherits="BTL_LTWEB_WEBSITE_READSTORY.trangchitiet" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/general.css" />
    <link rel="stylesheet" href="style/trangchu.css" />
    <link rel="stylesheet" href="style/trangchitiet.css" />
    <link rel="stylesheet" href="font/netflix-fonts.css" />
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
                                 <a href="trangdanhsach.aspx" class="header__submenu-link"><%# Eval("name") %></a>
                             </li>
                         </ItemTemplate>
                      </asp:ListView>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
                    <li class="header__submenu-item">
                      <a href="/" class="header__submenu-link"
                        >Trinh thám - Kinh dị</a
                      >
                    </li>
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
            <form id="form" runat="server" class="header__right-form">
                <div class="header__search">
                    <asp:TextBox ID="txtSearch" runat="server" class="header__search-input" Placeholder="Nhập tên sách, tác giả,..."></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" style="background:none;color:white;cursor:pointer"/>
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
      
        <section class="detail">

              <asp:ListView ID="DetailStory" runat="server">
                    <ItemTemplate>

                        <div class="detail__image">
                            <img src="<%# Eval("image") %>"/>
                        </div>
                        <div class="detail__content">
                            <p class="detail__content-title"><%# Eval("name") %></p>
                            <!--Id của truyện khi ta nhấn cào tryện bên phía các trang khác -->
                            <div class="st-id" style="display:none;">ID:<div id="stId"><%# Eval("id") %></div></div>
                            <div class="detail__content-star" style="margin-top:5%">
                                <span>5.0</span>
                                <img src="images/star.png" />
                                <img src="images/star.png" />
                                <img src="images/star.png" />
                                <img src="images/star.png" />
                                <img src="images/star.png" />

                                <span class="detail__content-star--title">3 đánh giá</span>
                            </div>

                            <div class="detail___booksInfo">
                                <div class="detail___booksInfo-top">
                                    <div>
                                        <p class="detail___booksInfo-left--author" style="color:gray">Tác giả</p>
                                        <p class="detail___booksInfo-left--author" style="margin-top:10px"><%# Eval("nameAuthor") %></p>
                                    </div>
                                    <div>
                                        <p class="detail___booksInfo-left--cost" style="color:gray">Gói cước</p>
                                        <p class="detail___booksInfo-left--cost" style="margin-top:10px">Miễn phí</p>
                                    </div>
                                </div>
                                <div class="detail___booksInfo-bottom">
                                    <div style="margin-bottom:3%">
                                        <p class="detail___booksInfo-left--kind" style="color:gray">Thể loại</p>
                                        <p class="detail___booksInfo-left--kind" style="margin-top:10px">Ngôn tình</p>
                                    </div>
                                    <div>
                                        <p class="detail___booksInfo-left--origin" style="color:gray">Nhà xuất bản</p>
                                        <p class="detail___booksInfo-left--origin" style="margin-top:10px">Đang cập nhật</p>
                                    </div>
                                    <div>
                                        <p class="detail___booksInfo-left--status" style="color:gray">Trạng thái</p>
                                         <p class="detail___booksInfo-left--status" style="margin-top:10px"><%# Eval("status") %></p>
                                    </div>
                                </div>
                            </div>

                            <div class="detail__action">
                                <p class="detail__action--title">Chọn loại sách</p>
                                <div class="detail__action--button">
                                    <div>Sách điện tử</div>
                                    <div>Sách nói</div>
                                </div>
                            </div>

                            <div class="detail__action">
                                <p class="detail__action--title">Chọn nội dung</p>
                                <div class="detail__action--button">
                                    <div>Đầy đủ</div>
                                    <div>Tóm tắt</div>
                                </div>
                            </div>

                            <div class="detail__read">
                                <button class="detail__read-btn"><img src="images/book.png"/>Đọc sách</button>
                                <div class="detail__read-icon"><img src="images/heart.png"/></div>
                                <div class="detail__read-icon"><img src="images/share.png"/></div>
                            </div>

                
                            <div class="detail__comment-title">
                                <p style="font-size:35px; font-weight:bold">Độc giả nói gì về </p>
                                <div class="detail__comment-title--sub">
                                    <p style="color: var(--green); font-weight: 600; font-size: 20px">Bình luận (14)</p>
                                    <p style="color:gray; font-weight:500; font-size:18px">Đánh giá nhận xét (3)</p>
                                </div>
                            </div>

                            <div class="detail__comment-body">
                                <div class="detail__comment-body--title">
                                    <p><img src="images/user_phamphat.jpg" />Pham Phat</p>
                                    <p style="color:gray; font-size:15px">1 tuần trước</p>
                                </div>

                                <div class="detail__comment-body--content">
                                    <article>
                                        <p>[Chị à, chị đã làm gì vậy? Không ngờ chị lại là người như thế.]</p>
                                        <p>Chương 4: MK, đây không phải là truyện niên đại (4)</p>
                                    </article>
                                    <p style="margin-top:20px; margin-left: 20px">
                                        giải thik cho me đoạn này với
                                    </p>
                                    <div class="comment__reply">
                                        <div class="comment__reply--title">
                                            <p><img src="images/str14.png" />Pham Chiem</p>
                                            <p style="color:gray; font-size:15px">1 tuần trước</p>
                                        </div>
                                        <p style="font-weight:600; padding:20px">là mấy trò SM đó, trói lại oánh kkk</p>
                                    </div>
                                </div>
                            </div>

                            <div class="detail__comment-body">
                                <div class="detail__comment-body--title">
                                    <p><img src="images/user_phamphat.jpg" />Pham Phat</p>
                                    <p style="color:gray; font-size:15px">1 tuần trước</p>
                                </div>

                                <div class="detail__comment-body--content">
                                    <article>
                                        <p>[Chị à, chị đã làm gì vậy? Không ngờ chị lại là người như thế.]</p>
                                        <p>Chương 4: MK, đây không phải là truyện niên đại (4)</p>
                                    </article>
                                    <p style="margin-top:20px; margin-left: 20px">
                                        giải thik cho me đoạn này với
                                    </p>
                                    <div class="comment__reply">
                                        <div class="comment__reply--title">
                                            <p><img src="images/str14.png" />Pham Chiem</p>
                                            <p style="color:gray; font-size:15px">1 tuần trước</p>
                                        </div>
                                        <p style="font-weight:600; padding:20px">là mấy trò SM đó, trói lại oánh kkk</p>
                                    </div>
                                </div>
                            </div>

                            <div class="detail__comment-body">
                                <div class="detail__comment-body--title">
                                    <p><img src="images/user_phamphat.jpg" />Pham Phat</p>
                                    <p style="color:gray; font-size:15px">1 tuần trước</p>
                                </div>

                                <div class="detail__comment-body--content">
                                    <article>
                                        <p>[Chị à, chị đã làm gì vậy? Không ngờ chị lại là người như thế.]</p>
                                        <p>Chương 4: MK, đây không phải là truyện niên đại (4)</p>
                                    </article>
                                    <p style="margin-top:20px; margin-left: 20px">
                                        giải thik cho me đoạn này với
                                    </p>
                                    <div class="comment__reply">
                                        <div class="comment__reply--title">
                                            <p><img src="images/str14.png" />Pham Chiem</p>
                                            <p style="color:gray; font-size:15px">1 tuần trước</p>
                                        </div>
                                        <p style="font-weight:600; padding:20px">là mấy trò SM đó, trói lại oánh kkk</p>
                                    </div>
                                </div>
                            </div>
                            <button class="btn__watchmore">Xem thêm</button>
                        </div>

                    </ItemTemplate>
                </asp:ListView>
            
        </section>

        <section class="bonus">
            <p class="bonus__title">Có thể bạn sẽ thích</p>
             <section class="books">
                <div class="books__slider">
                  <div class="books__slider-list" style="left: 0px">
                    <div class="books__slider-item">

                        <asp:ListView ID="ListFreeStory" runat="server">
                            <ItemTemplate>
                                 <div class="books__slider-content">
                                    <div class="books__slider-link">
                                      <img
                                        src="<%# Eval("image")%>"
                                        alt=""
                                        class="books__slider-image" />
                                      <div class="books__slider-detail">
                                        <a href="/" class="books--detail__title">
                                          <h3 class="books--detail__heading"><%# Eval("name") %></h3>
                                        </a>
                                        <p class="books--detail__author">
                                          <a href="/"><%# Eval("nameAuthor") %></a>
                                        </p>
                                        <div class="books--detail__tag">Miễn phí</div>
                                        <div class="books--detail__buttons">
                                          <button class="books--detail__button read">
                                            <img
                                              src="icons/icon-read-book.svg"
                                              alt=""
                                              class="books--detail__icon" />
                                            <span class="books--detail__button-text">Đọc sách</span>
                                          </button>
                                          <button class="books--detail__button favourite">
                                            <img
                                              src="icons/icon-heart.svg"
                                              alt=""
                                              class="books--detail__icon" />
                                          </button>
                                        </div>
                                        <p class="books--detail__description">
                                          <%# Eval("summary") %>
                                        </p>
                                        <a href="/" class="books--detail__details-link">Chi tiết</a>
                                      </div>
                                    </div>
                                    <a href="/" class="books__slider-title"><%# Eval("name") %></a>
                                  </div>
                            </ItemTemplate>
                        </asp:ListView>

                    </div>
                    <div class="books__slider-item">

                        <asp:ListView ID="ListFreeStory1" runat="server">
                            <ItemTemplate>
                                 <div class="books__slider-content">
                                    <div class="books__slider-link">
                                      <img
                                        src="<%# Eval("image") %>"
                                        alt=""
                                        class="books__slider-image" />
                                      <div class="books__slider-detail">
                                        <a href="/" class="books--detail__title">
                                          <h3 class="books--detail__heading"><%#Eval("name") %></h3>
                                        </a>
                                        <p class="books--detail__author">
                                          <a href="/"><%#Eval("nameAuthor") %></a>
                                        </p>
                                        <div class="books--detail__tag">Miễn phí</div>
                                        <div class="books--detail__buttons">
                                          <button class="books--detail__button read">
                                            <img
                                              src="icons/icon-read-book.svg"
                                              alt=""
                                              class="books--detail__icon" />
                                            <span class="books--detail__button-text">Đọc sách</span>
                                          </button>
                                          <button class="books--detail__button favourite">
                                            <img
                                              src="icons/icon-heart.svg"
                                              alt=""
                                              class="books--detail__icon" />
                                          </button>
                                        </div>
                                        <p class="books--detail__description">
                                          <%#Eval("summary") %>
                                        </p>
                                        <a href="/" class="books--detail__details-link">Chi tiết</a>
                                      </div>
                                    </div>
                                    <a href="/" class="books__slider-title"><%#Eval("name") %></a>
                                 </div>

                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                  </div>
                </div>
                <div class="books__slider-buttons">
                  <button
                    class="books__slider-button books__slider-button--prev"
                    style="display: none">
                    <img
                      src="icons/icon-prev-slide.svg"
                      alt=""
                      class="books__slider-button-icon" />
                  </button>
                  <button class="books__slider-button books__slider-button--next">
                    <img
                      src="icons/icon-next-slide.svg"
                      alt=""
                      class="books__slider-button-icon" />
                  </button>
                </div>
              </section>
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

