using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class StoryLeftnav : System.Web.UI.UserControl
    {
        CatalogBLL catalog = new CatalogBLL();
        CatalogBLL catalog1 = new CatalogBLL();
        StoryBLL story = new StoryBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptListCatalog.DataSource = catalog.GetAllCatalog();
            rptListCatalog.DataBind();
        }

        protected void rptListCatalog_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;

            // Response.Write("" + Catalog_ID);
            if (dv != null)
            {
                int Catalog_ID = (int)dv.Row["Catalog_ID"];
                Repeater rptChild = e.Item.FindControl("rptChild") as Repeater;
                //Response.Write(" " + Catalog_ID);
                var datatable = catalog1.GetAllCatalogChild(Catalog_ID);
                rptChild.DataSource = datatable;
                rptChild.DataBind();
            }
        }
    }
}