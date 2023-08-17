using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsPrivacyPolicy:GetConnectionString
    {
      public DataTable GetPrivacyPolicy()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlDataAdapter adp = new SqlDataAdapter("Sp_TblPrivacyPolicyGet", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch(Exception ex)
            {
                return null;
            }

        }
        public int PrivacyPolicysection(string Section1Heading, string Section1para , string Section2heading , string Section2para , string Section3para1 , string Section3para2 , string Section8para , string Section9para , string Section8heading, string Section9heading , string Section2para8 , string  Section3heading , string Section3para , string  Section4heading , string  Section4para, string Section5heading, string Section5para , string Section6heading, string Section6para, string Section7heading, string Section7para, string CreateBy, string UpdateBy )
        {
            try
            {
                {
                    string strcon = getconnection();
                    SqlConnection con = new SqlConnection(strcon);
                    SqlCommand cmd = new SqlCommand("Sp_TblPrivacyPolicy", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Section1Heading", Section1Heading);
                    cmd.Parameters.AddWithValue("@Section1para", Section1para);
                    cmd.Parameters.AddWithValue("@Section2heading", Section2heading);
                    cmd.Parameters.AddWithValue("@Section2para1", Section2para);
                    cmd.Parameters.AddWithValue("@Section2para2", Section3para1);
                    cmd.Parameters.AddWithValue("@Section2para3", Section3para2);
                    cmd.Parameters.AddWithValue("@Section2para4", Section8para);
                    cmd.Parameters.AddWithValue("@Section2para5", Section9para);
                    cmd.Parameters.AddWithValue("@Section2para6", Section8heading);
                    cmd.Parameters.AddWithValue("@Section2para7", Section9heading);
                    cmd.Parameters.AddWithValue("@Section2para8","");
                    cmd.Parameters.AddWithValue("@Section3heading", Section3heading);
                    cmd.Parameters.AddWithValue("@Section3para", "");
                    cmd.Parameters.AddWithValue("@Section4heading", Section4heading);
                    cmd.Parameters.AddWithValue("@Section4para", Section4para);
                    cmd.Parameters.AddWithValue("@Section5heading", Section5heading);
                    cmd.Parameters.AddWithValue("@Section5para", Section5para);
                    cmd.Parameters.AddWithValue("@Section6heading", Section6heading);
                    cmd.Parameters.AddWithValue("@Section6para", Section6para);
                    cmd.Parameters.AddWithValue("@Section7heading", Section7heading);
                    cmd.Parameters.AddWithValue("@Section7para", Section7para);
                    cmd.Parameters.AddWithValue("@CreateBy", CreateBy);
                    cmd.Parameters.AddWithValue("@UpdateBy", UpdateBy);
                    con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch(Exception ex)
            {
                return 0;
            }

        }
    }
}