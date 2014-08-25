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
    public partial class Blog : System.Web.UI.Page
    {
        UserBLL user = new UserBLL();
        public int User_ID;

        protected void Page_Load(object sender, EventArgs e)
        {
            Control MH;
            
                if (Session["User_ID"] != null)
                {
                    User_ID = int.Parse(Session["User_ID"].ToString());
                    DataTable user_info = user.getUserbyID(User_ID);
                    txtEmail.Text = user_info.Rows[0]["User_Email"].ToString();
                    txtNgaySinh.Text = user_info.Rows[0]["User_Birthday"].ToString();
                    txtNgaythamgia.Text = user_info.Rows[0]["User_RegisterTime"].ToString();
                    txtUserName.Text = " " + Session["User_FullName"];
                    txtUserName1.Text = " " + Session["User_FullName"];
                    txtKhuyenMai.Text = user_info.Rows[0]["User_Gift"].ToString();
                    txtSovang.Text = user_info.Rows[0]["User_Gold"].ToString();
                    txtSoxu.Text = user_info.Rows[0]["User_Money"].ToString();
                    txtRank.Text = user_info.Rows[0]["User_RankName"].ToString();
                }
                else
                {
                    txtUserName.Text = "Tên Người Dùng";
                    txtKhuyenMai.Text = "0";
                    txtSovang.Text = "0";
                    txtSoxu.Text = "0";
                    txtRank.Text = "";
                }
            

           string mod="";
           if (Request.QueryString["mod"] != null)
           {
               mod = Request.QueryString["mod"].ToString();
               MH = Page.LoadControl("UCModules/" + mod + ".ascx");
               plhBlog.Controls.Add(MH);
           }
           else
           {
               MH = Page.LoadControl("UCModules/ListStatus.ascx");
               plhBlog.Controls.Add(MH);
           }

        }
        
    }
}