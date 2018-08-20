<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Pages_Account_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF6600" Text="Welcome to Admin Panel!!!"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF6600" Text="Please Login to Continue."></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="ID : "></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxID" runat="server" placeholder="id" CssClass="inputs"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Name : "></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxType" runat="server" placeholder="name" CssClass="inputs"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Password :"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxPassword" runat="server" placeholder="password"  CssClass="inputs" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
</asp:Content>

