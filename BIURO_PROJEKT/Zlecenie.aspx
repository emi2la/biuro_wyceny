<%@ Page Title="Zlecenia" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Zlecenie.aspx.cs" Inherits="BIURO_PROJEKT.Zlecenie" %>

<%@ Register src="konrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT z.ID, z.IMIE + ' ' + z.NAZWISKO as KLIENT, z.TEL, z.MAIL, z.DATA_ZLECENIA, c.TYP, z.MIASTO, z.ADRES, r.IMIE + ' ' + r.NAZWISKO as RZECZOZNAWCA FROM ZLECENIE AS z 
INNER JOIN CENNIK AS c ON c.ID = z.CENNIK_ID 
INNER JOIN RZECZOZNAWCA AS r ON r.ID = z.RZECZOZNAWCA_ID"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Dodaj" />
    <uc1:Szukaj ID="Szukaj1" runat="server" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="KLIENT" HeaderText="KLIENT" SortExpression="KLIENT" ReadOnly="True" />
            <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
            <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="DATA_ZLECENIA" HeaderText="DATA_ZLECENIA" SortExpression="DATA_ZLECENIA" />
            <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
            <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
            <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            <asp:BoundField DataField="RZECZOZNAWCA" HeaderText="RZECZOZNAWCA" SortExpression="RZECZOZNAWCA" ReadOnly="True" />
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
</asp:Content>
