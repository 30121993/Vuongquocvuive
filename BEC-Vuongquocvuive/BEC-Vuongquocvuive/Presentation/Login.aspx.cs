using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace BEC_Vuongquocvuive
{
    public partial class Login : System.Web.UI.Page
    {
        UserBLL userbll = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["UserInfo"] != null)
            //    LoadSessionByCookies();
        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            string trangthai;
            DataTable user = userbll.Dangnhap(txttaikhoan.Text.Trim(), txtmatkhau.Text.Trim());
            if (user.Rows.Count==1)
            {
                //trangthai = user.Rows[0]["User_Status"].ToString() ;
                //if (trangthai)
                //{
                    Session["User_ID"] = user.Rows[0]["User_ID"];
                    Session["User_FullName"] = user.Rows[0]["User_FullName"];
                    Response.Write("<script language='javascript'> alert('Đăng nhập thành công!');location.href='Blog.aspx';</script>");
                    //if (cbluuMK.Checked == true)
                    //{
                    //    Response.Cookies["UserInfo"]["User_Name"] = txttaikhoan.Text;
                    //    Response.Cookies["UserInfo"]["User_Password"] = txtmatkhau.Text;
                    //    Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(15);
                    //}
                    //else
                    //{
                    //    Response.Cookies["UserInfo"]["User_Name"] = txttaikhoan.Text;
                    //    Response.Cookies["UserInfo"]["User_Password"] = txtmatkhau.Text;
                    //    Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(1);
                    //}
                //}
                //else
                //    if (trangthai== "False")
                //    {
                //        Response.Write("<script language='javascript'> alert('Tài Khoản này đã bị khóa vui lòng đăng nhập bằng tài khoản khác!');location.href='Blog.aspx';</script>");
                //    }
            }
            else
            {
                Response.Write("<script language='javascript'> alert('Đăng nhập thất bại!');location.href='Blog.aspx';</script>");
            }


        }
        //private void LoadSessionByCookies()
        //{
        //    DataTable user = userbll.getUserbyID(int.Parse(Server.HtmlDecode(Request.Cookies["UserInfo"]["User_Name"].ToString())));

        //    Session["QuyenDN"] = user.Rows[0]["User_TypeID"].ToString().Trim();
        //    Session["name"] = txttaikhoan.Text;
        //    Session["TenDN"] = user.Rows[0]["User_UserName"].ToString().Trim();

        //    Response.Redirect("Blog.aspx");
        //}
    }
}