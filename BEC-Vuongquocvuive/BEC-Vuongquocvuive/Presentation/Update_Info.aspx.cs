using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using DTO;

namespace BEC_Vuongquocvuive.Presentation
{
    public partial class Update_Info : System.Web.UI.Page
    {
        UserBLL user = new UserBLL();
        StoryBLL _story = new StoryBLL();
        public int User_ID;
         bool TrangThaiDK;
        GameBLL _gamer = new GameBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                UpdateInfo.SetActiveView(Step1);
                loadData();
            }
        }




        private void loadData()
        {
            try
            {
                if (Session["User_ID"] != null)
                {

                    User_ID = int.Parse(Session["User_ID"].ToString());

                    rptReadStory.DataSource = _story.GetStoryUserView(User_ID);
                    rptReadStory.DataBind();
                    rptplayGames.DataSource = _gamer.GetGameUserView(User_ID);
                    rptplayGames.DataBind();
                    DataTable user_info = user.getUserbyID(User_ID);
                    rptAvt.DataSource = user_info;
                    rptAvt.DataBind();
                    txtEmail1.Text=txtEmail.Text = user_info.Rows[0]["User_Email"].ToString();
                    txtngaysinh1.Text = txtNgaySinh.Text = user_info.Rows[0]["User_Birthday"].ToString();
                    txtNgaythamgia.Text = user_info.Rows[0]["User_RegisterTime"].ToString();
                    txtUserName.Text =""+Session["User_FullName"];
                    txtUserName1.Text =""+ Session["User_FullName"];
                    txtKhuyenMai.Text = user_info.Rows[0]["User_Gift"].ToString();
                    txtSovang.Text = user_info.Rows[0]["User_Gold"].ToString();
                    txtSoxu.Text = user_info.Rows[0]["User_Money"].ToString();
                    txtRank.Text = user_info.Rows[0]["User_RankName"].ToString();
                    txtphone.Text = user_info.Rows[0]["User_Phone"].ToString();
                    txtAddress.Text = user_info.Rows[0]["User_Address"].ToString();
                    txtPhuong.Text = user_info.Rows[0]["User_Xa"].ToString();
                    txtHuyen.Text = user_info.Rows[0]["User_Phuong"].ToString();
                    txtThanhPho.Text = user_info.Rows[0]["User_ThanhPho"].ToString();
                    txtTruong.Text = user_info.Rows[0]["User_Truong"].ToString();
                    txtLop.Text = user_info.Rows[0]["User_Lop"].ToString();
                    TrangThaiDK = bool.Parse(user_info.Rows[0]["User_HoanThanhDK"].ToString());
                    int gender = int.Parse(user_info.Rows[0]["User_Gender"].ToString());
                    if (gender == 1)
                    {
                        ddlgender.Items.FindByValue("1").Selected = true;
                    }
                    else if (gender == 2)
                    {
                        ddlgender.Items.FindByValue("2").Selected = true;

                    }
                    if (TrangThaiDK == false)
                    {
                        lblChangeInfo.Text = "Bạn hãy hoàn thành thông tin cá nhân lần đầu để nhận được 1000 vàng vào tài khoản!";
                    }
                    else {
                        lblChangeInfo.Text = "Thay đổi thông tin cá nhân";
                    }
                    //------------------------------------

                    plhDadangnhap.Visible = true;
                    plhChuadangnhap.Visible = false;
                    txtHoten.Text= lblTennguoidung.Text = "" + Session["User_FullName"];

                    string filename = "";
                    if (Request.QueryString["change-avt"] != null)
                    {
                        filename = Request.QueryString["change-avt"].ToString();
                        AlbumDTO obj = new AlbumDTO();
                        UserDTO obj1 = new UserDTO();
                        AlbumBLL _album = new AlbumBLL();
                        obj1.User_ID = obj.User_ID = User_ID;
                        obj1.User_Image = obj.FileName = filename;
                        DataTable dt = _album.KiemTraAvt(obj);
                        if (dt.Rows.Count > 0)
                        {
                            user.Update_Avt(obj1);

                        }
                        else
                        {
                            _album.ChangeAvt(obj);

                        }

                    }
                }
                else
                {
                    txtUserName.Text = "Tên Người Dùng";
                    txtKhuyenMai.Text = "0";
                    txtSovang.Text = "0";
                    txtSoxu.Text = "0";
                    txtRank.Text = "";
                    plhDadangnhap.Visible = false;
                    plhChuadangnhap.Visible = true;
                }
            }
            catch (Exception)
            {

                Response.Redirect("~/Presentation/404/Error.aspx");
            }
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step2);
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step1);
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (Session["User_ID"] != null)
            {
                string email_old;
                User_ID = int.Parse(Session["User_ID"].ToString());
                DataTable user_info = user.getUserbyID(User_ID);
                email_old = user_info.Rows[0]["User_Email"].ToString();
                TrangThaiDK = bool.Parse(user_info.Rows[0]["User_HoanThanhDK"].ToString());
                DataTable dt1 = new DataTable();
                dt1 = user.kiemtraEmail(txtEmail1.Text.Trim());
                if (TrangThaiDK == false)
                {
                    if (dt1.Rows.Count > 0)
                    {
                        lblMsgEmail.Text = "Trùng Email!";
                    }
                    else
                    {
                        UpdateInfo.SetActiveView(Step3);
                    }
                }
                else
                {
                    if (txtEmail1.Text != email_old)
                    {
                        DataTable dt2 = new DataTable();
                        dt2 = user.kiemtraEmail(txtEmail1.Text.Trim());
                        if (dt2.Rows.Count > 0)
                        {
                            lblMsgEmail.Text = "Trùng Email!";
                        }
                        else {
                            UpdateInfo.SetActiveView(Step3);
                        }
                    }
                    else
                    {
                        UpdateInfo.SetActiveView(Step3);
                    }
                }
            }
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            UpdateInfo.SetActiveView(Step2);
            lblMsg.Text = "";
            lblMsgEmail.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int gtinh;
            UserDTO obj = new UserDTO();
            if (ddlgender.Items.FindByValue("1").Selected == true)
            {
                gtinh = 1;
            }
            else
                gtinh = 2;
            if (Session["User_ID"] != null)
            {
                User_ID = int.Parse(Session["User_ID"].ToString());
                obj.User_ID = User_ID;
                lblTennguoidung.Text= txtUserName.Text= txtUserName1.Text=obj.User_FullName = txtHoten.Text.Trim();
               txtNgaySinh.Text= obj.User_Birthday = txtngaysinh1.Text.Trim();
                obj.User_Gender = gtinh;
                obj.User_Address = txtAddress.Text.Trim();
                obj.User_Xa = txtHuyen.Text.Trim();
                obj.User_Phuong = txtPhuong.Text.Trim();
                obj.User_ThanhPho = txtThanhPho.Text.Trim();
                obj.User_Truong = txtTruong.Text.Trim();
                obj.User_Lop = txtLop.Text.Trim();
               txtEmail.Text= obj.User_Email = txtEmail1.Text.Trim();
                obj.User_Phone = txtphone.Text.Trim();

                DataTable user_info = user.getUserbyID(User_ID);
                TrangThaiDK = bool.Parse(user_info.Rows[0]["User_HoanThanhDK"].ToString());
                if (TrangThaiDK == false)
                {
                    user.UpdateGold(User_ID);
                }
                else { }
                user.UpdateInfo(obj);
                
                UpdateInfo.SetActiveView(Step3);
                lblMsg.Text = "Thay Đổi Thông Tin Thành Công!!!";

            }

        }



    }
}