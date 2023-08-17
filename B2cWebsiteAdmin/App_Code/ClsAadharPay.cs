using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsAadharPay:GetConnectionString
    {
        public DataTable GetDataAadharPay()
        {
            try
            {
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblAadharPayGet", con);
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
        public int DataInsertAadharPay(string image1, string image2, string Heading1, string Heading2, string content1, string paragraph1, string paragraph2, string paragraph3, string paragraph4, string paragraph5, string buttonLink, string create_updateby)
        {
            try
            {

                int result = 0;
                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblAadharPay", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Image1", image1);
                cmd.Parameters.AddWithValue("@Image2", image2);

                cmd.Parameters.AddWithValue("@Heading1", Heading1);
                cmd.Parameters.AddWithValue("@Heading2", Heading2);

                cmd.Parameters.AddWithValue("@Content1", content1);
                cmd.Parameters.AddWithValue("@paragraph1", paragraph1);
                cmd.Parameters.AddWithValue("@paragraph2", paragraph2);
                cmd.Parameters.AddWithValue("@paragraph3", paragraph3);
                cmd.Parameters.AddWithValue("@paragraph4", paragraph4);
                cmd.Parameters.AddWithValue("@paragraph5", paragraph5);


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