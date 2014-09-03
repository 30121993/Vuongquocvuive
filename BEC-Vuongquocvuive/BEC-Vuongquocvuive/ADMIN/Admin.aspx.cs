using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace BEC_Vuongquocvuive.ADMIN
{
    public partial class Admin : System.Web.UI.Page
    {
        public UserBLL userbll = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin();
            LoadPage();
        }
        private void CheckLogin()
        {
            if (Session["User_IDAdmin"] == null)
                Response.Redirect("Login.aspx?err=null");
        }
        private void LoadPage()
        {
            Control ct = new Control();
            string ac = "";
            if (Request.QueryString["ac"] != null)
            {
                ac = Request.QueryString["ac"].ToString().Trim();
                if (ac == "addnewuser")
                {
                    ct = Page.LoadControl("UCModules/UCAddNewUser.ascx");
                }
                else if (ac == "users")
                {
                    ct = Page.LoadControl("UCModules/UCUsers.ascx");
                }
                else if (ac == "category")
                {
                    ct = Page.LoadControl("UCModules/UCCategory.ascx");
                }
                else if (ac == "story")
                {
                    ct = Page.LoadControl("UCModules/UCStory.ascx");
                }
                else if (ac == "addnewstory")
                {
                    ct = Page.LoadControl("UCModules/UCAddNewStory.ascx");
                }
            }
            else
            {
                ct = Page.LoadControl("UCModules/UCDefault.ascx");
            }
            Body.Controls.Add(ct);
        }
    }
}