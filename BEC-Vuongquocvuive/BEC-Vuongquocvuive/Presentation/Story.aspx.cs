using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class Story : System.Web.UI.Page
    {
        CatalogBLL catalog = new CatalogBLL();
        CatalogBLL catalog1 = new CatalogBLL();
        StoryBLL story = new StoryBLL();
        StoryBLL story1 = new StoryBLL();
       // int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string DuongDan = Server.HtmlEncode(Request.RawUrl);
            Session["Header"] = "Story";
            //Repeater1.DataSource = catalog.GetAllCatalog();
            //Repeater1.DataBind();
            if (!IsPostBack)
            {
                loadData();
            }

            
        }

        private void loadData()
        {
            rptStoryNew.DataSource = story.LoadStoryNew();
            rptStoryNew.DataBind();
            rptListStoryReadMore.DataSource = story1.LoadStoryDocNhieu();
            rptListStoryReadMore.DataBind();
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


        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //DataRowView dv = e.Item.DataItem as DataRowView;
            //if (dv != null)
            //{
            //    Repeater Repeater2 = e.Item.FindControl("Repeater2") as Repeater;
            //    int Catalog_ID = (int)dv.Row["Catalog_ID"];
            //    Repeater2.DataSource = catalog1.GetAllCatalogChild(Catalog_ID);
            //    Repeater2.DataBind();
            //}
        }
    }
}