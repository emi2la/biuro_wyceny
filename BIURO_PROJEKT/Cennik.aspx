<%@ Page Title="Cennik" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Cennik.aspx.cs" Inherits="BIURO_PROJEKT.Cennik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-header">
        CENNIK OPERATÓW SZACUNKOWYCH
    </div>

    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" DeleteCommand="DELETE FROM [CENNIK] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CENNIK] ([TYP], [CENA]) VALUES (@TYP, @CENA)" SelectCommand="SELECT * FROM [CENNIK]" UpdateCommand="UPDATE [CENNIK] SET [TYP] = @TYP, [CENA] = @CENA WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TYP" Type="String" />
                <asp:Parameter Name="CENA" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TYP" Type="String" />
                <asp:Parameter Name="CENA" Type="Decimal" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" CssClass="table" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" HorizontalAlign="Left" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="L.P." InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="TYP" HeaderText="TYP NIERUCHOMOŚCI" SortExpression="TYP" ReadOnly="True" />
                <asp:BoundField DataField="CENA" HeaderText="CENA OPERATU [ZŁ]" SortExpression="CENA">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowEditButton="True" />
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
    </div>
</asp:Content>
