<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="HomeWelcome.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.HomeWelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <style>
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
                letter-spacing: 3px;
                font-size: 2em;
                line-height: 30px;
                padding-bottom: 48px;
                color: #396EB4;
                background: #396EB4;
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
                                                <div class="tab-pane active" id="SliderSectionOne" runat="server">
                                                    <div class="card">
                                                        <div class="card-header" style="padding: 12px 5px 5px 15px; background-color: #396EB4">
                                                            <h4 style="color: white">Welcome Details</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-8">


                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:label ID="lblcontent1" runat="server" class="col-form-label fillData"></asp:label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:label ID="lblcontent2" runat="server" class="col-form-label fillData">.</asp:label>
                                                            </div>
                                                        </div>


                                                    </div>

                                                    <div class="col-sm-4">
                                                        <asp:Image ID="WhyusImage" class="img-circle"  Width="80px"  runat="server" style="margin-top:-2rem" AlternateText="Error" />
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <asp:Image ID="whyusImage2" class="img-circle"  Width="80px"  runat="server" style="margin-top:-2rem" AlternateText="Error" />
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <asp:Image ID="WhyusImage3" class="img-circle"  Width="80px"  runat="server" style="margin-top:-2rem" AlternateText="Error" />
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <asp:Image ID="WhyusImage4" class="img-circle"  Width="80px"  runat="server" style="margin-top:-2rem" AlternateText="Error" />
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
    <div class="pcoded-inner-content" style="margin-top: -6rem">

        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <section class="get-in-touch">
                        <h1 class="title">Update Details</h1>
                        <for class="contact-form row" style="margin-top: -2rem">
                            <div class="form-field col-lg-12">
                                <%--  <input id="name" class="input-text js-input" type="text" required>--%>
                                <asp:TextBox ID="txtContent1" runat="server" class="input-text js-input" placeholder="Type  First Content ..."></asp:TextBox>
                                <%-- <label class="label" for="name">Name</label>--%>
                            </div>
                            <div class="form-field col-lg-12 ">

                                <asp:TextBox ID="txtcontent2" runat="server" class="input-text js-input" placeholder="Type Second Content ..."></asp:TextBox>
                            </div>
                           
                            
                            <div class="form-field col-lg-12">
                                <%--  <input id="image" class="input-text js-input" type="text" required>--%>
                                <asp:FileUpload ID="image1" runat="server" class="custom-file-upload" />
                                 <asp:FileUpload ID="image2" runat="server" class="custom-file-upload" />
                                 <asp:FileUpload ID="image3" runat="server" class="custom-file-upload" />
                                 <asp:FileUpload ID="image4" runat="server" class="custom-file-upload" />
                                <%--  <label class="label" for="message">Message</label>--%>
                            </div>
                         
                            <div class="form-field col-lg-8">
                                <%--  <input  type="submit" value="Submit">--%>
                                <asp:Button ID="btn_submit" class="btn btn-success submit-btn" OnClick="btn_submit_Click" Text="Submit" runat="server" />
                            </div>
                            <div class="form-field col-lg-4">
                                <%--  <input  type="submit" value="Submit">--%>
                                <asp:Label ID="lblmassage" runat="server"></asp:Label>
                            </div>
                        </for>
                    </section>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
