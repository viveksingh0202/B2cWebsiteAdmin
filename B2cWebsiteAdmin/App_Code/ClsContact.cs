using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsContact:GetConnectionString
    {
        public DataTable SectionContantGet()
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlDataAdapter adp = new SqlDataAdapter("Sp_TblContactGet", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;

            }catch(Exception ex)
            {
                return null;
            }
        }
        public int ContectSectionInsert(string section1image ,string section2image,string sectionheading ,string sectioncontent,string userid)
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("Sp_TblContact", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Section1image", section1image);
                cmd.Parameters.AddWithValue("@Section2image", section2image);
                cmd.Parameters.AddWithValue("@Section1heading", sectionheading);
                cmd.Parameters.AddWithValue("@Section1content", sectioncontent);
                cmd.Parameters.AddWithValue("@CrateBy", userid);
                cmd.Parameters.AddWithValue("@UpdateBy", userid);
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