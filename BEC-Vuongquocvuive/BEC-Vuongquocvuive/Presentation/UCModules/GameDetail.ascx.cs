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
        UserBLL _user = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id,user_id=0;
            try
            {

                if (Session["User_ID"] != null)
                {
                    user_id = int.Parse(Session["User_ID"].ToString());
                    id = int.Parse(Request.QueryString["id"].ToString());
                    if (id != null)
                    {
                        DataTable dt1 = _game.GetGameByID(id);
                        DataTable dt2 = _user.getUserbyID(user_id);
                        int gold = int.Parse(dt2.Rows[0][18].ToString());
                        int price = int.Parse(dt1.Rows[0][9].ToString());
                        if (gold >= price)
                        {
                            _game.viewup(id);
                            _user.Subgold1(user_id, id);
                            rptGameInfo2.DataSource = rptPath.DataSource = rptGameInfo.DataSource = _game.GetGameByID(id);
                            rptGameInfo.DataBind();
                            rptPath.DataBind();
                            rptGameInfo2.DataBind();

                            Game_PlayerDTO obj = new Game_PlayerDTO();
                            obj.Game_ID = id;
                            obj.User_ID = user_id;
                            DataTable dt = new DataTable();
                            dt = _game_player.Kiemtratrung(obj);
                            if (dt.Rows.Count == 0)
                            {
                                _game_player.Insert(obj);
                            }
                            else { }
                        }
                        else {
                            Response.Write("<script language='javascript'> alert('Bạn không đủ vàng để chơi trò chơi này!');location.href='Games.aspx';</script>");
                        }
                    }
                }
                else {
                    Response.Write("<script language='javascript'> alert('Bạn chưa đăng nhập,vui lòng đăng nhập để chơi Games!');location.href='Games.aspx';</script>");
                }
            }
            catch (Exception)
            {

               Response.Redirect("404/Error.aspx");
            }
            
        }
    }
}