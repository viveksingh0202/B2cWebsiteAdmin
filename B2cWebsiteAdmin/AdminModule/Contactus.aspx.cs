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
    public partial class Contactus : System.Web.UI.Page
    {
        ClsContact clsContact = new ClsContact();
        ClsAllMethodPersonal clsAll = new ClsAllMethodPersonal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSectionContact();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }
        public void GetSectionContact()
        {
            try
            {
                DataTable dt = clsContact.SectionContantGet();
                if (dt != null && dt.Rows.Count > 0)
                {
                    ViewState["Image1"] = dt.Rows[0]["Section1image"].ToString();
                    ViewState["Image2"] = dt.Rows[0]["Section2image"].ToString();
                    
                    imagec1.ImageUrl = dt.Rows[0]["Section1image"].ToString();
                    imagec2.ImageUrl = dt.Rows[0]["Section2image"].ToString();
                    lblheading.Text = dt.Rows[0]["Section1heading"].ToString();
                    lblcontent.Text = dt.Rows[0]["Section1content"].ToString();

                }
                else
                {

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
                string userid = Session["userid"].ToString();
                bool status = true,fsize=true;
                string imagesection1, imagesection2, headingSection1, contentsection2 = "";
                int minsize = 60 * 1024; int maxsize = 500 * 1024;
                int filesize1 = 0, filesize2 = 0;
                if (FileUpload1.HasFile)
                {
                    filesize1 = FileUpload1.PostedFile.ContentLength;
                    if (filesize1 >= minsize && filesize1 <= maxsize)
                    {
                        imagesection1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + imagesection1));
                        imagesection1 = "~/AdminModule/Images/" + imagesection1;
                        status = clsAll.checkexetion(FileUpload1);
                    }
                    else
                    {
                        imagesection1 = ViewState["Image1"].ToString();
                        fsize = false;
                    }
                }
                else
                {
                    imagesection1 = ViewState["Image1"].ToString();
                }

                if (FileUpload2.HasFile)
                {
                    filesize2 = FileUpload2.PostedFile.ContentLength;
                    if (filesize2 >= minsize && filesize2 <= maxsize)
                    {
                        imagesection2 =Path.GetFileName( FileUpload2.PostedFile.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + imagesection2));
                        imagesection2 = "~/AdminModule/Images/" + imagesection2;
                        status = clsAll.checkexetion(FileUpload2);
                    }
                    else
                    {
                        imagesection2 = ViewState["Image2"].ToString();
                        fsize = false;
                    }
                }
                else
                {
                    imagesection2 = ViewState["Image2"].ToString();
                }
                if(txtheading.Text!=null && txtheading.Text != "")
                {
                    headingSection1 = txtheading.Text;
                }
                else
                {
                    headingSection1 = lblheading.Text;
                }
                if(txtcontent.Text!=null && txtcontent.Text != "")
                {
                    contentsection2 = txtcontent.Text;
                }
                else
                {
                    contentsection2 = lblcontent.Text;
                }
                if (status == true && fsize==true)
                {
                    int result = clsContact.ContectSectionInsert(imagesection1, imagesection2, headingSection1, contentsection2, userid);
                    if (result > 0)
                    {

                        messagebox.Visible = true;
                        messageboxerror.Visible = false; 
                        GetSectionContact();
                       // Response.Write("<script>alert('Data has been successfully updated');</script>");
                    }
                    else
                    {
                        GetSectionContact();
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                        //Response.Write("<script>alert('error something wrong ');</script>");
                    }
                }
                



            }
            catch (Exception ex)
            {

            }

        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {

        }
    }
}