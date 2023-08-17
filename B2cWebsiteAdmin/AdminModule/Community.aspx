<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Community.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Community" %>

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
                                          <div class="col-lg-12">

                                                <h3>Why Choose </h3>
                                            </div>


                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="card">
                                                        <asp:Image ID="imagec1" CssClass="img-fluid" alt="error" runat="server" Height="250px"  />
                                                        <%-- <img
                                                src="https://jssors8.azureedge.net/demos/image-slider/img/px-action-athlete-athletes-848618-image.jpg"
                                                class="card-img-top"
                                                alt="Storm Clouds" height="250" style="background-size: cover" />--%>
                                                    </div>
                                                </div>
                                                <%-- <div class="col-lg-4">
                                                    <div class="card">
                                                        <asp:Image ID="imagec2"  CssClass="img-fluid" alt="error" runat="server" Height="250px" />
                                                        <%--  <img
                                                src="//jssors8.azureedge.net/demos/image-slider/img/px-bloom-blossom-flora-65219-image.jpg"
                                                class="card-img-top"
                                                alt="Storm Clouds" height="250" style="background-size: cover" />--%>
                                                    <%-- </div>
                                                </div>--%>

                                               <%-- <div class="col-lg-4">
                                                    <div class="card">
                                                        <%-- <img
                                                src="https://jssors8.azureedge.net/demos/image-slider/img/px-action-athlete-athletes-848618-image.jpg"
                                                class="card-img-top"
                                                alt="Storm Clouds" height="250" style="background-size: cover" />--%>
                                                        <%--  <asp:Image ID="imagec3"  CssClass="img-fluid" alt="error" runat="server" Height="250px" />
                                                    </div>
                                                </div>--%>

                                                <%--<div class="col-lg-3 d-none d-lg-block">
                                        <div class="card">
                                            <asp:Image ID="imagelogo" alt="error" runat="server" Height="250px" Width="100%" />

                                        </div>--%>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                        <div class="card-body">
                                                            <h5 class="card-title">Content</h5>
                                                            <asp:Label ID="tblcontent" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                        <div class="card-body">
                                                            <h5 class="card-title">Heading</h5>
                                                            <asp:Label ID="lblheading" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--<div class="row">
                                                <div class="col-lg-12">
                                                    <div class="card">

                                                        <div class="card-body" style="background-color: #396EB4; color: white; font-family: sarif">
                                                            <h5 class="card-title">Link</h5>
                                                            <asp:Label ID="tblbuttonlink" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                         <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                        <div class="card-body">
                                                            <h5 class="card-title">Content</h5>
                                                            <asp:Label ID="tblcontent2" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                        <div class="card-body">
                                                            <h5 class="card-title">Heading</h5>
                                                            <asp:Label ID="lblheading2" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                         <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                        <div class="card-body">
                                                            <h5 class="card-title">Content</h5>
                                                            <asp:Label ID="tblcontent3" runat="server"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="card" style="background-color: #396EB4; color: white; font-family: sarif">

                                                        <div class="card-body">
                                                            <h5 class="card-title">Heading</h5>
                                                            <asp:Label ID="lblheading3" runat="server"></asp:Label>

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
            </div></div>
    


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

                                                        <div class="col-md-4 mt-1">
                                                            <asp:FileUpload ID="FileUpload1" class="form-control d-inline" runat="server" />
                                                        </div>
                                                      <%--  <div class="col-md-4 mt-1">
                                                            <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                                                        </div>--%>
                                                        <%--<div class="col-md-4 mt-1">
                                                            <asp:FileUpload ID="FileUpload3" class="form-control" runat="server" />
                                                        </div>--%>
                                                        <%--  <div class="col-md-3">
                                                            <asp:FileUpload ID="FileUpload4" class="form-control" runat="server" />
                                                        </div>--%>
                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Slider Heading</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtheading" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Slider Heading2</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtheading2" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Slider Heading3</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtheading3" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Content</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtcontent" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Content2</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtcontent2" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Content3</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtcontent3" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <%--<div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Link</label>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtlink" runat="server" class="form-control" placeholder="Type your link"></asp:TextBox>
                                                        </div>
                                                    </div>--%>
                                                    <div class="form-group row">

                                                        <div class="col-lg-2 col-sm-2">
                                                            <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" class="btn btn-success" Text="Submit" />
                                                        </div>
                                                        <div class="col-sm-2 col-lg-2 ">
                                                            <asp:Button ID="btn_Cancel" runat="server" CssClass="btn btn-danger" Text="Cancel" />
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
