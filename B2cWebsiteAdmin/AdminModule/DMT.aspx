<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="DMT.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.DMT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
    display: flex;
    width: 100%;
    padding: 4% 2%;
    box-sizing: border-box;
    height: 60vh;
}

.box {
    flex: 1;
    overflow: hidden;
    transition: .5s;
    margin: 0 2%;
    box-shadow: 0 20px 30px rgba(0,0,0,.1);
    line-height: 0;
}

    .box > img {
        width: 100%;
        height: calc(80% - -10vh);
        object-fit: cover;
        transition: .5s;
    }

    .box > span {
        font-size: 3.8vh;
        display: block;
        text-align: center;
        height: 10vh;
        line-height: 2.6;
    }

   /* .box:hover {
        flex: 1 1 50%;
        
    }

        .box:hover > img {
            width: 100%;
         
          
        }*/
/* **** Update css form **** */
*, body {
    font-family: 'Poppins', sans-serif;
}

.get-in-touch {
    max-width: 800px;
    margin: 50px auto;
    position: relative;
}

    .get-in-touch .title {
        text-align: center;
      /*  text-transform: uppercase;*/
        letter-spacing: 3px;
        font-size: 3.2em;
        line-height: 48px;
        padding-bottom: 30px;
        color: black;
        background: black;
        background: -moz-linear-gradient(left,#f4524d 0%,#5543ca 100%) !important;
        background: -webkit-linear-gradient(left,#f4524d 0%,#5543ca 100%) !important;
        background: linear-gradient(to right,#f4524d 0%,#5543ca 100%) !important;
        -webkit-background-clip: text !important;
        -webkit-text-fill-color: transparent !important;
    }

.contact-form .form-field {
    position: relative;
    margin: 32px 0;
}

.contact-form .input-text {
    display: block;
    width: 100%;
    height: 36px;
    border-width: 0 0 2px 0;
    border-color: #5543ca;
    font-size: 18px;
    line-height: 26px;
    font-weight: 400;
}

    .contact-form .input-text:focus {
        outline: none;
    }

        .contact-form .input-text:focus + .label,
        .contact-form .input-text.not-empty + .label {
            -webkit-transform: translateY(-24px);
            transform: translateY(-24px);
        }

.contact-form .label {
    position: absolute;
    left: 20px;
    bottom: 11px;
    font-size: 18px;
    line-height: 26px;
    font-weight: 400;
    color: #5543ca;
    cursor: text;
    transition: -webkit-transform .2s ease-in-out;
    transition: transform .2s ease-in-out;
    transition: transform .2s ease-in-out, -webkit-transform .2s ease-in-out;
}

.contact-form .submit-btn {
    display: inline-block;
    background-color: forestgreen;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 16px;
    padding: 8px 16px;
    border: none;
    width: 200px;
    cursor: pointer;
}

.custom-file-upload {
    border-bottom: 1px solid #5543ca;
    display: inline-block;
    padding: 3px 12px;
    cursor: pointer;
    background-color: white;
    width: 100%;
    border-width: 0 0 2px 0;
}

::placeholder {
    font-family: serif;
}

    </style>
   <%-- <link href="../assets/css/styleimages3.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-inner-content">
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <div class="page-body">
                            <div class="page-body">
                                <div class="row" style="font-family: serif">
                                    <div class="col-sm-12">
                                        <div class="alert alert alert-dismissible bg-success" runat="server" visible="false" id="messagebox">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Success!</strong>Data has been successfully updated.
                                        </div>
                                        <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="messageboxerror">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong> something wrong
                                        </div>
                                        <!-- Basic Form Inputs card start -->
                                        <div class="card">

                                            <div class="card-block">
                                                <div class="container">
                                                
                                                
                                                    <div class="box">
                                                       
                                                        
                                                        <asp:Image ID="ImageFirst" runat="server" AlternateText="Error"   />
                                                         <span>Image</span>
                                                       </div>
                                                    
                                                          
                                                    
                                                   
                                                    <div class="box">
                                                       <asp:Image ID="ImageSecond" runat="server" AlternateText="Error"    />
                                                         <span>Image</span>
                                                    </div>
                                                    <div class="box">
                                                      <asp:Image ID="ImageThird" runat="server" AlternateText="Error"  />
                                                       <span>Image</span>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">

                                                        <h6 style="font-weight:600">
                                                           Section First  Content 
                                                        </h6>
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style= "margin-left:25px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents1" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <h6 style="font-weight:600">
                                                           Section Second  Content 
                                                        </h6>
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents2" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <h6 style="font-weight:600">
                                                           Section Third Content 
                                                        </h6>
                                                        <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents3" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                          <%--<div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents4" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                      --%>

                                                    </div>

                                                    <div class="col-sm-6">
                                                        <h6 style="font-weight:600"> Section First Heading</h6>
                                                        <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblheading1" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                         <h6 style="font-weight:600"> Section Second Heading</h6>
                                                         <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:label ID="lblheading2" runat="server" class="col-form-label fillData"></asp:label>
                                                            </div>

                                                        </div>
                                                         <h6 style="font-weight:600"> Section Third Heading</h6>
                                                         <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:label ID="lblheading3" runat="server" class="col-form-label fillData"></asp:label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>
                                                <hr />
                                                 <div class="row">
                                                    <div class="col-sm-12">
                                                        <h6 style="font-weight:600">
                                                           Section Third  Paragraph
                                                        </h6>
                                                          <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblparagraph1" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblparagraph2" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                          <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblparagraph3" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                        </div>
                                                     </div>
                                                <hr />
                                                  <div class="row">
                                                    <div class="col-sm-12">
                                                        <h5> Section First Button Link</h5>
                                                        <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style=" margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:label ID="lblbuttonlink" runat="server" class="col-form-label fillData"></asp:label>
                                                            </div>

                                                        </div>
                                                        </div>

                                                      </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pcoded-inner-content" style="margin-top: -6.5rem">

        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <section class="get-in-touch">
                        <h3 style="text-align:center;font-weight:600;font-family:sans-serif">Update Details</h3>
                        <for class="contact-form row" style="margin-top: -1.5rem">
                            <div class="form-field col-lg-6">
                              <label style="font-weight:600;font-family:serif" >Section First Content</label>
                                <asp:TextBox ID="txtContent1" runat="server" class="input-text js-input" placeholder="Type Content ..."></asp:TextBox>
                                
                            </div>
                            <div class="form-field col-lg-6 ">
                                <label style="font-weight:600;font-family:serif">Section Second Content</label>
                                <asp:TextBox ID="txtcontent2" runat="server" class="input-text js-input" placeholder="Type Second Content ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6 ">
                                 <label style="font-weight:600;font-family:serif" >Section Third Content</label>
                                <asp:TextBox ID="txtcontent3" runat="server" class="input-text js-input" placeholder="Type Third Content ..."></asp:TextBox>
                            </div>
                            
                            <div class="form-field col-lg-6">
                                 <label style="font-weight:600;font-family:serif">Section Third Paragraph 1 </label>
                                <asp:TextBox ID="txtparagraph1" runat="server" class="input-text js-input" placeholder="Type First Paragraph ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">
                                   <label style="font-weight:600;font-family:serif">Section Third Paragraph 2 </label>
                                <asp:TextBox ID="txtparagraph2" runat="server" class="input-text js-input" placeholder="Type Second Paragraph ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">
                                   <label style="font-weight:600;font-family:serif">Section Third Paragraph 3</label>
                                <asp:TextBox ID="txtparagraph3" runat="server" class="input-text js-input" placeholder="Type Third Paragraph ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">
                                   <label style="font-weight:600;font-family:serif">Section First Heading </label>
                                <asp:TextBox ID="txtheading1" runat="server" class="input-text js-input" placeholder="Type First Heading ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">
                                 <label style="font-weight:600;font-family:serif">Section Second Heading </label>
                                <asp:TextBox ID="txtheading2" runat="server" class="input-text js-input" placeholder="Type Second Heading ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">
                                 <label style="font-weight:600;font-family:serif">Section Third Heading </label>
                                <asp:TextBox ID="txtheading3" runat="server" class="input-text js-input" placeholder="Type Third Heading ..."></asp:TextBox>
                            </div>

                            <div class="form-field col-lg-6">
                                <label style="font-weight:600;font-family:serif">Section First Image </label>
                                <asp:FileUpload ID="image1" runat="server" class="custom-file-upload" />
                               
                            </div>
                            <div class="form-field col-lg-6">
                                <label style="font-weight:600;font-family:serif">Section Second Image </label>
                                <asp:FileUpload ID="image2" runat="server" class="custom-file-upload" />
                               
                            </div>
                            <div class="form-field col-lg-6">
                                 <label style="font-weight:600;font-family:serif">Section Third Image </label>
                                <asp:FileUpload ID="image3" runat="server" class="custom-file-upload" />
                               
                            </div>
                            <div class="form-field col-lg-12">
                                 <label style="font-weight:600;font-family:serif">Section Section  Button Link </label>
                                <asp:TextBox ID="txtbuttonLink" runat="server" class="input-text js-in" placeholder="Type Button Link  ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-8">
                            
                                <asp:Button ID="btn_submit" class="submit-btn btn btn-success" OnClick="btn_submit_Click" Text="Submit" runat="server" />
                            </div>
                            <div class="form-field col-lg-4">
                                
                                <asp:Label ID="lblmassage" runat="server"></asp:Label>
                            </div>
                        </for>
                    </section>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
