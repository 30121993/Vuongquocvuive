﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DTO;
using System.Data;
using System.Security.Cryptography;
namespace BLL
{
    public class UserBLL
    {
        UserDAL _User = new UserDAL();
        public DataTable LoadUser()
        {
            return _User.LoadUser();

        }
        public DataTable Dangnhap(string Username, string Password)
        {
            return _User.Dangnhap(Username, Password);
        }
        public Boolean DangKi(UserDTO obj)
        {
            return _User.DangKi(obj);
        }
        public DataTable getUserbyID(int User_ID)
        {
            return _User.getUserbyID(User_ID);
        }
        public string GetMD5(string str)
        {

            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();

            byte[] bHash = md5.ComputeHash(Encoding.UTF8.GetBytes(str));

            StringBuilder sbHash = new StringBuilder();

            foreach (byte b in bHash)
            {

                sbHash.Append(String.Format("{0:x2}", b));
            }
            return sbHash.ToString();
        }
        public bool UpdateGold(int ID)
        {
            return _User.UpdateGold(ID);
        }

        public bool Subgold(int user_id, int Story_ID)
        {
            return _User.Subgold(user_id,Story_ID);
        }
        public bool Subgold1(int user_id, int Game_ID)
        {
            return _User.Subgold1(user_id, Game_ID); 
        }

        public bool Addgold(int user_id, int Game_ID)
        {
            return _User.Addgold(user_id,Game_ID);
        }
        public bool Addgold1(int user_id, int Game_ID)
        {
            return _User.Addgold1(user_id, Game_ID);
        }

        public DataTable kiemtraUser_name(string user_name)
        {
            return _User.kiemtraUser_name(user_name);
        }
        public bool UpdateLast_Login(int ID)
        {
            return _User.UpdateLast_Login(ID);
        }
        public bool UpdateInfo(UserDTO obj)
        {
            return _User.UpdateInfo(obj);
        }

        public DataTable kiemtraEmail(string email)
        {
            return _User.kiemtraEmail(email);
        }

        public bool Update_Avt(UserDTO obj)
        {
            return _User.Update_Avt(obj);
        }
        public DataTable kiemtraEmailbyUser(string username, string email)
        {
            return _User.kiemtraEmailbyUser(username, email);
        }
        public DataTable kiemtraMK(int ID, string pass)
        {
            return _User.kiemtraMK(ID, pass);
        }
        public bool Change_pass(int ID, string passnew)
        {
            return _User.Change_pass(ID, passnew);
        }
        public bool Change_passByUserNameAndEmail(string username, string email, string passnew)
        {
            return _User.Change_passByUserNameAndEmail(username, email, passnew);
        }

    }


}
