<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="servicesmanage.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.servicesmanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .grid-view {
            /*margin-top: 100px;*/
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

            .grid-view th {
                background-color: black;
                padding: 8px;
                text-align: center;
                font-weight: bold;
                color: white;
            }

            .grid-view td {
                padding: 8px;
            }

            .grid-view tr:nth-child(even) {
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
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" styly="margin-top:100px" class="grid-view th" AutoPostBack="true" OnRowDataBound="GridView1_RowDataBound" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <alternatingrowstyle backcolor="#CCCCCC" />
                                    <columns>
                                        <asp:TemplateField HeaderText="SERVICE ID">
                                            <itemtemplate>
                                                <asp:Label runat="server" ID="lbl_ServiceID" Text='<% #Eval("Id") %>'></asp:Label>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SERVICE NAME">
                                            <itemtemplate>
                                                <asp:Label runat="server" ID="lblService" Text='<% #Eval("ServiceName") %>' Visible="true"></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox runat="server" ID="txtService" Text='<% #Eval("ServiceName") %>' Visible="true"></asp:TextBox>
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="STATUS NAME" runat="server" Visible="false">
                                            <itemtemplate>
                                                <asp:Label runat="server" ID="lblStatus" Text='<% #Eval("Status") %>' Visible="false"></asp:Label>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="UPDATED ON">
                                            <itemtemplate>
                                                <asp:Label runat="server" ID="lbl_updt_on" Text='<% #Eval("UpdatedDate") %>'></asp:Label>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="CREATED ON">
                                            <itemtemplate>
                                                <asp:Label runat="server" ID="lbl_creted_on" Text='<% #Eval("CreatedDate") %>'></asp:Label>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="STATUS ON/OFF">
                                            <itemtemplate>
                                                <asp:CheckBox ID="check_status" runat="server" AutoPostBack="true" OnCheckedChanged="check_status_CheckedChanged" />
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MANAGE">
                                            <itemtemplate>
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-primary" ID="btnEdit" CommandName="Edit" Text="EDIT"></asp:LinkButton>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-danger" ID="btnDelete" CommandName="Delete" Text="DELETE"></asp:LinkButton>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-success" ID="btnUpdate" CommandName="Update" Text="UPDATE"></asp:LinkButton>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-secondary" ID="btnCancle" CommandName="Cancel" Text="CANCEL"></asp:LinkButton>
                                            </edititemtemplate>
                                        </asp:TemplateField>


                                    </columns>

                                    <footerstyle backcolor="#CCCCCC" />
                                    <headerstyle backcolor="Black" font-bold="True" forecolor="White" />
                                    <pagerstyle backcolor="#999999" forecolor="Black" horizontalalign="Center" />
                                    <selectedrowstyle backcolor="#000099" font-bold="True" forecolor="White" />
                                    <sortedascendingcellstyle backcolor="#F1F1F1" />
                                    <sortedascendingheaderstyle backcolor="#808080" />
                                    <sorteddescendingcellstyle backcolor="#CAC9C9" />
                                    <sorteddescendingheaderstyle backcolor="#383838" />

                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
