using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class Story_PageDTO
    {
        public Story_PageDTO()
        {
        }
        private int _Page_ID;
        private int _Story_ID;
        private string _Page_Path;
        private string _Page_Audio;


        public int Page_ID
        {
            get { return _Page_ID; }
            set { _Page_ID = value; }
        }
        public int Story_ID
        {
            get { return _Story_ID; }
            set { _Story_ID = value; }
        }
        public string Page_Path
        {
            get { return _Page_Path; }
            set { _Page_Path = value; }
        }
        public string Page_Audio
        {
            get { return _Page_Audio; }
            set { _Page_Audio = value; }
        }

        public Story_PageDTO(int _Page_ID, int _Story_ID, string _Page_Path, string _Page_Audio)
        {
            this._Page_ID = _Page_ID;
            this._Story_ID = _Story_ID;
            this._Page_Path = _Page_Path;
            this._Page_Audio = _Page_Audio;
        }
        public Story_PageDTO( int _Story_ID, string _Page_Path, string _Page_Audio)
        {
            this._Story_ID = _Story_ID;
            this._Page_Path = _Page_Path;
            this._Page_Audio = _Page_Audio;
        }
    }
}
