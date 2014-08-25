using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
    public class CatalogBLL
    {
        CatalogDAL _Catalog = new CatalogDAL();
        public DataTable GetAllCatalog()
        {
            return _Catalog.GetAllCatalog();
        }
        public DataTable GetAllCatalogChild(int Catalog_ID)
        {
            return _Catalog.GetAllCatalogChild(Catalog_ID);
        }
    }
}
