using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class ListGames : System.Web.UI.UserControl
    {
        GameBLL _game = new GameBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["str"]!=null)
            {
                rptListGames.DataSource = _game.LoadGameNew();
                rptListGames.DataBind();
            }
            else
            {
                rptListGames.DataSource = _game.LoadGameHot();
                rptListGames.DataBind();
            }
        }
    }
}