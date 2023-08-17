using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Policy_Priva : System.Web.UI.Page
    {
        ClsPrivacyPolicy clsPrivacy = new ClsPrivacyPolicy();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataPrivacyPolicy();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }

        }
        public void GetDataPrivacyPolicy()
        {
            try
            {
                DataTable dt = clsPrivacy.GetPrivacyPolicy();
                if (dt != null && dt.Rows.Count > 0)
                {

                    lisection1heading.InnerText = dt.Rows[0]["Section1Heading"].ToString();
                    lisection1para.InnerText = dt.Rows[0]["Section1para"].ToString();
                    lisection2heading.InnerText = dt.Rows[0]["Section2heading"].ToString();
                    lisection2para.InnerText = dt.Rows[0]["Section2para1"].ToString();
                    lisection3para2.InnerText = dt.Rows[0]["Section2para2"].ToString();
                    lisection3para1.InnerText = dt.Rows[0]["Section2para3"].ToString();
                    //lisection8para.InnerText = dt.Rows[0]["Section8para"].ToString();
                    //lisection9para.InnerText = dt.Rows[0]["Section9para"].ToString();
                    //lisection2para6.InnerText = dt.Rows[0]["Section2para6"].ToString();
                    //lisection2para7.InnerText = dt.Rows[0]["Section2para7"].ToString();
                    //lisection2para8.InnerText = dt.Rows[0]["Section2para8"].ToString();
                    lisection3heading.InnerText = dt.Rows[0]["Section3heading"].ToString();
                    //lisection3para.InnerText = dt.Rows[0]["Section3para"].ToString();
                    lisection4heading.InnerText = dt.Rows[0]["Section4heading"].ToString();
                    lisection4para.InnerText = dt.Rows[0]["Section4para"].ToString();
                    lisection5heading.InnerText = dt.Rows[0]["Section5heading"].ToString();
                    lisection5para.InnerText = dt.Rows[0]["Section5para"].ToString();
                    lisection6heading.InnerText = dt.Rows[0]["Section6heading"].ToString();
                    lisection6para.InnerText = dt.Rows[0]["Section6para"].ToString();
                    lisection7heading.InnerText = dt.Rows[0]["Section7heading"].ToString();
                    lisection8heading.InnerText = dt.Rows[0]["Section2para6"].ToString();
                    lisection9heading.InnerText = dt.Rows[0]["Section2para7"].ToString();
                    lisection7para.InnerText = dt.Rows[0]["Section7para"].ToString();
                    lisection8para.InnerText = dt.Rows[0]["Section2para4"].ToString();
                    lisection9para.InnerText = dt.Rows[0]["Section2para5"].ToString();
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
                string Section1Heading = "", Section1para = "", Section2heading = "", Section2para = "", /*Section2para2 = "", Section2para3 = "",*/ Section8para = "", Section9para = "", Section2para6 = "", Section2para7 = "", Section2para8 = "", Section3heading = "", Section3para = "", Section4heading = "", Section4para = "", Section5heading = "", Section5para = "", Section6heading = "", Section6para = "", Section7heading = "", Section7para = "", Section3para1="", Section3para2="", Section8heading="", Section9heading="";
                if (txtsection1heading.Text != null && txtsection1heading.Text != "")
                {
                    Section1Heading = txtsection1heading.Text;
                }
                else
                {
                    Section1Heading = lisection1heading.InnerText;
                }
                if (txtsection1para.Text != null && txtsection1para.Text != "")
                {
                    Section1para = txtsection1para.Text;
                }
                else
                {
                    Section1para = lisection1para.InnerText;
                }
                if (txtsection2heading.Text != null && txtsection2heading.Text != "")
                {
                    Section2heading = txtsection2heading.Text;
                }
                else
                {
                    Section2heading = lisection2heading.InnerText;
                }
                if (txtsection2para.Text != null && txtsection2para.Text != "")
                {
                    Section2para = txtsection2para.Text;
                }
                else
                {
                    Section2para = lisection2para.InnerText;
                }
                if (txtsection3para1 != null && txtsection3para1.Text != "")
                {
                    Section3para1 = txtsection3para1.Text;
                }
                else
                {
                    Section3para1 = lisection3para1.InnerText;
                }
                if (txtsection3para2.Text != null && txtsection3para2.Text != "")
                {
                    Section3para2 = txtsection3para2.Text;
                }
                else
                {
                    Section3para2 = lisection3para2.InnerText;
                }
                if (txtsection8para.Text != null && txtsection8para.Text != "")
                {
                    Section8para = txtsection8para.Text;
                }
                else
                {
                    Section8para = lisection8para.InnerText;
                }
                if (txtsection9para.Text != null && txtsection9para.Text != "")
                {
                    Section9para = txtsection9para.Text;
                }
                else
                {
                    Section9para = lisection9para.InnerText;
                }
                //if (txtsection2para6.Text != null && txtsection2para6.Text != "")
                //{
                //    Section2para6 = txtsection2para6.Text;
                //}
                //else
                //{
                //    Section2para6 = lisection2para6.InnerText;
                //}
                //if (txtsection2para7.Text != null && txtsection2para7.Text != "")
                //{
                //    Section2para7 = txtsection2para7.Text;
                //}
                //else
                //{
                //    Section2para7 = lisection2para7.InnerText;
                //}
                //if (txtsection2para8.Text != null && txtsection2para8.Text != "")
                //{
                //    Section2para8 = txtsection2para8.Text;
                //}
                //else
                //{
                //    Section2para8 = lisection2para8.InnerText;
                //}
                if (txtsection3heading.Text != null && txtsection3heading.Text != "")
                {
                    Section3heading = txtsection3heading.Text;
                }
                else
                {
                    Section3heading = lisection3heading.InnerText;
                }
                //if (txtsection3para.Text != null && txtsection3para.Text != "")
                //{
                //    Section3para = txtsection3para.Text;
                //}
                //else
                //{
                //    Section3para = lisection3para.InnerText;
                //}
                if (txtsection4heading.Text != null && txtsection4heading.Text != "")
                {
                    Section4heading = txtsection4heading.Text;
                }
                else
                {
                    Section4heading = lisection4heading.InnerText;
                }
                if (txtsection4para.Text != null && txtsection4para.Text != "")
                {
                    Section4para = txtsection4para.Text;
                }
                else
                {
                    Section4para = lisection4para.InnerText;
                }
                if (txtsection5heading.Text != null && txtsection5heading.Text != "")
                {
                    Section5heading = txtsection5heading.Text;
                }
                else
                {
                    Section5heading = lisection5heading.InnerText;
                }
                if (txtsection5para.Text != null && txtsection5para.Text != "")
                {
                    Section5para = txtsection5para.Text;
                }
                else
                {

                    Section5para = lisection5para.InnerText;
                }
                if (txtsection6para.Text != null && txtsection6para.Text != "")
                {
                    Section6para = txtsection6para.Text;
                }
                else
                {

                    Section6para = lisection6para.InnerText;
                }
                if (txtsection6heading.Text != null && txtsection6heading.Text != "")
                {
                    Section6heading = txtsection6heading.Text;
                }
                else
                {
                    Section6heading = lisection6heading.InnerText;
                }
                if (txtsection7para.Text != null && txtsection7para.Text != "")
                {
                    Section7para = txtsection7para.Text;
                }
                else
                {

                    Section7para = lisection7para.InnerText;
                }
                if (txtsection7heading.Text != null && txtsection7heading.Text != "")
                {
                    Section7heading = txtsection7heading.Text;
                }
                else
                {
                    Section7heading = lisection7heading.InnerText;
                }
                if (txtsection8heading.Text != null && txtsection8heading.Text != "")
                {
                    Section8heading = txtsection8heading.Text;
                }
                else
                {
                    Section8heading = lisection8heading.InnerText;
                }
                if (txtsection9heading.Text != null && txtsection9heading.Text != "")
                {
                    Section9heading = txtsection9heading.Text;
                }
                else
                {
                    Section9heading = lisection9heading.InnerText;
                }

                string userid = Session["userid"].ToString();
                int result = clsPrivacy.PrivacyPolicysection(Section1Heading, Section1para, Section2heading, Section2para, Section3para2, Section3para1, Section8para, Section9para, Section3heading, Section8heading, Section9heading, Section4heading, Section4para, Section5heading, Section5para, Section6heading, Section6para, Section7heading, Section7para, Section2para8, Section3para , userid, userid);
                if (result > 0)
                {
                    txtsection1heading.Text = txtsection1para.Text = txtsection2heading.Text = txtsection2para.Text =  txtsection3para1.Text = txtsection3para2.Text = "";
                     txtsection3heading.Text = txtsection4heading.Text = txtsection4para.Text = txtsection5heading.Text = txtsection5para.Text = txtsection6heading.Text = txtsection6para.Text = txtsection7heading.Text = txtsection7para.Text = txtsection8heading.Text = txtsection8para.Text = txtsection9heading.Text = txtsection9para.Text= "";
                    GetDataPrivacyPolicy();
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                    // Response.Write("<script>alert('Data has been successfully updated');</script>");
                }
                else
                {
                    txtsection1heading.Text = txtsection1para.Text = txtsection2heading.Text = txtsection2para.Text = txtsection3para1.Text = txtsection3para2.Text =
                    txtsection3heading.Text = txtsection4heading.Text = txtsection4para.Text = txtsection5heading.Text = txtsection5para.Text = txtsection6heading.Text = txtsection6para.Text = txtsection7heading.Text = txtsection7para.Text = txtsection8heading.Text = txtsection8para.Text = txtsection9heading.Text = txtsection9para.Text = "";

                    GetDataPrivacyPolicy();
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;

                    // Response.Write("<script>alert('error something wrong ');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            txtsection1heading.Text = txtsection1para.Text = txtsection2heading.Text = txtsection2para.Text = txtsection2para.Text = txtsection3para1.Text = txtsection3para2.Text = "";
             txtsection3heading.Text = txtsection4heading.Text = txtsection4para.Text = txtsection5heading.Text = txtsection5para.Text = txtsection6heading.Text=txtsection6para.Text=txtsection7heading.Text=txtsection7para.Text=txtsection8heading.Text=txtsection8para.Text=txtsection9heading.Text=txtsection9para.Text= "";

        }
    }
}
