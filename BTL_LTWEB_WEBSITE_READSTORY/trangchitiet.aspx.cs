using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class trangchitiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get list story in global file
            List<story> stories = (List<story>)Application["listStory"];

            //Lấy id từ các trang bên phía client
            string id = Request.QueryString.Get("id");

            foreach (story st in stories)
            {
                //So sánh nếu id trong data trùng với id bên phía client thì sẽ render ra trang chhi tiết cùng với các thông tin truyện tương ứng
                if (st.id == int.Parse(id))
                {
                    List<story> detailStory = new List<story>();
                    detailStory.Add(st);
                    DetailStory.DataSource = detailStory;
                    DetailStory.DataBind();
                    break;
                }
            }

            //Hiển thị 1 list cho phần có thể bạn sẽ thích trong trang này
            List<story> listFreeStory1 = new List<story>();
            List<story> listFreeStory2 = new List<story>();
            foreach (story st in stories)
            {
                if (st.id > 15 && st.id <= 20)
                {
                    listFreeStory1.Add(st);
                }
                if (st.id > 0 && st.id <= 6)
                {
                    listFreeStory2.Add(st);
                }
            }

            ListFreeStory.DataSource = listFreeStory1;
            ListFreeStory.DataBind();
            ListFreeStory1.DataSource = listFreeStory2;
            ListFreeStory1.DataBind();

            //Get list category
            List<category> categories = (List<category>)Application["listCategory"];

            List<category> listCategory = new List<category>();

            foreach (category ct in categories)
            {
                listCategory.Add(ct);
            }

            ListCategory.DataSource = listCategory;
            ListCategory.DataBind();

            //Login vào trang chủ và ẩn nút đăng nhập
            if (Session["HideButton"] != null && (bool)Session["HideButton"])
            {
                string user = (string)Session["User"];
                HttpCookie cookie = new HttpCookie("User");
                cookie["User"] = user;
                cookie.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(cookie);

                Register.Visible = false;
                Login.Visible = false;
                Exit.Visible = true;
                Profiles.Visible = true;
                Profiles.Text = user.Substring(0, 1);
            }
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