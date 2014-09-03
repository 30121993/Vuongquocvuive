using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
namespace DAL
{
    public class clsDbaccess
    {
        public SqlConnection conn = new SqlConnection();
        public DataTable dt = new DataTable(); 
        public SqlCommand cmd = new SqlCommand();
        public DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        Boolean kt;

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
        //---------------------------------------------------------------
        public Boolean capnhatdulieuSqltext(string cmdtext)
        {
            connect();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = cmdtext;
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
        //---------------------------------------------------------------
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
        //---------------------------------------------------------------
        public int CapnhatdulieureturnID(string cmdText, List<SqlParameter> listparam)
        {
            connect();
            int id = 0;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = cmdText;
            for (int i = 0; i < listparam.Count; i++)
                cmd.Parameters.Add(listparam[i]);
            try
            {
                SqlParameter pID = new SqlParameter("ID",DbType.Int32);
                pID.Direction = ParameterDirection.Output;
                cmd.ExecuteScalar();
                id = Convert.ToInt32(cmd.Parameters["ID"].Value.ToString());
            }
            catch
            {
                
            }
            disconnect();
            return id;
        }
        //---------------------------------------------------------------
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
        //----------------------------------------------------------------------------
       
    }
}
