<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Policy_Priva.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Policy_Priva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card:hover {
            -webkit-box-shadow: 0 0 25px -5px #808080 !important;
            box-shadow: 0 0 25px -5px #808080 !important;
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
                                        <!-- Basic Form Inputs card start -->
                                        <div class="card">
                                            <div class="card-block">
                                                <!-- Row start -->
                                                <div class="col-sm-12">
                                                    <div class="alert alert alert-dismissible bg-success" runat="server" visible="false" id="messagebox">
                                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                        <strong>Success!</strong>Data has been successfully updated.
                                                    </div>
                                                    <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="messageboxerror">
                                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                        <strong>Error!</strong> something wrong
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <h3 style="text-align: center">Privacy Policy </h3>
                                                    </div>
                                                    <div class="col-sm-12">

                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section First :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Heading</h5>
                                                                <ul>

                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1heading"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>

                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1para"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Third :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3para1"></li>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3para2"></li>
                                                                    <%-- <li style=" font-size: 16px;color:gray" runat="server" id="lisection2para3">   </li>
                                                            <li style=" font-size: 16px;color:gray" runat="server" id="lisection2para4">   </li>
                                                            <li style=" font-size: 16px;color:gray" runat="server" id="lisection2para5">   </li>
                                                            <li style=" font-size: 16px;color:gray" runat="server" id="lisection2para6">   </li>
                                                            <li style=" font-size: 16px;color:gray" runat="server" id="lisection2para7">   </li>
                                                            <li style=" font-size: 16px;color:gray" runat="server" id="lisection2para8">   </li>--%>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Second :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection2heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection2para"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Fourth :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection4heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection4para"></li>
                                                                </ul>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Fifth :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection5heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection5para"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%-----addmone===--%>
                                                    <div class="col-sm-12">

                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Sixth :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Heading</h5>
                                                                <ul>

                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection6heading"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>

                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection6para"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%-----dadend----%>
                                                    <%-----addmone===--%>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Seven :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Heading</h5>
                                                                <ul>

                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection7heading"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>

                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection7para"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%-----dadend----%>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Egith :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection8heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection8para"></li>
                                                                </ul>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section NIne :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection9heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection9para"></li>
                                                                </ul>
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
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 1 Heading :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection1heading" runat="server" class="form-control" placeholder="Type your Section 1 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 2 Heading :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection2heading" runat="server" MaxLength="200" class="form-control" placeholder="Type your Section 2 Heading"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 2 Paragraph  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection2para" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 2"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Paragraph1  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3para1" runat="server" class="form-control" placeholder="Type your Section 3 Paragraph "></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Paragraph2  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3para2" runat="server" class="form-control" placeholder="Type your Section 3 Paragraph "></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 4 Paragraph  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection4para" runat="server" class="form-control" placeholder="Type your Section 4 Heading" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 5 Paragraph :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection5para" runat="server" class="form-control" placeholder="Type your Section 5 Paragraph " MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 6 Paragraph :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection6para" runat="server" class="form-control" placeholder="Type your Section 5 Paragraph " MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 7 Paragraph :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection7para" runat="server" class="form-control" placeholder="Type your Section 5 Paragraph " MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 8 Paragraph :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection8para" runat="server" class="form-control" placeholder="Type your Section 5 Paragraph " MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 9 Paragraph :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection9para" runat="server" class="form-control" placeholder="Type your Section 5 Paragraph " MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 1 Paragraph :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection1para" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Heading :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3heading" runat="server" class="form-control" placeholder="Type your Section 3 Heading :" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 4 Heading :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection4heading" runat="server" class="form-control" placeholder="Type your Section 4 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 5 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection5heading" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 6 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection6heading" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 7 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection7heading" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 8 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection8heading" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 9 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection9heading" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MaxLength="200" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3 col-sm-3">
                                                                    <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" class="btn btn-success" Text="Submit" />
                                                                </div>
                                                                <div class="col-sm-3 col-lg-3 ">
                                                                    <asp:Button ID="btn_Cancel" runat="server" CssClass="btn btn-danger" OnClick="btn_Cancel_Click" Text="Cancel" />
                                                                </div>
                                                                <div class="col-sm-3 col-lg-3 ">
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
        </div>
    </div>
</asp:Content>
