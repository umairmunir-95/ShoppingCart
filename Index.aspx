<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp UpdatePanel ID="pnlProducts" runat="server" UpdateMode="Conditional" >
       <ContentTemplate>
       </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:Label ID="Label1" runat="server" Text="Select specific Item : "></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id" Height="17px" Width="195px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnDataBound="ddlist_DataBound">
        <asp:ListItem Selected="True">All</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cspDBConnectionString5 %>" SelectCommand="SELECT * FROM [ProductTypes]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Apply Category Filter" OnClick="btnSubmit_Click" />
    <br />
    <br />
     </asp>
    <div style="clear: both"></div>
</asp:Content>

