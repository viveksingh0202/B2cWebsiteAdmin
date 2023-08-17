<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2cWebsiteAdmin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon"/>
    <!-- Google font-->
    <link href="../css-1?family=Poppins:300,400,500,600" rel="stylesheet"/>
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap/css/bootstrap.min.css"/>
    <!-- themify-icons line icon -->             
    <link rel="stylesheet" type="text/css" href="../assets/icon/themify-icons/themify-icons.css"/>
    <!-- ico font -->                           
    <link rel="stylesheet" type="text/css" href="../assets/icon/icofont/css/icofont.css"/>
    <!-- Style.css -->                           
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css"/>
</head>
<body>
    <script>
       
    </script>
    <form id="form1" runat="server">
        <div>
             <section class="login p-fixed d-flex text-center bg-primary common-img-bg">
        <!-- Container-fluid starts -->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->
                    <div class="login-card card-block auth-body mr-auto ml-auto">
                        <for class="md-float-material">
                            <div class="text-center">
                              <%--  <img src="assets/images/logo.png" alt="logo.png"/>--%>
                            </div>
                            <div class="auth-box" id="myDIV">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-left txt-primary">Sign In</h3>
                                    </div>
                                </div>
                                <hr/>
                                <div class="input-group">
                                  <asp:TextBox ID="txtusername" runat="server" class="form-control" placeholder="Enter Mobile No    " ></asp:TextBox>
                                    <span class="md-line"></span>
                                </div>
                                <div class="input-group">
                                  
                                    <asp:TextBox ID="txtpassword" runat="server" class="form-control" TextMode="Password" placeholder="Password" ></asp:TextBox>
                                    <span class="md-line"></span>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-sm-7 col-xs-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value=""/>
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Remember me</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12 forgot-phone text-right">
                                        <a href="auth-reset-password.html" class="text-right f-w-600 text-inverse"> Forgot Your Password?</a>
                                       
                                    </div>
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <asp:Button ID="Btn_Login" runat="server" OnClick="Btn_Login_Click" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20" Text="Sign In" />
                                    </div>
                                </div>
                               

                            </div>
                              <div class="auth-box" runat="server" id="forgetdiv" visible="false"> 
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-left txt-primary">Forget Password</h3>
                                    </div>
                                </div>
                                <hr/>
                                <div class="input-group">
                                    <input type="email" class="form-control" placeholder="Your Email Address"/>
                                    <span class="md-line"></span>
                                </div>
                               
                                <div class="row m-t-25 text-left">
                                    
                                    <div class="col-sm-5 col-xs-12 forgot-phone text-left">
                                       <asp:LinkButton ID="btnsing" h runat="server" Text="Sign in"></asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="button" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Forget Password</button>
                                    </div>
                                </div>
                               

                            </div>
                        </for>
                        <!-- end of form -->
                    </div>
                    <!-- Authentication card end -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
        </div>
    </form>
    <script>
        var con = true;


    </script>
    <script type="text/javascript" src="../assets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="../assets/js/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap/js/bootstrap.min.js"></script>
    <!-- jquery slimscroll js -->      
    <script type="text/javascript" src="../assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- modernizr js -->             
    <script type="text/javascript" src="../assets/js/modernizr/modernizr.js"></script>
    <script type="text/javascript" src="../assets/js/modernizr/css-scrollbars.js"></script>
    <script type="text/javascript" src="../assets/js/common-pages.js"></script>
</body>
</html>
