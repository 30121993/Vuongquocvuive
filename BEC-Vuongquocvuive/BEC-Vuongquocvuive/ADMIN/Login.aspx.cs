using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEC_Vuongquocvuive.ADMIN
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userAdmin"] != null)
            {
                Response.Redirect("Admin.aspx");
            }
            if (Request.QueryString["err"] != null)
            {
                string err = Request.QueryString["err"];
                string errtext = "";
                if (err == "saithongtin")
                {
                    errtext = "Sai thông tin đăng nhập";
                }
                else if (err == "quyenhan")
                {
                    errtext = "Tài khoản của bạn không được truy cập";
                }
                else if (err == "null")
                {
                    errtext = "Bạn chưa nhập tài khoản";
                }
                else if (err == "lock")
                {
                    errtext = "Tài khoản của bạn bị khóa";
                }

                loginerror.Text = errtext;
            }
        }
    }
}