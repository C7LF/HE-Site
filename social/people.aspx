<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="people.aspx.cs" Inherits="social_people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
        <div class="toptitle">
      <div class="container">
        <h1>All Users</h1>
      </div>
  </div>
    <br />
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' SelectCommand="SELECT [UserName] ,[Email] FROM [Users],[Memberships]
WHERE [USERS].UserId = [Memberships].UserId"></asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

