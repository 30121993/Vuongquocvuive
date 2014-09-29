using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Net.Mail;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class fpass : System.Web.UI.Page
    {
        UserBLL _user = new UserBLL();
        string username = "";
        string email = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Header"] = "Blog";
            if (!IsPostBack)
            {
                if (Session["User_ID"] != null)
                {
                    Response.Redirect("Blog.aspx");
                }
            }
            
        }
        private int CheckData()
        {
            
            int kt = 0;
            if (txtUserName.Text != null && txtEmail.Text != null)
            {
                username = txtUserName.Text;
                email = txtEmail.Text;
                DataTable dt = _user.kiemtraUser_name(username);
                DataTable dt1 = _user.kiemtraEmailbyUser(username, email);
                if (dt.Rows.Count == 0)
                    Label1.Text = "Tài khoản này không tồn tại!";
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = "";
                    if (dt1.Rows.Count == 0)
                    {
                        Label2.Text = "Email không phải của tài khoản trên";
                    }
                    else {
                        Label2.Text = "";
                        kt = 1;
                    }
                }

            }
            else
            { }
            return kt;
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            if (Session["User_ID"] != null)
            {
                Response.Redirect("Blog.aspx");
            }
            if (Session["User_ID"] == null)
            {
                bool kt;
                string passnew = GenerateRandomPassword(7);
                username = txtUserName.Text;
                email = txtEmail.Text;
                string mk = mahoa(passnew);
                int a = CheckData();
                if (a == 1)
                {
                    kt = _user.Change_passByUserNameAndEmail(username, email, mk);
                    if (kt == true)
                    {
                        send_email(passnew);
                        lblMsg.Text = "Mật khẩu của bạn đã thay đổi và gửi về email của bạn,Vui lòng kiểm tra email để nhận mật khẩu";
                    }
                    else
                    {
                        lblMsg.Text = "Lỗi đổi mật khẩu";
                    }
                }
            }
            

        }

        private void send_email(string pass)
        {
            

            SmtpClient SmtpServer = new SmtpClient();
            SmtpServer.Credentials = new System.Net.NetworkCredential("longtd3012@gmail.com", "il0vemylife");
            SmtpServer.Port = 587;
            SmtpServer.Host = "smtp.gmail.com";
            SmtpServer.EnableSsl = true;
            MailMessage mail = new MailMessage();
            String[] addr = txtEmail.Text.Split(',');
            try
            {
                mail.From = new MailAddress("longtd3012@gmail.com",
                "Thông Báo từ Vuongquocvuive.com ", System.Text.Encoding.UTF8);
                Byte i;
                for (i = 0; i < addr.Length; i++)
                    mail.To.Add(addr[i]);
                mail.Subject = "Thông báo mất mật khẩu tài khoản";
                mail.Body = "Mật Khẩu trên trang web http://Vuongquocvuive.com của bạn là : " + pass.ToString() + 
                    "."+ "Vui lòng truy cập http://Vuongquocvuive.com/Blog.aspx để thay đổi lại mật khẩu!!";
                mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                mail.ReplyTo = new MailAddress(txtEmail.Text);
                SmtpServer.Send(mail);
            }
            catch (Exception ex) { }
        }

        private static string GenerateRandomPassword(int length)
        {
            string allowedLetterChars = "abcdefghijkmnpqrstuvwxyz";
            string allowedNumberChars = "0123456789";
            char[] chars = new char[length];
            Random rd = new Random();
            bool useLetter = true;
            for (int i = 0; i < length; i++)
            {
                if (useLetter)
                {
                    chars[i] = allowedLetterChars[rd.Next(0, allowedLetterChars.Length)];
                    useLetter = false;
                }
                else
                {
                    chars[i] = allowedNumberChars[rd.Next(0, allowedNumberChars.Length)];
                    useLetter = true;
                }
            }
            return new string(chars);
        }
        private string mahoa(string mk)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk.Trim(), "SHA1");
        }

    }
}