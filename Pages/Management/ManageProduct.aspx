<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageProduct.aspx.cs" Inherits="Pages_Management_ManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtBoxName" runat="server" Width="177px"></asp:TextBox>
    </p>
    <p>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Type :"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="ddType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id" Height="16px" Width="182px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cspDBConnectionString %>" SelectCommand="SELECT * FROM [ProductTypes] ORDER BY [Name]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Price :"></asp:Label>
    </p>
    <p>
        &nbsp;<asp:TextBox ID="txtBoxPrice" runat="server" Width="173px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Image :"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="ddImage" runat="server" Height="25px" Width="181px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Description :"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtDescription" runat="server" Height="90px" TextMode="MultiLine" Width="181px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

