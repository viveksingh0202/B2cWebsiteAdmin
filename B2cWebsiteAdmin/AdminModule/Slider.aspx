<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .nav1 .button:hover {
            background-color: #0552F9;
            color: white;
        }

        .pan:hover {
            color: white;
        }

        .button:hover {
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




                                        <div class="card">

                                            <div class="tab-content card-block">
                                                <div class="row nav1" style="font-family: serif; background: linear-gradient(#d9d9d9,white);">

                                                    <div class="col-sm-4 button" style="text-align: center">

                                                        <asp:LinkButton runat="server" ID="lnkbtn1" CssClass="pan" Style="font-size: 23px;" OnClick="lnkbtn1_Click">Slider First</asp:LinkButton>
                                                    </div>
                                                    <div class="col-sm-4 button" style="text-align: center">
                                                        <asp:LinkButton runat="server" ID="lnkBtnSlider2" CssClass="pan" Style="font-size: 23px;" OnClick="lnkBtnSlider2_Click">Slider Second</asp:LinkButton>
                                                    </div>
                                                    <div class="col-sm-4 button" style="text-align: center" id="thirdslide" runat="server">
                                                        <asp:LinkButton runat="server" ID="lnkbtnslider3" CssClass="pan" Style="font-size: 23px;" OnClick="lnkbtnslider3_Click">Slider Third</asp:LinkButton>

                                                    </div>

                                                </div>




                                            </div>

                                            <div class="tab-pane active" id="SliderSectionOne" runat="server" visible="false">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h3>Slider First Details </h3>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify;">Heading :</h4>
                                                                        <h5 id="txtheading1" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblheading1" runat="server"></asp:Label>
                                                                        </h5>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Content  :</h4>
                                                                        <h5 id="txtcontent1" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblcontent1s1" runat="server"></asp:Label></h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">First Button Link :</h4>
                                                                        <h5 style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="s1txtlink1" runat="server"></asp:Label>
                                                                        </h5>
                                                                    </div>

                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12" runat="server">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Second Button Link    :</h4>
                                                                        <h5 style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="s1txtlink2" runat="server"></asp:Label>
                                                                        </h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12">


                                                                <h3 style="font-family: serif;">Image</h3>
                                                                <div class="row">


                                                                    <div class="col-sm-12  text-center">
                                                                        <asp:Image ID="Imagefirst" alt="error" runat="server" Height="250px" Width="70%" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card-header-right"><i class="icofont icofont-spinner-alt-5"></i></div>
                                                    </div>
                                                    <div class="card-block">
                                                    </div>
                                                </div>
                                                <div class="page-body">
                                                    <div class="row" style="font-family: serif">
                                                        <div class="col-sm-12">
                                                            <!-- Basic Form Inputs card start -->
                                                            <div class="card">

                                                                <div class="card-block">
                                                                    <h2>Fill Details</h2>
                                                                    <hr />
                                                                    <for>
                                                                        <div class="form-group row">


                                                                            <div class=" col-sm-3 col-lg-2 col-md-3">
                                                                                <label class=" col-form-label">
                                                                                    <h4>Image :</h4>
                                                                                </label>
                                                                            </div>
                                                                            <div class="col-md-9">
                                                                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                                                            </div>

                                                                        </div>


                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col-form-label">
                                                                                <h4>Heading :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="s1txtheading" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Content :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="s1txtcontent" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Link 1 :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="s1txtlink" runat="server" class="form-control" placeholder="Type your link first"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Link 2 :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="txtlink1s1" runat="server" class="form-control" placeholder="Type your link second "></asp:TextBox>
                                                                            </div>

                                                                        </div>
                                                                        <div class="form-group row">

                                                                            <div class="col-sm-2 col-lg-1">
                                                                                <asp:Button ID="S1btn_submit" runat="server" OnClick="S1btn_submit_Click1" class="btn btn-success" Text="Submit" />
                                                                            </div>
                                                                            <div class="col-sm-2 col-lg-1">
                                                                                <asp:Button ID="s1btn_update1" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                                                                            </div>
                                                                            <div class="col-sm-8">
                                                                                <asp:Label ID="lblmessages1" runat="server"></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <%---------------------- SECOND SLIDDERR ----------------------------------%>

                                            <div runat="server" visible="false" id="SliderSectionTwo">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h3>Slider Second Details </h3>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Heading :</h4>
                                                                        <h5 style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblheadingS2" runat="server"></asp:Label></h5>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Content  :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblcontentS2" runat="server"></asp:Label></h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">First Button Link :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblLink1s2" runat="server"></asp:Label>
                                                                        </h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12" runat="server" id="Secondbtnlink" visible="false">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Second Button Link :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblLink2s2" runat="server"></asp:Label>
                                                                        </h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12">


                                                                <h3 style="font-family: serif;">Image</h3>
                                                                <div class="row">

                                                                    <div class="col-sm-12  text-center">
                                                                        <asp:Image ID="ImageSecond" alt="error" runat="server" Height="250px" Width="70%" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card-header-right"><i class="icofont icofont-spinner-alt-5"></i></div>
                                                    </div>

                                                   

                                                </div>
                                                <div class="page-body">
                                                    <div class="row" style="font-family: serif">
                                                        <div class="col-sm-12">
                                                            <!-- Basic Form Inputs card start -->
                                                            <div class="card">

                                                                <div class="card-block">
                                                                    <h2>Fill Details</h2>
                                                                    <hr />
                                                                    <for>
                                                                        <div class="form-group row">


                                                                            <div class=" col-sm-3 col-lg-2 col-md-3">
                                                                                <label class=" col-form-label">
                                                                                    <h4>Image :</h4>
                                                                                </label>
                                                                            </div>
                                                                            <div class="col-md-9">
                                                                                <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                                                                            </div>

                                                                        </div>


                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col-form-label">
                                                                                <h4>Heading :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="sliderheading2s2" runat="server" class="form-control" placeholder="Type your Hading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Content :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="slidercontent2s2" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Link 1 :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="sliderlink1s2" runat="server" class="form-control" placeholder="Type your link first"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row" runat="server" id="link2Row" visible="false">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Link 2 :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="sliderlink2s2" runat="server" class="form-control" placeholder="Type your link second "></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">

                                                                            <div class="col-sm-2 col-lg-1">
                                                                                <asp:Button ID="btn_update1" runat="server" OnClick="btn_update_Click" class="btn btn-success" Text="Submit" />
                                                                            </div>
                                                                            <div class="col-sm-2 col-lg-1">
                                                                                <asp:Button ID="btn_Cancel1" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                                                                            </div>
                                                                            <div class="col-sm-8">
                                                                                <asp:Label ID="txtmessage" runat="server"></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--=============================== slide3 ==========================================--%>
                                            <div id="SliderSectionThree" visival="false" runat="server">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h3>Slider Third Details </h3>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Heading :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblheading3" runat="server"></asp:Label></h5>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Content  :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lblcontent3" runat="server"></asp:Label></h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">First Button Link    :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lbllink1s3" runat="server"></asp:Label>
                                                                        </h5>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12" runat="server" visible="false">
                                                                <div class="card">

                                                                    <div class="card-block">
                                                                        <h4 style="font-family: serif; text-align: justify">Second Button Link    :</h4>
                                                                        <h5 id="" style="font-family: sans-serif; font-weight: 100">
                                                                            <asp:Label ID="lbllink2s3" runat="server"></asp:Label></h5>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">


                                                                <h3 style="font-family: serif;">Image</h3>
                                                                <div class="row">

                                                                    <div class="col-sm-12  text-center">
                                                                        <asp:Image ID="imagethird" alt="error" runat="server" Height="250px" Width="70%" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                         
                                                               

                                                            </div>
                                                            <div class="card-header-right"><i class="icofont icofont-spinner-alt-5"></i></div>
                                                        </div>
                                                    </div>
                                                  

                                                <div class="page-body">
                                                    <div class="row" style="font-family: serif">
                                                        <div class="col-sm-12">
                                                            <!-- Basic Form Inputs card start -->
                                                            <div class="card">

                                                                <div class="card-block">
                                                                    <h2>Fill Details</h2>
                                                                    <hr />
                                                                    <for>
                                                                        <div class="form-group row">

                                                                            <div class=" col-sm-3 col-lg-2 col-md-3">
                                                                                <label class=" col-form-label">
                                                                                    <h4>Image :</h4>
                                                                                </label>
                                                                            </div>
                                                                            <div class="col-md-9">
                                                                                <asp:FileUpload ID="FileUpload3" class="form-control" runat="server" />
                                                                            </div>
                                                                        </div>


                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col-form-label">
                                                                                <h4>Heading :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="s3txtheading" runat="server" class="form-control" placeholder="Type your Heading" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Content :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="s3txtcontent" runat="server" class="form-control" placeholder="Type your Contant"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Link 1 :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="s3txtlonk1" runat="server" class="form-control" placeholder="Type your link first"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row" runat="server" visible="false">
                                                                            <label class="col-sm-3 col-lg-2 col col-form-label">
                                                                                <h4>Link 2 :</h4>
                                                                            </label>
                                                                            <div class="col-sm-9">
                                                                                <asp:TextBox ID="txtlink2s3" runat="server" class="form-control" placeholder="Type your link second "></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">

                                                                            <div class="col-sm-2 col-lg-1">
                                                                                <asp:Button ID="s3btn_submit" runat="server" OnClick="s3btn_submit_Click" class="btn btn-success" Text="Submit" />
                                                                            </div>
                                                                            <div class="col-sm-2 col-lg-1">
                                                                                <asp:Button ID="s3btn_cancel" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                                                                            </div>
                                                                            <div class="col-sm-8">
                                                                                <asp:Label ID="s3lblmessage" runat="server"></asp:Label>
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
                            <!-- Row end -->
                            <!-- Row start -->

                            <!-- Row end -->
                        </div>
                    </div>

                </div>

                <!-- Page body start -->

                <!-- Page body end -->
            </div>
        </div>
        <!-- Main-body end -->
        <div id="styleSelector">
        </div>
    </div>

    <div class="modal fade bd-example-modal-sm" data-keyboard="false" data-backdrop="static" id="loginmodal" tabindex="-1">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header" style="background-color: lightgray; color: white; font-family: serif">
                    <h4 class="modal-title" style="font-family: serif"></h4>
                    <button class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-footer">

                    <button class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        function ShowPopup2() {

            $("#loginmodal").modal("show");
            $("#loginmodal").css('background', 'inherit');
        }
        function ShowPopup() {

            $("#exampleModalCenter").modal("show");
            $("#exampleModalCenter").css('background', 'inherit');
        }
    </script>
</asp:Content>
