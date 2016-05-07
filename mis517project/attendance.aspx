<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="mis517project.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width: 100%">
        <tr>
            <td style="width: 8px">&nbsp;</td>
            
            <td style="width: 894px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 8px">&nbsp;</td>
            <td style="width: 894px">&nbsp;</td>
            <td>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Home Page" />
            </td>
        </tr>
     </table>

    <div style="float:left; width:40%;">

    
    <table style="width: 100%">
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td colspan="2" style="font-weight: 700; font-size: large">Insert New Attendance</td>
        </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 280px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px" >Date (<span style="font-size: small">mm/dd/</span>yyyy)</td>
            <td style="width: 280px" >
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="87px"></asp:TextBox>
                <asp:CompareValidator ID="DateValidator" runat="server" Operator="DataTypeCheck"
        Type="Date" ControlToValidate="TextBox2" ErrorMessage="Bad format" />
            &nbsp;</td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">Hour</td>
            <td style="width: 280px" >
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">Scode</td>
            <td style="width: 280px" >
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">RollNo</td>
            <td style="width: 280px" >
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">Attendace</td>
            <td style="width: 280px" >
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>present</asp:ListItem>
                    <asp:ListItem>absent</asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 280px" >
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            </td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px"><asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Fewest Absences" Width="120px" />
                    </td>
            <td style="width: 280px" >
                                &nbsp;</td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px"><asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Most Absences" Width="119px" />
            </td>
            <td style="width: 280px" >
                                &nbsp;</td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 280px" >
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            </tr>
        <tr>
            <td style="width: 9px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 280px">
                &nbsp;</td>
        </tr>
    </table>

    </div>

    <div style="float:right; width:60%;">

                    &nbsp;<asp:GridView ID="GridView1" runat="server" style="margin-right: 102px" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" />
            <asp:BoundField DataField="scode" HeaderText="scode" SortExpression="scode" />
            <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
            <asp:BoundField DataField="attend" HeaderText="attend" SortExpression="attend" />
        </Columns>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [attendancetbl]"
            UpdateCommand="UPDATE [attendancetbl] Set [date]=@date, [hour]=@hour, [scode]=@scode ,[rollno]=@rollno, [attend]=@attend WHERE [id]=@id"
                    DeleteCommand="DELETE FROM [attendancetbl] WHERE [id]=@id" >
            </asp:SqlDataSource>

        <br />

    </div>

    
    
    </asp:Content>
