using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BLL
{
    
    public class GameBLL
    {
        GameDAL _game = new GameDAL();
        public DataTable LoadGameNew()
        {
            return _game.LoadGameNew();
        }
        public DataTable LoadGameHot()
        {
            return _game.LoadGameHot();
        }
    }
}
