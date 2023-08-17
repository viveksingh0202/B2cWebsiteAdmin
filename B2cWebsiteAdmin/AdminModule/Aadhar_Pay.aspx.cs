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
    public partial class Aadhar_Pay : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsAadharPay clsAadhar = new ClsAadharPay();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataAdhar();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataAdhar()
        {
            try
            {
                DataTable dt = clsAadhar.GetDataAadharPay();
                if (dt.Rows.Count > 0)
                {
                    ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                    ViewState["image2"] = dt.Rows[0]["image2"].ToString();
                    ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                    ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();
                    lblheadind1.Text = dt.Rows[0]["heading1"].ToString();
                    lblheadind2.Text = dt.Rows[0]["heading2"].ToString();
                    lblcontent.Text = dt.Rows[0]["content1"].ToString();
                    lblbuttonlink.Text = dt.Rows[0]["buttonLink"].ToString();
                    lblparagraph1.Text= dt.Rows[0]["paragraph1"].ToString();
                    lblparagraph2.Text= dt.Rows[0]["paragraph2"].ToString();
                    lblparagraph3.Text= dt.Rows[0]["paragraph3"].ToString();
                    lblparagraph4.Text= dt.Rows[0]["paragraph4"].ToString();
                    lblparagraph5.Text= dt.Rows[0]["paragraph5"].ToString();
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
                int minsize = 60 * 1024; int maxsize = 1024 * 1024 ;
                bool status = true;
                string filename1 = "", filename2 = "";
                int fileSize1 = 0, fileSize2 = 0;
                string heading1 = "", heading2 = "", content1 = "", paragraph1 = "", paragraph2 = "", paragraph3 = "", paragraph4 = "", paragraph5 = "", buttonlink = "";

                //******************************* Heading *************************************************************************

                if ((txtfirstheading1.Text != null) && (txtfirstheading1.Text != ""))
                {
                    heading1 = txtfirstheading1.Text;
                }
                else
                {
                    heading1 = lblheadind1.Text;
                }
                if ((txtfirstheading2.Text != null) && (txtfirstheading2.Text != ""))
                {
                    heading2 = txtfirstheading2.Text;
                }
                else
                {
                    heading2 = lblheadind2.Text;
                }
                //--------------------------------- Content -------------------------------------------------------------------------

                if ((txtcontent.Text != null) && (txtcontent.Text != ""))
                {
                    content1 = txtcontent.Text;
                }
                else
                {
                    content1 = lblcontent.Text;
                }

                //_____________________________________ Paragraph _______________________________

                if ((txtparagraph1.Text != null) && (txtparagraph1.Text != ""))
                {
                    paragraph1 = txtparagraph1.Text;
                }
                else
                {
                    paragraph1 = lblparagraph1.Text;
                }
                if ((txtparagraph2.Text != null) && (txtparagraph2.Text != ""))
                {
                    paragraph2 = txtparagraph2.Text;
                }
                else
                {
                    paragraph2 = lblparagraph2.Text;
                }
                if ((txtparagraph3.Text != null) && (txtparagraph3.Text != ""))
                {
                    paragraph3 = txtparagraph3.Text;
                }
                else
                {
                    paragraph3 = lblparagraph3.Text;
                }
                if ((txtparagraph4.Text != null) && (txtparagraph4.Text != ""))
                {
                    paragraph4 = txtparagraph4.Text;
                }
                else
                {
                    paragraph4 = lblparagraph4.Text;
                }
                if ((txtparagraph5.Text != null) && (txtparagraph5.Text != ""))
                {
                    paragraph5 = txtparagraph5.Text;
                }
                else
                {
                    paragraph5 = lblparagraph5.Text;
                }
                // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ button Link ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                if ((txtbuttonlink.Text != null) && (txtbuttonlink.Text != ""))
                {
                    buttonlink = txtbuttonlink.Text;
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
                    int result = clsAadhar.DataInsertAadharPay(filename1, filename2, heading1, heading2, content1,paragraph1,paragraph2,paragraph3,paragraph4,paragraph5, buttonlink, "");
                    if (result > 0)
                    {
                        GetDataAdhar();
                        //Response.Write("<script>alert('Data has been successfully updated');</script>");
                        //lblmassage.Text = "Update Success";
                        //lblmassage.ForeColor = Color.Green;
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        txtfirstheading1.Text = txtfirstheading2.Text = txtcontent.Text = txtbuttonlink.Text = txtparagraph5.Text = txtparagraph4.Text = txtparagraph3.Text = txtparagraph2.Text = txtparagraph1.Text = "";
                    }
                    else
                    {
                        GetDataAdhar();
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        //Response.Write("<script>alert('error something wrong ');</script>");
                        txtfirstheading1.Text = txtfirstheading2.Text = txtcontent.Text = txtbuttonlink.Text = txtparagraph5.Text = txtparagraph4.Text = txtparagraph3.Text = txtparagraph2.Text = txtparagraph1.Text = "";

                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}