using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin
{
    public partial class Default : System.Web.UI.Page
    {
        ClsLoginAdmin clsLoginAdmin = new ClsLoginAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["mobileno"] = null;
            Session["userid"] = null;
        }
       

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = clsLoginAdmin.GetLogin(txtusername.Text, txtpassword.Text);
                if (dt!=null && dt.Rows.Count>0)
                {
                    Session["mobileno"] = txtusername.Text;
                    Session["userid"] = dt.Rows[0]["id"].ToString();
                    Response.Redirect("AdminModule/AdminDashboard.aspx");
                }
                else
                {
                    Response.Redirect("../Default.aspx");
                }
            }
            catch(Exception ex)
            {
                if(ex.Message== "Thread was being aborted")
                {
                    Response.Redirect("AdminModule/AdminDashboard.aspx");
                }
            }
        }
    }
}