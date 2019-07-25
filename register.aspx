<%@ Page Title="Register to Chesterfield College Computer HE" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<%@ Register Src="~/Controls/Register_Form.ascx" TagPrefix="Wrox" TagName="Register_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <div class="toptitle">
      <div class="container">
        <h1>Register</h1>
      </div>
  </div>
  <div class="container">
      <div class="col-sm-3">
          <div class="registerpanel">
            <h2>Account Features</h2>
            <p>Donec porta lorem quis lacinia tempor. Cras vulputate purus vel mi rhoncus, eget gravida velit imperdiet. Aenean sollicitudin elit nisi, in aliquam urna auctor ac. Integer tempor nec magna id consequat.</p>
            <ul>
                <li>Leave Reviews on courses</li>
                <li>Subscribe to blog categories</li>
                <li>Access topics in the discussion board</li>
                <li>Leave comments on blog posts</li>
            </ul>
              <br />
              <br />
              <br />
          </div>
      </div>
      <div class="col-sm-9">
          <br />
          <div class="loginarea">
            <Wrox:Register_Form runat="server" id="Register_Form" />
          </div>
          <br />
      </div>
  </div>
</asp:Content>

