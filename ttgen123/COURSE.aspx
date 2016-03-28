<%@ Page Language="C#" AutoEventWireup="true" CodeFile="COURSE.aspx.cs" Inherits="COURSE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style7 {
            font-size: xx-large;
            color: #CC0000;
        }
        .auto-style8 {
            text-align: center;
            color: #000099;
            background-color: #66CCFF;
            margin-left: 369px;
        }
        .auto-style9 {
            margin-left: 348px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: center;
            width: 338px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style2">
    <div class="auto-style1">
    
        <h1><strong><span class="auto-style7">COURSE</span></strong></h1>
    
    </div>
            </div>
            <p class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style9" DataKeyNames="C_ID" DataSourceID="SqlDataSource1" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="C_ID" HeaderText="C_ID" ReadOnly="True" SortExpression="C_ID" />
                        <asp:BoundField DataField="C_NAME" HeaderText="C_NAME" SortExpression="C_NAME" />
                        <asp:BoundField DataField="SEM" HeaderText="SEM" SortExpression="SEM" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </p>
            <p class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
            </p>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style11">C_ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">C_NAME</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">SEM</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style8" Height="40px" OnClick="Button1_Click1" Text="ADD" Width="115px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
