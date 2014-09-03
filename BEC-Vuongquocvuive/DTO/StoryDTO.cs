using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class StoryDTO
    {
        public StoryDTO()
        {
        }
        private int _Story_ID;
        private int _Catalog_ID;
        private string _Story_Name;
        private string _Story_Catalog;
        private string _Story_SoundTrack;

        
        private string _Story_Status;
        private DateTime _Story_TimeUp;
        private int _Story_Creater;
        private int _Story_Price;
        private int _Story_TotalView;
        private bool _Story_State;

        public bool Story_State
        {
            get { return _Story_State; }
            set { _Story_State = value; }
        }

        private int _Story_StatePrice;

        public int Story_StatePrice
        {
            get { return _Story_StatePrice; }
            set { _Story_StatePrice = value; }
        }
        private string _Story_LastEdit;

        public string Story_LastEdit
        {
            get { return _Story_LastEdit; }
            set { _Story_LastEdit = value; }
        }
        public int Story_ID
        {
            get { return _Story_ID; }
            set { _Story_ID = value; }
        }
        public int Catalog_ID
        {
            get { return _Catalog_ID; }
            set { _Catalog_ID = value; }
        }
        public string Story_Name
        {
            get { return _Story_Name; }
            set { _Story_Name = value; }
        }
        public string Story_Catalog
        {
            get { return _Story_Catalog; }
            set { _Story_Catalog = value; }
        }
        public string Story_Status
        {
            get { return _Story_Status; }
            set { _Story_Status = value; }
        }
        public DateTime Story_TimeUp
        {
            get { return _Story_TimeUp; }
            set { _Story_TimeUp = value; }
        }
        public int Story_Creater
        {
            get { return _Story_Creater; }
            set { _Story_Creater = value; }
        }
        public int Story_Price
        {
            get { return _Story_Price; }
            set { _Story_Price = value; }
        }
        public int Story_TotalView
        {
            get { return _Story_TotalView; }
            set { _Story_TotalView = value; }
        }
        
        public string Story_SoundTrack
        {
            get { return _Story_SoundTrack; }
            set { _Story_SoundTrack = value; }
        }
        public StoryDTO(int _Story_ID, int _Catalog_ID, string _Story_Name, string _Story_Catalog, string _Story_SoundTrack, string _Story_Status, DateTime _Story_TimeUp, int _Story_Creater, int _Story_Price, int _Story_TotalView, bool  _Story_State)
        {
            this._Story_ID = _Story_ID;
            this._Catalog_ID = _Catalog_ID;
            this._Story_Name = _Story_Name;
            this._Story_Catalog = _Story_Catalog;
            this._Story_SoundTrack = _Story_SoundTrack;
            this._Story_Status = _Story_Status;
            this._Story_TimeUp = _Story_TimeUp;
            this._Story_Creater = _Story_Creater;
            this._Story_Price = _Story_Price;
            this._Story_TotalView = _Story_TotalView;
            this._Story_State = _Story_State;
        }
        public StoryDTO(int _Catalog_ID, string _Story_Name, string _Story_Catalog, string _Story_SoundTrack, string _Story_Status, DateTime _Story_TimeUp, int _Story_Creater, int _Story_Price, int _Story_TotalView, bool _Story_State)
        {
            this._Catalog_ID = _Catalog_ID;
            this._Story_Name = _Story_Name;
            this._Story_Catalog = _Story_Catalog;
            this._Story_SoundTrack = _Story_SoundTrack;
            this._Story_Status = _Story_Status;
            this._Story_TimeUp = _Story_TimeUp;
            this._Story_Creater = _Story_Creater;
            this._Story_Price = _Story_Price;
            this._Story_TotalView = _Story_TotalView;
            this._Story_State = _Story_State;
        }
    }
}
