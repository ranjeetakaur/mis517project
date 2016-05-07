<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentinfo.aspx.cs" Inherits="mis517project.studentinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="float:left; width:30%;">
        <table style="width: 100%">
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px; color: #0033CC"><strong>Enter Student Information</strong></td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Roll Number</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Name</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Department</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Date of Birth</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Address</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Mobile number</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Email ID</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">Notes</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New Student" />
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
            </tr>
        </table>
</div>
<div style="float:right; width:70%">

    <table style="width: 100%">
        <tr>
            <td style="width: 699px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 699px">&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show All Students" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Instructor Home Page" />
            </td>
        </tr>
        <tr>
            <td rowspan="23" style="text-align: center; width: 699px;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging" PageSize="10" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="text-align: justify">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
        </tr>
    </table>

</div>

    </asp:Content>
