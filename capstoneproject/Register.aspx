<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="capstoneproject.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavigationContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Sign Up"></asp:Label>
    <br />
    <asp:Label ID="lbl_msg" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="tb_Username" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
    <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="tb_Password" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="tb_cnfrmPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:CompareValidator ID="passwordEqual" runat="server" ErrorMessage="*" ControlToCompare="tb_cnfrmPassword" ControlToValidate="tb_Password" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Passwords should match</asp:CompareValidator>
    <br />
    <asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="Register" />
    <br />
    <br />
    Already have an account?
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
    <br />

</asp:Content>
