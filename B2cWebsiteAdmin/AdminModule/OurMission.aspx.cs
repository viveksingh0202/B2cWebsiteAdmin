using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
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
    public partial class OurMission : System.Web.UI.Page
    {

        GetConnectionString getConnectionString = new GetConnectionString();
        ClsAboutMaster clsAboutMaster = new ClsAboutMaster();
        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetMission();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }

        }

        public void GetMission()
        {
            try
            {
                DataTable dt = clsAboutMaster.GetOurMission();
                if (dt.Rows.Count > 0)
                {
                    lblcontent1.Text = dt.Rows[0]["ContentFirst"].ToString();
                    lblcontent2.Text = dt.Rows[0]["ContentSecond"].ToString();
                    WhyusImage.ImageUrl = dt.Rows[0]["IamgeOurMission"].ToString();
                    ViewState["IamgeOurMission"] = dt.Rows[0]["IamgeOurMission"].ToString();
                    whyusImage2.ImageUrl = dt.Rows[0]["ImageOurMission2"].ToString();
                    ViewState["ImageOurMission2"] = dt.Rows[0]["ImageOurMission2"].ToString();
                    WhyusImage3.ImageUrl = dt.Rows[0]["ImageOurMission3"].ToString();
                    ViewState["ImageOurMission3"] = dt.Rows[0]["ImageOurMission3"].ToString();
                    WhyusImage4.ImageUrl = dt.Rows[0]["ImageOurMission4"].ToString();
                    ViewState["ImageOurMission4"] = dt.Rows[0]["ImageOurMission4"].ToString();
                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string userid = Session["userid"].ToString();
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;

                int fileSize1 = 0;
                int fileSize2 = 0;
                int fileSize3 = 0;
                int fileSize4 = 0;
                string ContentFirst = "", ContentSecound = "", Imageupload = "", Imageupload2 = "", Imageupload3 = "", Imageupload4 = "";
                if (image1.HasFile)
                {
                    fileSize1 = image1.PostedFile.ContentLength;

                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        Imageupload = Path.GetFileName(image1.PostedFile.FileName);
                        image1.SaveAs(Server.MapPath("~/AdminModule/Images/" + Imageupload));
                        Imageupload = "~/AdminModule/Images/" + Imageupload;
                        status = ClsAllMethodPersonal.checkexetion(image1);
                    }
                    else
                    {
                         Imageupload = ViewState["IamgeOurMission"].ToString();
                    }
                }

                else
                {
                    Imageupload = ViewState["IamgeOurMission"].ToString();
                }

                if (image2.HasFiles)
                {
                    fileSize2 = image2.PostedFile.ContentLength;
                    if (fileSize2 > minsize && fileSize2 < maxsize)
                    {
                        Imageupload2 = Path.GetFileName(image2.PostedFile.FileName);
                        image2.SaveAs(Server.MapPath("~/AdminModule/Images/" + Imageupload2));
                        Imageupload2 = "~/AdminModule/Images/" + Imageupload2;
                        status = ClsAllMethodPersonal.checkexetion(image2);
                    }
                    else
                    {
                        Imageupload2 = ViewState["ImageOurMission2"].ToString();
                    }
                }
                else
                {
                    Imageupload2 = ViewState["ImageOurMission2"].ToString();
                }

                if (image3.HasFiles)
                {
                    fileSize3 = image3.PostedFile.ContentLength;
                    if (fileSize3 > minsize && fileSize3 < maxsize)
                    {
                        Imageupload3 = Path.GetFileName(image3.PostedFile.FileName);
                        image3.SaveAs(Server.MapPath("~/AdminModule/Images/" + Imageupload3));
                        Imageupload3 = "~/AdminModule/Images/" + Imageupload3;
                        status = ClsAllMethodPersonal.checkexetion(image3);
                    }
                    else
                    {
                        Imageupload3 = ViewState["ImageOurMission3"].ToString();
                    }
                }
                else
                {
                    Imageupload3 = ViewState["ImageOurMission3"].ToString();
                }

                if (image4.HasFiles)
                {
                    fileSize4 = image4.PostedFile.ContentLength;
                    if (fileSize4 > minsize && fileSize4 < maxsize)
                    {
                        Imageupload4 = Path.GetFileName(image4.PostedFile.FileName);
                        image4.SaveAs(Server.MapPath("~/AdminModule/Images/" + Imageupload4));
                        Imageupload = "~/AdminModule/Images/" + Imageupload4;
                        status = ClsAllMethodPersonal.checkexetion(image4);
                    }
                    else
                    {
                        Imageupload4 = ViewState["ImageOurMission4"].ToString();
                    }
                }
                else
                {
                    Imageupload4 = ViewState["ImageOurMission4"].ToString();
                }


                if ((txtcontent2.Text != null) && (txtcontent2.Text != ""))
                {
                    ContentFirst = txtcontent2.Text;
                }
                else
                {
                    ContentFirst = lblcontent1.Text;
                }
                if ((txtContent1.Text != null) && (txtContent1.Text != ""))
                {
                    ContentSecound = txtContent1.Text;
                }
                else
                {
                    ContentSecound = lblcontent2.Text;
                }
                if (status == true)
                {
                    string strcon = getConnectionString.getconnection();
                    SqlConnection con = new SqlConnection(strcon);
                    SqlCommand cmd = new SqlCommand("Sp_TblOurMission", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ContentFirst", ContentFirst);
                    cmd.Parameters.AddWithValue("@ContentSecond", ContentSecound);
                    cmd.Parameters.AddWithValue("@IamgeOurMission", Imageupload);
                    cmd.Parameters.AddWithValue("@ImageOurMission2", Imageupload2);
                    cmd.Parameters.AddWithValue("@ImageOurMission3", Imageupload3);
                    cmd.Parameters.AddWithValue("@ImageOurMission4", Imageupload4);
                    cmd.Parameters.AddWithValue("@CreateBy", userid);
                    cmd.Parameters.AddWithValue("UpdateBy", userid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //lblmassage.Text = "Update Success ";
                    //lblmassage.ForeColor = Color.Green;
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                    GetMission();
                    txtcontent2.Text = txtContent1.Text = "";

                }
                else
                {
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }

        }
    }
}