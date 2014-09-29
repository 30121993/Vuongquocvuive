using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class Update_Info : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                UpdateInfo.SetActiveView(Step1);
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step2);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step3);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step2);
        }

        protected void btnchange_Click(object sender, EventArgs e)
        {

        }
    }
}