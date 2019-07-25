<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="password-reset.aspx.cs" Inherits="password_reset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="toptitle">
      <div class="container">
        <h1>Password Reset</h1>
      </div>
  </div>
    <div class="container">
        <br />
        <br />
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

