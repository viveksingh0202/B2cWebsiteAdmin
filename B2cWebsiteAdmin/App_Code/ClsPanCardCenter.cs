using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsPanCardCenter:GetConnectionString
    {
        public DataTable GetDataPanCard()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblPanCardServiceGet", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public int DataInsertPanCard(string image1, string image2, string image3, string Heading1, string Heading2, string Heading3, string content1, string content2,  string paragraph1, string paragraph2, string paragraph3,string paragraph4, string buttonLink, string create_updateby)
        {
            try
            {

                int result = 0;
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblPanCardService", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Image1", image1);
                cmd.Parameters.AddWithValue("@Image2", image2);
                cmd.Parameters.AddWithValue("@Image3", image3);
                cmd.Parameters.AddWithValue("@Heading1", Heading1);
                cmd.Parameters.AddWithValue("@Heading2", Heading2);
                cmd.Parameters.AddWithValue("@Heading3", Heading3);
                cmd.Parameters.AddWithValue("@Content1", content1);
                cmd.Parameters.AddWithValue("@Content2", content2);
               
                cmd.Parameters.AddWithValue("@Paragraph1", paragraph1);
                cmd.Parameters.AddWithValue("@Paragraph2", paragraph2);
                cmd.Parameters.AddWithValue("@Paragraph3", paragraph3);
                cmd.Parameters.AddWithValue("@Paragraph4", paragraph4);
                cmd.Parameters.AddWithValue("@Buttonlink", buttonLink);
                cmd.Parameters.AddWithValue("@Buttontittle", "");
                cmd.Parameters.AddWithValue("@CreateBy", create_updateby);
                cmd.Parameters.AddWithValue("@UpdateBy", create_updateby);
                con.Open();
                result = cmd.ExecuteNonQuery();
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