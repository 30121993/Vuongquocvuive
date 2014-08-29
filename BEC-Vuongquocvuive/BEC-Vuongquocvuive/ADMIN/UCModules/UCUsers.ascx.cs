using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using BLL;
namespace BEC_Vuongquocvuive.ADMIN.UCModules
{
    public partial class UCUsers : System.Web.UI.UserControl
    {
        UserBLL userbll = new UserBLL();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadTbody();
        }
        //----------------------------------------------------------------
        private void LoadTbody()
        { 
            string text="";
            dt = new DataTable();
            dt = userbll.LoadUser();
            for (int i = 0; i<dt.Rows.Count;i++ )
            {
                text += "<tr class=\"odd gradeX\">";
                text += "<td>"+(i+1)+"</td>";
                text += "<td>"+dt.Rows[i]["User_FullName"]+"</td>";
                text += "<td class=\"hidden-phone\">"+dt.Rows[i]["User_UserName"]+"</td>";
                text += "<td class=\"hidden-phone\"><a href=\"#\">"+dt.Rows[i]["User_Email"]+"</a></td>";
                text += "<td class=\"hidden-phone\">" + dt.Rows[i]["User_NameType"] + "</td>";
                text += "<td class=\"center hidden-phone\">"+dt.Rows[i]["User_LastEdit"]+"</td>";
                if (Boolean.Parse(dt.Rows[i]["User_Status"].ToString()) == true)
                {
                    text += "<td class=\"hidden-phone\"><span class=\"label label-success\">Hoạt Động</span></td>";
                }
                else
                {
                    text += "<td class=\"hidden-phone\"><span class=\"label label-danger\">Khóa</span></td>";
                }
                
                text += "<td class=\"hidden-phone\"><a href=\"javascipt:void();\" class=\"btn mini purple\"><i class=\"icon-edit\"></i> Edit</a>";
                if (Boolean.Parse(dt.Rows[i]["User_Status"].ToString()) == true)
                {
                    text += " <a href=\"UserControl.aspx?mod=lockaccount&ID="+dt.Rows[i]["User_ID"]+"\" class=\"btn mini black\"><i class=\"icon-lock\"></i> Khóa</a></td>";
                }
                else
                {
                    text += " <a href=\"UserControl.aspx?mod=openaccount&ID=" + dt.Rows[i]["User_ID"] + "\" class=\"btn mini black\"><i class=\"icon-unlock\"></i>Bỏ Khóa</a></td>";
                }
                    
                text += "</tr>";
            }
            tbody.Text = text;

        }

    }
}