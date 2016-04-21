<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="mis517project.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="msg" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 427px">
                <asp:Panel ID="Panel1" runat="server">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 130px">ID</td>
                            <td style="width: 200px">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">Date</td>
                            <td style="width: 200px">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">Hour</td>
                            <td style="width: 200px">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">Scode</td>
                            <td style="width: 200px">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">Roll No</td>
                            <td style="width: 200px">
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">Attendance</td>
                            <td style="width: 200px">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>present</asp:ListItem>
                                    <asp:ListItem>absent</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">&nbsp;</td>
                            <td style="width: 200px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">&nbsp;</td>
                            <td style="width: 200px">
                                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                                &nbsp;OR
                                <asp:Button ID="Button2" runat="server" Text="Update" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 130px">&nbsp;</td>
                            <td style="width: 200px">
                                <asp:Button ID="Button3" runat="server" Text="Delete" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:GridView ID="GridView1" runat="server" style="margin-right: 102px">
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Display All" />
                    &nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="fewest absences" />
                    &nbsp;
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="most absences" />
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
