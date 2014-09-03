using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;
using DTO;
namespace BEC_Vuongquocvuive.ADMIN.UCModules
{
    public partial class UCAddNewUser : System.Web.UI.UserControl
    {
        User_TypeBLL usertypebll = new User_TypeBLL();
        UserBLL userbll = new UserBLL();
        UserDTO userdto;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            getSelectUserType();
            InsertAccount();
        }   
        //-------------------------------------------------------
        private void getSelectUserType()
        {
            string text;
            dt = new DataTable();
            dt = usertypebll.LoadUserType();
            text="<select id=\"category\" class=\"span6 required\" name=\"type\"  data-placeholder=\"Choose a Category\" tabindex=\"1\">";
            text+="<option value= \"\" >";
            text+="  Lựa chọn...</option>";
            for(int i=0;i<dt.Rows.Count;i++)
            {
                text+=" <option value=\""+dt.Rows[i]["User_TypeID"]+"\" >"+dt.Rows[i]["User_NameType"]+"</option>";
            }
            text+="</select>";
            selectUserType.Text = text;
        }
        //-------------------------------------------------------
        private void InsertAccount()
        {
            //if (Request.Form["submit"] != null)
            //{
                userdto = new UserDTO();
                userdto.User_TypeID = 1;//int.Parse(Request.Form["type"].ToString());
                userdto.User_RankID = 1;
                userdto.User_FullName = "Nguyen van hai";//Request.Form["fullname"].ToString().Trim();
                userdto.User_Birthday = DateTime.Now.ToShortDateString();
                userdto.User_Gender = 1;
                userdto.User_UserName = "hainv";//Request.Form["username"].ToString().Trim();
                userdto.User_PassWord = "hainv";//Request.Form["password"].ToString().Trim();
                userdto.User_Phone = "12312";//Request.Form["phone"].ToString().Trim();
               // userdto.User_RegisterTime = DateTime.Now.ToShortDateString();
                userdto.User_Gold = 1000;
                userdto.User_Money = 0;
                userdto.User_Status = true;//Boolean.Parse(Request.Form["status"].ToString());
               // userdto.User_LastEdit = DateTime.Now.ToShortDateString();
                userbll.DangKi(userdto);
            //}
        }
    }
}