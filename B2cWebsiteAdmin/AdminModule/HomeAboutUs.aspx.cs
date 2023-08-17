using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class HomeAboutUs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        clsHomeAbout homeaboutus = new clsHomeAbout();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind1();
                messagebox.Visible = false;
                messageboxerror.Visible = false;

            }
        }
        void DataBind1()
        {

            try
            {
                DataTable dt = homeaboutus.Homeaboutcont();
                if (dt.Rows.Count > 0)
                {
                    ViewState["Heading"] = dt.Rows[0]["Heading"].ToString();
                    ViewState["Content1"] = dt.Rows[0]["Content1"].ToString();
                    ViewState["content2"] = dt.Rows[0]["content2"].ToString();
                    ViewState["ButtonLink"] = dt.Rows[0]["ButtonLink"].ToString();
                    ViewState["CreateBy"] = dt.Rows[0]["CreateBy"].ToString();
                    ViewState["image"] = dt.Rows[0]["image"].ToString();
                    AboutImage.ImageUrl = dt.Rows[0]["image"].ToString();  // dt.Rows[0]["sliderimage1"].ToString();
                    tblcontetn.Text = dt.Rows[0]["Content1"].ToString();
                    tblcontetn2.Text = dt.Rows[0]["content2"].ToString();
                    tblHeading.Text = dt.Rows[0]["Heading"].ToString();
                    lblLink.Text = dt.Rows[0]["buttonLink"].ToString();

                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;
                string filename = "";
                int fileSize1 = 0;
                string lblheading11 = "", lblcontent1s11 = "", s1txtlink11 = "", txtcontent11 = "";

                if ((txtcontent1.Text != null) && (txtcontent1.Text != ""))
                {
                    txtcontent11 = txtcontent1.Text;
                }
                else
                {
                    txtcontent11 = ViewState["content2"].ToString();
                }

                if ((txtheading.Text != null) && (txtheading.Text != ""))
                {
                    lblheading11 = txtheading.Text;
                }
                else
                {
                    lblheading11 = ViewState["Heading"].ToString();
                }
                if ((txtcontent.Text != null) && (txtcontent.Text != ""))
                {
                    lblcontent1s11 = txtcontent.Text;
                }
                else
                {
                    lblcontent1s11 = ViewState["Content1"].ToString();
                }
                if ((txtlink.Text != null) && (txtlink.Text != ""))
                {
                    s1txtlink11 = txtlink.Text;
                }
                else
                {
                    s1txtlink11 = ViewState["ButtonLink"].ToString();
                }


                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename));
                        filename = "~/AdminModule/Images/" + filename;
                        status = checkexetion(FileUpload1);
                    }
                    else
                    {
                        filename = ViewState["image"].ToString();
                    }
                }
                else
                {
                    filename = ViewState["image"].ToString();



                }
                if (status == true)
                {

                    SqlCommand cmd = new SqlCommand("Sp_tblHomeAboutUs", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@image", filename);
                    cmd.Parameters.AddWithValue("@Content1", lblcontent1s11);
                    cmd.Parameters.AddWithValue("@content2", txtcontent11);
                    //cmd.Parameters.AddWithValue("@Logoimage", filename4);
                    cmd.Parameters.AddWithValue("@Heading", lblheading11);
                    cmd.Parameters.AddWithValue("@ButtonLink", lblcontent1s11);
                    cmd.Parameters.AddWithValue("@buttontitile", s1txtlink11);
                    cmd.Parameters.AddWithValue("@CreateBy", "");

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //Response.Write("<script>alert('Data has been successfully updated');</script>");
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                    txtcontent1.Text = txtheading.Text = txtcontent.Text = txtlink.Text = "";

                }
                else
                {
                    //Response.Write("<script>alert('error something wrong ');</script>");
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;
                    txtcontent1.Text = txtheading.Text = txtcontent.Text = txtlink.Text = "";

                }
            }
            catch (Exception ex)
            {

            }
            bool checkexetion(FileUpload fileUpload1)
            {
                try
                {
                    bool Status;

                    string FileExt = Path.GetExtension(fileUpload1.FileName);



                    if (FileExt.ToUpper() == "PNG" || FileExt.ToUpper() == "JPG" || FileExt.ToUpper() == "JPEG" || FileExt.ToUpper() == ".JPEG" || FileExt.ToUpper() == ".JPG" || FileExt.ToUpper() == ".PNG")
                    {
                        Status = true;
                    }
                    else
                    {
                        Status = false;
                    }

                    return Status;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }
    }
}