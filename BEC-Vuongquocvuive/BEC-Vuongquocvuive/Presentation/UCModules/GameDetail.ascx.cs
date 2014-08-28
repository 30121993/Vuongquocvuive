using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class GameDetail : System.Web.UI.UserControl
    {
        GameBLL _game = new GameBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            id = int.Parse(Request.QueryString["id"].ToString());
            if (id != null)
            {
                _game.viewup(id);
                rptGameInfo2.DataSource = rptPath.DataSource = rptGameInfo.DataSource = _game.GetGameByID(id);
                rptGameInfo.DataBind();
                rptPath.DataBind();
                rptGameInfo2.DataBind();
            }
            else {
                //Response.Redirect("~/construction-page/Contruction.aspx");
            }
        }
    }
}