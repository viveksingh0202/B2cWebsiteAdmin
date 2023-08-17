using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Upcomingevents : System.Web.UI.Page
    {
        ClsAllMethodPersonal clsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsHomeSection4 clsHomeSection4 = new ClsHomeSection4();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataHomeSection4();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetDataHomeSection4()
        {
            try
            {
                DataTable dt = clsHomeSection4.GetHomeSection4();
                if (dt != null && dt.Rows.Count > 0)
                {
                    ViewState["Div1image"] = dt.Rows[0]["Div1image"].ToString();
                    ViewState["Div2image"] = dt.Rows[0]["Div2image"].ToString();
                    ViewState["Div3image"] = dt.Rows[0]["Div3image"].ToString();
                    div1image.ImageUrl = dt.Rows[0]["Div1image"].ToString();
                    div2image.ImageUrl = dt.Rows[0]["Div2image"].ToString();
                    div3third.ImageUrl = dt.Rows[0]["Div3image"].ToString();
                    lblheading.Text = dt.Rows[0]["Section4Heading"].ToString();
                    lblcontent.Text = dt.Rows[0]["Section4Content"].ToString();
                    lblcontent2.Text = dt.Rows[0]["Section5Content"].ToString();
                    lblcontent3.Text = dt.Rows[0]["Section6Content"].ToString();
                    lbldiv1heading.Text = dt.Rows[0]["Div1heading"].ToString();
                    lbldiv2heading.Text = dt.Rows[0]["Div2heading"].ToString();
                    lbldiv3heading.Text = dt.Rows[0]["Div3heading"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_sumit_Click(object sender, EventArgs e)
        {
            string userid = Session["userid"].ToString();
            try
            {
                int minsize = 60 * 1024; int maxsize = 1024 * 1024;
                bool status = true;
                string filename1 = "", filename2 = "", filename3 = "";
                int fileSize1 = 0, fileSize2 = 0, fileSize3 = 0;
                string heading1 = "", Div1heading2 = "", content1 = "", content2 = "", content3 = "", Div2heading2 = "", Div3heading2 = "";
                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename1));
                        filename1 = "~/AdminModule/Images/" + filename1;
                        status = clsAllMethodPersonal.checkexetion(FileUpload1);
                    }
                    else
                    {
                        filename1 = ViewState["Div1image"].ToString();
                    }
                }
                else
                {
                    filename1 = ViewState["Div1image"].ToString();
                }
                if (FileUpload2.HasFile)
                {
                    fileSize2 = FileUpload2.PostedFile.ContentLength;
                    if (fileSize2 > minsize & fileSize2 < maxsize)
                    {
                        filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                        filename2 = "~/AdminModule/Images/" + filename2;
                        status = clsAllMethodPersonal.checkexetion(FileUpload2);
                    }
                    else
                    {

                    }
                }
                else
                {
                    filename2 = ViewState["Div2image"].ToString();
                }
                if (FileUpload3.HasFile)
                {
                    fileSize3 = FileUpload3.PostedFile.ContentLength;
                    if (fileSize3 > minsize & fileSize3 < maxsize)
                    {
                        filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
                        FileUpload3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename3));
                        filename3 = "~/AdminModule/Images/" + filename3;
                        status = clsAllMethodPersonal.checkexetion(FileUpload3);
                    }
                    else
                    {
                        filename3 = ViewState["Div3image"].ToString();
                       
                    }
                }
                else
                {
                    filename3 = ViewState["Div3image"].ToString();
                }
                if ((txtheading.Text != null) && (txtheading.Text != ""))
                {
                    heading1 = txtheading.Text;
                }
                else
                {
                    heading1 = lblheading.Text;
                }
                if ((txtcontent.Text !=null) && (txtcontent.Text != ""))
                {
                    content1 = txtcontent.Text;
                }
                else
                {
                    content1 = lblcontent.Text;
                }
                if ((txtcontent2.Text != null) && (txtcontent2.Text != ""))
                {
                    content2 = txtcontent2.Text;
                }
                else
                {
                    content2 = lblcontent2.Text;
                }
                if ((txtcontent3.Text != null) && (txtcontent3.Text != ""))
                {
                    content3 = txtcontent2.Text;
                }
                else
                {
                    content3 = lblcontent2.Text;
                }

                if ((txtdiv1heading.Text != null) && (txtdiv1heading.Text !=""))
                {
                    Div1heading2 = txtdiv1heading.Text;
                }
                else
                {
                    Div1heading2 = lbldiv1heading.Text;
                }
                if ((txtdiv2heading.Text !=null) && (txtdiv2heading.Text != ""))
                {
                    Div2heading2 = txtdiv2heading.Text;
                }
                else
                {
                    Div2heading2 = lbldiv2heading.Text;
                }
                if ((txtdiv3heading.Text != null) && (txtdiv3heading.Text != ""))
                {
                    Div3heading2 = txtdiv3heading.Text;
                }
                else
                {
                    Div3heading2 = lbldiv3heading.Text;
                }
                if (status == true)
                {
                    int result = clsHomeSection4.HomeSection4Insert(filename1, filename2, filename3, heading1, content1, content2, content3, Div1heading2, Div2heading2, Div3heading2, userid, userid);
                    if (result == 1)
                    {
                        txtheading.Text = txtcontent.Text = txtdiv1heading.Text = txtdiv2heading.Text = txtdiv3heading.Text = "";
                        GetDataHomeSection4();
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                    }
                }



            }
            catch (Exception ex)
            {
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            txtheading.Text = txtcontent.Text = txtdiv1heading.Text = txtdiv2heading.Text = txtdiv3heading.Text = "";

        }
    }
}