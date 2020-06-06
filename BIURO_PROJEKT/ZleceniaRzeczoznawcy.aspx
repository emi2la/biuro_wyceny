<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="ZleceniaRzeczoznawcy.aspx.cs" Inherits="BIURO_PROJEKT.ZleceniaRzeczoznawcy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="page-header">
        LISTA OPERTÓW RZECZOZNAWCY MAJĄTKOWEGO:&nbsp;&nbsp;&nbsp; <asp:Label ID="RzeczoznawcaLabel" runat="server" style="font-weight: 700"></asp:Label>
    </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server">
    </asp:LinqDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" DeleteCommand="DELETE FROM [ZLECENIE] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ZLECENIE] ([IMIE], [NAZWISKO], [MAIL], [TEL], [DATA_ZLECENIA], [MIASTO], [ADRES], [RZECZOZNAWCA_ID], [CENNIK_ID]) VALUES (@IMIE, @NAZWISKO, @MAIL, @TEL, @DATA_ZLECENIA, @MIASTO, @ADRES, @RZECZOZNAWCA_ID, @CENNIK_ID)" SelectCommand="SELECT ZLECENIE.ID, ZLECENIE.IMIE, ZLECENIE.NAZWISKO, ZLECENIE.MAIL, ZLECENIE.TEL, FORMAT(ZLECENIE.DATA_ZLECENIA, 'dd-MM-yyyy') as 'DATA ZLECENIA', ZLECENIE.MIASTO, ZLECENIE.ADRES, RZECZOZNAWCA.NAZWISKO + ' ' + RZECZOZNAWCA.IMIE AS RZEZCZOZNAWCA, CENNIK.TYP FROM ZLECENIE INNER JOIN CENNIK ON ZLECENIE.CENNIK_ID = CENNIK.ID INNER JOIN RZECZOZNAWCA ON ZLECENIE.RZECZOZNAWCA_ID = RZECZOZNAWCA.ID WHERE (RZECZOZNAWCA.ID = @ID)" UpdateCommand="UPDATE [ZLECENIE] SET [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL, [TEL] = @TEL, [DATA_ZLECENIA] = @DATA_ZLECENIA, [MIASTO] = @MIASTO, [ADRES] = @ADRES, [RZECZOZNAWCA_ID] = @RZECZOZNAWCA_ID, [CENNIK_ID] = @CENNIK_ID WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IMIE" Type="String" />
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="MAIL" Type="String" />
                    <asp:Parameter Name="TEL" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DATA_ZLECENIA" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="ADRES" Type="String" />
                    <asp:Parameter Name="RZECZOZNAWCA_ID" Type="Int32" />
                    <asp:Parameter Name="CENNIK_ID" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="ID" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IMIE" Type="String" />
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="MAIL" Type="String" />
                    <asp:Parameter Name="TEL" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DATA_ZLECENIA" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="ADRES" Type="String" />
                    <asp:Parameter Name="RZECZOZNAWCA_ID" Type="Int32" />
                    <asp:Parameter Name="CENNIK_ID" Type="Int32" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    <asp:GridView ID="ZleceniaRzeczoznawcyGridView" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table" Width="100%" GridLines="None" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="IMIE" HeaderText="IMIE" SortExpression="IMIE" />
            <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
            <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
            <asp:BoundField DataField="DATA ZLECENIA" HeaderText="DATA ZLECENIA" SortExpression="DATA ZLECENIA" ReadOnly="True" />
            <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
            <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            <asp:BoundField DataField="RZEZCZOZNAWCA" HeaderText="RZEZCZOZNAWCA" SortExpression="RZEZCZOZNAWCA" ReadOnly="True" />
            <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
            <asp:CommandField ShowDeleteButton="True" />
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
    <asp:Label ID="BrakZlecenLabel" runat="server"></asp:Label>
</asp:Content>