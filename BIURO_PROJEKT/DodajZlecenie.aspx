<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajZlecenie.aspx.cs" Inherits="BIURO_PROJEKT.DodajZlecenie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Dodawanie Zlecenie:</h2>
    <br />
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Imię klienta:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NumerTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Nazwisko klienta:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="ImieTextBox" runat="server" Width="80%"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NazwiskoTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Telefon:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Data zlecenia:" CssClass="form-label"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Miasto:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Adres:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Rzeczoznawca:" CssClass="form-label"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-field" DataSourceID="SqlDataSource1" DataTextField="NAZWISKO_IMIE" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT  [ID], [NAZWISKO]  + ' ' +[IMIE] as NAZWISKO_IMIE FROM [RZECZOZNAWCA]"></asp:SqlDataSource>
    </div>
    <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="Typ zlecania:" CssClass="form-label"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-field" DataSourceID="SqlDataSource2" DataTextField="TYP" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT [ID], [TYP] FROM [CENNIK]"></asp:SqlDataSource>
    </div>
    <div class="form-group">
        <asp:Button ID="DodajRzeczoznawceButton" runat="server" Text="Dodaj Zlecenie" CssClass="button" OnClick="DodajZlecenieButtonClick" />
    </div>
</asp:Content>
