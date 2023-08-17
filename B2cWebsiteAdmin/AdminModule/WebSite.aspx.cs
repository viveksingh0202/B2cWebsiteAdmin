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
    public partial class Footer_header : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();
        ClsAboutMaster clsAboutMaster = new ClsAboutMaster();
        ClsAllMethodPersonal clsAllMethodPersonal = new ClsAllMethodPersonal();
        ClsWebsite clsWebsite = new ClsWebsite();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }
        }

        public void GetData()
        {
            try
            {


                DataTable dt = clsWebsite.GetWeb();
                if (dt.Rows.Count > 0)
                {
                    ViewState["CompanyLogo"] = dt.Rows[0]["ComapnyLogo"].ToString();
                    ViewState["FoEmailSectionimg"] = dt.Rows[0]["FoEmailSectionimg"].ToString();
                    FoEmailSectionImage.ImageUrl= dt.Rows[0]["FoEmailSectionimg"].ToString();
                    logo.ImageUrl = dt.Rows[0]["ComapnyLogo"].ToString();
                    lblowneername.Text = dt.Rows[0]["ownerName"].ToString();
                    lblcompanyName.Text = dt.Rows[0]["ComapanyName"].ToString();
                    lblcompanypan.Text = dt.Rows[0]["CompanyPan"].ToString();
                    lblcompanyAdhar.Text = dt.Rows[0]["CompanyAdharNo"].ToString();
                    lblemail.Text = dt.Rows[0]["ConatactEmail"].ToString();
                    lblcontact.Text = dt.Rows[0]["ContactNo"].ToString();
                    lbladress.Text = dt.Rows[0]["CompanyAddress"].ToString();
                    lblapk.Text = dt.Rows[0]["ApkLink"].ToString();
                    lblinstgram.Text = dt.Rows[0]["InstagramLink"].ToString();
                    lblfacebook.Text = dt.Rows[0]["FacebookLink"].ToString();
                    lbltwitte.Text = dt.Rows[0]["TwitterLink"].ToString();
                    lbllinkdin.Text = dt.Rows[0]["LinkdinLink"].ToString();
                    lblwhatsapp.Text = dt.Rows[0]["WhatsappLink"].ToString();
                    lblloginlink.Text = dt.Rows[0]["DomainName"].ToString();
                    lbldomainlink.Text = dt.Rows[0]["LoginLink"].ToString();
                    lblsupportContact.Text = dt.Rows[0]["SupportContactNo"].ToString();
                    lblsupportEmail.Text = dt.Rows[0]["SupportEmaild"].ToString();
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
                 int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true,sizematch=true;
               
                int fileSize1 = 0;
                string OwnerName = "", ComapanyName = "", DomainName = "", CompanyPan = "", CompanyAdhar = "", FoEmailSectionimg = "", ContactNo = "", ConatactEmail = "", CompanyAddres = "", SupportContact = "", SupportEmaild = "", ComapnyLogo = ""
                    , ApkLink = "", LoginLink = "", InstagramLink = "", FacebookLink = "",  TwitterLink = "", LinkdinLink = "", WhatsappLink = "";
                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        ComapnyLogo = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + ComapnyLogo));
                        ComapnyLogo = "~/AdminModule/Images/" + ComapnyLogo;
                        status = clsAllMethodPersonal.checkexetion(FileUpload1);
                    }
                    else
                    {
                        
                        sizematch = false;
                    }
                }

                else
                {
                    ComapnyLogo = ViewState["CompanyLogo"].ToString();
                }
                if (FileUpload2.HasFile)
                {
                    fileSize1 = FileUpload2.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        FoEmailSectionimg = Path.GetFileName(FileUpload2.PostedFile.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + FoEmailSectionimg));
                        FoEmailSectionimg = "~/AdminModule/Images/" + FoEmailSectionimg;
                        status = clsAllMethodPersonal.checkexetion(FileUpload2);
                    }
                    else
                    {
                       
                        sizematch = false;
                       
                    }
                }

                else
                {
                    FoEmailSectionimg = ViewState["FoEmailSectionimg"].ToString();
                }
                if ((txtownername.Text != null) && (txtownername.Text != ""))
                {
                    OwnerName = txtownername.Text;
                }
                else
                {
                    OwnerName = lblowneername.Text;
                }
                if ((txtcompanyname.Text != null) && (txtcompanyname.Text != ""))
                {
                    ComapanyName = txtcompanyname.Text;
                }
                else
                {
                    ComapanyName = lblcompanyName.Text;
                }
                if ((txtpanno.Text != null) && (txtpanno.Text != ""))
                {
                    CompanyPan = txtpanno.Text;
                }
                else
                {
                    CompanyPan = lblcompanypan.Text;
                }
                if ((txtAdhar.Text != null) && (txtAdhar.Text != ""))
                {
                    CompanyAdhar = txtAdhar.Text;
                }
                else
                {
                    CompanyAdhar = lblcompanyAdhar.Text;
                }
                if ((txtcontact.Text != null) && (txtcontact.Text != ""))
                {
                    ContactNo = txtcontact.Text;
                }
                else
                {
                    ContactNo = lblcontact.Text;
                }
                if ((txtemail.Text != null) && (txtemail.Text != ""))
                {
                    ConatactEmail = txtemail.Text;
                }
                else
                {
                    ConatactEmail = lblemail.Text;
                }
                if ((txtaddress.Text != null) && (txtaddress.Text != ""))
                {
                    CompanyAddres = txtaddress.Text;
                }
                else
                {
                    CompanyAddres = lbladress.Text;
                }
                if ((txtdomainlink.Text != null) && (txtdomainlink.Text != ""))
                {
                    DomainName = txtdomainlink.Text;
                }
                else
                {
                    DomainName = lbldomainlink.Text;
                }
                if ((txtsupportcontact.Text != null) && (txtsupportcontact.Text != ""))
                {
                    SupportContact = txtsupportcontact.Text;
                }
                else
                {
                    SupportContact = lblsupportContact.Text;
                }
                if ((txtsupportemail.Text != null) && (txtsupportemail.Text != ""))
                {
                    SupportEmaild = txtsupportemail.Text;
                }
                else
                {
                    SupportEmaild = lblsupportEmail.Text;
                }
                if ((ttxapklink.Text != null) && (ttxapklink.Text != ""))
                {
                    ApkLink = ttxapklink.Text;
                }
                else
                {
                    ApkLink = lblapk.Text;
                }
                if ((txtinstagramlink.Text != null) && (txtinstagramlink.Text != ""))
                {
                    InstagramLink = txtinstagramlink.Text;
                }
                else
                {
                    InstagramLink = lblinstgram.Text;
                }
                if ((txtfacebooklink.Text != null) && (txtfacebooklink.Text != ""))
                {
                    FacebookLink = txtfacebooklink.Text;
                }
                else
                {
                    FacebookLink = lblfacebook.Text;
                }
                if ((txttwitterlink.Text != null) && (txttwitterlink.Text != ""))
                {
                    TwitterLink = txttwitterlink.Text;
                }
                else
                {
                    TwitterLink = lbltwitte.Text;
                }
                if ((txtlinkdinlink.Text != null) && (txtlinkdinlink.Text != ""))
                {
                    LinkdinLink = txtlinkdinlink.Text;
                }
                else
                {
                    LinkdinLink = lbllinkdin.Text;
                }
                if ((txtwhatsapplink.Text != null) && (txtwhatsapplink.Text != ""))
                {
                    WhatsappLink = txtwhatsapplink.Text;
                }
                else
                {
                    WhatsappLink = lblwhatsapp.Text;
                }
                if ((txtloginlink.Text != null) && (txtloginlink.Text != ""))
                {
                    LoginLink = txtloginlink.Text;
                }
                else
                {
                    LoginLink = lblloginlink.Text;
                }
                if (status == true)
                {
                    if (sizematch == true)
                    {
                        int result = clsWebsite.WebSiteDataInsert(OwnerName, ComapanyName, DomainName, CompanyPan, CompanyAdhar, ContactNo, ConatactEmail, CompanyAddres, SupportContact, SupportEmaild, ComapnyLogo, ApkLink, LoginLink, InstagramLink, FacebookLink, TwitterLink, LinkdinLink, WhatsappLink, FoEmailSectionimg);

                        if (result > 0)
                        {
                            messagebox.Visible = true;
                            messageboxerror.Visible = false;
                            GetData();
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                            txtownername.Text = txtcompanyname.Text = txtloginlink.Text = txtwhatsapplink.Text = txtlinkdinlink.Text = txttwitterlink.Text = txtcontact.Text= txtAdhar.Text= txtpanno.Text="";
                            txtfacebooklink.Text = txtinstagramlink.Text = ttxapklink.Text = txtsupportemail.Text = txtsupportcontact.Text = txtdomainlink.Text = txtaddress.Text = txtemail.Text = "";
                        }
                        else
                        {
                            messagebox.Visible = false;
                            messageboxerror.Visible = true;
                        }

                       

                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}