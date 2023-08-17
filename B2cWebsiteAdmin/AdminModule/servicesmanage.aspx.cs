using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2cWebsiteAdmin.App_Code;
using System.Data;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class servicesmanage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        servicemaster getservicemaste = new servicemaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                servicesdetails();
            }
            
        }
        public void servicesdetails()
        {

            DataTable dt = getservicemaste.GetAllServices();

            if (dt != null && dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            int status = 0;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblstatus = (Label)e.Row.FindControl("lblStatus");
                status = Convert.ToInt32(lblstatus.Text);
                if (status == 0)
                {
                    CheckBox check = (CheckBox)e.Row.FindControl("check_status");
                    check.Checked = false;
                }
                else
                {
                    CheckBox check = (CheckBox)e.Row.FindControl("check_status");
                    check.Checked = true;
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            servicesdetails();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string userid = Session["userid"].ToString();
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_ServiceID");
            int id = Convert.ToInt32(lbl.Text);
            getservicemaste.DeleteService(id, userid);
            GridView1.EditIndex = -1;
            servicesdetails();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            servicesdetails();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string userid = Session["userid"].ToString();
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_ServiceID");
            TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtService");
            int id = Convert.ToInt32(lbl.Text);
            string serviceName = txtname.Text;
            getservicemaste.ServiceNameUpdate(id, serviceName, userid);
            GridView1.EditIndex = -1;
            servicesdetails();
        }

        protected void check_status_CheckedChanged(object sender, EventArgs e)
        {
            string userid = Session["userid"].ToString();
            CheckBox checkbox = sender as CheckBox;
            GridViewRow gdrow = checkbox.NamingContainer as GridViewRow;
            int id = Convert.ToInt32(((Label)gdrow.FindControl("lbl_ServiceID")).Text);
            if (checkbox.Checked)
            {
                int st = 1;
                int result = getservicemaste.ActivateDeactivateService(id, st, userid);
                if (result > 0)
                {
                    Response.Write("<script>alert(Service Activated)</script>");
                }

                //gdrow.RowIndex[] = Color.LightPink;
                gdrow.BackColor = Color.Pink;

            }
            else
            {
                int st = 0;
                int result = getservicemaste.ActivateDeactivateService(id, st, userid);
                if (result > 0)
                {
                    Response.Write("<script>alert(Service DeActivated)</script>");
                }

                //GridView1.Rows[i].BackColor = Color.Wheat;
                gdrow.BackColor = Color.Wheat;
            }
        }
    }
}