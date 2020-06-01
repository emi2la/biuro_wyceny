<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajZlecenie.aspx.cs" Inherits="BIURO_PROJEKT.DodajZlecenie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Dodawanie Zlecenie:</h2>
    <br />
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Imię klienta:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="ImieTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Imię powinno składać sie z samych liter" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" ControlToValidate="ImieTextBox"></asp:RegularExpressionValidator>
        <asp:Label ID="Label1" runat="server" Text="Nazwisko klienta:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NazwiskoTextBox" runat="server" Width="80%"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NazwiskoTextBox" Display="Dynamic" ErrorMessage="Pole jest wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ErrorMessage="Nazwisko powinno składać sie z samych liter" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" ControlToValidate="NazwiskoTextBox"></asp:RegularExpressionValidator>
        <asp:Label ID="Label3" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Display="Dynamic" ErrorMessage="Nieprawidłowy format adresu email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTextBox"></asp:RegularExpressionValidator>
        <asp:Label ID="Label4" runat="server" Text="Telefon:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="TelefonTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TelefonTextBox" Display="Dynamic" ErrorMessage="Pole jest wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TelefonTextBox" Display="Dynamic" ErrorMessage="Numer powinien składać się z cyfr" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        <asp:Label ID="Label5" runat="server" Text="Data zlecenia:" CssClass="form-label"></asp:Label>
        <asp:Calendar ID="DatazleceniaCalendar" runat="server"></asp:Calendar>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Miasto:"></asp:Label>
        <asp:TextBox ID="MiastoTextBox" runat="server" CssClass="form-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="MiastoTextBox" Display="Dynamic" ErrorMessage="Pole jest wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Display="Dynamic" ErrorMessage="Miasto powinno składać sie z samych liter" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" ControlToValidate="MiastoTextBox"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Adres:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="AdresTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Rzeczoznawca:" CssClass="form-label"></asp:Label>
        <asp:DropDownList ID="RzeczoznawcaDropDownList" runat="server" CssClass="form-field" DataSourceID="SqlDataSource1" DataTextField="NAZWISKO_IMIE" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT  [ID], [NAZWISKO]  + ' ' +[IMIE] as NAZWISKO_IMIE FROM [RZECZOZNAWCA]"></asp:SqlDataSource>
    </div>
    <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="Typ zlecania:" CssClass="form-label"></asp:Label>
        <asp:DropDownList ID="TypZleceniaDropDownList" runat="server" CssClass="form-field" DataSourceID="SqlDataSource2" DataTextField="TYP" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:APIConnectionString %>" SelectCommand="SELECT [ID], [TYP] FROM [CENNIK]"></asp:SqlDataSource>
    </div>
    <div class="form-group">
        <asp:Button ID="DodajRzeczoznawceButton" runat="server" Text="Dodaj Zlecenie" CssClass="button" OnClick="DodajZlecenieButtonClick" />
    </div>
</asp:Content>
