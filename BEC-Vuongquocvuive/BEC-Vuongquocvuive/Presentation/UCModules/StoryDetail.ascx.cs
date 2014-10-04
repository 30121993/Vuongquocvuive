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
        UserBLL _user = new UserBLL();
        int Story_ID, user_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
           // SoundTrack.DataBind();
        }
        private void loadData()
        {
            try
            {
                if (Session["User_ID"] != null)
                {
                    user_id = int.Parse(Session["User_ID"].ToString());
                    Story_ID = int.Parse(Request.QueryString["id"].ToString());
                    if (Story_ID != null)
                    {
                        DataTable dt1 = _story.GetStoryByID(Story_ID);
                        DataTable dt2 = _user.getUserbyID(user_id);
                        int gold = int.Parse(dt2.Rows[0][18].ToString());
                        int price = int.Parse(dt1.Rows[0][8].ToString());
                        if (gold >= price)
                        {
                            _story.viewup(Story_ID);
                            _user.Subgold(user_id, Story_ID);
                            rpReadStory.DataSource = _story_page.ReadStory(Story_ID);
                            rpReadStory.DataBind();
                            rptsound.DataSource=rptSoundTrack.DataSource = rptBia.DataSource = _story.GetStoryByID(Story_ID);
                            rptBia.DataBind();
                            rptSoundTrack.DataBind();
                            rptsound.DataBind();

                            //------------------------------------------------------------------------------------------------- 
                            Story_ViewDTO obj = new Story_ViewDTO();
                            obj.Story_ID = Story_ID;
                            obj.User_ID = user_id;
                            DataTable dt = new DataTable();
                            dt = _story_view.Kiemtratrung(obj);
                            if (dt.Rows.Count == 0)
                            {
                                _story_view.Insert(obj);
                            }
                        }
                        else
                        {
                            Response.Write("<script language='javascript'> alert('Bạn không đủ vàng để đọc truyện này!');location.href='Story.aspx';</script>");
                        }
                    }
                    else
                    {
                        //Response.Write("<script language='javascript'> alert('Truyện này cần vàng để đọc, Vui lòng đăng nhập để đọc truyện!!');location.href='Story.aspx';</script>");
                         Response.Write("<script language='javascript'>$(this).click(function () {$.ajax({ type: 'GET',url: 'Logout.aspx', dataType: 'html',success: function (data) {$('body').append(data);}});}); </script>");
                    }
                }
                if (Session["User_ID"] == null)
                {
                    Story_ID = int.Parse(Request.QueryString["id"].ToString());
                    if (Story_ID != null)
                    {
                        DataTable dt3 = _story.GetStoryByID(Story_ID);
                        int price = int.Parse(dt3.Rows[0][8].ToString());
                        if (price == 0)
                        {
                            _story.viewup(Story_ID);
                            rpReadStory.DataSource = _story_page.ReadStory(Story_ID);
                            rpReadStory.DataBind();
                            rptsound.DataSource = rptSoundTrack.DataSource = rptBia.DataSource = _story.GetStoryByID(Story_ID);
                            rptBia.DataBind();
                            rptSoundTrack.DataBind();
                            rptsound.DataBind();
                        }
                        else {
                            Response.Write("<script language='javascript'> alert('Truyện này cần vàng để đọc, Vui lòng đăng nhập để đọc truyện!');location.href='Story.aspx';</script>");
                        }
                    }
                }


            }
            catch (Exception)
            {

                Response.Redirect("404/Error.aspx");
            } 
        }
    }
}