using B2cWebsiteAdmin.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
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
    public partial class OurTeam : System.Web.UI.Page
    {

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        //SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        GetConnectionString getConnectionString = new GetConnectionString();
        ClsAboutMaster clsAboutMaster = new ClsAboutMaster();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTeam();
                messagebox.Visible = false;
                messageboxerror.Visible = false;
            }

        }

        public void GetTeam()
        {
            DataTable dataTable = clsAboutMaster.GetTeamMaster();
            int count = dataTable.Rows.Count;
            if (dataTable.Rows.Count > 0)
            {
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
                for (int i = 0; i < count; i++)
                {
                    if (i == 0)
                    {
                        profileImage.ImageUrl = dataTable.Rows[i]["profileImg"].ToString();
                        
                        lblName.Text = dataTable.Rows[i]["Name"].ToString();
                        lblrole.Text = dataTable.Rows[i]["roletype"].ToString();
                        card.Visible = true;
                    }
                    if (i == 1)
                    {
                        profileImage1.ImageUrl = dataTable.Rows[i]["profileImg"].ToString();
                        lblName1.Text = dataTable.Rows[i]["Name"].ToString();
                        lblrole1.Text = dataTable.Rows[i]["roletype"].ToString();
                        card1.Visible = true;
                    }
                    if (i == 2)
                    {
                        profileImage2.ImageUrl = dataTable.Rows[i]["profileImg"].ToString();
                        lblName2.Text = dataTable.Rows[i]["Name"].ToString();
                        lblrole2.Text = dataTable.Rows[i]["roletype"].ToString();
                        card2.Visible = true;
                    }
                    if (i == 3)
                    {
                        profileImage3.ImageUrl = dataTable.Rows[i]["profileImg"].ToString();
                        lblName3.Text = dataTable.Rows[i]["Name"].ToString();
                        lblrole3.Text = dataTable.Rows[i]["roletype"].ToString();
                        card13.Visible = true;
                    }
                    if (i == 4)
                    {
                        profileImage4.ImageUrl = dataTable.Rows[i]["profileImg"].ToString();
                        lblName4.Text = dataTable.Rows[i]["Name"].ToString();
                        lblrole4.Text = dataTable.Rows[i]["roletype"].ToString();
                        card31.Visible = true;
                    }
                }


                //lblName.Text = dataTable.Rows[0]["profileImage"].ToString();
                //lblName.Text = dataTable.Rows[0]["profileImage"].ToString();
            }

        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string userid = Session["userid"].ToString();
            try
            {
                int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
                bool status = true;
                string filename = "";
                int fileSize1 = 0;

                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 > minsize & fileSize1 < maxsize)
                    {
                        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename));
                        filename = "~/AdminModule/Images/" + filename;
                        status = checkexetion(FileUpload1);
                    }
                    else
                    {
                        lblmassage.Text = "Don't match file Size";
                        lblmassage.ForeColor = Color.Red;
                    }
                }
                else
                {

                    lblmassage.Text = "Choice Profile Image";
                    lblmassage.ForeColor = Color.Red;
                }
                string strcon = getConnectionString.getconnection();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Sp_TblTeamMaster", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "Insert");
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@RoleType", dd_Role.SelectedItem);
                cmd.Parameters.AddWithValue("@ProfileImg", filename);
                cmd.Parameters.AddWithValue("@Remarks", txtRemark.Text);
                cmd.Parameters.AddWithValue("@SocialMdaLink1", txtSociallink.Text);
                cmd.Parameters.AddWithValue("@SocialMdaLink2", txtSociallink2.Text);
                cmd.Parameters.AddWithValue("@CreatedBy", userid);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                GetTeam();
                lblmassage.Text = " Resisration  Success ";
                lblmassage.ForeColor = Color.Green;
                txtName.Text = txtRemark.Text = txtSociallink.Text = txtSociallink2.Text = "";
            }
            catch (Exception ex)
            {

            }
        }
        bool checkexetion(FileUpload fileUpload1)
        {
            try
            {
                bool Status;

                string FileExt = Path.GetExtension(fileUpload1.FileName);



                if (FileExt.ToUpper() == "PNG" || FileExt.ToUpper() == "JPG" || FileExt.ToUpper() == "JPEG" || FileExt.ToUpper() == ".JPEG" || FileExt.ToUpper() == ".JPG" || FileExt.ToUpper() == ".PNG")
                {
                    Status = true;
                }
                else
                {
                    Status = false;
                }

                return Status;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetTeam();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetTeam();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string strcon = getConnectionString.getconnection();
            SqlConnection con = new SqlConnection(strcon);
            Label id = GridView1.Rows[e.RowIndex].FindControl("lblide") as Label;
            SqlCommand cmd = new SqlCommand("Sp_tblteamMasterDelete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(id.Text));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GetTeam();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string userid = Session["userid"].ToString();
            int minsize = 1 * 1024; int maxsize = 5 * 1024 * 1024;
            bool status = true;
            string filename = "";
            int fileSize1 = 0;

            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload2") as FileUpload;
            TextBox Remark = GridView1.Rows[e.RowIndex].FindControl("txtRemark") as TextBox;
            TextBox socialLink1 = GridView1.Rows[e.RowIndex].FindControl("txtSocial2") as TextBox;
            TextBox socialLink2 = GridView1.Rows[e.RowIndex].FindControl("txtSocial1") as TextBox;
            DropDownList dropDownList = GridView1.Rows[e.RowIndex].FindControl("dd_roles") as DropDownList;
            TextBox Name = GridView1.Rows[e.RowIndex].FindControl("txtname") as TextBox;
            if (fileUpload.HasFile)
            {
                fileSize1 = fileUpload.PostedFile.ContentLength;
                if (fileSize1 > minsize & fileSize1 < maxsize)
                {
                    filename = Path.GetFileName(fileUpload.PostedFile.FileName);
                    fileUpload.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename));
                    filename = "~/AdminModule/Images/" + filename;
                    status = checkexetion(fileUpload);
                }

            }
            string strcon = getConnectionString.getconnection();
            SqlConnection con = new SqlConnection(strcon);
            Label id = GridView1.Rows[e.RowIndex].FindControl("lblid") as Label;
            SqlCommand cmd = new SqlCommand("Sp_TblTeamMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "update");
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(id.Text));
            cmd.Parameters.AddWithValue("@name", Name.Text);
            cmd.Parameters.AddWithValue("@RoleType", dropDownList.SelectedValue);
            cmd.Parameters.AddWithValue("@ProfileImg", filename);
            cmd.Parameters.AddWithValue("@Remarks", Remark.Text);
            cmd.Parameters.AddWithValue("@SocialMdaLink1", socialLink1.Text);
            cmd.Parameters.AddWithValue("@SocialMdaLink2", socialLink2.Text);
            cmd.Parameters.AddWithValue("@UpdatedBy", userid);
        
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            GetTeam();
            id.Text = Name.Text = Remark.Text = socialLink1.Text = socialLink2.Text = "";
            }
    }
}