using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class Story_PageDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public DataTable ReadStory(int Story_ID)
        {
            listparam.Clear();
            listparam.Add(new SqlParameter("Story_ID",Story_ID));
            return cls.truyvansqlcothamso("Read_Story", listparam);
        }
    }
}
