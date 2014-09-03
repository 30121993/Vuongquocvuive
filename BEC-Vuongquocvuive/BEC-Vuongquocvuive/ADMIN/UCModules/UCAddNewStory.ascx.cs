using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;

namespace BEC_Vuongquocvuive.ADMIN.UCModules
{
    public partial class UCAddNewStory : System.Web.UI.UserControl
    {
        DataTable dt;
        CatalogBLL catalogbll = new CatalogBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCategory();
            }
        }
        //--------------------------------------------
        private void getCategory()
        { 
            string text= "";
            dt = new DataTable();
            dt = catalogbll.GetAllCatalogAndChild();
            for(int i=0;i<dt.Rows.Count;i++)
            {
                text += "<option value=\""+dt.Rows[i]["Catalog_ID"]+"\" >"+dt.Rows[i]["Catalog_Name"]+"</option>";
            }
            SelectCategory.Text = text;
        }
    }
}