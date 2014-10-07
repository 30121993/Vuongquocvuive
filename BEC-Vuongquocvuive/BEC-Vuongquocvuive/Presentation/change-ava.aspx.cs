using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.IO;
using DTO;
using System.Data;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class change_ava : System.Web.UI.Page
    {
        AlbumBLL _album = new AlbumBLL();
        UserBLL user = new UserBLL();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                loadData();
            }
            else { Upload_Avt(); }
            
        }
        private void loadData()
        {
            
            if (Session["User_ID"] != null)
            { 
                id = int.Parse(Session["User_ID"].ToString());
                rptChangerAvt.DataSource = _album.GetDataByUser(id);
                rptChangerAvt.DataBind();
            }
        }
        private void Upload_Avt()
        {

            string savePath = Server.MapPath(@"~/Presentation/images");
            string fileName = fuFile.FileName;
            if (fuFile.HasFile)
            {
                savePath = savePath + @"\" + fileName;
                int fileSize = fuFile.PostedFile.ContentLength;
                string exten = Path.GetExtension(fileName);
                lblMsg.Text = exten;
                if ((!exten.ToLower().Equals(".jpg")) && (!exten.ToLower().Equals(".png")))
                {
                    //lblMsg.Text = "Loại file không hợp lệ";
                    //Response.Write("<script language='javascript'> alert('Loại file không hợp lệ!');location.href='Update_Info.aspx';</script>");
                    Response.Redirect("Loadavt.aspx?change-avt=''");
                    return;
                }
                if (fileSize < 5100000)
                {
                    fuFile.SaveAs(savePath);
                    AlbumDTO obj = new AlbumDTO();
                    UserDTO obj1 = new UserDTO();
                    AlbumBLL _album = new AlbumBLL();
                    obj1.User_ID = obj.User_ID = id;
                    obj1.User_Image = obj.FileName = fileName;
                    DataTable dt = _album.KiemTraAvt(obj);
                    if (dt.Rows.Count > 0)
                    {

                        user.Update_Avt(obj1);
                        Response.Redirect("Loadavt.aspx?change-avt=" + fileName);
                        //Response.Redirect("~/Presentation/Update_Info.aspx");                    
                    }
                    else
                    {
                        _album.ChangeAvt(obj);
                        Response.Redirect("Loadavt.aspx?change-avt="+fileName);
                        //Response.Redirect("Update_Info.aspx");  
                    }
                }
                else
                {
                    lblMsg.Text = "File Quá lớn!";
                    return;
                }

            }
            else
            {
                Response.Write("<script language='javascript'> alert('Lỗi khi cập nhật ảnh!');location.href='Update_Info.aspx';</script>");
            }
    }



    }
}