using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DTO;
using System.Data;

namespace DAL
{
    public class Story_ViewDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public Boolean Insert(Story_ViewDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("@Story_ID", obj.Story_ID));
            listparam.Add(new SqlParameter("@User_ID", obj.User_ID));
            return cls.capnhatdulieu("Story_View_Insert", listparam);
        }
        public DataTable Kiemtratrung(Story_ViewDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("@Story_ID", obj.Story_ID));
            listparam.Add(new SqlParameter("@User_ID", obj.User_ID));
            return cls.truyvansqlcothamso("Story_View_Kiemtratrung", listparam);
        }
    }
}
