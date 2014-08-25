using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class CatalogDTO
    {
        public CatalogDTO()
        {
        }
        private int _Catalog_ID;
        private string _Catalog_Name;
        private int _Catalog_Super;

        public int Catalog_Super
        {
            get { return _Catalog_Super; }
            set { _Catalog_Super = value; }
        }

        public int Catalog_ID
        {
            get { return _Catalog_ID; }
            set { _Catalog_ID = value; }
        }
        public string Catalog_Name
        {
            get { return _Catalog_Name; }
            set { _Catalog_Name = value; }
        }

        public CatalogDTO(int _Catalog_ID, string _Catalog_Name, int _Catalog_Super)
        {
            this._Catalog_ID = _Catalog_ID;
            this._Catalog_Name = _Catalog_Name;
            this._Catalog_Super = _Catalog_Super;
        }
    }
}
