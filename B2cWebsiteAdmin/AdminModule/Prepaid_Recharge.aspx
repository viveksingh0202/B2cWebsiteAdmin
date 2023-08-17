<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Prepaid_Recharge.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Prepaid_Recharge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .cards-list {
            z-index: 0;
            width: 100%;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            margin: 30px auto;
           /*  width: 300px;
            height: 300px;*/
            border-radius: 40px;
            box-shadow: 5px 5px 30px 7px rgba(0,0,0,0.25), -5px -5px 30px 7px rgba(0,0,0,0.22);
            cursor: pointer;
            transition: 0.4s;
        }

            .card .card_image {
                width: inherit;
                height: inherit;
                border-radius: 40px;
            }

                .card .card_image img {
                    width: inherit;
                    height: inherit;
                    border-radius: 30px;
                    object-fit: cover;
                }

            .card .card_title {
                text-align: center;
                border-radius: 0px 0px 40px 40px;
                font-family: sans-serif;
                font-weight: bold;
                font-size: 30px;
                margin-top: -80px;
                height: 40px;
            }

          /*  .card:hover {
                transform: scale(0.9, 0.9);
                box-shadow: 5px 5px 30px 15px rgba(0,0,0,0.25), -5px -5px 30px 15px rgba(0,0,0,0.22);
            }*/

        .title-white {
            color: white;
        }

        .title-black {
            color: black;
        }

        @media all and (max-width: 500px) {
            .card-list {
                /* On small screens, we are no longer using row direction but column */
                flex-direction: column;
            }
        }


        /*
.card {
  margin: 30px auto;
  width: 300px;
  height: 300px;
  border-radius: 40px;
  background-image: url('https://i.redd.it/b3esnz5ra34y.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
  background-repeat: no-repeat;
box-shadow: 5px 5px 30px 7px rgba(0,0,0,0.25), -5px -5px 30px 7px rgba(0,0,0,0.22);
  transition: 0.4s;
}
*/

        input[type=text], [type=email] {
            border: none;
            border-bottom: 1px solid black;
            outline: none;
            width: 100%;
            margin: 8px 0;
            padding: 10px 0;
        }

        input[type=number] {
            border: none;
            border-bottom: 1px solid black;
            outline: none;
            margin: 8px 0;
            padding: 5px 0;
        }

        input :hover {
            background-color: red;
        }

        select {
            border: none;
            border-bottom: 1px solid black;
            outline: none;
            margin: 8px 0;
            padding: 5px 0;
            width: 50%;
        }

        .custom-file-upload-hidden {
            display: none;
            visibility: hidden;
            position: absolute;
            left: -9999px;
        }

        .custom-file-upload {
            display: block;
            width: auto;
            font-size: 16px;
            margin-top: 30px;
        }

        .btn {
            color: #ffffff;
            background-color: #4caf50;
            height: 40px;
            width: 30%;
            margin-top: 30px;
            cursor: pointer;
            border: none;
            border-radius: 2%;
            outline: none;
            text-align: center;
            font-size: 16px;
            text-decoration: none;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }

            .btn:hover {
                background-color: #333333;
            }

        .form-title {
            padding: 10px 40px 0px;
        }

        strong {
            font-family: 'Poppins', sans-serif;
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
                                    <div class="alert alert alert-dismissible bg-success" runat="server" visible="false" id="messagebox">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Success!</strong>Data has been successfully updated.
                                        </div>
                                        <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="messageboxerror">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong> something wrong
                                        </div>
                                    <div class="cards-list">
                                        <div class="card 1" style="width: 500px; height: 350px">
                                            <div class="card_image">
                                                <asp:Image ID="ImageFirst" runat="server" AlternateText="Error" />
                                            </div>
                                            <div class="card_title title-white">
                                              
                                            </div>
                                        </div>
                                        <%--<div class="card 3" style="width: 500px; height: 350px">
                                            <div class="card_image">
                                              <asp:Image ID="ImageSecond" runat="server" AlternateText="Error" />
                                            </div>
                                            <div class="card_title">
                                              
                                            </div>
                                        </div>--%>
                                    </div>
                                </div>
                                <div class="row" style="font-family: serif">
                                    <div class="col-sm-12">
                                        <!-- Basic Form Inputs card start -->
                                        <div class="card">
                                            <div class="card-block">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <h4>Heading
                                                        </h4>
                                                        <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblheading1" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <%--<div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblheading2" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>--%>
                                                    </div>
                                                    <div class="col-sm-12">

                                                        <h4>Content
                                                        </h4>
                                                       
                                                         <div class="form-group row">
                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblcontents1" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-12">
                                                        <h4>Buttont Link</h4>
                                                        <div class="form-group row">

                                                            <i class="col-sm- fa fa-pencil" aria-hidden="true" style="margin-top: 10px; margin-left: 20px"></i>
                                                            <div class="col-sm-11">
                                                                <asp:Label ID="lblbuttonlink" runat="server" class="col-form-label fillData"></asp:Label>
                                                            </div>
                                                        </div>
                                                       </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <!-- Basic Form Inputs card start -->
                                    <div class="card">
                                        <div class="card-block">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h4 class="form-title">Update Details</h4>
                                                    <hr />
                                                </div>
                                                <div class="container">
                                                    <div class="content">
                                                        <for>
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <strong>Heading First :</strong><asp:TextBox ID="txtheading1" runat="server" placeholder="Type your first heading"></asp:TextBox>
                                                                </div>
                                                                <%--<div class="col-sm-6">
                                                                    <strong>Heading Second :</strong>
                                                                    <asp:TextBox ID="txtheading2" runat="server" placeholder="Type your second heading"></asp:TextBox>

                                                                </div>--%>
                                                                <div class="col-sm-6">
                                                                    <strong>Content  :</strong>
                                                                    <asp:TextBox ID="txtcontent" runat="server" placeholder="Type your content "></asp:TextBox>
                                                                </div>
                                                               
                                                                <div class="col-sm-6">
                                                                    <strong>Content  :</strong>
                                                                    <asp:TextBox ID="txtbuttonlink" runat="server" placeholder="Type your button link"></asp:TextBox>
                                                                </div>

                                                                
                                                                <div class="col-sm-6">
                                                                    <strong>Image First :</strong>
                                                                    <asp:FileUpload ID="image1" CssClass="custom-file-upload" runat="server" />
                                                                </div>

                                                               <%-- <div class="col-sm-6">
                                                                    <strong>Image Second :</strong>
                                                                    <asp:FileUpload ID="image2" class="custom-file-upload" runat="server" />
                                                                </div>--%>
                                                                <div class="col-sm-6">
                                                                    <asp:Button ID="btn_Submit" runat="server" OnClick="btn_Submit_Click" CssClass="btn btn-success" Text="Submit" />
                                                                </div>
                                                                 <div class="col-sm-6">
                                                                   <asp:Label ID="lblmessage" runat="server" ></asp:Label>
                                                                </div>
                                                            </div>
                                                        </for>
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
</asp:Content>
