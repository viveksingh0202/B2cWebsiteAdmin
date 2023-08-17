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
    public partial class Safe_Gold : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsSadeGold clsSafe = new ClsSadeGold();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataSafe();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataSafe()
        {
            DataTable dt = clsSafe.GetDataSafeGOld();
            if (dt.Rows.Count > 0)
            {
                ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                ViewState["image2"] = dt.Rows[0]["image2"].ToString();
                ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();
                lblheadig1.Text = dt.Rows[0]["heading1"].ToString();
                lblheadig2.Text = dt.Rows[0]["heading2"].ToString();
                lblcontent1.Text = dt.Rows[0]["content1"].ToString();
                lblcontent2.Text = dt.Rows[0]["content2"].ToString(); ;
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
                int fileSize1 = 0, fileSize2 = 0;
                string heading1 = "", heading2 = "", content1 = "", content2 = "", buttonlink = "";

                //******************************* Heading *************************************************************************

                if ((txtheading1.Text != null) && (txtheading1.Text != ""))
                {
                    heading1 = txtheading1.Text;
                }
                else
                {
                    heading1 = lblheadig1.Text;
                }
                if ((txtheading2.Text != null) && (txtheading2.Text != ""))
                {
                    heading2 = txtheading2.Text;
                }
                else
                {
                    heading2 = lblheadig2.Text;
                }
                //--------------------------------- Content -------------------------------------------------------------------------

                if ((txtcontent1.Text != null) && (txtcontent1.Text != ""))
                {
                    content1 = txtcontent1.Text;
                }
                else
                {
                    content1 = lblcontent1.Text;
                }

                if ((txtcontent2.Text != null) && (txtcontent2.Text != ""))
                {
                    content2 = txtcontent2.Text;
                }
                else
                {
                    content2 = lblcontent2.Text;
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
                    int result = clsSafe.DataInsertSafeGold(filename1, filename2, heading1, heading2, content1, content2, buttonlink, "");
                    if (result > 0)
                    {
                        GetDataSafe();
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        //lblmassage.Text = "Update Success";
                        //lblmassage.ForeColor = Color.Green;
                        txtheading1.Text = txtheading2.Text = txtcontent2.Text = txtcontent1.Text = txtbuttonlink.Text = "";
                    }
                    else
                    {
                        GetDataSafe();
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        //lblmassage.Text = "Update Not Success";
                        //lblmassage.ForeColor = Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}