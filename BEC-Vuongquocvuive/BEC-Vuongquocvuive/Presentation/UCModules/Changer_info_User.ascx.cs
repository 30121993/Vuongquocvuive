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
        public int User_ID;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                loadData();
            }
        }

        private void loadData()
        {
            int gender = 0;
            if (Session["User_ID"] != null)
            {
                User_ID = int.Parse(Session["User_ID"].ToString());
                DataTable user_info = _user.getUserbyID(User_ID);
                txtAddress.Text = user_info.Rows[0]["User_Address"].ToString();
                txtEmail.Text = user_info.Rows[0]["User_Email"].ToString();
                txtHoten.Text = user_info.Rows[0]["User_FullName"].ToString();
                txtngaysinh.Text = user_info.Rows[0]["User_RegisterTime"].ToString();
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
                    ddlgender.Items.FindByValue("1").Selected = true;
                }
                else if (gender == 2)
                {
                    ddlgender.Items.FindByValue("2").Selected = true;

                }
                //if ()
                //{
                //    txtTruong.Text = txtThanhPho.Text = txtPhuong.Text = txtLop.Text = txtHuyen.Text = txtUserName.Text = txtAddress.Text = txtEmail.Text = txtHoten.Text = txtNgaysinh.Text = txtPassword.Text = txtphone.Text = txtRePassword.Text = "";
                //}
            }
            else
            {
                Response.Write("<script language='javascript'> alert('Bạn chưa đăng nhập,vui lòng đăng nhập để xem thông tin tài khoản!');location.href='Blog.aspx';</script>");
            }
        }
        protected void btnchange_Click(object sender, EventArgs e)
        {
            int gt;
            UserDTO obj = new UserDTO();
            if (ddlgender.Items.FindByValue("1").Selected == true)
            {
                gt = 1;
            }
            else
                gt = 2;
            if (Session["User_ID"] != null)
            {
                User_ID = int.Parse(Session["User_ID"].ToString());
                obj.User_ID = User_ID;
                obj.User_FullName = txtHoten.Text.Trim();
                obj.User_Birthday = txtngaysinh.Text.Trim();
                obj.User_Gender = gt;
                obj.User_PassWord = txtPassword.Text.Trim();
                obj.User_Address = txtAddress.Text.Trim();
                obj.User_Xa = txtHuyen.Text.Trim();
                obj.User_Phuong = txtPhuong.Text.Trim();
                obj.User_ThanhPho = txtThanhPho.Text.Trim();
                obj.User_Truong = txtTruong.Text.Trim();
                obj.User_Lop = txtLop.Text.Trim();
                obj.User_Email = txtEmail.Text.Trim();
                obj.User_Phone = txtphone.Text.Trim();
                _user.UpdateInfo(obj);

                txtThongBao.Text = "Thay Đổi Thông Tin Thành Công!!!";

            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Presentation/Blog.aspx");
        }
    }
}