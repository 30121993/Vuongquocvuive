using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class Game_PlayerDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public Boolean Insert(Game_PlayerDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("@Game_ID", obj.Game_ID));
            listparam.Add(new SqlParameter("@User_ID", obj.User_ID));
            return cls.capnhatdulieu("Game_Player_Insert", listparam);
        }
        public DataTable Kiemtratrung(Game_PlayerDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("@Game_ID", obj.Game_ID));
            listparam.Add(new SqlParameter("@User_ID", obj.User_ID));
            return cls.truyvansqlcothamso("Game_Player_Kiemtratrung", listparam);
        }
    }
}
