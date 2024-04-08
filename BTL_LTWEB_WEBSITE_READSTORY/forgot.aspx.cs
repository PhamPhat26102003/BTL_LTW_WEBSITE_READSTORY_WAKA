using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWEB_WEBSITE_READSTORY
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool check = false;
            string username = "";
            string passwords = "";

            List<account> listAccount = (List<account>)Session["danhsach"];
            foreach(account acc in listAccount)
            {
                //Check email
                if(acc.Gmail == email.Value)
                {
                    check = true;
                    username = acc.User.ToString();
                    passwords = acc.Pass.ToString();
                    break;
                }
            }

            if(email.Value == "")
            {
                return;
            }

            if (check)
            {
                //Nếu đúng là email của mình vừa tạo sẽ hiển thị thông báo
                //Và hiển thị phần nhập mk
                error.InnerHtml = "";
                password.Visible = true;
                repeatPass.Visible = true;
                passTitle.Visible = true;
                rePassTitle.Visible = true;
                email.Visible = false;
                emailTitle.Visible = false;
                user.InnerHtml = "Tài khoản của bạn là " + username;

                bool check1 = false;

                //Check mật khẩu và nhập lại mật khẩu phải giống nhau
                if(password.Value == repeatPass.Value)
                {
                    foreach(account acc1 in listAccount)
                    {
                        if(password.Value != "" && repeatPass.Value != "")
                        {
                            if(username == acc1.User)
                            {
                                acc1.Pass = password.Value;
                                check1 = true;
                            }
                        }
                    }

                    //Nếu ok thì đổi mật khẩu và ngược lại
                    if (check1)
                    {
                        succes_pass.InnerHtml = "Thay đổi mật khẩu thành công";
                        error.InnerHtml = "";
                    }
                }
                else
                {
                    error.InnerHtml = "Mật khẩu không trùng khớp, mời bạn nhập lại!!!";
                    succes_pass.InnerHtml = "";
                    password.Focus();
                    password.Value = "";
                    repeatPass.Value = "";
                }
            }
            else
            {
                //Check tồn tại email
                error.InnerHtml = "Email này không tồn tại!!!";
                succes_user.InnerHtml = "";
                succes_pass.InnerHtml = "";
            }
        }
    }
}