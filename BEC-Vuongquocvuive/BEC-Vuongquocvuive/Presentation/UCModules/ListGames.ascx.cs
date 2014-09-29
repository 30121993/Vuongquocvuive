using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace BEC_Vuongquocvuive.Presentation.UCModules
{
    public partial class ListGames : System.Web.UI.UserControl
    {
        PagedDataSource pgitems = new PagedDataSource();
        GameBLL _game = new GameBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }
        void loadData()
        {
            DataTable dt = new DataTable();
            if (Request.QueryString["str"] != null)
            {
                dt = _game.LoadGameNew();
                loadPage(dt);
                //rptListGames.DataSource = pgitems;
                //rptListGames.DataBind();
            }
            else
            {
                dt = _game.LoadGameHot();
                loadPage(dt);
                //rptListGames.DataSource = pgitems;
                //rptListGames.DataBind();
            }
        }
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                    return Convert.ToInt32(ViewState["PageNumber"]);
                else
                    return 0;
            }
            set
            {
                ViewState["PageNumber"] = value;
            }
        }

        void loadPage(DataTable dt)
        {

            System.Data.DataView dv = new System.Data.DataView(dt);
            pgitems.DataSource = dv;
            pgitems.AllowPaging = true;
            pgitems.PageSize = 30;
            pgitems.CurrentPageIndex = PageNumber;
            if (pgitems.PageCount > 1)
            {
                rptPages.Visible = true;
                System.Collections.ArrayList pages = new System.Collections.ArrayList();
                for (int i = 0; i < pgitems.PageCount; i++)
                    pages.Add((i + 1).ToString());
                rptPages.DataSource = pages;
                rptPages.DataBind();
            }
            else
                rptPages.Visible = false;
                rptListGames.DataSource = pgitems;
                rptListGames.DataBind();

        }

        protected void rptPages_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            loadData();
        }

    }
}