using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Create_Card__LIC_Payment : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsCreditCashLic clsCredit = new ClsCreditCashLic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataCreditLic();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataCreditLic()
        {
            try
            {


                DataTable dt = clsCredit.GetDataCreditLic();
                if (dt.Rows.Count > 0)
                {
                    ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                    ViewState["image2"] = dt.Rows[0]["image2"].ToString();

                    ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                    ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();

                    lblheading1.Text = dt.Rows[0]["heading1"].ToString();
                    lblheading2.Text = dt.Rows[0]["heading2"].ToString();

                    lblcontents1.Text = dt.Rows[0]["content1"].ToString();
                  

                    lblbuttonlink.Text = dt.Rows[0]["buttonLink"].ToString();
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
                string filename1 = "", filename2 = "";
                int fileSize1 = 0, fileSize2 = 0;
                string heading1 = "", heading2 = "", content1 = "", buttonlink = "";

                //******************************* Heading *************************************************************************

                if ((txtHeading1.Text != null) && (txtHeading1.Text != ""))
                {
                    heading1 = txtHeading1.Text;
                }
                else
                {
                    heading1 = lblheading1.Text;
                }
                if ((txtHeading2.Text != null) && (txtHeading2.Text != ""))
                {
                    heading2 = txtHeading2.Text;
                }
                else
                {
                    heading2 = lblheading2.Text;
                }


                //--------------------------------- Content -------------------------------------------------------------------------

                if ((txtContent1.Text != null) && (txtContent1.Text != ""))
                {
                    content1 = txtContent1.Text;
                }
                else
                {
                    content1 = lblcontents1.Text;
                }
               





                // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ button Link ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                if ((txtbuttonLink.Text != null) && (txtbuttonLink.Text != ""))
                {
                    buttonlink = txtbuttonLink.Text;
                }
                else
                {
                    buttonlink = lblbuttonlink.Text;
                }
                // ________________________________________________ Images ___________________________________________________
                if (image1.HasFile)
                {
                    fileSize1 = image1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename1 = Path.GetFileName(image1.PostedFile.FileName);
                        image1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename1));
                        filename1 = "~/AdminModule/Images/" + filename1;
                        status = ClsAllMethodPersonal.checkexetion(image1);
                    }
                    else
                    {

                    }
                }
                else
                {
                    filename1 = ViewState["image1"].ToString();



                }
                if (image2.HasFile)
                {
                    fileSize2 = image2.PostedFile.ContentLength;
                    if (fileSize2 > minsize & fileSize2 < maxsize)
                    {
                        filename2 = Path.GetFileName(image2.PostedFile.FileName);
                        image2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                        filename2 = "~/AdminModule/Images/" + filename2;
                        status = ClsAllMethodPersonal.checkexetion(image2);
                    }
                    else
                    {

                    }
                }
                else
                {
                    filename2 = ViewState["image2"].ToString();

                }

                if (status == true)
                {
                    int result = clsCredit.DataInsertCreditLic(filename1, filename2, heading1, heading2, content1,  buttonlink, "");
                    if (result > 0)
                    {
                        GetDataCreditLic();
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        //Response.Write("<script>alert('Data has been successfully updated');</script>");
                        txtHeading1.Text = txtHeading2.Text = txtbuttonLink.Text = txtContent1.Text = "";
                    }
                    else
                    {
                        GetDataCreditLic();
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        // Response.Write("<script>alert('error something wrong ');</script>");
                        txtHeading1.Text = txtHeading2.Text = txtbuttonLink.Text = txtContent1.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}