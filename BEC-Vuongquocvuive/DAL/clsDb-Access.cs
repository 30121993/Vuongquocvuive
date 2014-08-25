using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace DAL
{
    public class clsDbaccess
    {
        public SqlConnection conn = new SqlConnection();
        public DataTable dt = new DataTable(); 
        public SqlCommand cmd = new SqlCommand();
        public DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        

        //---------------------------------------------------------------
        public void connect()
        {
            try
            {

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["BECApplicationServices"].ConnectionString;
                //conn.ConnectionString = ConfigurationManager.ConnectionStrings["giay3l"].ConnectionString;
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                cmd = conn.CreateCommand();
            }
            catch
            {

            }

        }
        //---------------------------------------------------------------
        public void disconnect()
        {
            conn.Close();
            conn.Dispose();
        }
        //---------------------------------------------------------------
        public DataTable getdata(string cmdText)
        {
            connect();
            cmd.CommandText = cmdText;
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
        //---------------------------------------------------------------
        public DataTable truyvansqlcothamso(string cmdText, List<SqlParameter> listparam)
        {
            dt = new DataTable();
            cmd = new SqlCommand();
            da = new SqlDataAdapter();
            connect();
            cmd.CommandText = cmdText;
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@Catalog_ID",SqlDbType.Int).Value = 1;
            for (int index = 0; index <= listparam.Count - 1; index++)
            {
                cmd.Parameters.Add(listparam[index]);
            }
            da.SelectCommand = cmd;
            da.Fill(dt);
            disconnect();
            return dt;
        }
        public Boolean capnhatdulieu(string cmdText, List<SqlParameter> listparam)
        {
            Boolean kt;
            connect();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = cmdText;
            for (int i = 0; i < listparam.Count; i++)
                cmd.Parameters.Add(listparam[i]);
            try
            {
                cmd.ExecuteNonQuery();
                kt = true;
            }
            catch
            {
                kt = false;
            }
            disconnect();
            return kt;
        }
        public void testcapnhatdulieu(string cmdText, List<SqlParameter> listparam)
        {
            Boolean kt;
            connect();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = cmdText;
            for (int i = 0; i < listparam.Count; i++)
                cmd.Parameters.Add(listparam[i]);

            cmd.ExecuteNonQuery();

        }
    }
}
