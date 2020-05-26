<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rzeczoznawca.aspx.cs" Inherits="BIURO_PROJEKT.Rzeczoznawca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #form1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <h1 class="auto-style1">RZECZOZNAWCY MAJĄTKOWI</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT * FROM [RZECZOZNAWCA]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="670px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="NR" HeaderText="NR" SortExpression="NR" />
                <asp:BoundField DataField="IMIE" HeaderText="IMIE" SortExpression="IMIE" />
                <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
                <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT z.IMIE, z.NAZWISKO,z.MAIL, z.TEL, z.DATA_ZLECENIA, c.TYP, z.MIASTO, z.ADRES FROM ZLECENIE z INNER JOIN CENNIK c ON z.CENNIK_ID = c.ID WHERE (z.RZECZOZNAWCA_ID = @ID_RZECZOZNAWCY)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ID_RZECZOZNAWCY" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="162px" Width="669px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="IMIE" HeaderText="IMIE" SortExpression="IMIE" />
                <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
                <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
                <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
                <asp:BoundField DataField="DATA_ZLECENIA" HeaderText="DATA_ZLECENIA" SortExpression="DATA_ZLECENIA" />
                <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
                <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
                <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
