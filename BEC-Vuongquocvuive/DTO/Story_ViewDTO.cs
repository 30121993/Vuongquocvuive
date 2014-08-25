using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class Story_ViewDTO
    {
        public Story_ViewDTO()
        {
        }
        private int _Story_ID;
        private int _User_ID;
        private int _View;
        private int _Like;
        private DateTime _View_Time;


        public int Story_ID
        {
            get { return _Story_ID; }
            set { _Story_ID = value; }
        }
        public int User_ID
        {
            get { return _User_ID; }
            set { _User_ID = value; }
        }
        public int View
        {
            get { return _View; }
            set { _View = value; }
        }
        public int Like
        {
            get { return _Like; }
            set { _Like = value; }
        }
        public DateTime View_Time
        {
            get { return _View_Time; }
            set { _View_Time = value; }
        }

        public Story_ViewDTO(int _Story_ID, int _User_ID, int _View, int _Like, DateTime _View_Time)
        {
            this._Story_ID = _Story_ID;
            this._User_ID = _User_ID;
            this._View = _View;
            this._Like = _Like;
            this._View_Time = _View_Time;
        }
        public Story_ViewDTO( int _User_ID, int _View, int _Like, DateTime _View_Time)
        {
            this._User_ID = _User_ID;
            this._View = _View;
            this._Like = _Like;
            this._View_Time = _View_Time;
        }
    }
}
