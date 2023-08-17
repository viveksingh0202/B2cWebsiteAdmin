using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using B2cWebsiteAdmin.App_Code;
using System.Configuration;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsBannerMaster : GetConnectionString
    {
        public DataTable GetSliderBanner()
        {
            try
            {
                string conStr = getconnection();
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("sp_getSliderMaster", con);
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
            catch(Exception ex)
            {
                return null;
            } 
          
        }
        public DataTable GetCommunityData()
        {
            try
            {
                string conStr = getconnection();
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("sp_getMasterCommunity", con);
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