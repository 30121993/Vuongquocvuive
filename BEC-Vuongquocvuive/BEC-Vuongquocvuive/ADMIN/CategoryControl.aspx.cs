using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace BEC_Vuongquocvuive.ADMIN
{
    public partial class CategoryControl : System.Web.UI.Page
    {
        CatalogBLL catalogbll = new CatalogBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User_IDAdmin"] == null)
                    Response.Redirect("Login.aspx?err=null");
                else
                {
                    if (Request.QueryString["mod"] != null)
                    {
                        string text = Request.QueryString["mod"];
                        if (text == "delete")
                        {
                            DeleteCategory(int.Parse(Request.QueryString["id"].ToString()));
                        }
                    }
                    Response.Redirect("Admin.aspx?ac=category");
                }
            }
        }
        //------------------------------------------------
        private void DeleteCategory(int ID)
        {
            catalogbll.DeleteCatalogbyID(ID);
        }
    }
}