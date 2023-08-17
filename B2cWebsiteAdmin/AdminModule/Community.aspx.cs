using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Community : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        ClsBannerMaster clsBannerMaster = new ClsBannerMaster();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind1();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }

        }
        public void DataBind1()
        {

            DataTable dt = clsBannerMaster.GetCommunityData();
            if (dt != null && dt.Rows.Count > 0)
            {


                ViewState["communityimage1"] = dt.Rows[0]["communityimage1"].ToString();
                //ViewState["communityimage2"] = dt.Rows[0]["communityimage2"].ToString();
                //ViewState["communityimage3"] = dt.Rows[0]["communityimage3"].ToString();
                //  ViewState["Logoimage"] = dt.Rows[0]["Logoimage"].ToString();
                imagec1.ImageUrl = dt.Rows[0]["communityimage1"].ToString();
                //imagec2.ImageUrl = dt.Rows[0]["communityimage2"].ToString();
                //imagec3.ImageUrl = dt.Rows[0]["communityimage3"].ToString();
                //imagelogo.ImageUrl = dt.Rows[0]["Logoimage"].ToString();
                ViewState["lblheading"] = lblheading.Text = dt.Rows[0]["heading"].ToString();
                ViewState["lblheading2"] = lblheading2.Text = dt.Rows[0]["heading2"].ToString();
                ViewState["lblheading3"] = lblheading3.Text = dt.Rows[0]["heading3"].ToString();
                ViewState["tblcontent"] = tblcontent.Text = dt.Rows[0]["content"].ToString();
                ViewState["tblcontent2"] = tblcontent2.Text = dt.Rows[0]["content2"].ToString();
                ViewState["tblcontent3"] = tblcontent3.Text = dt.Rows[0]["content3"].ToString();
                //ViewState["tblbuttonlink"] = tblbuttonlink.Text = dt.Rows[0]["buttonlink"].ToString(); 

            }
        }

        protected void btn_update_Click(object sender, EventArgs e)

        {
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;
                string filename = ""; /*filename2 = "", filename3 = "";*/
                int fileSize1 = 0;
                string lblheading11 = "", lblheading12="", lblheading13="", lblcontent1s11 = "", lblcontent1s12="", lblcontent1s13="", s1txtlink11 = "";



                if ((txtheading.Text != null) && (txtheading.Text != ""))
                {
                    lblheading11 = txtheading.Text;
                }
                else
                {
                    lblheading11 = ViewState["lblheading"].ToString();
                }
                if ((txtcontent.Text != null) && (txtcontent.Text != ""))
                {
                    lblcontent1s11 = txtcontent.Text;
                }
                else
                {
                    lblcontent1s11 = ViewState["tblcontent"].ToString();
                }
                if ((txtheading2.Text != null) && (txtheading2.Text != ""))
                {
                    lblheading12 = txtheading2.Text;
                }
                else
                {
                    lblheading12 = ViewState["lblheading2"].ToString();
                }
                if ((txtcontent2.Text != null) && (txtcontent2.Text != ""))
                {
                    lblcontent1s12 = txtcontent2.Text;
                }
                else
                {
                    lblcontent1s12 = ViewState["tblcontent2"].ToString();
                }
                if ((txtheading3.Text != null) && (txtheading3.Text != ""))
                {
                    lblheading13 = txtheading3.Text;
                }
                else
                {
                    lblheading13 = ViewState["lblheading3"].ToString();
                }
                if ((txtcontent3.Text != null) && (txtcontent3.Text != ""))
                {
                    lblcontent1s13 = txtcontent3.Text;
                }
                else
                {
                    lblcontent1s13 = ViewState["tblcontent3"].ToString();
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
                        filename = ViewState["communityimage1"].ToString();
                        lblmassage.Text = "Don't match file Size";
                        lblmassage.ForeColor = Color.Red;
                    }
                }
                else
                {
                    filename = ViewState["communityimage1"].ToString();



                }
                //if (FileUpload2.HasFile)
                //{
                //    fileSize2 = FileUpload2.PostedFile.ContentLength;
                //    if (fileSize2 > minsize & fileSize2 < maxsize)
                //    {
                //        filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
                //        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                //        filename2 = "~/AdminModule/Images/" + filename2;
                //        status = checkexetion(FileUpload2);
                //    }
                //    else
                //    {
                //        filename2 = ViewState["communityimage2"].ToString();
                //        lblmassage.Text = "Don't match file Size";
                //        lblmassage.ForeColor = Color.Red;
                //    }
                //}
                //else
                //{
                //    filename2 = ViewState["communityimage2"].ToString();

                //}
                //if (FileUpload3.HasFile)
                //{

                //    fileSize3 = FileUpload3.PostedFile.ContentLength;
                //    if (fileSize3 > minsize & fileSize3 < maxsize)
                //    {
                //        filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
                //        FileUpload3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename3));
                //        filename3 = "~/AdminModule/Images/" + filename3;
                //        status = checkexetion(FileUpload3);
                //    }
                //    else
                //    {
                //        filename3 = ViewState["communityimage3"].ToString();
                //        lblmassage.Text = "Don't match file Size";
                //        lblmassage.ForeColor = Color.Red;
                //    }
                //}
                //else
                //{
                //    filename3 = ViewState["communityimage3"].ToString();

                //}
                //if (FileUpload4.HasFile)
                //{

                //    fileSize4 = FileUpload4.PostedFile.ContentLength;
                //    if (fileSize4 > minsize & fileSize4< maxsize)
                //    {
                //        filename4 = Path.GetFileName(FileUpload4.PostedFile.FileName);
                //        FileUpload3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename4));
                //        filename4 = "~/AdminModule/Images/" + filename4;
                //        status = checkexetion(FileUpload4);
                //    }
                //    else
                //    {

                //    }
                //}
                //else
                //{
                //    filename4 = ViewState["Logoimage"].ToString();

                //}

                if (status == true)
                {

                    SqlCommand cmd = new SqlCommand("sp_InsertMasterCommunity", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@communityimage1", filename);
                    //cmd.Parameters.AddWithValue("@communityimage2", filename2);
                    //cmd.Parameters.AddWithValue("@communityimage3", filename3);
                    //cmd.Parameters.AddWithValue("@Logoimage", filename4);
                    cmd.Parameters.AddWithValue("@heading", lblheading11);
                    cmd.Parameters.AddWithValue("@heading2", lblheading12);
                    cmd.Parameters.AddWithValue("@heading3", lblheading13);
                    cmd.Parameters.AddWithValue("@content", lblcontent1s11);
                    cmd.Parameters.AddWithValue("@content2", lblcontent1s12);
                    cmd.Parameters.AddWithValue("@content3", lblcontent1s13);
                    //cmd.Parameters.AddWithValue("@buttonlink", s1txtlink11);
                    //cmd.Parameters.AddWithValue("@buttontittle", "");
                    cmd.Parameters.AddWithValue("@createdateby", "");
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    // Response.Write("<script>alert('Data has been successfully updated');</script>");
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                    //txtheading.Text = txtlink.Text = txtcontent.Text = "";

                }
                else
                {
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;
                    //Response.Write("<script>alert('error something wrong ');</script>");
                }

            }
            catch (Exception ex)
            {

            }

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