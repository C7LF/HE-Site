<%@ Page Title="Support" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="support" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Wrox" TagName="ContactForm" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <div class="toptitle">
      <div class="container">
        <h1>Support</h1>
      </div>
  </div>
  <div class="container">
      <div class="col-sm-3">
          <div class="registerpanel">
              
            <h2>Ask us Anything</h2>
            <p>Donec porta lorem quis lacinia tempor. Cras vulputate purus vel mi rhoncus, eget gravida velit imperdiet.</p>
          </div>
      </div>
      <div class="col-sm-9">
          <br />
          <Wrox:ContactForm runat="server" id="ContactForm" />
      </div>
  </div>
</asp:Content>

