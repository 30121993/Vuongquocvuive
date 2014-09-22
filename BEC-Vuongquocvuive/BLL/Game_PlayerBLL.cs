using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class Game_PlayerBLL
    {
        Game_PlayerDAL _Game_Player = new Game_PlayerDAL();
        public Boolean Insert(Game_PlayerDTO obj)
        {
            return _Game_Player.Insert(obj);
        }
        public DataTable Kiemtratrung(Game_PlayerDTO obj)
        {
            return _Game_Player.Kiemtratrung(obj);
        }

        public Boolean CapnhatDiem(Game_PlayerDTO obj)
        {
            return _Game_Player.CapnhatDiem(obj);
        }

        public DataTable HighScore(int id_game)
        {
            return _Game_Player.HighScore(id_game);
        }
    }
}
