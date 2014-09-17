using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class StoryUC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Control MH;
            try
            {
                if (Session["User_ID"] != null)
                {
                    lblTennguoidung.Text = " " + Session["User_FullName"];

                    string mod;
                    if (Request.QueryString["mod"] != null)
                    {


                        mod = Request.QueryString["mod"].ToString();
                        MH = Page.LoadControl("UCModules/" + mod + ".ascx");
                        plhStoryUC.Controls.Add(MH);
                    }
                    else
                    {
                        Response.Redirect("Story.aspx");
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'> alert('Bạn chưa đăng nhập,vui lòng đăng nhập để xem thông tin truyện!');location.href='Story.aspx';</script>");
                }
            }
            catch
            {
            }
        }
    }
}