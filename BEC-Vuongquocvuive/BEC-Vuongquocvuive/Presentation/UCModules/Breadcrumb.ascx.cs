using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class Breadcrumb : System.Web.UI.UserControl
    {
        CatalogBLL _Catalog = new CatalogBLL();
        DataTable CatalogDetail;
        protected void Page_Load(object sender, EventArgs e)
        {
            int Catalog_ID;
            if (Request.QueryString["id"] != null)
            {

                Catalog_ID = Int32.Parse(Request.QueryString["id"].ToString());
                rptChild.DataSource = _Catalog.GetCatalogDetail(Catalog_ID);
                rptChild.DataBind();
                CatalogDetail = _Catalog.GetCatalogDetail(Catalog_ID);
                if (CatalogDetail.Rows[0]["Catalog_Super"].ToString() != "")
                {
                    rptParent.DataSource = _Catalog.GetCatalogDetail(int.Parse(CatalogDetail.Rows[0]["Catalog_Super"].ToString()));
                    rptParent.DataBind();
                }

            }
        }
    }
}