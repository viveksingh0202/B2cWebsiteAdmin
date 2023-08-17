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
    public partial class Prepaid_Recharge : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();

        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsPrePaidRecharge paidRecharge = new ClsPrePaidRecharge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataPrecharge();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataPrecharge()
        {
            DataTable dt = paidRecharge.GetDataSafeGOld();
            if (dt.Rows.Count > 0)
            {
                ViewState["image1"] = dt.Rows[0]["image1"].ToString();
                //ViewState["image2"] = dt.Rows[0]["image2"].ToString();
                ImageFirst.ImageUrl = dt.Rows[0]["image1"].ToString();
                //ImageSecond.ImageUrl = dt.Rows[0]["image2"].ToString();
                lblheading1.Text = dt.Rows[0]["heading1"].ToString();
                //lblheading2.Text = dt.Rows[0]["heading2"].ToString();
                lblcontents1.Text = dt.Rows[0]["content1"].ToString();
                lblbuttonlink.Text = dt.Rows[0]["buttonLink"].ToString();
            }

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;
                string filename1 = "";
                int fileSize1 = 0;
                string heading1 = "", content1 = "",  buttonlink = "";

                //******************************* Heading *************************************************************************

                if ((txtheading1.Text != null) && (txtheading1.Text != ""))
                {
                    heading1 = txtheading1.Text;
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
                    content1 = lblcontents1.Text;
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
               

                if (status == true)
                {
                    int result = paidRecharge.DataInsertSafeGold(filename1,  heading1, content1, buttonlink, "");
                    if (result > 0)
                    {
                        //lblmessage.Text = "Update Success";
                        //lblmessage.ForeColor = Color.Green;
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                        GetDataPrecharge();
                        txtheading1.Text = txtbuttonlink.Text = txtcontent.Text =txtheading1.Text = "";
                    }
                    else
                    {

                        //lblmessage.Text = "Update Not Success";
                        //lblmessage.ForeColor = Color.Red;
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        txtheading1.Text =  txtbuttonlink.Text = txtcontent.Text =  txtheading1.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}