using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class Login2 : System.Web.UI.Page
    {
        UserBLL userbll = new UserBLL();
        DataTable user = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["user"] != null)
                {
                    txttaikhoan.Text = Request.Cookies["user"]["name"];
                    txtmatkhau.Attributes["value"] = Request.Cookies["user"]["pass"];
                    cbluuMK.Checked = true;
                }
                else
                {
                    txttaikhoan.Text = txtmatkhau.Text = "";
                    cbluuMK.Checked = false;
                }
            }
        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            bool trangthai;
            string ab = MD5(mahoa(txtmatkhau.Text.Trim()));
            user = userbll.Dangnhap(txttaikhoan.Text.Trim(), MD5(mahoa(txtmatkhau.Text.Trim())));
            string header = Session["Header"].ToString();

            if (user.Rows.Count == 1)
            {
                trangthai = bool.Parse(user.Rows[0]["User_Status"].ToString());
                if (trangthai == true)
                {
                    Session["User_ID"] = user.Rows[0]["User_ID"];
                    Session["User_FullName"] = user.Rows[0]["User_FullName"];
                    UpdateGold(user);
                    userbll.UpdateLast_Login(int.Parse(Session["User_ID"].ToString()));


                    //if (header == "Story")
                    //{
                        
                    //    Response.Redirect("Story.aspx");
                    //}
                    //if (header == "Games")
                    //{
                        
                    //    Response.Redirect("Games.aspx");
                    //}
                    //if (header == "Blog")
                    //{
                    //    //Response.Write("<script language='javascript'> alert('Đăng nhập thành công!');location.href='Blog.aspx?mod=Changer_info_User';</script>");
                       
                    //}
                    //Response.Write("<script language='javascript'>$.ajax({ type: "GET",url: "Logout.aspx",dataType: 'html',success: function (data) {$('body').append(data);}});</script>");

                    HttpCookie cook = new HttpCookie("user");
                    if (cbluuMK.Checked)
                    {
                        
                        cook.Values.Add("name", txttaikhoan.Text.Trim());
                        //cook.Values.Add("pass", MD5(mahoa(txtmatkhau.Text.Trim())));
                        cook.Values.Add("pass", txtmatkhau.Text.Trim());
                        cook.Expires = DateTime.MaxValue;
                        Response.Cookies.Add(cook);
                        Response.Redirect("Update_Info.aspx");
                    }
                    else
                    {
                        cook.Expires = DateTime.Now;
                        Response.Redirect("Update_Info.aspx");
                    }


                }
                else
                    if (trangthai == false)
                    {
                        //Response.Write("<script language='javascript'> alert('Tài Khoản này đã bị khóa vui lòng đăng nhập bằng tài khoản khác!'); window.history.back();</script>");
                        lblMsg.Text = "Tài Khoản này đã bị khóa vui lòng đăng nhập bằng tài khoản khác!";
                    }
            }
            else
            {
                //Response.Write("<script language='javascript'> alert('Đăng nhập thất bại!'); window.history.back();</script>");
                lblMsg.Text = "Sai Tài khoản hoặc mật khẩu vui lòng kiểm tra lại!";
            }
        }
        private void UpdateGold(DataTable user1)
        {
            DateTime curdate = DateTime.Now;
            DateTime note = DateTime.Parse(user1.Rows[0]["User_RegisterTime"].ToString());
            DateTime note1 = DateTime.Parse(user1.Rows[0]["User_LastLogin"].ToString());
            int check = curdate.Subtract(note).Days;
            int check1 = curdate.Subtract(note1).Days;
            if ((check <= 7) && (check1 > 0))
            {

                userbll.UpdateGold(int.Parse(Session["User_ID"].ToString()));
                //Response.Redirect("Popup.aspx");
                
                Response.Write("<script language='javascript'>alert('Bạn Được Cộng Thêm 1000 Vàng trong vòng 7 ngày từ ngày đăng kí!!!');</script>");
            }
            else { }
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