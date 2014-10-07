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
            //Session["Header"] = "Update_Info.aspx";
            //Session["Header"] = "Blog";
            //if (!ScriptManager1.IsInAsyncPostBack)
            //    Session["timeout"] = DateTime.Now.AddSeconds(5).ToString();
            string url_old = Session["header"].ToString();
            //Response.Write("" + url_old);
            Session["url"] = url_old;
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
            obj.User_PassWord = MD5(mahoa(txtPassword.Text.Trim()));
            //obj.User_Address = txtAddress.Text.Trim();
            //obj.User_Email = txtEmail.Text.Trim();
            //obj.User_Phone = txtphone.Text.Trim();
            DataTable dt = new DataTable();
            dt = User.kiemtraUser_name(obj.User_UserName);
            DataTable dt1 = new DataTable();
            //dt1 = User.kiemtraEmail(obj.User_Email);
            DateTime kiemtraNS = DateTime.Parse(txtNgaysinh.Text);
            DateTime Now = DateTime.Now;
            int kt = Now.Subtract(kiemtraNS).Days;
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "Tài Khoản này đã tồn tại vui lòng nhập tài khoản khác !!!";
                txtUserName.Focus();
            }
            else
                if(kt<0)
                {
                    Label2.Text = "Ngày Sinh lớn hơn ngày hiện tại !!!";
                    txtNgaysinh.Focus();
                 }
            //else
            //        if (dt1.Rows.Count > 0)
            //        {
            //            ThongBao.Text = "Email này đã được sử dụng, vui lòng nhập Email khác khác !!!";
            //        }
            else
            {
                User.DangKi(obj);
                ThongBao.Text = "Đăng Kí Thành Công . Hệ thống sẽ chuyển sang trang đăng nhập trong giây lát";
                HttpCookie cook = new HttpCookie("user");
                cook.Values.Add("name", txtUserName.Text.Trim());
                cook.Values.Add("pass", txtPassword.Text.Trim());
                cook.Expires = DateTime.MaxValue;
                Response.Cookies.Add(cook);
                if (Request.Cookies["user"] != null)
                {
                    Session["Username"] = Request.Cookies["user"]["name"];
                    Session["Password"] = Request.Cookies["user"]["pass"];
                }
                Timer1.Enabled = true;
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
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Response.Redirect("Update_Info.aspx");
        }

        
    }
}