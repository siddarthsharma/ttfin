<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 375px;
        }
        .auto-style3 {
            margin-left: 415px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: center;
            width: 374px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        TEACHERS LIST</div>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style2" DataKeyNames="T_ID" DataSourceID="SqlDataSource1" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="T_ID" HeaderText="T_ID" ReadOnly="True" SortExpression="T_ID" />
                    <asp:BoundField DataField="T_NAME" HeaderText="T_NAME" SortExpression="T_NAME" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TEACHER]"></asp:SqlDataSource>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">ADD T_ID :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ADD T_NAME :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="26px" OnClick="Button1_Click" Text="ADD" />
        </p>
    </form>
</body>
</html>
