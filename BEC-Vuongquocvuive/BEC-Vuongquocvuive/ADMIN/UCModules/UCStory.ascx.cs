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
    public partial class UCStory : System.Web.UI.UserControl
    {
        DataTable dt;
        StoryBLL storybll = new StoryBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStory();
            }
        }

        //--------------------------------------------------
        private void LoadStory()
        {
            dt = new DataTable();
            string text = "";
            dt = storybll.StoryGetAll();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                text += "<tr class=\"odd gradeX\">";
                text += "<td>" + (i + 1) + "</td>";
                text += "<td>" + dt.Rows[i]["Story_Name"] + "</td>";
                text += "<td class=\"hidden-phone\">" + dt.Rows[i]["Story_TotalView"] + "</td>";
                text += "<td class=\"hidden-phone\"><a href=\"#\">" + dt.Rows[i]["Catalog_Name"] + "</a></td>";
                text += "<td class=\"hidden-phone\">" + dt.Rows[i]["User_FullName"] + "</td>";
                text += "<td class=\"center hidden-phone\">" + dt.Rows[i]["Story_LastEdit"] + "</td>";
                if (Boolean.Parse(dt.Rows[i]["Story_State"].ToString()) == true)
                {
                    text += "<td class=\"hidden-phone\"><span class=\"label label-success\">Công khai</span></td>";
                }
                else
                {
                    text += "<td class=\"hidden-phone\"><span class=\"label label-danger\">Khóa</span></td>";
                }
                text += "<td class=\"hidden-phone\"><a href=\"#\" class=\"btn mini purple\"><i class=\"icon-edit\"></i> Edit</a> <a href=\"#\" class=\"btn mini black\"><i class=\"icon-trash\"></i> Delete</a></td>";
                if (Boolean.Parse(dt.Rows[i]["Story_State"].ToString()) == true)
                {
                    text += " <a href=\"#\" class=\"btn mini black\"><i class=\"icon-lock\"></i> Khóa</a></td>";
                }
                else
                {
                    text += " <a href=\"#\" class=\"btn mini black\"><i class=\"icon-unlock\"></i>Bỏ Khóa</a></td>";
                }
                text += "</tr>";
            }
            tbodyStory.Text = text;

        }
    }
}