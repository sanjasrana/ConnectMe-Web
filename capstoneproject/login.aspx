<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="capstoneproject.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavigationContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
        <asp:Label ID="lbl_login" runat="server" Font-Size="X-Large" Text="Login"></asp:Label>
        <br />
        <asp:Label ID="lbl_msg" runat="server" Visible="True" Font-Bold="True" ForeColor="White" BackColor="Red"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="tb_Username" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="tb_Password" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:HyperLink ID="hl_forgotPassword" runat="server">Forgot password?</asp:HyperLink>
    </p>
    <p>
        <asp:Button ID="btn_Login" runat="server" OnClick="btn_Login_Click" Text="Login" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="hl_Signup" runat="server" NavigateUrl="~/Register.aspx">Create an accont</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    
</asp:Content>
