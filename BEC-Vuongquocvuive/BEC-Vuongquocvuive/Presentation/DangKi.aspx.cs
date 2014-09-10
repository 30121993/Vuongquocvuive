using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;
using System.Data;

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
            string ngaysinh = txtNgaysinh.Text.Trim();
            string curdate = DateTime.Now.ToString("yyyy-mm-dd");
            int gender=0;
            if (ddlgender.Items.FindByValue("1").Selected == true)
                gender=1;
            else gender=2;
            UserDTO obj = new UserDTO();
            obj.User_FullName = txtHoten.Text.Trim();
            obj.User_Birthday = ngaysinh.ToString();
            obj.User_Gender = gender;
            obj.User_UserName = txtUserName.Text.Trim();
            obj.User_PassWord = txtPassword.Text.Trim();
            obj.User_Address = txtAddress.Text.Trim();
            obj.User_Email = txtEmail.Text.Trim();
            obj.User_Phone = txtphone.Text.Trim();
            DataTable dt = new DataTable();
            dt = User.kiemtraUser_name(obj.User_UserName);
            DateTime kiemtraNS = DateTime.Parse(txtNgaysinh.Text);
            DateTime Now = DateTime.Now;
            int kt = Now.Subtract(kiemtraNS).Days;
            if (dt.Rows.Count > 0)
            {
                ThongBao.Text = "Tài Khoản này đã tồn tại vui lòng nhập tài khoản khác !!!";
            }
            else
                if(kt<0)
                {
                    ThongBao.Text = "Ngày Sinh lớn hơn ngày hiện tại !!!";
                    }
            else
            {
                User.DangKi(obj);
                ThongBao.Text = "Đăng Kí Thành Công!!!";
            }
        }

        
    }
}