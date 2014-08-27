using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class GameDTO
    {
        private int _Game_ID;
        private int _Catalog_ID;

        public int Catalog_ID
        {
            get { return _Catalog_ID; }
            set { _Catalog_ID = value; }
        }
        private string _Game_Name;

        public string Game_Name
        {
            get { return _Game_Name; }
            set { _Game_Name = value; }
        }
        private string _Game_Catalog;

        public string Game_Catalog
        {
            get { return _Game_Catalog; }
            set { _Game_Catalog = value; }
        }
        private string _Game_Path;

        public string Game_Path
        {
            get { return _Game_Path; }
            set { _Game_Path = value; }
        }
        private string _Game_Status;

        public string Game_Status
        {
            get { return _Game_Status; }
            set { _Game_Status = value; }
        }
        private DateTime _Game_TimeUp;

        public DateTime Game_TimeUp
        {
            get { return _Game_TimeUp; }
            set { _Game_TimeUp = value; }
        }
        private int _Game_UserCreater;

        public int Game_UserCreater
        {
            get { return _Game_UserCreater; }
            set { _Game_UserCreater = value; }
        }
        private int _Game_Price;

        public int Game_Price
        {
            get { return _Game_Price; }
            set { _Game_Price = value; }
        }
        private int _Game_TotalView;

        public int Game_TotalView
        {
            get { return _Game_TotalView; }
            set { _Game_TotalView = value; }
        }
        private Boolean _Game_State;

        public Boolean Game_State
        {
            get { return _Game_State; }
            set { _Game_State = value; }
        }
        private Boolean _Game_StatePrice;

        public Boolean Game_StatePrice
        {
            get { return _Game_StatePrice; }
            set { _Game_StatePrice = value; }
        }
        private DateTime _Game_LastEdit;

        public DateTime Game_LastEdit
        {
            get { return _Game_LastEdit; }
            set { _Game_LastEdit = value; }
        }


         public int Game_ID
         {
             get { return _Game_ID; }
             set { _Game_ID = value; }
         }

         public GameDTO(int _Game_ID, int _Catalog_ID, string _Game_Name, string _Game_Catalog, string _Game_Path, string _Game_Status, DateTime _Game_TimeUp, int _Game_UserCreater, int _Game_Price, int _Game_TotalView, Boolean _Game_State, Boolean _Game_StatePrice, DateTime _Game_LastEdit)
         {
            this._Game_ID = _Game_ID;
            this._Catalog_ID = _Catalog_ID;
            this._Game_Name = _Game_Name;
            this._Game_Catalog = _Game_Catalog;
            this._Game_Path = _Game_Path;
            this._Game_Status = _Game_Status;
            this._Game_TimeUp = _Game_TimeUp;
            this._Game_UserCreater = _Game_UserCreater;
            this._Game_Price = _Game_Price;
            this._Game_TotalView = _Game_TotalView;
            this._Game_State = _Game_State;
            this._Game_StatePrice = _Game_StatePrice;
            this._Game_LastEdit = _Game_LastEdit;
          }
         public GameDTO(int _Catalog_ID, string _Game_Name, string _Game_Catalog, string _Game_Path, string _Game_Status, DateTime _Game_TimeUp, int _Game_UserCreater, int _Game_Price, int _Game_TotalView, Boolean _Game_State, Boolean _Game_StatePrice, DateTime _Game_LastEdit)
         {
             this._Catalog_ID = _Catalog_ID;
             this._Game_Name = _Game_Name;
             this._Game_Catalog = _Game_Catalog;
             this._Game_Path = _Game_Path;
             this._Game_Status = _Game_Status;
             this._Game_TimeUp = _Game_TimeUp;
             this._Game_UserCreater = _Game_UserCreater;
             this._Game_Price = _Game_Price;
             this._Game_TotalView = _Game_TotalView;
             this._Game_State = _Game_State;
             this._Game_StatePrice = _Game_StatePrice;
             this._Game_LastEdit = _Game_LastEdit;
         }
    }
}
