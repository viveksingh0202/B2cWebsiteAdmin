<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="HomeAboutUs.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.HomeAboutUs" %>
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
                            <div class="row" style="font-family: serif">
                                <!-- SITE VISIT CHART start -->
                                <div class="col-md-12 col-lg-12">
                                    <div class="alert alert alert-dismissible bg-success" runat="server" visible="false" id="messagebox">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Success!</strong>Data has been successfully updated.
                                        </div>
                                        <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="messageboxerror">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong> something wrong
                                        </div>
                                    <div class="card">

                                        <div class="card-header">

                                            <div>
                                                <h4 style="font-size: 30px; font-weight: 800;">ABOUT DETAILS </h4>
                                            </div>

                                            <hr />
                                            <div class="row">
                                                <%--  <div class="col-lg-12">
                                                    <span><b>Heading :</b> Although heading and titles are similar, they are distinct: A title leads the entire document and captures its content in one or two phrases; a heading leads only a chapter or section and captures only the content of that chapter or section.</span>
                                                </div>
                                                <div class="col-lg-12">
                                                    <span><b>Content :</b>Although heading and titles are similar, they are distinct: A title leads the entire document and captures its content in one or two phrases; a heading leads only a chapter or section and captures only the content of that chapter or section.</span>
                                                </div>
                                                  <div class="col-lg-12">
                                                    <span><b>Link First  :</b>https://jssors8.azureedge.net/demos/image-slider/img/px-action-athlete-athletes-848618-image.jpg</span>
                                                </div>
                                                  <div class="col-lg-12">
                                                    <span><b>Link First :</b>https://jssors8.azureedge.net/demos/image-slider/img/px-action-athlete-athletes-848618-image.jpg</span>
                                                </div>--%>

                                                <div class="col-lg-12">
                                                    <h4><b>Image:</b></h4>
                                                    <div class="row">



                                                        <div class="col-sm-12">
                                                            <asp:Image ID="AboutImage" alt="error" Height="300px" runat="server" Width="100%" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--  <div class="col-sm-3" style="margin-top:14px;margin-left:25px" >
                                                            <asp:Image ID="Image1" alt="error" CssClass="img-circle" runat="server" ImageUrl="https://jssors8.azureedge.net/demos/image-slider/img/px-action-athlete-athletes-848618-image.jpg" Height="100px" Width="100px" />
                                                        </div>--%>
                                                <div class="col-lg-12" style="margin-top: 10px">
                                                    <div class="card p-0">

                                                        <div class="card-body" style="background-color: #396EB4; color: white; font-family: sarif">
                                                            <h4>Content First :</h4>
                                                             <asp:Label ID="tblcontetn"    runat="server"></asp:Label>                                           

                                                        </div>
                                                    </div>

                                                </div>
                                                   
                                                <div class="col-lg-7" style="margin-top: 10px">
                                                    <div class="card">

                                                        <div class="card-body" style="background-color: #396EB4; color: white; font-family: sarif">
                                                            <h4>Content Second :</h4>
                                                                <asp:Label ID="tblcontetn2"    runat="server"></asp:Label>     

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-5" style="margin-top: 10px">
                                                    <div class="card">

                                                        <div class="card-body" style="background-color: #396EB4; color: white; font-family: sarif">
                                                            <h4>  Heading :</h4><asp:Label ID="tblHeading"    runat="server"></asp:Label> 
                                                            

                                                        </div>
                                                    </div>
                                                      
                                                    </div>
                                                <div class="col-lg-12" style="margin-top: 10px">
                                                    <div class="card p-0">

                                                        <div class="card-body" style="background-color: #396EB4; color: white; font-family: sarif">
                                                            <h4>Button Link:</h4>
                                                             <asp:Label ID="lblLink"    runat="server"></asp:Label>                                           

                                                        </div>
                                                    </div>

                                                </div>
                                                    <div class="card-header-right"><i class="icofont icofont-spinner-alt-5"></i></div>
                                                </div>

                                                <div class="card-block">
                                                    <div id="morris-site-visit"></div>
                                                </div>
                                            
                                        </div>

                                        <!-- SITE VISIT CHART Ends -->
                                        <!-- Bar Chart start -->


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
                                               <div>
                                                <h4 style="font-size: 25px; font-weight:500;">ABOUT DETAILS </h4>
                                            </div>
                                                <for>
                                                    <div class="form-group row" >

                                                       
                                                       
                                                              <label class="col-sm-2 col-form-label" style="font-size:20px;font-weight:500">Image Upload :</label>
                                                        
                                                        <div class="col-sm-10">
                                                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                                        </div>

                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size:20px;font-weight:500"> Heading :</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtheading" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size:20px;font-weight:500">Content 1<sup>st</sup> :</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtcontent" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size:20px;font-weight:500">Content 2<sup>nd</sup>:</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtcontent1" runat="server" class="form-control" placeholder="Type your link"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size:20px;font-weight:500">Button Link :</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtlink" runat="server" class="form-control" placeholder="Type your link"></asp:TextBox>
                                                        </div>
                                                    </div>
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
