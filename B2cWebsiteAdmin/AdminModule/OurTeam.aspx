<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="OurTeam.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.OurTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .team {
            width: 100%;
            height: 120%;
            background: url('images/team_bg.png');
            background-size: cover;
        }

        .team_dec {
            width: 283px;
            height: 70px;
            background-color: #093069;
            z-index: 5;
            position: relative;
            margin-top: -8%;
        }

            .team_dec h6 {
                font-family: 'Inter';
                font-style: normal;
                font-weight: 400;
                font-size: 16px;
                line-height: 20px;
                padding-top: 6px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <asp:Repeater ID="repeaterGrid" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="row">
                fewsdcse
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <asp:Image ID="Image1" runat="server" src='<%# Eval("Picture_Path") %>'/>
                    <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Name") %>' />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>' />
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>         --%>
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
                                                    <h3>Our Team Details </h3>
                                                    <hr />
                                                    <div class="row">

                                                        <div class="col-sm-4" id="card" runat="server" visible="false">
                                                            <div class="card" style="width: 18rem; background-color: #396EB4; color: white;" >
                                                                <asp:Image ID="profileImage" runat="server" Height="200" Width="300"  />
                                                                <div class="card-body">
                                                                    <div class="card-title">
                                                                        <asp:Label ID="lblName" Style="font-size: 30px; margin-top: -20px; text-align: center" runat="server"></asp:Label>
                                                                    </div>
                                                                    <asp:Label ID="lblrole" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4" id="card1" runat="server" visible="false">
                                                            <div class="card" style="width: 18rem; background-color: #396EB4; color: white;" >
                                                                <asp:Image ID="profileImage1" runat="server" Height="200" Width="300" />
                                                                <div class="card-body">
                                                                    <div class="card-title">
                                                                        <asp:Label ID="lblName1" Style="font-size: 30px; margin-top: -20px; text-align: center" runat="server"></asp:Label>
                                                                    </div>
                                                                    <asp:Label ID="lblrole1" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4" id="card2" runat="server" visible="false">
                                                            <div class="card" style="width: 18rem; background-color: #396EB4; color: white;" >
                                                                <asp:Image ID="profileImage2" runat="server" Height="200" Width="300" />
                                                                <div class="card-body">
                                                                    <div class="card-title">
                                                                        <asp:Label ID="lblName2" Style="font-size: 30px; margin-top: -20px; text-align: center" runat="server"></asp:Label>
                                                                    </div>
                                                                    <asp:Label ID="lblrole2" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4" id="card13" runat="server" visible="false">
                                                            <div class="card" style="width: 18rem; background-color: #396EB4; color: white;" >
                                                                <asp:Image ID="profileImage3" runat="server" Height="200" Width="300" />
                                                                <div class="card-body">
                                                                    <div class="card-title">
                                                                        <asp:Label ID="lblName3" Style="font-size: 30px; margin-top: -20px; text-align: center" runat="server"></asp:Label>
                                                                    </div>
                                                                    <asp:Label ID="lblrole3" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="col-sm-4" id="card31" runat="server" visible="false">
                                                            <div class="card" style="width: 18rem; background-color: #396EB4; color: white;" >
                                                                <asp:Image ID="profileImage4" runat="server" Height="200" Width="300" />
                                                                <div class="card-body">
                                                                    <div class="card-title">
                                                                        <asp:Label ID="lblName4" Style="font-size: 30px; margin-top: -20px; text-align: center" runat="server"></asp:Label>
                                                                    </div>
                                                                    <asp:Label ID="lblrole4" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4" id="card4" runat="server" visible="false">
                                                            <div class="card" style="width: 18rem; background-color: #396EB4; color: white;" >
                                                                <asp:Image ID="profileImage5" runat="server" Height="200" Width="300" />
                                                                <div class="card-body">
                                                                    <div class="card-title">
                                                                        <asp:Label ID="lblName5" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
                                                                    </div>
                                                                    <asp:Label ID="lblrole5" Style="font-size: 18px; margin-top: -15px; text-align: center" runat="server"></asp:Label>
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
                                                <div>
                                                    <h4 style="font-size: 25px; font-weight: 500;">EMPLOYEE DETAILS  FILL </h4>
                                                </div>
                                                <for>
                                                    <div class="form-group row">



                                                        <label class="col-sm-2 col-form-label" style="font-size: 20px; font-weight: 500">Image Upload :</label>

                                                        <div class="col-sm-10">
                                                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                                        </div>

                                                    </div>


                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size: 20px; font-weight: 500">Name :</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Type your Name ......" MaxLength="38" MinLenth="20"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size: 20px; font-weight: 500">Role:</label>
                                                        <div class="col-sm-10">
                                                            <%--<asp:TextBox ID="txtRole" runat="server" class="form-control" placeholder="Type your Job Title ....."></asp:TextBox>--%>
                                                            <asp:DropDownList ID="dd_Role" runat="server" CssClass="form-control">
                                                                <asp:ListItem>-- Select -- </asp:ListItem>
                                                                <asp:ListItem>Principal </asp:ListItem>
                                                                <asp:ListItem>Teacher</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size: 20px; font-weight: 500">Remark :</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtRemark" runat="server" class="form-control" placeholder="Type your Remark"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size: 20px; font-weight: 500">Social Link 1<sup>st</sup> :</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtSociallink" runat="server" class="form-control" placeholder="Type your link"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label" style="font-size: 20px; font-weight: 500">Social Link 2<sup>nd</sup>:</label>
                                                        <div class="col-sm-10">
                                                            <asp:TextBox ID="txtSociallink2" runat="server" class="form-control" placeholder="Type your link"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">

                                                        <div class="col-lg-2 col-sm-2">
                                                            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" class="btn btn-success" Text="Submit" />
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
                                                    <h4 style="font-size: 25px; font-weight: 500;">UPDATE DETAILS </h4>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-12" style="overflow-x: scroll">
                                                        <asp:GridView ID="GridView1" Width="100%" AutoGenerateColumns="False" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="ID">
                                                                    <EditItemTemplate>
                                                                        <asp:Label ID="lblid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblide" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Name">
                                                                    <EditItemTemplate>
                                                                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Role Type">
                                                                    <EditItemTemplate>
                                                                        <asp:DropDownList ID="dd_roles" CssClass="form-control" runat="server">
                                                                            <asp:ListItem>-- Select -- </asp:ListItem>
                                                                            <asp:ListItem>Principal </asp:ListItem>
                                                                            <asp:ListItem>Teacher</asp:ListItem>

                                                                        </asp:DropDownList>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblRoleType" runat="server" Text='<%# Eval("roleType") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Social Link 1">
                                                                    <EditItemTemplate>
                                                                        <asp:TextBox ID="txtSocial1" CssClass="form-control" runat="server" Text='<%# Eval("SocialMdaLink1") %>'></asp:TextBox>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblSocial1" runat="server" Text='<%#Eval("SocialMdaLink1")%>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Social Link 2">
                                                                    <EditItemTemplate>
                                                                        <asp:TextBox ID="txtSocial2" CssClass="form-control" runat="server" Text='<%# Eval("SocialMdaLink2") %>'></asp:TextBox>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblSocial2" runat="server" Text='<%# Eval("SocialMdaLink2") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Remark">
                                                                    <EditItemTemplate>
                                                                        <asp:TextBox ID="txtRemark" CssClass="form-control" runat="server" Text='<%# Eval("Remarks") %>'></asp:TextBox>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="tblRemark" runat="server" Text='<%# Eval("Remarks") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Manage/Image" HeaderStyle-Width="30px">
                                                                    <EditItemTemplate>
                                                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                                                        &nbsp;
                                                                        <asp:Button ID="btn_update" runat="server" CssClass="btn btn-success" Text="Update" CommandName="Update" />
                                                                        &nbsp;<asp:Button ID="btn_cancel" CssClass="btn btn-danger" runat="server" Text="Cancel" CommandName="Cancel" />
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Button ID="btn_edit" CssClass="btn btn-info" runat="server" Text="Edit" CommandName="Edit" />
                                                                        &nbsp;<asp:Button ID="btn_delete" CssClass="btn btn-danger" runat="server" Text="Delete" CommandName="Delete" />
                                                                    </ItemTemplate>

                                                                    <HeaderStyle Width="30px"></HeaderStyle>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <FooterStyle BackColor="#CCCCCC" />
                                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                            <SortedDescendingHeaderStyle BackColor="#383838" />

                                                        </asp:GridView>
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
