<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.ascx.cs" Inherits="BIURO_PROJEKT.Szukaj" %>
    <div>
        Podaj adres zlecenia lub nazwisko klienta:
        <asp:TextBox ID="wyszukiwanieTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="wyszukiwanieRequiredFieldValidator" runat="server" ErrorMessage="*** Podaj parametr Wyszukiwania" Text="*" ControlToValidate="wyszukiwanieTextBox"></asp:RequiredFieldValidator>
        <asp:Button ID="wyszukajButton" runat="server" Text="Szukaj" OnClick="wyszukajButton_Click" CssClass="button"/>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" ForeColor="#FF3300" />
    </div>