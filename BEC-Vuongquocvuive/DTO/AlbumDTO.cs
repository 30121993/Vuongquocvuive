using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class AlbumDTO
    {
        private int _User_ID;

        public int User_ID
        {
            get { return _User_ID; }
            set { _User_ID = value; }
        }
        private string _FileName;

        public string FileName
        {
            get { return _FileName; }
            set { _FileName = value; }
        }
    }
}
