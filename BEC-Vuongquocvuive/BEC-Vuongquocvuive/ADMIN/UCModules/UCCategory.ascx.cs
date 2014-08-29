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
    public partial class UCCategory : System.Web.UI.UserControl
    {
        CatalogBLL catalogbll = new CatalogBLL();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCategory();
        }
        private void LoadCategory()
        {
            dt = new DataTable();
            string text= "";
            dt = catalogbll.GetAllCatalogAndChild();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                text+="<tr class=\"odd gradeX\">";
                text+="<td>"+(i+1)+"</td>";
                text+="<td>"+dt.Rows[i]["Catalog_Name"]+"</td>";
                text += "<td class=\"hidden-phone\">" + dt.Rows[i]["Catalog_Parent"] + "</td>";
                text+="<td class=\"hidden-phone\">Admin</td>";
                text+="<td class=\"center hidden-phone\">11-8-2014</td>";
                text+="<td class=\"hidden-phone\"><a href=\"#\" class=\"btn mini purple\"><i class=\"icon-edit\"></i> Edit</a> <a href=\"CategoryControl.aspx?mod=delete&id="+dt.Rows[i]["Catalog_ID"]+"\" class=\"btn mini black\"><i class=\"icon-trash\"></i> Delete</a></td>";
                text+="</tr>";
            }
            tbodycategory.Text = text;
            
        }
    }
}