<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Szukaj.aspx.cs" Inherits="BIURO_PROJEKT.Szukaj1" %>

<%@ Register Src="~/konrolki/Szukaj.ascx" TagPrefix="uc1" TagName="Szukaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Szukaj runat="server" ID="Szukaj" />
</asp:Content>

