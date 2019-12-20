using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DaoHoangSon_QLBanPKMT
{
    public partial class DaoHoangSon
    {
        public static string strCon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
        public static DataTable GetData(string lenhSQL)
        {
            SqlConnection sqlCon = new SqlConnection(strCon);
            try
            {
                SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void Execute(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }


    }
}