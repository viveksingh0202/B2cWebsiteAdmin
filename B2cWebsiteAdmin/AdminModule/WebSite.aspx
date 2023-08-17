<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="WebSite.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Footer_header" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        Label{
            font-family: sans-serif;
            font-size:1000px;

        }
        strong{
            font-family:serif;
        }
        .fillData{
            font-family:serif;
            font-size: 25px; 
            font-weight: 600;
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
                            <div class="card-block">

                                <!-- Row start -->
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
                                                    <h3>Web Details </h3>
                                                    <hr />
                                                    <div class="row">

                                                        <%--                                                        <div class="page-body">
                                                            <div class="row">--%>




                                                        <div class="col-sm-12">
                                                            <!-- Line Tooltip card start -->
                                                            <div class="card">
                                                                <div class="card-header" style="padding: 12px 5px 5px 15px; background-color: #396EB4">
                                                                    <h5 style="color: white; text-align: center; font-family: serif">COMPANY DATAILS</h5>
                                                                    <div class="card-header-right">
                                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="card-block">
                                                                    <div class="row">
                                                                        <div class="col-sm-8">
                                                                            <strong>Owner Name :</strong><asp:Label ID="lblowneername" runat="server"></asp:Label><br />
                                                                            <strong>Company Name :</strong><asp:Label ID="lblcompanyName" runat="server"></asp:Label><br />
                                                                            <strong>Company Pan :</strong><asp:Label ID="lblcompanypan" runat="server"></asp:Label><br />
                                                                            <strong>Company Aadhar :</strong><asp:Label ID="lblcompanyAdhar" runat="server"></asp:Label><br />
                                                                            <strong>Company Email :</strong><asp:Label ID="lblemail" runat="server"></asp:Label><br />
                                                                            <strong>Company Contact No :</strong><asp:Label ID="lblcontact" runat="server"></asp:Label><br />
                                                                            <strong>Company Address :</strong><asp:Label ID="lbladress" runat="server"></asp:Label><br />
                                                                            <strong>Support Contect:</strong><asp:Label ID="lblsupportContact" runat="server"></asp:Label><br />
                                                                            <strong>Support Email  :</strong><asp:Label ID="lblsupportEmail" runat="server"></asp:Label><br />

                                                                        </div>
                                                                        <div class="col-sm-4">

                                                                            <asp:Image ID="logo" class="img-circle" Height="150px" Width="150px" runat="server" Style="margin-top:2rem;margin-left:1rem" AlternateText="Error" />
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                            </div>
                                                            <div class="card">
                                                                <div class="card-header" style="padding: 12px 5px 5px 15px; background-color: #396EB4">
                                                                    <h5 style="color: white; text-align: center; font-family: serif">Footer Email Section Image</h5>
                                                                    <div class="card-header-right">
                                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="card-block mx-auto my-2" >

                                                                   
                                                                    <asp:Image ID="FoEmailSectionImage"  runat="server" Height="250" />



                                                                </div>

                                                            </div>
                                                            <div class="card">
                                                                <div class="card-header" style="padding: 12px 5px 5px 15px; background-color: #396EB4">
                                                                    <h5 style="color: white; text-align: center; font-family: serif">SOCIAL MEDIA LINKS</h5>
                                                                    <div class="card-header-right">
                                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="card-block">

                                                                    <strong>Apk Link :</strong><asp:Label ID="lblapk" runat="server"></asp:Label><br />
                                                                    <strong>Instsgram Link:</strong><asp:Label ID="lblinstgram" runat="server"></asp:Label><br />
                                                                    <strong>Facebook Link  :</strong><asp:Label ID="lblfacebook" runat="server"></asp:Label><br />
                                                                    <strong>Twitter Link:</strong><asp:Label ID="lbltwitte" runat="server"></asp:Label><br />
                                                                    <strong>Linkdin Link :</strong><asp:Label ID="lbllinkdin" runat="server"></asp:Label><br />
                                                                    <strong>Whatsapp Link:</strong><asp:Label ID="lblwhatsapp" runat="server"></asp:Label><br />




                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <!-- Line Tooltip card start -->
                                                            <div class="card">
                                                                <div class="card-header" style="padding: 12px 5px 5px 15px; background-color: #396EB4">
                                                                    <h5 style="color: white; text-align: center; font-family: serif">LOGIN LINK /DOMAIN</h5>
                                                                    <div class="card-header-right">
                                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="card-block">
                                                                    <strong>Login Link:</strong>
                                                                    <asp:Label ID="lblloginlink" runat="server"></asp:Label>
                                                                    <strong>Domain :</strong>
                                                                    <asp:Label ID="lbldomainlink" runat="server"></asp:Label>
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
                                                <for>

                                                    <div class="row">

                                                        <div class="col-sm-6">
                                                            <div class="form-group row">



                                                                <label class="col-sm-4 col-form-label fillData">Logo Upload :</label>

                                                                <div class="col-sm-8">
                                                                    <asp:FileUpload ID="FileUpload1"     class="form-control" runat="server" />
                                                                </div>

                                                            </div>
                                                              
                                                            <div class="form-group row">



                                                                <label class="col-sm-4 col-form-label fillData">Emial Section Image:</label>

                                                                <div class="col-sm-8">
                                                                    <asp:FileUpload ID="FileUpload2"     class="form-control" runat="server" />
                                                                </div>

                                                            </div>



                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData" >Owner Name:</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtownername" runat="server" class="form-control" placeholder="Type your Owner Name" MaxLength="100" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Company Name :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtcompanyname" runat="server" MaxLength="150" class="form-control" placeholder="Type your Company Name"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Pan No ;</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtpanno" runat="server" class="form-control" MaxLength="10" placeholder="Type your Pan No"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Aadhar No :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtAdhar" runat="server" class="form-control" MaxLength="12" placeholder="Type your Aadhar No"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Contect No :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtcontact" runat="server" class="form-control" MaxLength="10" placeholder="Type your Contect No"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Contact Email:</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" MaxLength="150" placeholder="Type your Contact Email"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Company Address :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtaddress" runat="server" class="form-control" MaxLength="200" placeholder="Type your Company Address"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                           <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Domain Link</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtdomainlink" runat="server" class="form-control" placeholder="Type your Domain Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                         
                                                            
                                                        </div>
                                                        <div class="col-sm-6">
                                                             <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData" >Support Contect  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsupportcontact" runat="server" class="form-control" MaxLength="10" placeholder="Type your Support Contect"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Support Email :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsupportemail" runat="server" class="form-control" MaxLength="150" placeholder="Type your Support Email"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Apk Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="ttxapklink" runat="server" class="form-control" placeholder="Type your Apk Link" MaxLength="38" MinLenth="300"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Instagram Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtinstagramlink" runat="server" class="form-control" placeholder="Type your Instagram Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Facebook Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtfacebooklink" runat="server" class="form-control" placeholder="Type your Facebook Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Twitter Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txttwitterlink" runat="server" class="form-control" placeholder="Type your Twitter Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Linkdin Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtlinkdinlink" runat="server" class="form-control" placeholder="Type your Linkdin Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Whatsapp Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtwhatsapplink" runat="server" class="form-control" placeholder="Type your Whatsapp Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Login Link :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtloginlink" runat="server" class="form-control" placeholder="Type your Login Link" MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                               <div class="form-group row">

                                                                <div class="col-lg-3 col-sm-3">
                                                                    <asp:Button ID="btn_update" runat="server" class="btn btn-success" OnClick="btn_update_Click" Text="Submit" />
                                                                </div>
                                                                <div class="col-sm-3 col-lg-3 ">
                                                                    <asp:Button ID="btn_Cancel" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                                                                </div>
                                                                <div class="col-sm-3 col-lg-3 ">
                                                                    <asp:Label ID="lblmassage" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
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
        <script type="text/javascript">
    function HideLabel() {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=lblmassage.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
        </script>
</asp:Content>
