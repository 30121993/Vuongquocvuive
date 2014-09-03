using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
using System.Security.Cryptography;
namespace BLL
{
    public class User_TypeBLL
    {
        User_TypeDAL _User_Type = new User_TypeDAL();
        public DataTable LoadUserType()
        {
            return _User_Type.LoadUserType();
        }
    }
}
