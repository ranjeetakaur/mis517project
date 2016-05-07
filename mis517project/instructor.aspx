<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="instructor.aspx.cs" Inherits="mis517project.instructor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 1085px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1085px"></td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Out" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>
        <asp:Label ID="Label1" runat="server" Text="msg" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Student Attendance" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View Student Information" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
