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
        public DataTable GetCatalogDetail(int Catalog_ID)
        {
            return _Catalog.GetCatalogDetail(Catalog_ID);
        }
        public Boolean DeleteCatalogbyID(int Catalog_ID)
        {
            return _Catalog.DeleteCatalogbyID(Catalog_ID);
        }
        public DataTable GetAllCatalogAndChild()
        {
            return _Catalog.GetAllCatalogAndChild();
        }
    }
}
