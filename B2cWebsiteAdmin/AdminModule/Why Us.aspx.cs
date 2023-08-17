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

    public partial class Why_Us : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();
        ClsAboutMaster clsAboutMaster = new ClsAboutMaster();
        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetWhyus();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }


        public void GetWhyus()
        {
            try
            {
                DataTable dt = clsAboutMaster.GetWhyUs();
                if (dt.Rows.Count > 0)
                {
                    lblcontents0.Text = dt.Rows[0]["Heading"].ToString();
                    lblcontents01.Text = dt.Rows[0]["Headingcont1"].ToString();
                    lblcontents02.Text = dt.Rows[0]["Headingcont2"].ToString();
                    lblcontents1.Text =dt.Rows[0]["ContentFirst"].ToString();
                    lblcontents2.Text = dt.Rows[0]["ContentSecound"].ToString();
                    lblcontents3.Text = dt.Rows[0]["ContentThird"].ToString();
                    lblcontents4.Text = dt.Rows[0]["ContentFouth"].ToString();
                    lblcontents5.Text = dt.Rows[0]["ContentFifth"].ToString();
                    //lblButtonlink.Text = dt.Rows[0]["ButtonLink"].ToString();
                    WhyusImage.ImageUrl = dt.Rows[0]["ImageWhyUs"].ToString();
                    ViewState["ImageWhyus"] = dt.Rows[0]["ImageWhyUs"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;
                string filename = "";
                int fileSize1 = 0;
                string contentFirst = "", contentsecound = "", contentthird = "", contentfouth = "", contentfifth = "",Heading="",Heading1="",Heading2="";/*buttonlink="";*/

                if (image1.HasFile)
                {
                    fileSize1 = image1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename = Path.GetFileName(image1.PostedFile.FileName);
                        image1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename));
                        filename = "~/AdminModule/Images/" + filename;
                        status = ClsAllMethodPersonal.checkexetion(image1);
                    }
                    else
                    {
                        lblmassage.Text = "Don't match file Size";
                        lblmassage.ForeColor = Color.Red;
                        filename = ViewState["ImageWhyus"].ToString();
                    }
                }
                else
                {

                    filename = ViewState["ImageWhyus"].ToString();
                }
                //if ((txtbuttonLink.Text != null) && (txtbuttonLink.Text != ""))
                //{
                //    buttonlink = txtbuttonLink.Text;
                //}
                //else
                //{
                //    buttonlink = lblButtonlink.Text;
                //}

                if ((txtContent01.Text != null) && (txtContent01.Text != ""))
                {
                    Heading = txtContent01.Text;
                }
                else
                {
                    Heading = lblcontents0.Text;
                }

                if ((txtContent02.Text != null) && (txtContent02.Text != ""))
                {
                    Heading1 = txtContent02.Text;
                }
                else
                {
                    Heading1 = lblcontents01.Text;
                }

                if ((txtContent03.Text != null) && (txtContent03.Text != ""))
                {
                    Heading2 = txtContent03.Text;
                }
                else
                {
                    Heading2 = lblcontents02.Text;
                }

                if ((txtContent1.Text != null) && (txtContent1.Text != ""))
                {
                    contentFirst  = txtContent1.Text;
                }
                else
                {
                    contentFirst= lblcontents1.Text;
                }
                if ((txtcontent2.Text != null) && (txtcontent2.Text != ""))
                {
                    contentsecound = txtcontent2.Text;
                }
                else
                {
                    contentsecound = lblcontents2.Text;
                }
                if ((txtcontent3.Text != null) && (txtcontent3.Text != ""))
                {
                    contentthird = txtcontent3.Text;
                }
                else
                {
                    contentthird = lblcontents3.Text;
                }
                if ((txtcontent4.Text != null) && (txtcontent4.Text != ""))
                {
                    contentfouth = txtcontent4.Text;
                }
                else
                {
                    contentfouth =lblcontents4.Text;
                }
                if ((txtcontent5.Text != null) && (txtcontent5.Text != ""))
                {
                    contentfifth = txtcontent5.Text;
                }
                else
                {
                    contentfifth = lblcontents5.Text;
                }
                string strcon = getConnectionString.getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblWhyUs", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ImageWhyUs", filename);
                cmd.Parameters.AddWithValue("@Heading", Heading);
                cmd.Parameters.AddWithValue("@Headingcont1", Heading1);
                cmd.Parameters.AddWithValue("@Headingcont2", Heading2);
                cmd.Parameters.AddWithValue("@ContentFirst", contentFirst);
                cmd.Parameters.AddWithValue("@ContentSecound", contentsecound);
                cmd.Parameters.AddWithValue("@ContentThird", contentthird);
                cmd.Parameters.AddWithValue("@ContentFouth", contentfouth);
                cmd.Parameters.AddWithValue("@ContentFifth", contentfifth);
                //cmd.Parameters.AddWithValue("@ButtonLink", buttonlink);
                cmd.Parameters.AddWithValue("@CreateBy","");
                cmd.Parameters.AddWithValue("@UpdateBy","");
                con.Open();
               int result= cmd.ExecuteNonQuery();
                con.Close();
                GetWhyus();
               
                 txtcontent5.Text = txtcontent4.Text = txtcontent3.Text = txtcontent2.Text = txtContent1.Text = "";
                if (result > 0)
                {
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
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