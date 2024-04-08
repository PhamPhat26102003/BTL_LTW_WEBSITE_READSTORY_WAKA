using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class trangchu : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {
            //Get list story in global file
            List<story> stories = (List<story>)Application["listStory"];

            //Get list free story
            List<story> listFreeStory = new List<story>();
            //Get list new story
            List<story> listNewStory = new List<story>();
            //Get list most read story
            List<story> listMostReadStory = new List<story>();

            foreach (story st in stories)
            {
                //Lấy các truyện theo id và cho vào từng slide
                if (st.id > 0 && st.id < 6)
                {
                    listFreeStory.Add(st);
                }

                if (st.id > 5 && st.id < 11)
                {
                    listNewStory.Add(st);
                }

                if (st.id > 10 && st.id < 16)
                {
                    listMostReadStory.Add(st);
                }
            }

            //Gán ID của từng ListView cho các list
            ListFreeStory.DataSource = listFreeStory;
            ListFreeStory.DataBind();
            ListFreeStory1.DataSource = listFreeStory;
            ListFreeStory1.DataBind();

            ListNewStory.DataSource = listNewStory;
            ListNewStory.DataBind();
            ListNewStory1.DataSource = listNewStory;
            ListNewStory1.DataBind();

            ListMostRead.DataSource = listMostReadStory;
            ListMostRead.DataBind();
            ListMostRead1.DataSource = listMostReadStory;
            ListMostRead1.DataBind();

            //Get list category
            List<category> categories = (List<category>)Application["listCategory"];

            List<category> listCategory = new List<category>();

            foreach(category ct in categories)
            {
                listCategory.Add(ct);
            }

            ListCategory.DataSource = listCategory;
            ListCategory.DataBind();

            //Login vào trang chủ và ẩn nút đăng nhập, đăng kí và hiển thị tên user và lưu tài khoản trên cookie
            if(Session["HideButton"] != null && (bool)Session["HideButton"])
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

        //Chức năng tìm kiếm trên thanh tìm kiếm
        public void btnSearch_Click(object sender, EventArgs e)
        {
            //Lần lượt lấy list của 3 danh sách từng slide: Miễn phí, mới nhất, và đọc nhiều nhất
            List<story> stories = (List<story>)Application["listStory"];
            List<story> listFreeStory = new List<story>();
            List<story> listNewStory = new List<story>();
            List<story> listMostReadStory = new List<story>();

            //gán biến enter cho ô tìm kiếm ở trang chủ và không phân biệt chhuwx hoa chữ thường
            string enter = txtSearch.Text.Trim().ToLower();
            bool found = false;

            foreach (story st in stories)
            {
                //Nếu tên truyện hay tên tác giả nhập vào ô tìm kiếm mà trùng với tên trong data ở file global thì sẽ cho hiển thị truyện cần tìm
                //ở từng slide
                if (enter == st.name.ToLower() || enter == st.nameAuthor.ToLower())
                {
                    found = true;
                    if (st.id > 0 && st.id < 6)
                    {
                        listFreeStory.Add(st);
                    }

                    if (st.id > 5 && st.id < 11)
                    {
                        listNewStory.Add(st);
                    }

                    if (st.id > 10 && st.id < 16)
                    {
                        listMostReadStory.Add(st);
                    }
                    break;
                }
            }

            if (found)
            {

                ListFreeStory.DataSource = listFreeStory;
                ListFreeStory.DataBind();
                ListFreeStory1.DataSource = listFreeStory;
                ListFreeStory1.DataBind();

                ListNewStory.DataSource = listNewStory;
                ListNewStory.DataBind();
                ListNewStory1.DataSource = listNewStory;
                ListNewStory1.DataBind();

                ListMostRead.DataSource = listMostReadStory;
                ListMostRead.DataBind();
                ListMostRead1.DataSource = listMostReadStory;
                ListMostRead1.DataBind();
            }
            else
            {
                //Nếu không tìm thấy thì sẽ trả về trang chủ ban đầu
                Response.Redirect("trangchu.aspx");
            }
        }

        //Các nút ấn sang các trang tương ứng với tên của hàm
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
            //Khi đăng xuất nút đăng nhập đăng kí sẽ xuất hiện lại
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