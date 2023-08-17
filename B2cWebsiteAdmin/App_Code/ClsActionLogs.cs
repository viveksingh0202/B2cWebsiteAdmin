using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsActionLogs:GetConnectionString
    {
        public int ActionLogs(string request,string response,string action)
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("SP_LogsAction", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@request", request);
                cmd.Parameters.AddWithValue("@response",response);
                cmd.Parameters.AddWithValue("@Action",action);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return 1;
            }
            catch(Exception ex)
            {
                return 0;
            }
        }
    }
}