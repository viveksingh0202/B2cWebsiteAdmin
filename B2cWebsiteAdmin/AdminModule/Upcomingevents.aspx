<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Upcomingevents.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Upcomingevents" %>

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
                            <div class="card-block">
                                <div class="row m-b-30">
                                    <div class="col-lg-12 col-sm-12">
                                        <div class="alert alert alert-dismissible bg-success" runat="server" visible="false" id="messagebox">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Success!</strong>Data has been successfully updated.
                                        </div>
                                        <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="messageboxerror">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong> something wrong
                                        </div>
                                        <div class="tab-pane active" id="SliderSectionOne" runat="server">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h3>Services Details</h3>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <!-- Line Tooltip card start -->
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <strong>Heading:</strong><asp:Label ID="lblheading" runat="server"></asp:Label><br />
                                                                    <strong>Division Content1 :</strong><asp:Label ID="lblcontent" runat="server"></asp:Label><br />
                                                                    <strong>Division Content2 :</strong><asp:Label ID="lblcontent2" runat="server"></asp:Label><br />
                                                                    <strong>Division Content3 :</strong><asp:Label ID="lblcontent3" runat="server"></asp:Label><br />
                                                                    <strong>Division First Heading:</strong><asp:Label ID="lbldiv1heading" runat="server"></asp:Label><br />
                                                                    <strong>Division Second Heading :</strong><asp:Label ID="lbldiv2heading" runat="server"></asp:Label><br />
                                                                    <strong>Division Third Heading :</strong><asp:Label ID="lbldiv3heading" runat="server"></asp:Label><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Line Tooltip card end -->
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
                            <div class="card-block">
                                <div class="row m-b-30">
                                    <div class="col-lg-12 col-sm-12">
                                        <div class="tab-pane active" id="Div1" runat="server">
                                            <div class="card">
                                                <div class="card-header" style="padding: 12px 5px 5px 15px; background-color: #396EB4">
                                                    <h5 style="color: white; text-align: center; font-family: serif">Upcoming Images</h5>
                                                    <div class="card-header-right">
                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                    </div>
                                                </div>
                                                <div class="card-block mx-auto my-2">
                                                    <div class="form-group row">
                                                        <div class="col-sm-4">
                                                            <asp:Image ID="div1image" Height="300" Width="300" runat="server" />
                                                            <p style="text-align:center"><b>Division First Image</b></p>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:Image ID="div2image" Height="300" Width="300" runat="server" />
                                                             <p style="text-align:center"><b>Division Second Image</b></p>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:Image ID="div3third" Height="300" Width="300" runat="server" />
                                                             <p style="text-align:center"><b>Division Third Image</b></p>
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


    <%--  -------------------- FILL DATA  -------------------------------------------------%>
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
                                                <div>
                                                    <h4 style="font-size: 25px; font-weight: 500;">FILL DETAILS </h4>
                                                    <hr style="background-color: rebeccapurple; margin-top: -1px" />
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Division First Image :</label>
                                                            <div class="col-sm-8">
                                                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Division Second image :</label>
                                                            <div class="col-sm-8">
                                                                <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Division Third image :</label>
                                                            <div class="col-sm-8">
                                                                <asp:FileUpload ID="FileUpload3" class="form-control" runat="server" />
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Heading:</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtheading" runat="server" CssClass="form-control" placeholder="Enter Heading"></asp:TextBox>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Content :</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtcontent" runat="server" CssClass="form-control" placeholder="Enter content"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Content2 :</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtcontent2" runat="server" CssClass="form-control" placeholder="Enter content"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Content3 :</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtcontent3" runat="server" CssClass="form-control" placeholder="Enter content"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Division First Heading :</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtdiv1heading" runat="server" CssClass="form-control" placeholder="Enter Division First Heading"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Division Second Heading :</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtdiv2heading" runat="server" CssClass="form-control" placeholder="Enter Division Second Heading"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label fillData">Division Third Heading:</label>
                                                            <div class="col-sm-8">
                                                                <asp:TextBox ID="txtdiv3heading" runat="server" CssClass="form-control" placeholder="Enter Division Third Heading"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group row">
                                                            <div class="col-sm-3">
                                                                <asp:Button ID="btn_sumit" Text="Submit" OnClick="btn_sumit_Click" runat="server" CssClass="btn btn-success" />
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:Button ID="btn_cancel" Text="Cancel" OnClick="btn_cancel_Click" runat="server" CssClass="btn btn-danger" />
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
</asp:Content>
