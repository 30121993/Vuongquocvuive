using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DTO;
namespace DAL
{
    public class User_TypeDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public DataTable LoadUserType()
        {
            return cls.getdata("User_Type_SelectAll");
        }
    }
}
