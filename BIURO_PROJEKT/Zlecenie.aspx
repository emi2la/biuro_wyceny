<%@ Page Title="Zlecenia" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Zlecenie.aspx.cs" Inherits="BIURO_PROJEKT.Zlecenie" %>

<%@ Register Src="konrolki/Szukaj.ascx" TagName="Szukaj" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }

        .auto-style2 {
            color: #333333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-header">
        LISTA ZLECEŃ
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT z.ID, z.IMIE + ' ' + z.NAZWISKO AS KLIENT, z.TEL, z.MAIL, FORMAT (z.DATA_ZLECENIA, 'dd-MM-yyyy') as 'DATA ZLECENIA', c.TYP, z.MIASTO, z.ADRES, r.IMIE + ' ' + r.NAZWISKO AS RZECZOZNAWCA FROM ZLECENIE AS z INNER JOIN CENNIK AS c ON c.ID = z.CENNIK_ID INNER JOIN RZECZOZNAWCA AS r ON r.ID = z.RZECZOZNAWCA_ID" DeleteCommand="DELETE FROM [ZLECENIE] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ZLECENIE] ([IMIE], [NAZWISKO], [MAIL], [TEL], [DATA_ZLECENIA], [MIASTO], [ADRES], [RZECZOZNAWCA_ID], [CENNIK_ID]) VALUES (@IMIE, @NAZWISKO, @MAIL, @TEL, @DATA_ZLECENIA, @MIASTO, @ADRES, @RZECZOZNAWCA_ID, @CENNIK_ID)" UpdateCommand="UPDATE [ZLECENIE] SET [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL, [TEL] = @TEL, [DATA_ZLECENIA] = @DATA_ZLECENIA, [MIASTO] = @MIASTO, [ADRES] = @ADRES, [RZECZOZNAWCA_ID] = @RZECZOZNAWCA_ID, [CENNIK_ID] = @CENNIK_ID WHERE [ID] = @ID">
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
            <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
            <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="DATA ZLECENIA" HeaderText="DATA ZLECENIA" SortExpression="DATA ZLECENIA" ReadOnly="True" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT ID, IMIE, NAZWISKO, MAIL, TEL, format(DATA_ZLECENIA, 'dd-MM-yyyy') AS 'DATA ZLECENIA', MIASTO, ADRES, RZECZOZNAWCA_ID, CENNIK_ID FROM ZLECENIE WHERE (ID = @ID)" DeleteCommand="DELETE FROM [ZLECENIE] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ZLECENIE] ([IMIE], [NAZWISKO], [MAIL], [TEL], [DATA_ZLECENIA], [MIASTO], [ADRES], [RZECZOZNAWCA_ID], [CENNIK_ID]) VALUES (@IMIE, @NAZWISKO, @MAIL, @TEL, @DATA_ZLECENIA, @MIASTO, @ADRES, @RZECZOZNAWCA_ID, @CENNIK_ID)" UpdateCommand="UPDATE [ZLECENIE] SET [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL, [TEL] = @TEL, [DATA_ZLECENIA] = @DATA_ZLECENIA, [MIASTO] = @MIASTO, [ADRES] = @ADRES, [RZECZOZNAWCA_ID] = @RZECZOZNAWCA_ID, [CENNIK_ID] = @CENNIK_ID WHERE [ID] = @ID">
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT [ID], [NAZWISKO] + ' ' + [IMIE]  as [RZECZOZNAWCA] FROM [RZECZOZNAWCA]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT [ID], [TYP] FROM [CENNIK]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Style="font-weight: 700" Width="50%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="IMIE" HeaderText="IMIE" SortExpression="IMIE" />
            <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
            <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
            <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
            <asp:BoundField DataField="DATA ZLECENIA" HeaderText="DATA ZLECENIA" SortExpression="DATA ZLECENIA" ReadOnly="True" />
            <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
            <asp:BoundField DataField="ADRES" HeaderText="ADRES" SortExpression="ADRES" />
            <asp:TemplateField HeaderText="RZECZOZNAWCA" SortExpression="RZECZOZNAWCA_ID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="RZECZOZNAWCA" DataValueField="ID" SelectedValue='<%# Bind("RZECZOZNAWCA_ID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RZECZOZNAWCA_ID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            <span><%# Eval("RZECZOZNAWCA") %></span>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CENNIK" SortExpression="CENNIK_ID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5" DataTextField="TYP" DataValueField="ID" SelectedValue='<%# Bind("CENNIK_ID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CENNIK_ID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource6">
                        <ItemTemplate>
                            <span><%# Eval("TYP") %></span>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT RZECZOZNAWCA.ID, RZECZOZNAWCA.NAZWISKO + ' ' + RZECZOZNAWCA.IMIE AS RZECZOZNAWCA, ZLECENIE.ID FROM RZECZOZNAWCA INNER JOIN ZLECENIE ON RZECZOZNAWCA.ID = ZLECENIE.RZECZOZNAWCA_ID WHERE (ZLECENIE.ID = @ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="ID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT CENNIK.TYP, ZLECENIE.ID FROM CENNIK INNER JOIN ZLECENIE ON CENNIK.ID = ZLECENIE.CENNIK_ID WHERE (ZLECENIE.ID = @ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="ID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
