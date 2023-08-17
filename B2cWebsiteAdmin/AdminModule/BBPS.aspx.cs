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
    public partial class BBPS : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsBBPS clsBBPS = new ClsBBPS();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataBbps();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }

        public void GetDataBbps()
        {
            DataTable dt = clsBBPS.GetDataBBPS();
            if (dt.Rows.Count > 0)
            {
                ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                ViewState["image2"] = dt.Rows[0]["image2"].ToString();

                ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();

                lblheading1.Text = dt.Rows[0]["heading1"].ToString();
                lblheading2.Text = dt.Rows[0]["heading2"].ToString();

                lblcontent.Text = dt.Rows[0]["content1"].ToString();
                lblparagraph1.Text = dt.Rows[0]["paragraph1"].ToString(); ;
                lblparagraph2.Text = dt.Rows[0]["paragraph2"].ToString(); ;
                lblparagraph3.Text = dt.Rows[0]["paragraph3"].ToString(); ;
                lblparagraph4.Text = dt.Rows[0]["Paragraph4"].ToString(); ;


                lblbuttonlink.Text = dt.Rows[0]["buttonLink"].ToString();
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;
                string filename1 = "", filename2 = "";
                int  fileSize1 = 0, fileSize2 = 0;
                string heading1 = "", heading2 = "",  content1 = "", content2 = "",  paragraph1 = "", paragraph2 = "", paragraph3 = "", paragraph4 = "", buttonlink = "";

                //******************************* Heading *************************************************************************

                if ((txtsecondheading.Text != null) && (txtsecondheading.Text != ""))
                {
                    heading2 = txtsecondheading.Text;
                }
                else
                {
                    heading2 = lblheading2.Text;
                }
                if ((txtfirstheading.Text != null) && (txtfirstheading.Text != ""))
                {
                    heading1 = txtfirstheading.Text;
                }
                else
                {
                    heading1 = lblheading1.Text;
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
                //=================== paragraph ==================================
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




                // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ button Link ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                if ((txtlinkbutton.Text != null) && (txtlinkbutton.Text != ""))
                {
                    buttonlink = txtlinkbutton.Text;
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
                    int result = clsBBPS.DataInsertBBPS(filename1, filename2, heading1, heading2,content1,paragraph1,paragraph2,paragraph3,paragraph4, buttonlink, "");
                    if (result > 0)
                    {
                        GetDataBbps();
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                      //  Response.Write("<script>alert('Data has been successfully updated');</script>");
                        txtsecondheading.Text = txtfirstheading.Text = txtcontent.Text = txtparagraph1.Text = txtparagraph2.Text = txtparagraph3.Text = txtparagraph4.Text = "";
                    }
                    else
                    {
                        GetDataBbps();
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        //Response.Write("<script>alert('error something wrong ');</script>");
                        txtsecondheading.Text = txtfirstheading.Text = txtcontent.Text = txtparagraph1.Text = txtparagraph2.Text = txtparagraph3.Text = txtparagraph4.Text = "";

                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}