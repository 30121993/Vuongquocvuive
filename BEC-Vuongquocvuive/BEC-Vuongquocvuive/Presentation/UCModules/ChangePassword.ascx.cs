using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using DTO;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class Changer_info_User : System.Web.UI.UserControl
    {
        UserBLL _user = new UserBLL();
        public int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }

        private void loadData()
        {
            if (Session["User_ID"] != null)
            {
                ID = int.Parse(Session["User_ID"].ToString());
                DataTable user_info = _user.getUserbyID(ID);
                txtUserName.Text = user_info.Rows[0]["User_UserName"].ToString();
            }
            else
            {
                Response.Redirect("~/Presentation/login2.aspx");
            }
        }

        protected void btnchange_Click(object sender, EventArgs e)
        {
            try
            {
                ID = int.Parse(Session["User_ID"].ToString());
                if (txtPassword.Text != null)
                {
                    DataTable dtcheckMK = _user.kiemtraMK(ID, MD5(mahoa(txtPassword.Text)));
                    if (dtcheckMK.Rows.Count > 0)
                    {
                        _user.Change_pass(ID, MD5(mahoa(txtPasswordnew.Text.Trim())));
                        lblLoiPass.Text = "";
                        lblMsg.Text = "Thay Đổi Mật Khẩu Thành Công!";
                    }
                    else
                    {
                        lblLoiPass.Text = "Mật Khẩu Cũ Sai!";
                    }
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Presentation/404/Error.aspx");
            }

        }


        private string mahoa(string mk)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk.Trim(), "SHA1");
        }

        private string MD5(string mk)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk.Trim(), "MD5");
        }

    }
}