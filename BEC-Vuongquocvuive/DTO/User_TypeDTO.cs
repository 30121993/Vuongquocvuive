using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class User_TypeDTO
    {
        public User_TypeDTO()
        {
        }
        private int _User_TypeID;
        private string _User_NameType;


        public int User_TypeID
        {
            get { return _User_TypeID; }
            set { _User_TypeID = value; }
        }
        public string User_NameType
        {
            get { return _User_NameType; }
            set { _User_NameType = value; }
        }
        public User_TypeDTO(int _User_TypeID, string _User_NameType)
        {
            this._User_TypeID = _User_TypeID;
            this._User_NameType = _User_NameType;
         }
    }
}
