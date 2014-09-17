using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEC_Vuongquocvuive
{
    public partial class Score : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string score = Request.Params.Get("gscore").ToString();
            a.Text = score.ToString();
            Response.Redirect("Games.aspx");
        }
    }
}