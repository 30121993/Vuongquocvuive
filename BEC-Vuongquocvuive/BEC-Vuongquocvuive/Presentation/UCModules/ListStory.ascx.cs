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
    public partial class ListStory : System.Web.UI.UserControl
    {
        PagedDataSource pgitems = new PagedDataSource();
        StoryBLL BLL = new StoryBLL();
        CatalogBLL _Catalog = new CatalogBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadData();
            }

        }



        void loadData()
        {
            int Catalog_ID;
            if (Request.QueryString["id"] != null)
            {
                
                DataTable dt = new DataTable();
                Catalog_ID = Int32.Parse(Request.QueryString["id"].ToString());
                dt = BLL.GetStoryByCatalog(Catalog_ID);
                LoadPage(dt);
                rptListStory.DataSource = pgitems;
                rptListStory.DataBind();

                //rptListStory.DataSource= BLL.GetStoryByCatalog(Catalog_ID);
                // rptListStory.DataBind();

                Catalog_Name.DataSource = _Catalog.GetCatalogDetail(Catalog_ID);
                Catalog_Name.DataBind();

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

        private void LoadPage(DataTable dt)
        {
            System.Data.DataView dv = new System.Data.DataView(dt);
            pgitems.DataSource = dv;
            pgitems.AllowPaging = true;
            pgitems.PageSize = 10;
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
        }
        protected void rptPages_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            loadData();
        }
    }
}