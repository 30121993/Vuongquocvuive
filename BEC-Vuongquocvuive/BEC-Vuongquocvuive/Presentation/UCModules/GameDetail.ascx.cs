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
    public partial class GameDetail : System.Web.UI.UserControl
    {
        GameBLL _game = new GameBLL();
        Game_PlayerBLL _game_player = new Game_PlayerBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id,user_id=0;
            try
            {
                id = int.Parse(Request.QueryString["id"].ToString());
                if (id != null)
                {
                    
                    _game.viewup(id);
                    rptGameInfo2.DataSource = rptPath.DataSource = rptGameInfo.DataSource = _game.GetGameByID(id);
                    rptGameInfo.DataBind();
                    rptPath.DataBind();
                    rptGameInfo2.DataBind();

                    if (Session["User_ID"] != null)
                    {
                        Game_PlayerDTO obj = new Game_PlayerDTO();
                        obj.Game_ID = id;
                        user_id = int.Parse(Session["User_ID"].ToString());
                        obj.User_ID = user_id;
                        DataTable dt = new DataTable();
                        dt = _game_player.Kiemtratrung(obj);
                        if (dt.Rows.Count == 0)
                        {
                            _game_player.Insert(obj);
                        }
                        else { }
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