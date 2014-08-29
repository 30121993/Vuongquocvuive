using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class ListStory : System.Web.UI.UserControl
    {
        StoryBLL BLL = new StoryBLL();
        CatalogBLL _Catalog = new CatalogBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Catalog_ID;
            if (Request.QueryString["id"] != null)
            {

                Catalog_ID =Int32.Parse( Request.QueryString["id"].ToString());
               rptListStory.DataSource= BLL.GetStoryByCatalog(Catalog_ID);
               rptListStory.DataBind();
               Catalog_Name.DataSource = _Catalog.GetCatalogDetail(Catalog_ID);
               Catalog_Name.DataBind();
 
            }
            
        }
    }
}