<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="regnewuser.aspx.cs" Inherits="mis517project.regnewuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px; color: #0000FF;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px; color: #0000FF;"><strong>New User Registration</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">Login ID</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">Instructor ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
            </td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 182px">&nbsp;</td>
            <td style="width: 182px">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#CCCCCC"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
