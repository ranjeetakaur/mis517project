<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="mis517project.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">Username</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">Password</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" />
        </td>
    </tr>
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/regnewuser.aspx">New User? Create Account.</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style="width: 286px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" style="color: #C0C0C0"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
