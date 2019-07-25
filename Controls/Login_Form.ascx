<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login_Form.ascx.cs" Inherits="Controls_Login_Form" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
      <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx" CreateUserText="Regsiter Here" CreateUserUrl="~/register.aspx" RenderOuterTable="false" >
          <LayoutTemplate>                    
            <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label>
            <asp:TextBox runat="server" ID="UserName" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="ctl00$Login1" ToolTip="User Name is required." ID="UserNameRequired" ForeColor="Red">* <small>Please Enter a Username</small></asp:RequiredFieldValidator>
                                        
              <br />
            <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" TextMode="Password" ID="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="ctl00$Login1" ToolTip="Password is required." ID="PasswordRequired" ForeColor="Red">* <small>Please Enter your Password</small></asp:RequiredFieldValidator>
                 
              <br />

            <asp:CheckBox runat="server" Text="&nbsp;Remember me" ID="RememberMe"></asp:CheckBox>
              <br />
            <asp:Label ID="FailureText" runat="server" ForeColor="Red"></asp:Label>
              <br />
            <asp:Button runat="server" CssClass="form-control" CommandName="Login" Text="Log In" ValidationGroup="ctl00$Login1" ID="LoginButton"></asp:Button>

          </LayoutTemplate>
      </asp:Login>
      

<!-- <asp:TextBox ID="emailLogin" runat="server" class="form-control" placeholder="Email Address" TextMode="Email"></asp:TextBox>
<asp:RequiredFieldValidator ID="loginemailval" runat="server" ErrorMessage="Please Enter an email" CssClass="ErrorMessage" Text="* Please Enter an email" ControlToValidate="emailLogin"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="loginregulatval" runat="server" ControlToValidate="emailLogin" CssClass="ErrorMessage" Display="Dynamic" Text="* Enter a valid e-mail address" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

<asp:TextBox ID="passLogin" runat="server" class="form-control" placeholder="Password" TextMode="password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="passwordvalidator" runat="server" ErrorMessage="Please Enter a password" CssClass="ErrorMessage" Text="* Please Enter a password" ControlToValidate="passLogin"></asp:RequiredFieldValidator>

<div class="help-block text-right"><a href="#">Forgot Password?</a></div>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage alert alert-danger blockerrormessage" ShowSummary="False" ShowMessageBox="True" />

<asp:Button CssClass="btn btn-large btn-default" ID="Button1" runat="server" Text="Sign In" OnClick="loginnow_Click" />


<div class=" checkbox">
<label><asp:CheckBox ID="stayloggedin" runat="server" />keep me logged-in</label>
</div>
<br />
<div class="bottom greybox">
No Account? <a href="/register"><b>Register Here</b></a>
</div> -->

</ContentTemplate>

</asp:UpdatePanel>