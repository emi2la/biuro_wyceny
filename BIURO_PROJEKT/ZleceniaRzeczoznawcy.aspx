<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="ZleceniaRzeczoznawcy.aspx.cs" Inherits="BIURO_PROJEKT.ZleceniaRzeczoznawcy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:LinqDataSource ID="LinqDataSource1" runat="server">
    </asp:LinqDataSource>
    <asp:GridView ID="ZleceniaRzeczoznawcyGridView" runat="server"></asp:GridView>
    <asp:Label ID="BrakZlecenLabel" runat="server"></asp:Label>
</asp:Content>