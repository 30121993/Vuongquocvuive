using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            string header = Session["Header"].ToString();
            Session.RemoveAll();
            Session.Clear();
            if (Request.Cookies["user"] != null)
            {
                Request.Cookies["user"].Expires = DateTime.Now;
                
            }
            
            
            if (header == "Story")
            {
                //Response.Write("<script language='javascript'> alert('Đăng nhập thành công!');location.href='Story.aspx';</script>");
                Response.Redirect("Story.aspx");
            }
            if (header == "Games")
            {
                //Response.Write("<script language='javascript'> alert('Đăng nhập thành công!');location.href='Games.aspx';</script>");
                Response.Redirect("Games.aspx");
            }
            if (header == "Blog")
            {
                //Response.Write("<script language='javascript'> alert('Đăng nhập thành công!');location.href='Blog.aspx?mod=Changer_info_User';</script>");
                Response.Redirect("Blog.aspx");
            }
            
        }
    }
}