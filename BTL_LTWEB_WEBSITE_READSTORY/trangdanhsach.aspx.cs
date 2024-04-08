using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class trangdanhsach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Lấy danh sách tất cả các truyện trong data ở file global
            List<story> stories = (List<story>)Application["listStory"];

            List<story> listPage = new List<story>();

            foreach (story st in stories)
            {
                listPage.Add(st);
            }

            ListPage.DataSource = listPage;
            ListPage.DataBind();

            //Login vào trang chủ và ẩn nút đăng nhập, đăng kí
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

        //Chức năng lọc truyện theo thể loại 
        public void filter(object sender, EventArgs e)
        {
            //Lấy danh sách truyện
            List<story> stories = (List<story>)Application["listStory"];

            //Trỏ đến các button
            Button btnCategory = (Button)sender;
            //Lấy ID của các button và loại bỏ chuỗi btn đằng trước các id
            string selectedCategory = btnCategory.ID.Substring(3).ToLower();

            //Xử lý khi ấn vào các nút thể loại truyện mà tương ứng với mỗi loại trang sẽ trả về các truyện khác nhau
            //Đây là tôi làm hiển thị theo id, nếu ae không muốn thì thêm thuocj tính thể loại vào class story và thêm thể loại vào data ở global file để hiển thị theo thể loại
            switch (selectedCategory)
            {
                case "romantic":
                    List<story> listStoryRomantic = new List<story>();
                    foreach (story st in stories)
                    {
                        if (st.id > 0 && st.id < 6)
                        {
                            listStoryRomantic.Add(st);
                        }
                    }
                    ListPage.DataSource = listStoryRomantic;
                    ListPage.DataBind();
                    result.InnerHtml = "Kết quả tìm kiếm cho thể loại 'Lãng mạn' ";
                    count.InnerHtml = "Tìm được 5 kết quả";
                    break;

                case "detective":
                    List<story> listStoryDetective = new List<story>();
                    foreach (story st in stories)
                    {
                        if (st.id > 5 && st.id < 13)
                        {
                            listStoryDetective.Add(st);
                        }
                    }
                    ListPage.DataSource = listStoryDetective;
                    ListPage.DataBind();
                    result.InnerHtml = "Kết quả tìm kiếm cho thể loại 'Kinh dị trinh thám' ";
                    count.InnerHtml = "Tìm được 5 kết quả";
                    break;

                case "fiction":
                    List<story> listStoryFiction = new List<story>();
                    foreach (story st in stories)
                    {
                        if (st.id > 13 && st.id < 20)
                        {
                            listStoryFiction.Add(st);
                        }
                    }
                    ListPage.DataSource = listStoryFiction;
                    ListPage.DataBind();
                    result.InnerHtml = "Kết quả tìm kiếm cho thể loại 'Khoa học viễn tưởng' ";
                    count.InnerHtml = "Tìm được 5 kết quả";
                    break;

                case "mentality":
                    List<story> listStoryMentality = new List<story>();
                    foreach (story st in stories)
                    {
                        if (st.id > 20 && st.id <= 30)
                        {
                            listStoryMentality.Add(st);
                        }
                    }
                    ListPage.DataSource = listStoryMentality;
                    ListPage.DataBind();
                    result.InnerHtml = "Kết quả tìm kiếm cho thể loại 'Tâm lý xã hội' ";
                    count.InnerHtml = "Tìm được 5 kết quả";
                    break;

                default:
                    List<story> listPage = new List<story>();

                    foreach (story st in stories)
                    {
                        listPage.Add(st);
                    }

                    ListPage.DataSource = listPage;
                    ListPage.DataBind();
                    break;
            }
        }


        //Chức năng lọc theo trạng thái
        //Xử lý cũng gần giống lọc theo thể loại khác mỗi là thể laoij thì bằng button còn cái này là checkbox
        public void checkStatusList(object sender, EventArgs e)
        {
            List<story> stories = (List<story>)Application["listStory"];
            if (chkCompleted.Checked)
            {
                List<story> listStoryCompleted = new List<story>();
                foreach (story st in stories)
                {
                    if (st.status == "Hoàn thành")
                    {
                        listStoryCompleted.Add(st);
                    }
                }
                ListPage.DataSource = listStoryCompleted;
                ListPage.DataBind();
                result.InnerHtml = "Kết quả tìm kiếm cho trạng thái 'Hoàn thành' ";
                count.InnerHtml = "Tìm được 12 kết quả";
            }

            if (chkOngoing.Checked)
            {
                List<story> listStoryOngoing = new List<story>();
                foreach (story st in stories)
                {
                    if (st.status == "Đang ra")
                    {
                        listStoryOngoing.Add(st);
                    }
                }
                ListPage.DataSource = listStoryOngoing;
                ListPage.DataBind();
                result.InnerHtml = "Kết quả tìm kiếm cho trangjk thái 'Đang ra' ";
                count.InnerHtml = "Tìm được 8 kết quả";
            }

            //Login vào trang chủ và ẩn nút đăng nhập
            if (Session["HideButton"] != null && (bool)Session["HideButton"])
            {
                string user = (string)Session["User"];

                Register.Visible = false;
                Login.Visible = false;
                Exit.Visible = true;
                Profiles.Text = user.Substring(0, 1);
            }
        }

        public void btnSearch_Click(object sender, EventArgs e)
        {
            //Lấy danh sách tất cả các truyện trong data ở file global
            List<story> stories = (List<story>)Application["listStory"];

            List<story> listPage = new List<story>();

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
                    listPage.Add(st);
                    break;
                }
            }

            if (found)
            {
                ListPage.DataSource = listPage;
                ListPage.DataBind();
            }
            else
            {
                //Nếu không tìm thấy thì sẽ trả về trang chủ ban đầu
                Response.Redirect("trangdanhsach.aspx");
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