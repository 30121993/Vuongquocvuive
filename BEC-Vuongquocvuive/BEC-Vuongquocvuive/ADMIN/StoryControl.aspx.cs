using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using DAL;
using BLL;
using DTO;
namespace BEC_Vuongquocvuive.ADMIN
{
    public partial class StoryControl : System.Web.UI.Page
    {
        clsDbaccess cls = new clsDbaccess();
        StoryBLL storybll = new StoryBLL();
        StoryDTO storydto = new StoryDTO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User_IDAdmin"] == null)
                    Response.Redirect("Login.aspx?err=null");
                else
                {
                    if (Request.QueryString["mod"] != null)
                    {
                        string text = Request.QueryString["mod"];
                        if (text == "lockstory")
                        {
                            LockStory(int.Parse(Request.QueryString["id"].ToString()));
                        }
                        else if(text =="openstory")
                        {
                            OpenStory(int.Parse(Request.QueryString["id"].ToString()));
                        }
                        else if (text == "deletestory")
                        {
                            DeleteStory(int.Parse(Request.QueryString["id"].ToString()));
                        }
                        else if (text == "addnewstory")
                        {
                            AddNewStory();
                        }
                    }
                    Response.Redirect("Admin.aspx?ac=story");
                }
            }
        }
        private void LockStory(int ID)
        {
            string q = "UPDATE Story SET Story_State = N'False',Story_LastEdit = '" + DateTime.Now + "' WHERE Story_ID = '" + ID + "'";
            cls.capnhatdulieuSqltext(q);
        }

        private void OpenStory(int ID)
        {
            string q = "UPDATE Story SET Story_State = N'True',Story_LastEdit = '" + DateTime.Now + "' WHERE Story_ID = '" + ID + "'";
            cls.capnhatdulieuSqltext(q);
        }

        private void DeleteStory(int ID)
        {
            storybll.DeleteStory(ID);
        }
        private void AddNewStory()
        {
            if (Request.Form["submit"] != null && Request.Form["submit"] == "Tạo")
            {
                storydto.Story_Name = Request.Form["storyname"].ToString().Trim();
                storydto.Story_Creater = int.Parse(Session["User_IDAdmin"].ToString().Trim());
                storydto.Story_Price = int.Parse(Request.Form["storyprice"].ToString().Trim());
                storydto.Catalog_ID = int.Parse(Request.Form["storycategory"].ToString().Trim());
                storydto.Story_LastEdit = DateTime.Now.ToString("YYYY-mm-DD");
                //storydto.Story_SoundTrack = UploadMultifile("soundtrack", "soundtrack");
                
            }
        }
        //----------------------------------------------------------------
        //public string UploadMultifile(string text, string name)
        //{
        //    HttpFileCollection fileCollection = Request.Files[name.ToString()];
        //    string fileName = "";
        //    for (int i = 0; i < fileCollection.Count; i++)
        //    {
        //        HttpPostedFile uploadfile = fileCollection[i];
        //       fileName = Path.GetFileName(uploadfile.FileName);
        //        if (uploadfile.ContentLength > 0)
        //        {
        //            uploadfile.SaveAs(Server.MapPath("~data/"+text) + fileName);
                   
        //        }
        //    }
        //    return fileName;
        //}
    }
}