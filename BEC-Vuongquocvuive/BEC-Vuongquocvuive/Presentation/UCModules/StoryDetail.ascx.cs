using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;
using System.Data;
namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class StoryDetail : System.Web.UI.UserControl
    {
        StoryBLL _story = new StoryBLL();
        CatalogBLL _catalog = new CatalogBLL();
        Story_PageBLL _story_page = new Story_PageBLL();
        Story_ViewBLL _story_view = new Story_ViewBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int Story_ID, user_id;
                Story_ID = int.Parse(Request.QueryString["id"].ToString());
                if (Story_ID != null)
                {
                    _story.viewup(Story_ID);
                    rpReadStory.DataSource = _story_page.ReadStory(Story_ID);
                    rpReadStory.DataBind();
                    rptSoundTrack.DataSource = rptBia.DataSource = _story.GetStoryByID(Story_ID);
                    rptBia.DataBind();
                    rptSoundTrack.DataBind();
                    if (Session["User_ID"] != null)
                    {
                        Story_ViewDTO obj = new Story_ViewDTO();
                        obj.Story_ID = Story_ID;
                        user_id = int.Parse(Session["User_ID"].ToString());
                        obj.User_ID = user_id;
                        DataTable dt = new DataTable();
                        dt = _story_view.Kiemtratrung(obj);
                        if (dt.Rows.Count == 0)
                        {
                            _story_view.Insert(obj);
                        }
                        else { }
                    }
                }
                else { }
            }
            catch (Exception)
            {

                Response.Redirect("404/Error.aspx");
            }
            

           // SoundTrack.DataBind();
        }
    }
}