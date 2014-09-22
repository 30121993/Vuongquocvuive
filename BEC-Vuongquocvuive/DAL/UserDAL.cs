using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DTO;
namespace DAL
{
    public class UserDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public DataTable LoadUser()
        {
            return cls.getdata("Users_SelectAll");
        }
        public DataTable Dangnhap(string Username , string Password)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_UserName", Username));
            listparam.Add(new SqlParameter("User_PassWord", Password));
            return cls.truyvansqlcothamso("Users_DangNhap", listparam);
        }
        public Boolean DangKi(UserDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_FullName", obj.User_FullName));
            listparam.Add(new SqlParameter("User_Birthday", obj.User_Birthday));
            listparam.Add(new SqlParameter("User_Gender", obj.User_Gender));
            listparam.Add(new SqlParameter("User_UserName", obj.User_UserName));
            listparam.Add(new SqlParameter("User_PassWord", obj.User_PassWord));
            listparam.Add(new SqlParameter("User_Address", obj.User_Address));        
            listparam.Add(new SqlParameter("User_Email", obj.User_Email));
            listparam.Add(new SqlParameter("User_Phone", obj.User_Phone));
            return cls.capnhatdulieu("Users_Insert1", listparam);
        }
        public bool UpdateInfo(UserDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", obj.User_ID));
            listparam.Add(new SqlParameter("User_FullName", obj.User_FullName));
            listparam.Add(new SqlParameter("User_Birthday", obj.User_Birthday));
            listparam.Add(new SqlParameter("User_Gender", obj.User_Gender));
            listparam.Add(new SqlParameter("User_PassWord", obj.User_PassWord));
            listparam.Add(new SqlParameter("User_Address", obj.User_Address));
            listparam.Add(new SqlParameter("User_Xa", obj.User_Xa));
            listparam.Add(new SqlParameter("User_Phuong", obj.User_Phuong));
            listparam.Add(new SqlParameter("User_ThanhPho", obj.User_ThanhPho));
            listparam.Add(new SqlParameter("User_Truong", obj.User_Truong));
            listparam.Add(new SqlParameter("User_Lop", obj.User_Lop));
            listparam.Add(new SqlParameter("User_Email", obj.User_Email));
            listparam.Add(new SqlParameter("User_Phone", obj.User_Phone));
            return cls.capnhatdulieu("Users_UpdateInfo", listparam);
        }

        public DataTable getUserbyID(int User_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", User_ID));
            return cls.truyvansqlcothamso("Users_SelectByID", listparam);
        }
        public bool UpdateGold(int ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", ID));
            return cls.capnhatdulieu("Users_UpdateGold", listparam);
        }
        public bool Subgold(int user_id, int Story_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", user_id));
            listparam.Add(new SqlParameter("Story_ID", Story_ID));
            return cls.capnhatdulieu("Users_SubGold", listparam);
        }


        public bool Subgold1(int user_id, int Game_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", user_id));
            listparam.Add(new SqlParameter("Game_ID", Game_ID));
            return cls.capnhatdulieu("Users_SubGoldGames", listparam);
        }
        public bool Addgold(int user_id, int Game_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", user_id));
            listparam.Add(new SqlParameter("Game_ID", Game_ID));
            return cls.capnhatdulieu("Users_AddGold", listparam);
        }
        public bool Addgold1(int user_id, int Game_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", user_id));
            listparam.Add(new SqlParameter("Game_ID", Game_ID));
            return cls.capnhatdulieu("Users_AddGold1", listparam);
        }

        public DataTable kiemtraUser_name(string user_name)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_UserName", user_name));
            return cls.truyvansqlcothamso("Users_KiemtraUser_Name", listparam);
        }
        public bool UpdateLast_Login(int ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", ID));
            return cls.capnhatdulieu("Users_UpdateLastLogin", listparam);
        }
        
    }
}
