<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                                <!-- Row start -->
                                                <div class="col-sm-12">
                                                    <div class="col-lg-12" style="text-align: center; padding-bottom: 10px">
                                                        <h3>Contact Details</h3>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="card">
                                                                <asp:Image ID="imagec1" CssClass="img-fluid" alt="error" runat="server" Height="250px" />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="card">
                                                                <asp:Image ID="imagec2" CssClass="img-fluid" alt="error" runat="server" Height="250px" />

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                                <div class="card-body">
                                                                    <h5 class="card-title">Heading</h5>
                                                                    <asp:Label ID="lblheading" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                                <div class="card-body">
                                                                    <h5 class="card-title">Content</h5>
                                                                    <asp:Label ID="lblcontent" runat="server"></asp:Label>
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
    </div>



    <div class="pcoded-inner-content" style="margin-top: -6.5rem">
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <div class="page-body">
                            <div class="page-body">
                                <div class="row" style="font-family: serif">
                                    <div class="col-sm-12">
                                        <!-- Basic Form Inputs card start -->
                                        <div class="card">

                                            <div class="card-block">
                                                <h4 class="sub-title">Fill Details</h4>
                                                <for>
                                                    <div class="form-group row">

                                                        <div class="col-md-6 mt-1">
                                                            <asp:FileUpload ID="FileUpload1" class="form-control d-inline" runat="server" />
                                                        </div>
                                                        <div class="col-md-6 mt-1">
                                                            <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                                                        </div>

                                                        <%--  <div class="col-md-3">
                                                            <asp:FileUpload ID="FileUpload4" class="form-control" runat="server" />
                                                        </div>--%>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label">Slider Heading</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtheading" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label">Content</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtcontent" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">

                                                        <div class="col-lg-2 col-sm-2">
                                                            <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" class="btn btn-success" Text="Submit" />
                                                        </div>
                                                        <div class="col-sm-2 col-lg-2 ">
                                                            <asp:Button ID="btn_Cancel" runat="server" OnClick="btn_Cancel_Click" CssClass="btn btn-danger" Text="Cancel" />
                                                        </div>
                                                        <div class="col-sm-2 col-lg-2 ">
                                                            <asp:Label ID="lblmassage" runat="server"></asp:Label>
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
