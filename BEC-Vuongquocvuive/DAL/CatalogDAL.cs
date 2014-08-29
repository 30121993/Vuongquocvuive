using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class CatalogDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public DataTable GetAllCatalog()
        {
            return cls.getdata("Catalog_SelectAll");
        }
        public DataTable GetAllCatalogChild(int Catalog_ID)
        { 
            listparam.Clear();
            listparam.Add(new SqlParameter("Catalog_ID",Catalog_ID));
            return cls.truyvansqlcothamso("Catalog_SelectAll_Child", listparam);
        }
        public DataTable GetCatalogDetail(int Catalog_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Catalog_ID", Catalog_ID));
            return cls.truyvansqlcothamso("Catalog_GetDetail", listparam);
        }
    }
}
