﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="WynikiWyszukiwania.aspx.cs" Inherits="BIURO_PROJEKT.WynikiWyszukiwania" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="page-header">
        WYNIKI WYSZUKIWANIA
    </div>
    
    <asp:GridView ID="WynikiWyszukiwaniaGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Klient" HeaderText="KLIENT" ReadOnly="True" SortExpression="Klient" />
            <asp:BoundField DataField="TEL" HeaderText="TELEFON" SortExpression="TEL" />
            <asp:BoundField DataField="MAIL" HeaderText="EMAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
            <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
            <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            <asp:BoundField DataField="RZECZOZNAWCA" HeaderText="RZECZOZNAWCA" ReadOnly="True" SortExpression="RZECZOZNAWCA" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT ZLECENIE.ID, ZLECENIE.NAZWISKO + ' ' + ZLECENIE.IMIE AS Klient, ZLECENIE.MIASTO, ZLECENIE.ADRES, ZLECENIE.TEL, ZLECENIE.MAIL, RZECZOZNAWCA.NAZWISKO + ' ' + RZECZOZNAWCA.IMIE AS RZECZOZNAWCA,CENNIK.TYP AS TYP FROM ZLECENIE INNER JOIN RZECZOZNAWCA ON ZLECENIE.RZECZOZNAWCA_ID = RZECZOZNAWCA.ID INNER JOIN CENNIK ON ZLECENIE.CENNIK_ID = CENNIK.ID WHERE (ZLECENIE.NAZWISKO LIKE @Szukaj + '%') OR (RZECZOZNAWCA.NAZWISKO LIKE @Szukaj + '%') OR (ZLECENIE.MIASTO LIKE @Szukaj + '%') OR (ZLECENIE.ADRES LIKE @Szukaj + '%')">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="Szukaj" QueryStringField="Szukaj" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="BrakWynikowLabel" runat="server">
    </asp:Label>
</asp:Content>
