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
    public partial class Terms_Condition : System.Web.UI.Page
    {
        ClsTermCondition clsTerm = new ClsTermCondition();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataTermContion();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }

        }

        public void GetDataTermContion()
        {
            try
            {
                DataTable dt = clsTerm.GetTermCondtion();
                if (dt != null && dt.Rows.Count > 0)
                {

                    lisection1heading.InnerText = dt.Rows[0]["Section1Heading"].ToString();
                    lisection1content.InnerText = dt.Rows[0]["Section1content"].ToString();
                    lisection2heading.InnerText = dt.Rows[0]["Section2Heading"].ToString();
                    lisection2content.InnerText = dt.Rows[0]["Section2content"].ToString();
                    lisection3heading.InnerText = dt.Rows[0]["Section3Heading"].ToString();
                    lisection3content1.InnerText = dt.Rows[0]["Section3conten1"].ToString();
                    lisection3content2.InnerText = dt.Rows[0]["Section3content2"].ToString();
                    lisection3para1.InnerText = dt.Rows[0]["Section3para1"].ToString();
                    lisection3par2.InnerText = dt.Rows[0]["Section3para2"].ToString();
                    lisection3para3.InnerText = dt.Rows[0]["Section3para3"].ToString();
                    lisection4heading.InnerText = dt.Rows[0]["Section4Heading"].ToString();
                    lisection4content.InnerText = dt.Rows[0]["Section4content"].ToString();
                    lisection5headong.InnerText = dt.Rows[0]["Section5Heading"].ToString();
                    lisection5content.InnerText = dt.Rows[0]["section5content"].ToString();
                    lisection6heading.InnerText = dt.Rows[0]["section6Heading"].ToString();
                    lisection6content1.InnerText = dt.Rows[0]["Sectio6content1"].ToString();
                    lisection6content2.InnerText = dt.Rows[0]["Sectio6content2"].ToString();
                    lisection6content3.InnerText = dt.Rows[0]["Section6content3"].ToString();
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
                string Section1heading = "", Section1content = "", Section2heading = "", Section2content = "", Section3heading = "", Section3content1 = "", Section3content2 = "", Section3para1 = "", Section3para2 = "", Section3para3 = "", Section4heading = "", Section4content = "", Section5heading = "", Section5content = "", Section6heading = "", Section6content1 = "", Section6content2 = "", Section6content3 = "";
                if (txtsection1heading.Text != null && txtsection1heading.Text != "")
                {
                    Section1heading = txtsection1heading.Text;
                }
                else
                {
                    Section1heading = lisection1heading.InnerText;
                }
                if (txtsection1content.Text != null && txtsection1content.Text != "")
                {
                    Section1content = txtsection1content.Text;
                }
                else
                {
                    Section1content = lisection1content.InnerText;
                }
                if (txtsection2heading.Text != null && txtsection2heading.Text != "")
                {
                    Section2heading = txtsection2heading.Text;
                }
                else
                {
                    Section2heading = lisection2heading.InnerText;
                }
                if (txtsection2content.Text != null && txtsection2content.Text != "")
                {
                    Section2content = txtsection2content.Text;
                }
                else
                {
                    Section2content = lisection2content.InnerText;
                }
                if (txtsection3heading1.Text != null && txtsection3heading1.Text != "")
                {
                    Section3heading = txtsection3heading1.Text;
                }
                else
                {
                    Section3heading = lisection3heading.InnerText;
                }
                if (txtsection3content11.Text != null && txtsection3content11.Text != "")
                {
                    Section3content1 = txtsection3content11.Text;
                }
                else
                {
                    Section3content1 = lisection3content1.InnerText;
                }
                if (txtsection3content2.Text != null && txtsection3content2.Text != "")
                {
                    Section3content2 = txtsection3content2.Text;
                }
                else
                {
                    Section3content2 = lisection3content2.InnerText;
                }
                if (txtsection3para1.Text != null && txtsection3para1.Text != "")
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
                    Section3para2 = lisection3par2.InnerText;
                }
                if (txtsection3para33.Text != null && txtsection3para33.Text != "")
                {
                    Section3para3 = txtsection3para33.Text;
                }
                else
                {
                    Section3para3 = lisection3para3.InnerText;
                }
                if (txtsection4heading.Text != null && txtsection4heading.Text != "")
                {
                    Section4heading = txtsection4heading.Text;
                }
                else
                {
                    Section4heading = lisection4heading.InnerText;
                }
                if (txtsection4content.Text != null && txtsection4content.Text != "")
                {
                    Section4content = txtsection4content.Text;
                }
                else
                {
                    Section4content = lisection4content.InnerText;
                }
                if (txtsection5heading.Text != null && txtsection5heading.Text != "")
                {
                    Section5heading = txtsection5heading.Text;
                }
                else
                {
                    Section5heading = lisection5headong.InnerText;
                }
                if (txtsection5content.Text != null && txtsection5content.Text != "")
                {
                    Section5content = txtsection5content.Text;
                }
                else
                {
                    Section5content = lisection5content.InnerText;
                }
                if (txtsection6heading.Text != null && txtsection6heading.Text != "")
                {
                    Section6heading = txtsection6heading.Text;
                }
                else
                {
                    Section6heading = lisection6heading.InnerText;
                }
                if (txtsection6content1.Text != null && txtsection6content1.Text != "")
                {
                    Section6content1 = txtsection6content1.Text;
                }
                else
                {
                    Section6content1 = lisection6content1.InnerText;
                }
                if (txtsection6content2.Text != null && txtsection6content2.Text != "")
                {
                    Section6content2 = txtsection6content2.Text;
                }
                else
                {
                    Section6content2 = lisection6content2.InnerText;
                }
                if (txtsection6content3.Text != null && txtsection6content3.Text != "")
                {
                    Section6content3 = txtsection6content3.Text;
                }
                else
                {
                    Section6content3 = lisection6heading.InnerText;
                }
                int result = clsTerm.TermContionInsert(Section1heading, Section1content, Section2heading, Section2content, Section3heading, Section3content1, Section3content2, Section3para1, Section3para2, Section3para3, Section4heading, Section4content, Section5heading, Section5content, Section6heading, Section6content1, Section6content2, Section6content3, userid, userid);
                if (result > 0)
                {
                    txtsection1heading.Text = txtsection1content.Text = txtsection2heading.Text = txtsection2content.Text = txtsection3heading1.Text = txtsection3content11.Text = txtsection3content2.Text = txtsection3para1.Text = txtsection3para2.Text = txtsection3para33.Text = "";
                    txtsection4content.Text = txtsection4content.Text = txtsection5heading.Text = txtsection5content.Text = txtsection6heading.Text = txtsection6content1.Text = txtsection6content2.Text = txtsection6content3.Text = "";
                    GetDataTermContion();
                    messagebox.Visible = true;
                    messageboxerror.Visible = false ;
                    //lblmassage.Text = "Data Save success";
                    //lblmassage.ForeColor = Color.Green;
                }
                else
                {
                    txtsection1heading.Text = txtsection1content.Text = txtsection2heading.Text = txtsection2content.Text = txtsection3heading1.Text = txtsection3content11.Text = txtsection3content2.Text = txtsection3para1.Text = txtsection3para2.Text = txtsection3para33.Text = "";
                    txtsection4content.Text = txtsection4content.Text = txtsection5heading.Text = txtsection5content.Text = txtsection6heading.Text = txtsection6content1.Text = txtsection6content2.Text = txtsection6content3.Text = "";
                    GetDataTermContion();
                    //Response.Write("<script>alert('error something wrong ');</script>");
                    messageboxerror.Visible = true;
                    messagebox.Visible = false;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            txtsection1heading.Text = txtsection1content.Text = txtsection2heading.Text = txtsection2content.Text = txtsection3heading1.Text = txtsection3content11.Text = txtsection3content2.Text = txtsection3para1.Text = txtsection3para2.Text = txtsection3para33.Text = "";
            txtsection4content.Text = txtsection4content.Text = txtsection5heading.Text = txtsection5content.Text = txtsection6heading.Text = txtsection6content1.Text = txtsection6content2.Text = txtsection6content3.Text = "";
    
        }
    }
}