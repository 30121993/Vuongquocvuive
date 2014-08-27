using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class StoryDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public DataTable GetStoryByID(int Story_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Story_ID", Story_ID));
            return cls.truyvansqlcothamso("Story_SelectByID", listparam);
        }
        public DataTable LoadStoryNew()
        {
            return cls.getdata("Story_New");
        }
        public DataTable LoadStoryDocNhieu()
        {
            return cls.getdata("Story_TopRead");
        }
        public DataTable GetStoryByCatalog(int Catalog_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Catalog_ID", Catalog_ID));
            return cls.truyvansqlcothamso("Story_GetAllByCatalogID", listparam);
        }
        public Boolean viewup(int id)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Story_ID", id));
            return cls.capnhatdulieu("UpdateView", listparam);
        }
        public DataTable GetStoryUserView(int ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", ID));
            return cls.truyvansqlcothamso("User_ReadStory", listparam);
        }
    }
}
