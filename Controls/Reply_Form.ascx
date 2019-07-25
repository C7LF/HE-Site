<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reply_Form.ascx.cs" Inherits="Controls_Reply_form" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
<label>Message:</label><br />
<asp:TextBox ID="forumreplycomment" TextMode="multiline" runat="server" CssClass="form-control" Columns="50" Rows="6"></asp:TextBox>
<asp:RequiredFieldValidator ID="forumreplycommentvalidator" runat="server" ErrorMessage="Please enter a reply" CssClass="ErrorMessage" ControlToValidate="forumreplycomment" Text="* Please enter a reply"></asp:RequiredFieldValidator>
<br />
      <asp:FileUpload ID="FileUpload1" runat="server" />
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage alert alert-danger blockerrormessage" ShowSummary="False" ShowMessageBox="True" />
<asp:Button CssClass="btn btn-default btn-large" ID="reply" runat="server" Text="Submit" OnClick="replyc_Click" />
<br />
<br />
<asp:Label ID="success" runat="server" Text="" CssClass=""></asp:Label>
      </ContentTemplate>
    </asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
  <ProgressTemplate>
    <div class="PleaseWait">
      Processing...
    </div>
  </ProgressTemplate>
</asp:UpdateProgress>