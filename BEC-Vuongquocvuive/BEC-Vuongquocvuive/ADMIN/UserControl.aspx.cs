using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using DTO;
namespace BEC_Vuongquocvuive.ADMIN
{
    public partial class UserControl : System.Web.UI.Page
    {
        clsDbaccess cls = new clsDbaccess();
        UserDTO userdto = new UserDTO();
        UserBLL userbll = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["mod"] != null)
                { 
                    string modtext;
                    modtext = Request.QueryString["mod"];
                    if (modtext == "lockaccount")
                    {
                        LockAccount(int.Parse(Request.QueryString["ID"].ToString()));
                    }
                    else if (modtext == "openaccount")
                    {
                        OpenAccount(int.Parse(Request.QueryString["ID"].ToString()));
                    }
                    else
                        Response.Write("Bạn vào đây làm gì vậy?");
                    Response.Redirect("Admin.aspx?ac=users");
                }
            }
        }
        private void LockAccount(int ID)
        {
            string text = "UPDATE Users SET User_Status = N'False' WHERE User_ID = '" + ID + "'";
            cls.capnhatdulieuSqltext(text);

        }

        private void OpenAccount(int ID)
        {
            string text = "UPDATE Users SET User_Status = N'True' WHERE User_ID = '" + ID + "'";
            cls.capnhatdulieuSqltext(text);
        }

        private void DeleteAccount(int ID)
        {
            
        }



        private void EditAccount(int ID)
        { 
        
        }
    }
}