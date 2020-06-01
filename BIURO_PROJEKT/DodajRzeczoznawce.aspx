<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajRzeczoznawce.aspx.cs" Inherits="BIURO_PROJEKT.DodajRzeczoznawce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        DODAWANIE RZECZOZNAWCY MAJĄTKOWEGO
    </div>
    <div class="form-group">
        <asp:Label ID="NumerLabel" runat="server" Text="Numer uprawnień zawodowych:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NumerTextBox" runat="server" CssClass="form-field"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NumerTextBox" ErrorMessage="Pole jest wymagane" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NumerTextBox" ErrorMessage="Numer powinien składać się z cyfr" ValidationExpression="^[0-9]*$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="ImieLabel" runat="server" Text="Imię:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="ImieTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ImieTextBox" ErrorMessage="Pole jest wymagane" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ImieTextBox" ErrorMessage="Imię powinno składać sie z samych liter" ValidationExpression="^[A-Za-z]+$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:Label ID="NazwiskoLabel" runat="server" Text="Nazwisko:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="NazwiskoTextBox" runat="server" CssClass="form-field"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NazwiskoTextBox" ErrorMessage="Pole jest wymagane" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="NazwiskoTextBox" ErrorMessage="Nazwisko powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:Label ID="EmailLabel" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-field"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Pole jest wymagane" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Nieprawidłowy format adresu email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
    </div>
    <div class="form-actions">
        <asp:Button ID="DodajRzeczoznawceButton" runat="server" Text="Dodaj Rzeczoznawcę" CssClass="button" OnClick="DodajRzeczoznawceButton_Click" />
    </div>

</asp:Content>
