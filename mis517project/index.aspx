<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="mis517project.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">User ID</td>
        <td style="margin-left: 160px">
            <asp:TextBox ID="txtUserId" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserId" ErrorMessage="Please enter user id" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">Password</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="password required" ForeColor="Red">*</asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" />
        </td>
    </tr>
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/regnewuser.aspx">New User? Create Account.</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style="width: 355px">&nbsp;</td>
        <td style="width: 118px">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
