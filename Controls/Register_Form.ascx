<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Register_Form.ascx.cs" Inherits="Controls_Reg_Form" %>
<script>
   function collegeemailvalidator(source, args)
  {
      var collegeEmail = document.getElementById('<%= CollegeEmail.Text %>');
    if (collegeEmail.value.indexOf("chesterfield.ac.uk") > -1 )
    {
      args.IsValid = true;
    }
    else
    {
      args.IsValid = false;
    }
  }
</script>
<h2>Create a Account</h2>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
      <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" RenderOuterTable="false">
          <WizardSteps>
              <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                  <ContentTemplate>
                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label>
                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ForeColor="Red" ErrorMessage="User Name is required." ValidationGroup="CreateUserWizard1" ToolTip="User Name is required." ID="UserNameRequired">* <small>Please enter a Username</small></asp:RequiredFieldValidator>
                      <br />
                    <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel">E-mail:</asp:Label>
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ForeColor="Red" ErrorMessage="E-mail is required." ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="EmailRequired">* <small>An email is required</small></asp:RequiredFieldValidator>
                      <br />
                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label>
                    <asp:TextBox runat="server" TextMode="Password" ID="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ForeColor="Red" ErrorMessage="Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Password is required." ID="PasswordRequired">* <small>Please Create a Password</small></asp:RequiredFieldValidator>
                      <br />
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirm Password:</asp:Label>
                    <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ForeColor="Red" ErrorMessage="Confirm Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Confirm Password is required." ID="ConfirmPasswordRequired">* <small>Please confirm your password</small></asp:RequiredFieldValidator>
                      <br />
                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="Password" ForeColor="Red" ControlToValidate="ConfirmPassword" CssClass="ErrorMessage" Display="Dynamic"  ValidationGroup="CreateUserWizard1" ErrorMessage="Passwords do not match!"></asp:CompareValidator>
                      <br />
                      <div class="secqest">
                    <asp:Label runat="server" AssociatedControlID="Question" ID="QuestionLabel" >Security Question:</asp:Label>
                    <asp:DropDownList ID="question" runat="server" CssClass="form-control">
                                     <asp:ListItem Value="-1">Select Question</asp:ListItem>
                                     <asp:ListItem>What was your first car?</asp:ListItem>
                                     <asp:ListItem>Which town were you born in?</asp:ListItem>
                                     <asp:ListItem>Where did you have your first Job?</asp:ListItem>
                                     <asp:ListItem>What was the name of your first pet?</asp:ListItem>
                                 </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="QuestionRequired" runat="server"
                                     ControlToValidate="question" ErrorMessage="Security question is required."
                                     InitialValue="-1" ToolTip="Security question is required." ValidationGroup="CreateUserWizard1" ForeColor="Red">* <small>Please Choose a Question</small></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label runat="server" AssociatedControlID="Answer" ID="AnswerLabel">Security Answer:</asp:Label>
                    <asp:TextBox runat="server" ID="Answer" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer" ForeColor="Red" ErrorMessage="Security answer is required." ValidationGroup="CreateUserWizard1" ToolTip="Security answer is required." ID="AnswerRequired">* <small>An answer is required</small></asp:RequiredFieldValidator>
                     </div>
                          <br />
                    <asp:Label ID="FailureText" runat="server" ForeColor="Red"></asp:Label>
                      <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                      <br />
                  </ContentTemplate>
                  <CustomNavigationTemplate>
                       <asp:Button runat="server" CommandName="MoveNext" CssClass="btn btn-primary" Text="Create User" ValidationGroup="CreateUserWizard1" ID="StepNextButton"></asp:Button>
                  </CustomNavigationTemplate>
              </asp:CreateUserWizardStep>

              <asp:CompleteWizardStep runat="server">
                  <ContentTemplate>
                                <b>Your account has been successfully created.</b>
                      <asp:Button runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" ID="ContinueButton" PostBackUrl="~/profile.aspx"></asp:Button>
                  </ContentTemplate>
              </asp:CompleteWizardStep>
          </WizardSteps>
      </asp:CreateUserWizard>

      </ContentTemplate>
    </asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
  <ProgressTemplate>
    <div class="PleaseWait">
      Creating Account
    </div>
  </ProgressTemplate>
</asp:UpdateProgress>

 <!--     <div class="row">
          <div class="col-sm-6">
<label>First Name:</label><br />
<asp:TextBox ID="firstName" CssClass="form-control" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="Please Enter First Name" CssClass="ErrorMessage" Text="* Please Enter your first name" ControlToValidate="firstName"></asp:RequiredFieldValidator>
<br />
              </div>
            <div class="col-sm-6">
<label>Last Name:</label><br />
<asp:TextBox ID="lastName" CssClass="form-control" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="Please Enter Last Name" CssClass="ErrorMessage" Text="* Please Enter your last name" ControlToValidate="lastName"></asp:RequiredFieldValidator>
<br />
                </div>
          </div>
<label>Email Address:</label><br />
   <asp:TextBox ID="emailAdd" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
   <asp:RequiredFieldValidator ID="EmailAddress" runat="server" ControlToValidate="emailAdd" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="emailAdd" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br />

<label>Create a Password:</label><br />
          <asp:TextBox ID="Password" runat="server" CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="Password" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please enter a password"></asp:RequiredFieldValidator>
<br />
<label>Repeat Password:</label><br />
      <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:RequiredFieldValidator ID="passConfirm" runat="server" ControlToValidate="ConfirmPassword" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please enter your password again"></asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Passwords do not match!">*</asp:CompareValidator>
<hr />
      <div class="greybox">
<label>Currently a Student?</label>
      <asp:RadioButtonList ID="Student" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Student_SelectedIndexChanged">
           <asp:ListItem Text="&nbsp;No" Value="0" Selected="True"></asp:ListItem>
           <asp:ListItem Text="&nbsp;Yes" Value="1" ></asp:ListItem>
      </asp:RadioButtonList>


      <div id="registerextras" runat="server" visible="false">
          <br />
          <label>College Email:</label>
          <asp:TextBox ID="CollegeEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
          <asp:CustomValidator ID="collegeemailvalidator" runat="server" ClientValidationFunction="collegeemailvalidator" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a college email address" OnServerValidate="collegeemailvalidator1"></asp:CustomValidator>
          <small>You will need to confirm your college email address.</small>
          
      </div>
              </div>
      <script>
          $(document).ready(function () {
              $('#Student input').click(function () {
                  var value = $('#RadioButtonList1 input:checked').val();
                  if (value == 0) {
                      $("#registerextras").hide();
                  }
                  if (value == 1) {
                      $("#registerextras").show();
                  }
              });
          });
      </script>

<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage alert alert-danger blockerrormessage" ShowSummary="False" ShowMessageBox="True" />
<asp:Button CssClass="btn btn-large btn-default" ID="submitReview" runat="server" Text="Submit" OnClick="submitReview_Click" />
<br />
<br />
<asp:Label ID="success" runat="server" Text="" CssClass=""></asp:Label> -->