<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Create_Topic.ascx.cs" Inherits="Controls_Topic_form" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
      <label>Topic Title</label>
    <asp:TextBox ID="topictitle" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a Topic" CssClass="ErrorMessage" ControlToValidate="topictitle" Text="* Please enter a Topic"></asp:RequiredFieldValidator>
      <br />
<label>Content:</label><br />
<asp:TextBox ID="forumreplycomment" TextMode="multiline" runat="server" CssClass="form-control" Columns="50" Rows="6"></asp:TextBox>
<asp:RequiredFieldValidator ID="forumreplycommentvalidator" runat="server" ErrorMessage="Please enter a reply" CssClass="ErrorMessage" ControlToValidate="forumreplycomment" Text="* Please enter a reply"></asp:RequiredFieldValidator>
<br />
      <asp:FileUpload ID="FileUpload1" runat="server" />
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage alert alert-danger blockerrormessage" ShowSummary="False" ShowMessageBox="True" />
<asp:Button CssClass="btn btn-default btn-large" ID="reply" runat="server" Text="Submit" OnClick="topicc_Click" />
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