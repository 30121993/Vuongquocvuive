using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string a = mahoa("admin");
            Label1.Text = MD5(mahoa("admin"));

            if (!SM1.IsInAsyncPostBack)
                Session["timeout"] = DateTime.Now.AddSeconds(5).ToString();

            if (IsPostBack)
            {
                string savePath = Server.MapPath(@"~/Presentation/abc");
                string filename = fuFile.PostedFile.FileName;
                int fileSize = fuFile.PostedFile.ContentLength;
                string exten = Path.GetExtension(filename);
                if ((!exten.ToLower().Equals(".jpg")) && (!exten.ToLower().Equals(".png")))
                {
                    lblMsg.Text = "Loại file không hợp lệ";
                    return;
                }
                if (fileSize < 5100000)
                {
                    fuFile.SaveAs(savePath + @"/" + fuFile.FileName);
                    lblMsg.Text = filename + "Đã Upload Thành công!";
                }
                else
                {
                    lblMsg.Text = "File Quá lớn!";
                    return;
                }
            }



        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
           // DateTimeLabel1.Text = DateTime.Now.ToString();
           // DateTimeLabel2.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(""+GenerateRandomPassword(7));
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

        private string MD5(string mk)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(mk.Trim(), "MD5");
        }

        protected void timer1_tick(object sender, EventArgs e)
        {
            if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
            {
                lblTimer.Text = "Number of Minutes Left: " + ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalSeconds).ToString();
            }
        }


    }
}