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
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        ClsBannerMaster clsBannerMaster = new ClsBannerMaster();
       
        ClsActionLogs actionLogs = new ClsActionLogs();
        string filename = "", filename2 = "", filename3 = "";
        int fileSize3 = 0, fileSize1 = 0, fileSize2 = 0;
        string lblheading11 = "", lblcontent1s11 = "", s1txtlink11 = "", s1txtlink21 = "", lblheadingS21 = "", lblcontentS21 = "", lblLink1s21 = "", lblLink2s21 = "", lblheading31 = "", lblcontent31 = "", lbllink1s31 = "", lbllink2s31 = "";



        int minsize = 70 * 1024; int maxsize = 1024 * 1024 * 1024;
        bool status = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind1();
                SliderSectionOne.Visible = true;
                messagebox.Visible = false;
                messageboxerror.Visible = false;
                SliderSectionThree.Visible = false;
            }
        }

        public void DataBind1()
        {

            DataTable dt = clsBannerMaster.GetSliderBanner();
            if (dt != null && dt.Rows.Count > 0)
            {


                ViewState["slider1"] = dt.Rows[0]["sliderimage1"].ToString();
                ViewState["slider2"] = dt.Rows[0]["sliderimage2"].ToString();
                ViewState["slider3"] = dt.Rows[0]["sliderimage3"].ToString();
                Imagefirst.ImageUrl = dt.Rows[0]["sliderimage1"].ToString();  // dt.Rows[0]["sliderimage1"].ToString();
                ImageSecond.ImageUrl = dt.Rows[0]["sliderimage2"].ToString(); // dt.Rows[0]["sliderimage2"].ToString();
                imagethird.ImageUrl = dt.Rows[0]["sliderimage3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblheading1"] = lblheading1.Text = dt.Rows[0]["sliderHeading1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblcontent1s1"] = lblcontent1s1.Text = dt.Rows[0]["slidercontent1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["s1txtlink1"] = s1txtlink1.Text = dt.Rows[0]["sliderbuttonlink1"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["s1txtlink2"] = s1txtlink2.Text = dt.Rows[0]["sliderbuttonlink2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblheadingS2"] = lblheadingS2.Text = dt.Rows[0]["sliderHeading2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblcontentS2"] = lblcontentS2.Text = dt.Rows[0]["slidercontent2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblLink1s2"] = lblLink1s2.Text = dt.Rows[0]["sliderbuttonlinks2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblLink2s2"] = lblLink2s2.Text = dt.Rows[0]["sliderbuttonlinks2"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblheading3"] = lblheading3.Text = dt.Rows[0]["sliderHeading3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lblcontent3"] = lblcontent3.Text = dt.Rows[0]["slidercontent3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lbllink1s3"] = lbllink1s3.Text = dt.Rows[0]["sliderbuttonlinks3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
                ViewState["lbllink2s3"] = lbllink2s3.Text = dt.Rows[0]["sliderbuttonTittles3"].ToString(); // dt.Rows[0]["sliderimage3"].ToString();
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

            try
            {


                // Text Field  Second ****************************************************************************************************
                if ((slidercontent2s2.Text != null) && (slidercontent2s2.Text != ""))
                {
                    lblcontentS21 = slidercontent2s2.Text;
                }
                else
                {
                    lblcontentS21 = ViewState["lblcontent1s1"].ToString();
                }
                if ((sliderheading2s2.Text != null) && (sliderheading2s2.Text != ""))
                {
                    lblheadingS21 = sliderheading2s2.Text;
                }
                else
                {
                    lblheadingS21 = ViewState["lblheadingS2"].ToString();
                }
                if ((sliderlink1s2.Text != null) && (sliderlink1s2.Text != ""))
                {
                    lblLink1s21 = sliderlink1s2.Text;
                }
                else
                {
                    lblLink1s21 = ViewState["lblLink1s2"].ToString();
                }
                if ((sliderlink2s2.Text != null) && (sliderlink2s2.Text != ""))
                {
                    lblLink2s21 = sliderlink2s2.Text;
                }
                else
                {
                    lblLink2s21 = ViewState["lblLink2s2"].ToString();
                }
               



                if (FileUpload2.HasFile)
                {
                    fileSize2 = FileUpload2.PostedFile.ContentLength;
                    if (fileSize2 < maxsize)
                    {

                        filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename2));
                        filename2 = "~/AdminModule/Images/" + filename2;
                        status = checkexetion(FileUpload2);
                    }
                    else
                    {
                        filename2 = ViewState["slider2"].ToString();
                    }
                }
                else
                {
                    filename2 = ViewState["slider2"].ToString();

                }


                if (status == true)
                {

                    SqlCommand cmd = new SqlCommand("sp_slider2update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sliderimage2", filename2);
                    cmd.Parameters.AddWithValue("@sliderHeading2", lblheadingS21);
                    cmd.Parameters.AddWithValue("@slidercontent2", lblcontentS21);
                    cmd.Parameters.AddWithValue("@sliderbuttonlinks2", lblLink1s21);
                    cmd.Parameters.AddWithValue("@sliderbuttonTittles2", "");
                    
                    cmd.Parameters.AddWithValue("@Createby", "");
                    cmd.Parameters.AddWithValue("@updateby", "");
                    con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //txtmessage.Text = "Update Success";
                    //txtmessage.ForeColor = Color.Green;
                 
                    if (result > 0)
                    {
                        ////ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ShowPopup2();", true);
                        messagebox.Visible = true;
                       messageboxerror.Visible = false;
                    }
                    else
                    {
                        messagebox.Visible = false;
                        messageboxerror.Visible = true;
                    }
                    slidercontent2s2.Text = "";
                    sliderheading2s2.Text = "";
                    sliderlink1s2.Text = "";

                }




                else
                {
                    //txtmessage.Text = "Image format is not not match  ";
                    //txtmessage.ForeColor = Color.Red;
                }

            }
            catch (Exception ex)
            {
                actionLogs.ActionLogs("Slider Exception", ex.Message, "SLIDER");
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

        protected void lnkbtn1_Click(object sender, EventArgs e)
        {
            SliderSectionOne.Visible = true;
            SliderSectionTwo.Visible = false;
            SliderSectionThree.Visible = false;
            messagebox.Visible = false;
            messageboxerror.Visible = false;
        }

        protected void lnkBtnSlider2_Click(object sender, EventArgs e)
        {
            SliderSectionOne.Visible = false;
            SliderSectionTwo.Visible = true;
            SliderSectionThree.Visible = false;
            messagebox.Visible = false;
            messageboxerror.Visible = false;
        }

        protected void lnkbtnslider3_Click(object sender, EventArgs e)
        {
            SliderSectionOne.Visible = false;
            SliderSectionTwo.Visible = false;
            SliderSectionThree.Visible = true;
            messagebox.Visible = false;
            messageboxerror.Visible = false;
        }



        protected void S1btn_submit_Click1(object sender, EventArgs e)
        {
            try
            {

                //Text Field First-------------------------------------------------------------------------------------------------------
                if ((s1txtcontent.Text != null) && (s1txtcontent.Text != ""))
                {
                    lblcontent1s11 = s1txtcontent.Text;
                }
                else
                {
                    lblcontent1s11 = ViewState["lblcontent1s1"].ToString();
                }
                if ((s1txtheading.Text != null) && (s1txtheading.Text != ""))
                {
                    lblheading11 = s1txtheading.Text;
                }
                else
                {
                    lblheading11 = ViewState["lblheading1"].ToString();
                }
                if ((s1txtlink.Text != null) && (s1txtlink.Text != ""))
                {
                    s1txtlink11 = s1txtlink.Text;
                }
                else
                {
                    s1txtlink11 = ViewState["s1txtlink1"].ToString();
                }
                if ((txtlink1s1.Text != null) && (txtlink1s1.Text != ""))
                {
                    s1txtlink21 = txtlink1s1.Text;
                }
                else
                {
                    s1txtlink21 = ViewState["s1txtlink2"].ToString();
                }
                if (FileUpload1.HasFile)
                {
                    fileSize1 = FileUpload1.PostedFile.ContentLength;
                    if (fileSize1 < maxsize)
                    {
                        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename));
                        filename = "~/AdminModule/Images/" + filename;
                        status = checkexetion(FileUpload1);
                    }
                    else
                    {
                        filename = ViewState["slider1"].ToString();
                    }
                }
                else
                {
                    filename = ViewState["slider1"].ToString();


                }
                if (status == true)
                {

                    SqlCommand cmd = new SqlCommand("sp_slider1update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sliderimage1", filename);
                    cmd.Parameters.AddWithValue("@slidercontent1", lblcontent1s11);
                    cmd.Parameters.AddWithValue("@sliderHeading1", lblheading11);
                    cmd.Parameters.AddWithValue("@sliderbuttonlink1", s1txtlink11);
                    cmd.Parameters.AddWithValue("@sliderbuttonlink2", s1txtlink21);
                    cmd.Parameters.AddWithValue("@sliderbuttonTittle1", "");
                    cmd.Parameters.AddWithValue("@sliderbuttonTittle2", "");
                    cmd.Parameters.AddWithValue("@Createby", "");
                    cmd.Parameters.AddWithValue("@updateby", "");
                    con.Open();
                    int result=  cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //txtmessage.Text = "Update Success";
                    //txtmessage.ForeColor = Color.Green;
                    s1txtcontent.Text= s1txtheading.Text= s1txtlink.Text =txtlink1s1.Text = "";
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
            }
            catch (Exception ex)
            {

            }
        }
        protected void s3btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                // Text Field Third ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                if ((s3txtcontent.Text != null) && (s3txtcontent.Text != ""))
                {
                    lblcontent31 = s3txtcontent.Text;
                }
                else
                {
                    lblcontent31 = ViewState["lblcontent3"].ToString();
                }
                if ((s3txtheading.Text != null) && (s3txtheading.Text != ""))
                {
                    lblheading31 = s3txtheading.Text;
                }
                else
                {
                    lblheading31 = ViewState["lblheading3"].ToString();
                }
                if ((s3txtlonk1.Text != null) && (s3txtlonk1.Text != ""))
                {
                    lbllink1s31 = s3txtlonk1.Text;
                }
                else
                {
                    lbllink1s31 = ViewState["lbllink1s3"].ToString();
                }
                if ((txtlink2s3.Text != null) && (txtlink2s3.Text != ""))
                {
                    lbllink2s31 = txtlink2s3.Text;
                }
                else
                {
                    lbllink2s31 = ViewState["lbllink2s3"].ToString();
                }
                if (FileUpload3.HasFile)
                {

                    fileSize3 = FileUpload3.PostedFile.ContentLength;
                    if (fileSize3 > minsize & fileSize3 < maxsize)
                    {
                        filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
                        FileUpload3.SaveAs(Server.MapPath("~/AdminModule/Images/" + filename3));
                        filename3 = "~/AdminModule/Images/" + filename3;
                        status = checkexetion(FileUpload3);
                    }
                    else
                    {
                        filename3 = ViewState["slider3"].ToString();
                    }
                }
                else




                {
                    filename3 = ViewState["slider3"].ToString();

                }
                if (status == true)
                {
                    SqlCommand cmd = new SqlCommand("sp_slider3update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sliderimage3", filename3);
                    cmd.Parameters.AddWithValue("@slidercontent3", lblcontent31);
                    cmd.Parameters.AddWithValue("@sliderHeading3", lblheading31);
                    cmd.Parameters.AddWithValue("@sliderbuttonlinks3", lbllink1s31);
                    cmd.Parameters.AddWithValue("@sliderbuttonTittles3", "");
                    cmd.Parameters.AddWithValue("@Createby", "");
                    cmd.Parameters.AddWithValue("@updateby", "");
                    con.Open();
                    int result =cmd.ExecuteNonQuery();
                    con.Close();
                    DataBind1();
                    //txtmessage.Text = "Update Success";
                    //txtmessage.ForeColor = Color.Green;
                    s3txtcontent.Text = s3txtheading.Text = s3txtlonk1.Text = "";
                    if (result > 0)
                    {
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                    }
                    else
                    {
                        messagebox.Visible = true;
                        messageboxerror.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                s3txtcontent.Text = s3txtheading.Text = s3txtlonk1.Text = "";
            }
        }
    }
}