using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAL
{
    public class AlbumDAL
    {
        List<SqlParameter> listparam = new List<SqlParameter>();
        clsDbaccess cls = new clsDbaccess();
        public DataTable KiemTraAvt(AlbumDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", obj.User_ID));
            listparam.Add(new SqlParameter("FileName", obj.FileName));
            return cls.truyvansqlcothamso("Album_kiemtratrung", listparam);
        }
        public bool ChangeAvt(AlbumDTO obj)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", obj.User_ID));
            listparam.Add(new SqlParameter("FileName", obj.FileName));
            return cls.capnhatdulieu("Album_Insert", listparam);
        }
        public DataTable GetDataByUser(int ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("User_ID", ID));
            return cls.truyvansqlcothamso("Album_GetDataByUser", listparam);
        }
    }
}
