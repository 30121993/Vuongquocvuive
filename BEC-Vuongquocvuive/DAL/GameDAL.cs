﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class GameDAL
    {
        clsDbaccess cls = new clsDbaccess();
        public List<SqlParameter> listparam = new List<SqlParameter>();
        public DataTable LoadGameNew()
        {
            return cls.getdata("Game_New");
        }
        public DataTable LoadGameHot()
        {
            return cls.getdata("Game_Hot");
        }
    }
}