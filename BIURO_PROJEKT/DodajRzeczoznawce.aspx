<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajRzeczoznawce.aspx.cs" Inherits="BIURO_PROJEKT.DodajRzeczoznawce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Dodawanie Rzeczoznawcy:</h2>
    <br />
    <div class="form-group">
        <asp:Label ID="NumerLabel" runat="server" Text="Numer:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NumerTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="ImieLabel" runat="server" Text="Imie:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="ImieTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="NazwiskoLabel" runat="server" Text="Nazwisko:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NazwiskoTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="EmailLabel" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-actions">
        <asp:Button ID="DodajRzeczoznawceButton" runat="server" Text="Dodaj Rzeczoznawcę" CssClass="button" OnClick="DodajRzeczoznawceButton_Click" />
    </div>

</asp:Content>
