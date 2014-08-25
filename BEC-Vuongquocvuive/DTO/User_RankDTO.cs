using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class User_RankDTO
    {
        public User_RankDTO()
        {
        }
        private int _User_RankID;
        private string _User_RankName;


        public int User_RankID
        {
            get { return _User_RankID; }
            set { _User_RankID = value; }
        }
        public string User_RankName
        {
            get { return _User_RankName; }
            set { _User_RankName = value; }
        }
        public User_RankDTO(int _User_RankID, string _User_RankName)
        {
            this._User_RankID = _User_RankID;
            this._User_RankName = _User_RankName;
        }
    }
}
