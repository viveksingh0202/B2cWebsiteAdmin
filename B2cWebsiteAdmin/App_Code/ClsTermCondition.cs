using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsTermCondition:GetConnectionString
    {
        public DataTable GetTermCondtion()
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlDataAdapter adp = new SqlDataAdapter("Sp_TblTermConditionGet", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;

            }
            catch( Exception ex)
            {
                return null;
            }
        }
        public int TermContionInsert(string Section1Heading, string Section1content, string Section2Heading, string Section2content, string Section3Heading, string Section3conten1, string Section3content2, string Section3para1, string Section3para2, string Section3para3, string Section4Heading, string Section4content, string Section5Heading, string section5content, string section6Heading, string Sectio6content1, string Sectio6content2, string Section6content3, string CreateBy, string UpdateBy)
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("Sp_TblTermCondition", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Section1Heading", Section1Heading);
                cmd.Parameters.AddWithValue("@Section1content", Section1content);
                cmd.Parameters.AddWithValue("@Section2Heading", Section2Heading);
                cmd.Parameters.AddWithValue("@Section2content", Section2content);
                cmd.Parameters.AddWithValue("@Section3Heading", Section3Heading);
                cmd.Parameters.AddWithValue("@Section3conten1", Section3conten1);
                cmd.Parameters.AddWithValue("@Section3content2", Section3content2);
                cmd.Parameters.AddWithValue("@Section3para1", Section3para1);
                cmd.Parameters.AddWithValue("@Section3para2", Section3para2);
                cmd.Parameters.AddWithValue("@Section3para3", Section3para3);
                cmd.Parameters.AddWithValue("@Section4Heading", Section4Heading);
                cmd.Parameters.AddWithValue("@Section4content", Section4content);
                cmd.Parameters.AddWithValue("@Section5Heading", Section5Heading);
                cmd.Parameters.AddWithValue("@section5content", section5content);
                cmd.Parameters.AddWithValue("@section6Heading", section6Heading);
                cmd.Parameters.AddWithValue("@Section6content1", Sectio6content1);
                cmd.Parameters.AddWithValue("@Section6content2", Sectio6content2);
                cmd.Parameters.AddWithValue("@Section6content3", Section6content3);
                cmd.Parameters.AddWithValue("@CreateBy", CreateBy);
                cmd.Parameters.AddWithValue("@UpdateBy", UpdateBy);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Close();
                return result;
            }
            catch(Exception ex)
            {
                return 0;
            }
        }
    }
}