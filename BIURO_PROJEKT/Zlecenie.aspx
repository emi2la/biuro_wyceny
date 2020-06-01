<%@ Page Title="Zlecenia" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Zlecenie.aspx.cs" Inherits="BIURO_PROJEKT.Zlecenie" %>

<%@ Register src="konrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="page-header">
        LISTA ZLECEŃ
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT z.ID, z.IMIE + ' ' + z.NAZWISKO AS KLIENT, z.TEL, z.MAIL, z.DATA_ZLECENIA, c.TYP, z.MIASTO, z.ADRES, r.IMIE + ' ' + r.NAZWISKO AS RZECZOZNAWCA FROM ZLECENIE AS z INNER JOIN CENNIK AS c ON c.ID = z.CENNIK_ID INNER JOIN RZECZOZNAWCA AS r ON r.ID = z.RZECZOZNAWCA_ID" DeleteCommand="DELETE FROM [ZLECENIE] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ZLECENIE] ([IMIE], [NAZWISKO], [MAIL], [TEL], [DATA_ZLECENIA], [MIASTO], [ADRES], [RZECZOZNAWCA_ID], [CENNIK_ID]) VALUES (@IMIE, @NAZWISKO, @MAIL, @TEL, @DATA_ZLECENIA, @MIASTO, @ADRES, @RZECZOZNAWCA_ID, @CENNIK_ID)" UpdateCommand="UPDATE [ZLECENIE] SET [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL, [TEL] = @TEL, [DATA_ZLECENIA] = @DATA_ZLECENIA, [MIASTO] = @MIASTO, [ADRES] = @ADRES, [RZECZOZNAWCA_ID] = @RZECZOZNAWCA_ID, [CENNIK_ID] = @CENNIK_ID WHERE [ID] = @ID">
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
    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Dodaj" OnClick="DodajZlecenieButtonClick" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="table" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" EnableViewState="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="KLIENT" HeaderText="KLIENT" SortExpression="KLIENT" ReadOnly="True" />
            <asp:BoundField DataField="TEL" HeaderText="TELEFON" SortExpression="TEL" />
            <asp:BoundField DataField="MAIL" HeaderText="EMAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="DATA_ZLECENIA" HeaderText="DATA ZLECENIA" SortExpression="DATA_ZLECENIA" />
            <asp:BoundField DataField="TYP" HeaderText="TYP" SortExpression="TYP" />
            <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
            <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            <asp:BoundField DataField="RZECZOZNAWCA" HeaderText="RZECZOZNAWCA" SortExpression="RZECZOZNAWCA" ReadOnly="True" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT * FROM [ZLECENIE] WHERE ([ID] = @ID)" DeleteCommand="DELETE FROM [ZLECENIE] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ZLECENIE] ([IMIE], [NAZWISKO], [MAIL], [TEL], [DATA_ZLECENIA], [MIASTO], [ADRES], [RZECZOZNAWCA_ID], [CENNIK_ID]) VALUES (@IMIE, @NAZWISKO, @MAIL, @TEL, @DATA_ZLECENIA, @MIASTO, @ADRES, @RZECZOZNAWCA_ID, @CENNIK_ID)" UpdateCommand="UPDATE [ZLECENIE] SET [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL, [TEL] = @TEL, [DATA_ZLECENIA] = @DATA_ZLECENIA, [MIASTO] = @MIASTO, [ADRES] = @ADRES, [RZECZOZNAWCA_ID] = @RZECZOZNAWCA_ID, [CENNIK_ID] = @CENNIK_ID WHERE [ID] = @ID" >
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
            <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" style="font-weight: 700" Width="50%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="IMIE" HeaderText="IMIĘ" SortExpression="IMIE" />
            <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
            <asp:BoundField DataField="MAIL" HeaderText="EMAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="TEL" HeaderText="TELEFON" SortExpression="TEL" />
            <asp:BoundField DataField="DATA_ZLECENIA" HeaderText="DATA ZLECENIA" SortExpression="DATA_ZLECENIA" />
            <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
            <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            <asp:BoundField DataField="RZECZOZNAWCA_ID" HeaderText="RZECZOZNAWCA_ID" SortExpression="RZECZOZNAWCA_ID" />
            <asp:BoundField DataField="CENNIK_ID" HeaderText="CENNIK_ID" SortExpression="CENNIK_ID" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>
