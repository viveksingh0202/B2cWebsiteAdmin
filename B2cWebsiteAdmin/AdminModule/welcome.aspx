<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                text-transform: uppercase;
                letter-spacing: 3px;
                font-size: 3.2em;
                line-height: 48px;
                padding-bottom: 48px;
                color: #5543ca;
                background: #5543ca;
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
                                                            <h4 style="color: white">AboutUs Details</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-8">
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents0" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                       <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents01" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents02" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents1" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents2" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents3" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>
                                                       <%-- <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents4" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>--%>
                                                        <%--<div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents5" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>

                                                        </div>--%>

                                                    </div>

                                                    <div class="col-sm-4">

                                                        <asp:Image ID="WhyusImage" class="img-circle" Height="300px" Width="300px" runat="server" Style="margin-top: 1rem;" AlternateText="Error" />

                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <%--<div class="tab-pane active" id="Div1" runat="server">
                                    <div class="card">
                                        <div class="card-header" style="padding: 12px 5px 5px 15px; background-image: linear-gradient(90deg,#396EB4,#396EB0);">
                                            <h5 style="color: white">Button Link :</h5>
                                            <div class="form-group row" style="color: white">

                                                <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 12px"></i>
                                                <div class="col-sm-11">
                                                    <asp:Label ID="lblButtonlink" runat="server" class="col-form-label"></asp:Label>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--  ************************ Update Details ******************************--%>
    <div class="pcoded-inner-content" style="margin-top: -6.5rem">

        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <section class="get-in-touch">
                        <h1 class="title">Update Details</h1>
                        <for class="contact-form row" style="margin-top: -2.5rem">
                            <div class="form-field col-lg-6 ">

                                <asp:TextBox ID="txtContent01" runat="server" class="input-text js-input" placeholder="Heading ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6 ">

                                <asp:TextBox ID="txtContent02" runat="server" class="input-text js-input" placeholder="Type  your Content ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6 ">

                                <asp:TextBox ID="txtContent03" runat="server" class="input-text js-input" placeholder="Type  your Content ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">

                                <%--  <input id="name" class="input-text js-input" type="text" required>--%>
                                <asp:TextBox ID="txtContent1" runat="server" class="input-text js-input" placeholder="Type  First Content ..."></asp:TextBox>
                                <%-- <label class="label" for="name">Name</label>--%>
                            </div>

                            <div class="form-field col-lg-6 ">

                                <asp:TextBox ID="txtcontent2" runat="server" class="input-text js-input" placeholder="Type Second Content ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6 ">
                                <asp:TextBox ID="txtcontent3" runat="server" class="input-text js-input" placeholder="Type Third Content ..."></asp:TextBox>
                            </div>
                           <%-- <div class="form-field col-lg-6 ">
                                <asp:TextBox ID="txtcontent4" runat="server" class="input-text js-input" placeholder="Type Fourth Content ..."></asp:TextBox>
                            </div>
                            <div class="form-field col-lg-6">
                                <asp:TextBox ID="txtcontent5" runat="server" class="input-text js-input" placeholder="Type Fifth Content ..."></asp:TextBox>
                            </div>--%>
                            <div class="form-field col-lg-6">
                                <%--  <input id="image" class="input-text js-input" type="text" required>--%>
                                <asp:FileUpload ID="image1" runat="server" class="custom-file-upload" />
                                <%--  <label class="label" for="message">Message</label>--%>
                            </div>
                            <%--<div class="form-field col-lg-12">
                                <asp:TextBox ID="txtbuttonLink" runat="server" class="input-text js-in" placeholder="Type Button Link  ..."></asp:TextBox>
                            </div>--%>
                            <div class="form-field col-lg-8">
                                <%--  <input  type="submit" value="Submit">--%>
                                <asp:Button ID="btn_submit" class="submit-btn btn btn-success" OnClick="btn_submit_Click" Text="Submit" runat="server" />
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
    <script type="text/javascript">
    function HideLabel() {
                  var seconds = 5;
                  setTimeout(function () {
                      document.getElementById("<%=lblmassage.ClientID %>").style.display = "none";
                  }, seconds * 1000);
              };
    </script>
</asp:Content>
