using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class Game_PlayerDTO
    {
        private int _Gamer_ID;

        public int Gamer_ID
        {
            get { return _Gamer_ID; }
            set { _Gamer_ID = value; }
        }
        private int _Game_ID;

        public int Game_ID
        {
            get { return _Game_ID; }
            set { _Game_ID = value; }
        }
        private int _User_ID;

        public int User_ID
        {
            get { return _User_ID; }
            set { _User_ID = value; }
        }
        private int _Mark;

        public int Mark
        {
            get { return _Mark; }
            set { _Mark = value; }
        }
        private bool _Like;

        public bool Like
        {
            get { return _Like; }
            set { _Like = value; }
        }
        private string _View_Time;

        public string View_Time
        {
            get { return _View_Time; }
            set { _View_Time = value; }
        }
            
    }
}
