<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.ascx.cs" Inherits="BIURO_PROJEKT.Szukaj" %>
    <div>
        Podaj adres zlecenia lub nazwisko klienta:
        <asp:TextBox ID="wyszukiwanieTextBox" runat="server"></asp:TextBox>
        <%--<asp:RequiredFieldValidator ID="wyszukiwanieRequiredFieldValidator" runat="server" ErrorMessage="Podaj fragment adresu nieruchomości lub nazwiska klienta" Text="*"></asp:RequiredFieldValidator>--%>
        <asp:Button ID="wyszukajButton" runat="server" Text="Szukaj" OnClick="wyszukajButton_Click" />

    </div>