using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class UserDTO
    {
        public UserDTO()
        {
        }
        private int _User_ID;
        private int _User_TypeID;
        private int _User_RankID;
        private string _User_FullName;
        private string _User_Birthday;
        private int _User_Gender;
        private string _User_UserName;
        private string _User_PassWord;
        private string _User_Address;

        private string _User_Xa;

        public string User_Xa
        {
            get { return _User_Xa; }
            set { _User_Xa = value; }
        }
        private string _User_Phuong;

        public string User_Phuong
        {
            get { return _User_Phuong; }
            set { _User_Phuong = value; }
        }
        private string _User_ThanhPho;

        public string User_ThanhPho
        {
            get { return _User_ThanhPho; }
            set { _User_ThanhPho = value; }
        }
        private string _User_Truong;

        public string User_Truong
        {
            get { return _User_Truong; }
            set { _User_Truong = value; }
        }
        private string _User_Lop;

        public string User_Lop
        {
            get { return _User_Lop; }
            set { _User_Lop = value; }
        }

        private string _User_Email;
        private string _User_Phone;
        private string _User_Image;
        private string _User_RegisterTime;
        private int _User_Gold;
        private int _User_Money;
        private string _User_Gift;
        private string _User_RankName;
        private string _User_NameType;

        public string User_NameType
        {
            get { return _User_NameType; }
            set { _User_NameType = value; }
        }

        public string User_RankName
        {
            get { return _User_RankName; }
            set { _User_RankName = value; }
        }

        public int User_ID
        {
            get { return _User_ID; }
            set { _User_ID = value; }
        }
        public int User_TypeID
        {
            get { return _User_TypeID; }
            set { _User_TypeID = value; }
        }
        public int User_RankID
        {
            get { return _User_RankID; }
            set { _User_RankID = value; }
        }

        public string User_FullName
        {
            get { return _User_FullName; }
            set { _User_FullName = value; }
        }
        public string User_Birthday
        {
            get { return _User_Birthday; }
            set { _User_Birthday = value; }
        }
        public int User_Gender
        {
            get { return _User_Gender; }
            set { _User_Gender = value; }
        }
        public string User_UserName
        {
            get { return _User_UserName; }
            set { _User_UserName = value; }
        }
        public string User_PassWord
        {
            get { return _User_PassWord; }
            set { _User_PassWord = value; }
        }
        public string User_Address
        {
            get { return _User_Address; }
            set { _User_Address = value; }
        }
        public string User_Email
        {
            get { return _User_Email; }
            set { _User_Email = value; }
        }
        public string User_Phone
        {
            get { return _User_Phone; }
            set { _User_Phone = value; }
        }
        public string User_Image
        {
            get { return _User_Image; }
            set { _User_Image = value; }
        }
        public string User_RegisterTime
        {
            get { return _User_RegisterTime; }
            set { _User_RegisterTime = value; }
        }
        public int User_Gold
        {
            get { return _User_Gold; }
            set { _User_Gold = value; }
        }
        public int User_Money
        {
            get { return _User_Money; }
            set { _User_Money = value; }
        }
        public string User_Gift
        {
            get { return _User_Gift; }
            set { _User_Gift = value; }
        }

        private string _User_LastEdit;

        public string User_LastEdit
        {
            get { return _User_LastEdit; }
            set { _User_LastEdit = value; }
        }
        private bool _User_Status;

        public bool User_Status
        {
            get { return _User_Status; }
            set { _User_Status = value; }
        }
        private string _User_Active;

        public string User_Active
        {
            get { return _User_Active; }
            set { _User_Active = value; }
        }


        public UserDTO(int _User_ID, int _User_TypeID, int _User_RankID, string _User_Name, string _User_Birthday, int _User_Gender, string _User_UserName, string _User_PassWord, string _User_Address, string _User_Xa, string _User_Phuong, string _User_ThanhPho, string _User_Truong, string _User_Lop, string _User_Email, string _User_Phone, string _User_Image, string _User_RegisterTime, int _User_Gold, int _User_Money, string _User_Gift, string _User_Active, Boolean _User_Status, string _User_LastEdit)
        {
            this._User_ID = _User_ID;
            this._User_TypeID = _User_TypeID;
            this._User_RankID = _User_RankID;
            this._User_FullName = _User_Name;
            this._User_Birthday = _User_Birthday;
            this._User_Gender = _User_Gender;
            this._User_UserName = _User_UserName;
            this._User_PassWord = _User_PassWord;
            this._User_Address = _User_Address;
            this._User_Xa = _User_Xa;
            this._User_Phuong = _User_Phuong;
            this._User_ThanhPho = _User_ThanhPho;
            this._User_Truong = _User_Truong;
            this._User_Lop = _User_Lop;
            this._User_Email = _User_Email;
            this._User_Phone = _User_Phone;
            this._User_Image = _User_Image;
            this._User_RegisterTime = _User_RegisterTime;
            this._User_Gold = _User_Gold;
            this._User_Money = _User_Money;
            this._User_Gift = _User_Gift;
            this._User_Active = _User_Active;
            this._User_Status = _User_Status;
            this._User_LastEdit = _User_LastEdit;
        }
        public UserDTO(int _User_TypeID, int _User_RankID, string _User_Name, string _User_Birthday, int _User_Gender, string _User_UserName, string _User_PassWord, string _User_Address, string _User_Xa, string _User_Phuong, string _User_ThanhPho, string _User_Truong, string _User_Lop, string _User_Email, string _User_Phone, string _User_Image, string _User_RegisterTime, int _User_Gold, int _User_Money, string _User_Gift, string _User_Active, Boolean _User_Status, string _User_LastEdit)
       {
            this._User_TypeID = _User_TypeID;
            this._User_RankID = _User_RankID;
            this._User_FullName = _User_Name;
            this._User_Birthday = _User_Birthday;
            this._User_Gender = _User_Gender;
            this._User_UserName = _User_UserName;
            this._User_PassWord = _User_PassWord;
            this._User_Address = _User_Address;
            this._User_Xa = _User_Xa;
            this._User_Phuong = _User_Phuong;
            this._User_ThanhPho = _User_ThanhPho;
            this._User_Truong = _User_Truong;
            this._User_Lop = _User_Lop;
            this._User_Email = _User_Email;
            this._User_Phone = _User_Phone;
            this._User_Image = _User_Image;
            this._User_RegisterTime = _User_RegisterTime;
            this._User_Gold = _User_Gold;
            this._User_Money = _User_Money;
            this._User_Gift = _User_Gift;
            this._User_Active = _User_Active;
            this._User_Status = _User_Status;
            this._User_LastEdit = _User_LastEdit;
        }
    }
}
