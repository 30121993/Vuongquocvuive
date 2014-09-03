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
            listparam.Add(new SqlParameter("User_TypeID",3));
            listparam.Add(new SqlParameter("User_RankID", 1));
            listparam.Add(new SqlParameter("User_FullName", obj.User_FullName));
            listparam.Add(new SqlParameter("User_Birthday", obj.User_Birthday));
            listparam.Add(new SqlParameter("User_Gender", obj.User_Gender));
            listparam.Add(new SqlParameter("User_UserName", obj.User_UserName));
            listparam.Add(new SqlParameter("User_PassWord", obj.User_PassWord));
            listparam.Add(new SqlParameter("User_Address", obj.User_Address));
            listparam.Add(new SqlParameter("User_Xa", obj.User_Xa));
            listparam.Add(new SqlParameter("User_Phuong", obj.User_Phuong));
            listparam.Add(new SqlParameter("User_ThanhPho", obj.User_ThanhPho));
            listparam.Add(new SqlParameter("User_Truong", obj.User_Truong));
            listparam.Add(new SqlParameter("User_Lop", obj.User_Lop));
            listparam.Add(new SqlParameter("User_Email", obj.User_Email));
            listparam.Add(new SqlParameter("User_Phone", obj.User_Phone));
            listparam.Add(new SqlParameter("User_Image", obj.User_Image));
            listparam.Add(new SqlParameter("User_RegisterTime", DateTime.Now.ToString()));
            listparam.Add(new SqlParameter("User_Gold", 1000));
            listparam.Add(new SqlParameter("User_Money", 0));
            listparam.Add(new SqlParameter("User_Gift", 0));
            listparam.Add(new SqlParameter("User_Status,", obj.User_Status));
            listparam.Add(new SqlParameter("User_Active", obj.User_Active));
            listparam.Add(new SqlParameter("User_LastEdit", DateTime.Now.ToString()));
            return cls.capnhatdulieu("Users_Insert", listparam);
        }

        public DataTable getUserbyID(int User_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", User_ID));
            return cls.truyvansqlcothamso("Users_SelectByID", listparam);
        }
        
    }
}
