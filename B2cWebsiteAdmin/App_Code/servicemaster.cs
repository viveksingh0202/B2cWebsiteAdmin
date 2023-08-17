using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class servicemaster
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        public DataTable GetServiceData()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SP_GetServiceData", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public DataTable GetAllServices()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * From TblServiceMaster where IsDeleted=0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception exc)
            {
                return null;
            }

        }

        public int ActivateDeactivateService(int id, int status, string UpdatedBy)
        {

            int result = 0;
            SqlCommand cmd1 = new SqlCommand("sp_Active_DeAcative", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Id", id);
            cmd1.Parameters.AddWithValue("@Status", status);
            cmd1.Parameters.AddWithValue("@UpdatedBy", UpdatedBy);
            con.Open();
            return result = cmd1.ExecuteNonQuery();
            con.Close();
        }

        public int ServiceNameUpdate(int id, string servicename, string UpdatedBy)
        {

            int result = 0;
            SqlCommand cmd1 = new SqlCommand("sp_ServiceUpdate", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Id", id);
            cmd1.Parameters.AddWithValue("@ServiceName", servicename);
            cmd1.Parameters.AddWithValue("@UpdatedBy", UpdatedBy);
            con.Open();
            return result = cmd1.ExecuteNonQuery();
            con.Close();
        }

        public int DeleteService(int id, string DeletedBy)
        {

            int result = 0;
            SqlCommand cmd1 = new SqlCommand("sp_ServiceDelete", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Id", id);
            cmd1.Parameters.AddWithValue("@DeletedBy", DeletedBy);
            cmd1.Parameters.AddWithValue("@Status", 0);
            cmd1.Parameters.AddWithValue("@IsDeleted", 1);
            con.Open();
            return result = cmd1.ExecuteNonQuery();
            con.Close();
        }
    }
}