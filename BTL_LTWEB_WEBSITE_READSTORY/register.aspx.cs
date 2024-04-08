using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Đăng kí tạo tài khoản mới
            if(username.Value != "" && password.Value != "" && repeatPass.Value != "")
            {
                //Nếu session đang rỗng thì sẽ khởi tạo một list mới
                if(Session["danhsach"] == null)
                {
                    Session["danhsach"] = new List<account>();
                }

                List<account> accounts = (List<account>)Session["danhsach"];
                bool checkInfoUser = false;

                foreach(account ac in accounts)
                {
                    //Check username
                    if(ac.User == username.Value)
                    {
                        checkInfoUser = true;
                        break;
                    }
                }
                if (checkInfoUser)
                {
                    //Nếu trùng với user đã có sẽ hhieenr thị tb
                    succes.InnerHtml = "";
                    error.InnerHtml = "Tài khoản đã tồn tại";
                    username.Focus();
                }
                else
                {
                    string user = Request.Form["username"];
                    string pass = Request.Form["password"];
                    string email = Request.Form["email"];

                    account acc = new account();
                    //Dòng này là để xử lý hiển thị được gmail trong profile
                    Session["Gmail"] = email.ToString();
                    //Lưu tk vừa tạo 
                    acc.User = user;
                    acc.Pass = pass;
                    acc.Gmail = email;
                    accounts.Add(acc);
                    succes.InnerHtml = "Đăng kí tài khoản thành công";
                    username.Value = "";
                    password.Value = "";

                    error.InnerHtml = "";
                }
            }
        }
    }
}