using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.IO;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class change_ava : System.Web.UI.Page
    {
        AlbumBLL _album = new AlbumBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }
        private void loadData()
        {
            int id;
            if (Session["User_ID"] != null)
            { 
                id = int.Parse(Session["User_ID"].ToString());
                rptChangerAvt.DataSource = _album.GetDataByUser(id);
                rptChangerAvt.DataBind();
            }
        }

    }
}