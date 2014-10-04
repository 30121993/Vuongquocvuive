using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;
using DAL;
using System.Data;

namespace BEC_Vuongquocvuive
{
    public partial class Score : System.Web.UI.Page
    {
        Game_PlayerBLL _game_player = new Game_PlayerBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }
        private void loadData()
        {
            int id_game = int.Parse(Session["ID_GAME"].ToString());
            try
            {
                int id_user = int.Parse(Session["User_ID"].ToString());
                string score = Request.Params.Get("gscore").ToString();

                if (score != null)
                {
                    Game_PlayerDTO obj = new Game_PlayerDTO();
                    GameDAL _game = new GameDAL();
                    DataTable dt = new DataTable();
                    dt = _game.GetGameByID(id_game);
                    int mark = int.Parse(dt.Rows[0][6].ToString());
                    int score1 = int.Parse(score.ToString());
                    if (score1 >= mark)
                    {
                        UserBLL _user = new UserBLL();
                        _user.Addgold(id_user, id_game);
                    }
                    else
                    {
                        UserBLL _user = new UserBLL();
                        _user.Addgold1(id_user, id_game);
                    }
                    obj.Mark = int.Parse(score.ToString());
                    obj.Game_ID = id_game;
                    obj.User_ID = id_user;
                    _game_player.CapnhatDiem(obj);
                    Response.Redirect("~/Presentation/Games.aspx?mod=GameDetail&id=" + id_game);
                }
            }
            catch (Exception)
            {

                Response.Write("<script language='javascript'> alert('Bạn chưa đăng nhập,vui lòng đăng nhập để lưu điểm game');</script>");
                Response.Redirect("~/Presentation/Games.aspx?mod=GameDetail&id=" + id_game);
            }
            
            //}
            //else {
            //    
            //}

        }
    }
}