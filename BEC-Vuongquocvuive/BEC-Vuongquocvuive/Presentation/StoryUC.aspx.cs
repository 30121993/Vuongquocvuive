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
           
                LoadData();
            


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
        private void LoadData()
        {
            try
            {
                //int Story_ID = int.Parse(Request.QueryString["id"].ToString());
                if (Session["User_ID"] != null)
                {
                    plhDadangnhap.Visible = true;
                    plhChuadangnhap.Visible = false;
                    lblTennguoidung.Text = " " + Session["User_FullName"];
                }
                if (Session["User_ID"] == null)
                {
                    plhDadangnhap.Visible = false;
                    plhChuadangnhap.Visible = true;
                }
            }
            catch
            {

            }
        }
    }
}