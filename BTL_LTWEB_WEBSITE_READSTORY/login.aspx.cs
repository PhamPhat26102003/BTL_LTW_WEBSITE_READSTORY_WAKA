using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Login(sender, e);
            }
        }

        protected void Login(object sender, EventArgs e)
        {
            //Lấy list tài khoản ở cả session và application
            List<account> listAccountSession = (List<account>)Session["danhsach"];
            List<account> listAccountApplication = (List<account>)Application["listAccount"];

            bool checkInfoUser = false;

            //Xử lý nếu đúng tk và mk trong data ở trong file global đây là tài khoản đã được tạo sẵn trong code
            foreach(account account1 in listAccountApplication)
            {
                if(account1.User == username.Value && account1.Pass == password.Value)
                {
                    checkInfoUser = true;
                    break;
                }
            }

            //Xử lý nếu đúng tk và mk trong data ở trong file global đây là tài khoản đã được tạo ở trên trang web và được lưu vào session
            if (listAccountSession != null)
            {
                foreach(account account2 in listAccountSession)
                {
                    if(account2.User == username.Value && account2.Pass == password.Value)
                    {
                        checkInfoUser = true;
                        break;
                    }
                }
            }

            //Rỗng
            if (username.Value == "" && password.Value == "")
            {
                return;
            }
            else
            {
                if (checkInfoUser)
                {
                    //Đây là phần xử lý lưu vào session các thông tin để có thể hiển thị được ở phần profile
                    //Đăng nhập được sẽ chuyển vào trang chủ ngược hiển sẽ hiển thị lỗi
                    Session["HideButton"] = true;
                    Session["User"] = username.Value;
                    Session["Pass"] = password.Value;
                    Response.Redirect("trangchu.aspx");
                }
                else
                {
                    error.InnerHtml= "Tài khoản hoặc mật khẩu không chính xác!";
                    username.Focus();
                }
            }
        }
    }
}