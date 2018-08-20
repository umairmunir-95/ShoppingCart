<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF6600" Text="Welcome to User Authentication Menu!!!"></asp:Label>
    <br />
    <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="ID :"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBOxID" runat="server"  placeholder="ID" CssClass="inputs"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="User Name :"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxUName" runat="server"  placeholder="username" CssClass="inputs"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxPassword" runat="server"  placeholder="password" CssClass="inputs" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
</asp:Content>

