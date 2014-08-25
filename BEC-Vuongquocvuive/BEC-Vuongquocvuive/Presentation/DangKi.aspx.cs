using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangki_Click(object sender, EventArgs e)
        {
            UserBLL User = new UserBLL();
            //UserDTO obj = new UserDTO(txtAddress.Text,);
           //User.DangKi(obj);
        }

        
    }
}