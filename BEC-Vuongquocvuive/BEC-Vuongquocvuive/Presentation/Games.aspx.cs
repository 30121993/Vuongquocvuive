using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEC_Vuongquocvuive
{
    public partial class Games : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Control MH;
            Session["Header"] = "Games";
            if (!IsPostBack)
            {
                loadData();
            }
            string mod;
            if (Request.QueryString["mod"] != null)
            {
                mod = Request.QueryString["mod"].ToString();
                MH = Page.LoadControl("UCModules/" + mod + ".ascx");
                plhListGame.Controls.Add(MH);

            }
            else
            {
                MH = Page.LoadControl("UCModules/ListGames.ascx");
                plhListGame.Controls.Add(MH);
            }

        }
        private void loadData()
        {
            
            try
            {

                if (Session["User_ID"] != null)
                {
                    plhDadangnhap.Visible = true;
                    plhChuadangnhap.Visible = false;
                    lblTennguoidung.Text = " " + Session["User_FullName"];
                }
                else
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