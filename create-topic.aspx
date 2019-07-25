<%@ Page Title="Create a topic" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="create-topic.aspx.cs" Inherits="createtopic" %>

<%@ Register Src="~/Controls/Create_Topic.ascx" TagPrefix="Wrox" TagName="Create_Topic" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
      <div class="toptitle">
      <div class="container">
        <h1>Create a Topic in 'Other'</h1>
      </div>
  </div>
  <div class="container">
	<div class="row">
        <br />
        <Wrox:Create_Topic runat="server" ID="Create_Topic" />
      
     
  </div>
</div>
    <br />
    <br />
</asp:Content>

