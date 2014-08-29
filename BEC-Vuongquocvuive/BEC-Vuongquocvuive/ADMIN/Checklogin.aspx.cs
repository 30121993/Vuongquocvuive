using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BLL;
namespace BEC_Vuongquocvuive.ADMIN
{
    public partial class Checklogin : System.Web.UI.Page
    {
        UserBLL userbll = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ac"] == "login")
                Login();
            else if (Request.QueryString["ac"] == "logout")
                Logout();
        }
        private void Login()
        {
            if (Request.Form["username"] == "" || Request.Form["password"] == "")
            {
                Response.Redirect("Login.aspx?err=null");
            }
            else
            {
                DataTable user = userbll.Dangnhap(Request.Form["username"].ToString(), Request.Form["password"]);
                if (user.Rows.Count == 1)
                {
                    if (Boolean.Parse(user.Rows[0]["User_Status"].ToString()) == false)
                    {
                        Response.Redirect("Login.aspx?err=lock");
                    }
                    else if (int.Parse(user.Rows[0]["User_TypeID"].ToString()) == 1)
                    {
                        Session["userAdmin"] = user.Rows[0]["User_TypeID"].ToString();
                        Session["usernameAdmin"] = user.Rows[0]["User_FullName"].ToString();
                        Session["User_IDAdmin"] = user.Rows[0]["User_ID"];
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        Response.Redirect("Login.aspx?err=quyenhan");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx?err=saithongtin");
                }
            }
        }

        private void Logout()
        {
            Session["userAdmin"] = null;
            Session["User_IDAdmin"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}