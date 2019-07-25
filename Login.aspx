<%@ Page Title="Log in to CC HE" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/Controls/Login_Form.ascx" TagPrefix="Wrox" TagName="Login_Form" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <div class="toptitle">
      <div class="container">
        <h1>Login</h1>
      </div>
  </div>
  <div class="container">
      <div class="col-sm-3">
          <div class="registerpanel">
              
            <h2>Login to Your Account</h2>
            <p>Donec porta lorem quis lacinia tempor. Cras vulputate purus vel mi rhoncus, eget gravida velit imperdiet. Aenean sollicitudin elit nisi, in aliquam urna auctor ac. Integer tempor nec magna id consequat.</p>
              <b>No Account? </b><asp:HyperLink runat="server" NavigateUrl="~/register.aspx" ID="CreateUserLink">Register Here</asp:HyperLink>
              <br />
              <br />
          </div>
      </div>
      <div class="col-sm-9">
          <br />
          <div class="loginarea">
          <asp:LoginView ID="LoginView1" runat="server">
              <AnonymousTemplate>
                  <Wrox:Login_Form runat="server" ID="Login_Form" />
              </AnonymousTemplate>
              <LoggedInTemplate>
                    
                  You are already logged in. <asp:LoginStatus ID="LoginStatus1" runat="server" />
 
              </LoggedInTemplate>
          </asp:LoginView>
          </div>
                    <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      </div>
  </div>
</asp:Content>

