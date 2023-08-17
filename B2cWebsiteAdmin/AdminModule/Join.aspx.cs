using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2cWebsiteAdmin.AdminModule
{
    public partial class Join : System.Web.UI.Page
    {
        GetConnectionString getConnectionString = new GetConnectionString();
        ClsAboutMaster clsAboutMaster = new ClsAboutMaster();
        ClsAllMethodPersonal ClsAllMethodPersonal = new ClsAllMethodPersonal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                join();
            }
        }

        public void join()
        {
            try
            {
                DataTable dt = clsAboutMaster.Getjoin();
                if (dt.Rows.Count > 0)
                {
                    lbljoinone.Text = dt.Rows[0]["ContentFirst"].ToString();
                    lbljointwo.Text = dt.Rows[0]["ContentSecound"].ToString();
                    lbljoinlink.Text = dt.Rows[0]["ContentThird"].ToString();
                }
                
            }
            catch (Exception ex)
            {

            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                string contentFirst = "", contentsecound = "", contentthird = "";/*buttonlink="";*/

                if ((txtjoinone.Text != null) && (txtjoinone.Text != ""))
                {
                    contentFirst = txtjoinone.Text;
                }
                else
                {
                    contentFirst = lbljoinone.Text;
                }

                if ((txtjointwo.Text != null) && (txtjointwo.Text != ""))
                {
                    contentsecound = txtjointwo.Text;
                }
                else
                {
                    contentsecound = lbljointwo.Text;
                }

                if ((txtjointhr.Text != null) && (txtjointhr.Text != ""))
                {
                    contentthird = txtjointhr.Text;
                }
                else
                {
                    contentthird = lbljoinlink.Text;
                }
                
                string strcon = getConnectionString.getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("sp_tblaboutjoin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ContentFirst", contentFirst);
                cmd.Parameters.AddWithValue("@ContentSecound", contentsecound);
                cmd.Parameters.AddWithValue("@ContentThird", contentthird);
                cmd.Parameters.AddWithValue("@CreateBy", "");
                cmd.Parameters.AddWithValue("@UpdateBy", "");
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Close();
                join();
                txtjoinone.Text = txtjointwo.Text = txtjointhr.Text = "";
                if (result > 0)
                {
                    messagebox.Visible = true;
                    messageboxerror.Visible = false;
                }
                else
                {
                    messagebox.Visible = false;
                    messageboxerror.Visible = true;
                }
            }

            catch (Exception ex)
            {

            }
        }
    }
}