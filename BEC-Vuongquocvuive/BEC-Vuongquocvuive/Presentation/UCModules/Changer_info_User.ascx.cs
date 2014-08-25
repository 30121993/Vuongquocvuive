using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class Changer_info_User : System.Web.UI.UserControl
    {
        UserBLL user = new UserBLL();
        public int User_ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            int gender;
            if (Session["User_ID"] != null)
            {
                User_ID = int.Parse(Session["User_ID"].ToString());
                DataTable user_info = user.getUserbyID(User_ID);
                txtAddress.Text = user_info.Rows[0]["User_Address"].ToString();
                txtEmail.Text = user_info.Rows[0]["User_Email"].ToString();
                txtHoten.Text = user_info.Rows[0]["User_FullName"].ToString();
                txtNgaysinh.Text = user_info.Rows[0]["User_RegisterTime"].ToString();
                txtPassword.Text = user_info.Rows[0]["User_PassWord"].ToString();
                txtphone.Text = user_info.Rows[0]["User_Phone"].ToString();
                txtRePassword.Text = user_info.Rows[0]["User_PassWord"].ToString();
                //txtten.Text = user_info.Rows[0]["User_LastName"].ToString();
                txtUserName.Text = user_info.Rows[0]["User_UserName"].ToString();
                txtHuyen.Text = user_info.Rows[0]["User_Xa"].ToString();
                txtLop.Text = user_info.Rows[0]["User_Lop"].ToString();
                txtPhuong.Text = user_info.Rows[0]["User_Phuong"].ToString();
                txtThanhPho.Text = user_info.Rows[0]["User_ThanhPho"].ToString();
                txtTruong.Text = user_info.Rows[0]["User_Truong"].ToString();
                gender = int.Parse(user_info.Rows[0]["User_Gender"].ToString());
                if (gender == 1)
                {
                    ddlgender.Items[1].Selected = true;
                }
                else if(gender == 2)
                {
                    ddlgender.Items[2].Selected = true;
                    //ddlgender.Items.FindByText("Nữ").Selected = true;
                }
            }
            else
            { }
        }
    }
}