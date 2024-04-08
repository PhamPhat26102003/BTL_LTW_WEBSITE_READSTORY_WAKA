using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Login vào trang chủ và ẩn nút đăng nhập, đăng kí, lưu thông tin đăng nhập đăng kí trên cookie và session rồi hiển thị vào profile
            if (Session["HideButton"] != null && (bool)Session["HideButton"])
            {
                //Đây là phần xử lý lưu vào sesion và cookie trước khi hiển thị
                string user = (string)Session["User"];
                string pass = (string)Session["Pass"];
                string email = (string)Session["Gmail"];
                HttpCookie cookieUser = new HttpCookie("User");
                cookieUser["User"] = user;
                HttpCookie cookiePass = new HttpCookie("Pass");
                cookiePass["Pass"] = pass;
                HttpCookie cookieEmail = new HttpCookie("Gmail");
                cookieEmail["User"] = email;
                cookieEmail.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(cookieUser);
                Response.Cookies.Add(cookiePass);
                Response.Cookies.Add(cookieEmail);

                Register.Visible = false;
                Login.Visible = false;
                Exit.Visible = true;
                Profiles.Visible = true;
                //Đây là phần để hiển thị các thông tin đăng nhập đăng kí vào profile
                Username.InnerHtml = user;
                Email.InnerHtml = email;
                Password.InnerHtml = pass;
                Profiles.Text = user.Substring(0, 1);
            }

            //Get list category
            List<category> categories = (List<category>)Application["listCategory"];

            List<category> listCategory = new List<category>();

            foreach (category ct in categories)
            {
                listCategory.Add(ct);
            }

            ListCategory.DataSource = listCategory;
            ListCategory.DataBind();
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Exit_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["HideButton"] = null;
            Response.Redirect(Request.Url.ToString(), true);
        }

        protected void Profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }
    }
}