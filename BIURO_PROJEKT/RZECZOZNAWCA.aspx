<%@ Page Title="Rzeczoznawcy" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Rzeczoznawca.aspx.cs" Inherits="BIURO_PROJEKT.Rzeczoznawca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
        RZECZOZNAWCY MAJĄTKOWI
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT * FROM [RZECZOZNAWCA]" DeleteCommand="DELETE FROM [RZECZOZNAWCA] WHERE [ID] = @ID" InsertCommand="INSERT INTO [RZECZOZNAWCA] ([NR], [IMIE], [NAZWISKO], [MAIL]) VALUES (@NR, @IMIE, @NAZWISKO, @MAIL)" UpdateCommand="UPDATE [RZECZOZNAWCA] SET [NR] = @NR, [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NR" Type="Int32" />
        <asp:Parameter Name="IMIE" Type="String" />
        <asp:Parameter Name="NAZWISKO" Type="String" />
        <asp:Parameter Name="MAIL" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NR" Type="Int32" />
        <asp:Parameter Name="IMIE" Type="String" />
        <asp:Parameter Name="NAZWISKO" Type="String" />
        <asp:Parameter Name="MAIL" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="DodajRzeczoznawce" CssClass="button" Text="Dodaj" />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" EnableViewState="False">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="NR" HeaderText="NUMER UPRAWNIEŃ" SortExpression="NR" />
        <asp:BoundField DataField="IMIE" HeaderText="IMIĘ" SortExpression="IMIE" />
        <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
        <asp:BoundField DataField="MAIL" HeaderText="EMAIL" SortExpression="MAIL" />
        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ZleceniaRzeczoznawcy.aspx?RzeczoznawcaId={0}" HeaderText="ZLECENIA" Text="Zlecenia" >
        <HeaderStyle Font-Underline="True" />
        </asp:HyperLinkField>
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT [ID], [NR], [IMIE], [NAZWISKO], [MAIL] FROM [RZECZOZNAWCA] WHERE ([ID] = @ID)" DeleteCommand="DELETE FROM [RZECZOZNAWCA] WHERE [ID] = @ID" InsertCommand="INSERT INTO [RZECZOZNAWCA] ([NR], [IMIE], [NAZWISKO], [MAIL]) VALUES (@NR, @IMIE, @NAZWISKO, @MAIL)" OnSelecting="SqlDataSource2_Selecting" UpdateCommand="UPDATE [RZECZOZNAWCA] SET [NR] = @NR, [IMIE] = @IMIE, [NAZWISKO] = @NAZWISKO, [MAIL] = @MAIL WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NR" Type="Int32" />
        <asp:Parameter Name="IMIE" Type="String" />
        <asp:Parameter Name="NAZWISKO" Type="String" />
        <asp:Parameter Name="MAIL" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="NR" Type="Int32" />
        <asp:Parameter Name="IMIE" Type="String" />
        <asp:Parameter Name="NAZWISKO" Type="String" />
        <asp:Parameter Name="MAIL" Type="String" />
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
            <asp:BoundField DataField="NR" HeaderText="NR UPRAWNIEŃ" SortExpression="NR" />
            <asp:BoundField DataField="IMIE" HeaderText="IMIĘ" SortExpression="IMIE" />
            <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
            <asp:BoundField DataField="MAIL" HeaderText="EMAIL" SortExpression="MAIL" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    </asp:Content>