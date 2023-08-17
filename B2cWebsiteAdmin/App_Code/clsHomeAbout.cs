using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class clsHomeAbout : GetConnectionString
    {
        public DataTable Homeaboutcont()
        {
            try
            {
                string conStr = getconnection();
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("Sp_getHomeAbout", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter Adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                Adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return dt;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                return null;
            }

        }
    }
}