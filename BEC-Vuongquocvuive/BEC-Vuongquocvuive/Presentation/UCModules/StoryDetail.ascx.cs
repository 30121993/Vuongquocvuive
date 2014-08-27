using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class StoryDetail : System.Web.UI.UserControl
    {
        StoryBLL _story = new StoryBLL();
        CatalogBLL _catalog = new CatalogBLL();
        Story_PageBLL _story_page = new Story_PageBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Story_ID;
            Story_ID = int.Parse(Request.QueryString["id"].ToString());
            if (Story_ID != null)
            {
                _story.viewup(Story_ID);
                rpReadStory.DataSource = _story_page.ReadStory(Story_ID);
                rpReadStory.DataBind();
                rptSoundTrack.DataSource = rptBia.DataSource = _story.GetStoryByID(Story_ID);
                rptBia.DataBind();
                rptSoundTrack.DataBind();
            }
            else { }

           // SoundTrack.DataBind();
        }
    }
}