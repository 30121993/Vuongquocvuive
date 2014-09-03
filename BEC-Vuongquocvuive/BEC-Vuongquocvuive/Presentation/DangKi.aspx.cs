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
            string ngaysinh = txtNgaysinh.Text.Trim();
            string curdate = DateTime.Now.ToString("yyyy-mm-dd");
            int gender;
            if(ddlgender.Items[1].Selected == true)
                gender=1;
            else gender=2;
            UserDTO obj = new UserDTO(3,1,txtHoten.Text,ngaysinh.ToString(),gender,txtUserName.Text,txtPassword.Text,txtAddress.Text,txtHuyen.Text,txtPhuong.Text,txtThanhPho.Text,txtTruong.Text,txtLop.Text,txtEmail.Text,txtphone.Text,"",curdate,1000,0,"","",true,curdate);
            //User.DangKi(obj);
            //Response.Write(txtHoten.Text);
            ThongBao.Text = "Đăng Kí Thành Công!!";
        }

        
    }
}