using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BLL;
using System.Data;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class Loadavt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserBLL user = new UserBLL();
            int User_ID = int.Parse(Session["User_ID"].ToString());
            string filename = "";
            if (Request.QueryString["change-avt"] != null)
            {
                filename = Request.QueryString["change-avt"].ToString();
                AlbumDTO obj = new AlbumDTO();
                UserDTO obj1 = new UserDTO();
                AlbumBLL _album = new AlbumBLL();
                obj1.User_ID = obj.User_ID = User_ID;
                obj1.User_Image = obj.FileName = filename;
                DataTable dt = _album.KiemTraAvt(obj);
                if (dt.Rows.Count > 0)
                {

                    user.Update_Avt(obj1);
                    Response.Redirect("Update_Info.aspx");
                    //Response.Redirect("~/Presentation/Update_Info.aspx");                    
                }
                else
                {
                    _album.ChangeAvt(obj);
                    Response.Redirect("Update_Info.aspx");
                    //Response.Redirect("Update_Info.aspx");  
                }

            }
            if (Request.QueryString["change-avt"] == null)
            {
                Response.Redirect("Update_Info.aspx");
            }
        }
    }
}