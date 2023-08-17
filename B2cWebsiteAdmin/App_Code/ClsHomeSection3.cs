using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsHomeSection3:GetConnectionString
    {
        public DataTable GetHomeSection3()
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlDataAdapter adp = new SqlDataAdapter("SpGetHomeSection3",con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                adp.Fill(dt);
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
        public int HomeSection3Insert(string Div1Image, string Div2Image, string Div3Image,string Div4Image, string Section4Heading, string Section4content, string Div1Heading, string Div2Heading, string Div3Heading,string Div4Heading,string Div1content, string Div2content, string Div3content, string Div4content,  string CreateBy, string updateBy)
        {
            try
            {
                string constr = getconnection();
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("Sp1_HomeSection3", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Div1image", Div1Image);
                cmd.Parameters.AddWithValue("@Div2image", Div2Image);
                cmd.Parameters.AddWithValue("@Div3image", Div3Image);
                cmd.Parameters.AddWithValue("@Div4image", Div4Image);
                cmd.Parameters.AddWithValue("@Section3Heading", Section4Heading);
                cmd.Parameters.AddWithValue("@Section3Content", Section4content);
                cmd.Parameters.AddWithValue("@Div1heading", Div1Heading);
                cmd.Parameters.AddWithValue("@Div1content", Div1content);
                cmd.Parameters.AddWithValue("@Div2heading", Div2Heading);
                cmd.Parameters.AddWithValue("@Div2content", Div2content);
                cmd.Parameters.AddWithValue("@Div3heading", Div3Heading);
                cmd.Parameters.AddWithValue("@Div3content", Div3content);
                cmd.Parameters.AddWithValue("@Div4heading", Div4Heading);
                cmd.Parameters.AddWithValue("@Div4content", Div4content);
                cmd.Parameters.AddWithValue("@CreateBy", CreateBy);
                cmd.Parameters.AddWithValue("@UpdateBy", updateBy);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Close();

                return result;
            }
            catch (Exception ex)
            {
                return 0;
            }

        }
    }
}