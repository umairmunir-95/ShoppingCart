<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#00CC00"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtBoxFName" runat="server" CssClass="inputs"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label>
    <br />
    <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="position: absolute; z-index: 1; left: 468px; top: 499px"></asp:Label>
    <br />
    <asp:TextBox ID="txtBoxLName" runat="server" CssClass="inputs"></asp:TextBox>
    <asp:Label ID="lblLname" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 466px; top: 596px; position: absolute"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="User Name : "></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxUName" runat="server" CssClass="inputs"></asp:TextBox>
    <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 467px; top: 1015px; position: absolute; height: 2px; width: 61px"></asp:Label>
    <br />
    <asp:Label runat="server" Text="Category :"></asp:Label>
    <br />
    <br />
    <br />
    <asp:DropDownList ID="ddCategory" runat="server" CssClass="inputs">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Selected="True">---Select your Category---</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>User</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
    <asp:Label ID="lblUname0" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 468px; top: 701px; position: absolute"></asp:Label>
    <br />
    <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 455px; top: 926px; position: absolute; height: 4px"></asp:Label>
    <br />
    <asp:TextBox ID="txtBoxPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
    <asp:Label ID="lblCity" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 475px; top: 1107px; position: absolute"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Email : "></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxEmail" runat="server" CssClass="inputs" TextMode="Email"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="City : "></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddCity" runat="server" CssClass="inputs">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Selected="True">Please select your City...</asp:ListItem>
        <asp:ListItem>Lahore</asp:ListItem>
        <asp:ListItem>Karachi</asp:ListItem>
        <asp:ListItem>Faisalabad</asp:ListItem>
        <asp:ListItem>Peshwar</asp:ListItem>
        <asp:ListItem>Islamabad</asp:ListItem>
        <asp:ListItem>Quetta</asp:ListItem>
        <asp:ListItem>Multan</asp:ListItem>
        <asp:ListItem>Hyderabad</asp:ListItem>
        <asp:ListItem>Bahawalpur</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Postal Code : "></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxPostalCode" runat="server" CssClass="inputs" TextMode="Number"></asp:TextBox>
    <asp:Label ID="lblPostalCode" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 476px; top: 1192px; position: absolute; height: 38px;"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Address :"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtBoxAddress" runat="server" CssClass="inputs"></asp:TextBox>
    <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" style="z-index: 1; left: 460px; top: 1278px; position: absolute; height: 38px;"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
    <br />
    <br />
</asp:Content>

