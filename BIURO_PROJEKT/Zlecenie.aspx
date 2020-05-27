<%@ Page Title="Zlecenia" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true"  CodeBehind="Zlecenie.aspx.cs" Inherits="BIURO_PROJEKT.Zlecenie" %>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT z.ID, z.IMIE + ' ' + z.NAZWISKO as KLIENT, z.TEL, z.MAIL, z.DATA_ZLECENIA, c.TYP, z.MIASTO, z.ADRES, r.IMIE + ' ' + r.NAZWISKO as RZECZOZNAWCA FROM ZLECENIE AS z 
INNER JOIN CENNIK AS c ON c.ID = z.CENNIK_ID 
INNER JOIN RZECZOZNAWCA AS r ON r.ID = z.RZECZOZNAWCA_ID"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="670px">
    <alternatingrowstyle backcolor="White" forecolor="#284775" />
    <columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="KLIENT" HeaderText="KLIENT" SortExpression="KLIENT" ReadOnly="True" />
                    <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
                    <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
                    <asp:BoundField DataField="DATA_ZLECENIA" HeaderText="DATA_ZLECENIA" SortExpression="DATA_ZLECENIA" />
                    <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
                    <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
                    <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
                    <asp:BoundField DataField="RZECZOZNAWCA" HeaderText="RZECZOZNAWCA" SortExpression="RZECZOZNAWCA" ReadOnly="True" />
                </columns>
    <editrowstyle backcolor="#999999" />
    <footerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
    <headerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
    <pagerstyle backcolor="#284775" forecolor="White" horizontalalign="Center" />
    <rowstyle backcolor="#F7F6F3" forecolor="#333333" />
    <selectedrowstyle backcolor="#E2DED6" font-bold="True" forecolor="#333333" />
    <sortedascendingcellstyle backcolor="#E9E7E2" />
    <sortedascendingheaderstyle backcolor="#506C8C" />
    <sorteddescendingcellstyle backcolor="#FFFDF8" />
    <sorteddescendingheaderstyle backcolor="#6F8DAE" />
</asp:GridView>