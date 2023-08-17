using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace B2cWebsiteAdmin.App_Code
{
    public class ClsWebsite:GetConnectionString
    {
        public DataTable GetWeb()
        {
            string strcon = getconnection();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Sp_GetTblWebsiteMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return dt;
            }
            else
            {
                return dt;
            }
        }
        public int WebSiteDataInsert(string OwnerName, string ComapanyName, string DomainName, string CompanyPan, string CompanyAdhar, string ContactNo, string ConatactEmail, string CompanyAddres, string SupportContact, string SupportEmaild, string ComapnyLogo, string ApkLink, string LoginLink, string InstagramLink, string FacebookLink, string TwitterLink, string LinkdinLink, string WhatsappLink, string FoEmailSectionimg)
        {
            try
            {


                string strcon = getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblWebsiteMaster", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@OwnerName", OwnerName);
                cmd.Parameters.AddWithValue("@ComapanyName", ComapanyName);
                cmd.Parameters.AddWithValue("@DomainName", DomainName);
                cmd.Parameters.AddWithValue("@CompanyPan", CompanyPan);
                cmd.Parameters.AddWithValue("@CompanyAdharNo", CompanyAdhar);
                cmd.Parameters.AddWithValue("@CompanyCertificate", "");
                cmd.Parameters.AddWithValue("@ContactNo", ContactNo);
                cmd.Parameters.AddWithValue("@ConatactEmail", ConatactEmail);
                cmd.Parameters.AddWithValue("@CompanyAddress", CompanyAddres);
                cmd.Parameters.AddWithValue("@SupportContactNo", SupportContact);
                cmd.Parameters.AddWithValue("@SupportEmaild", SupportEmaild);
                cmd.Parameters.AddWithValue("@ComapnyLogo", ComapnyLogo);
                cmd.Parameters.AddWithValue("@CreateBy", "");
                cmd.Parameters.AddWithValue("@UpdateBy", "");
                cmd.Parameters.AddWithValue("@ApkLink", ApkLink);
                cmd.Parameters.AddWithValue("@LoginLink", LoginLink);
                cmd.Parameters.AddWithValue("@InstagramLink", InstagramLink);
                cmd.Parameters.AddWithValue("@FacebookLink", FacebookLink);
                cmd.Parameters.AddWithValue("@TwitterLink", TwitterLink);
                cmd.Parameters.AddWithValue("@LinkdinLink", LinkdinLink);
                cmd.Parameters.AddWithValue("@WhatsappLink", WhatsappLink);
                cmd.Parameters.AddWithValue("@FoEmailSectionimg", FoEmailSectionimg);
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