<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reviews_Form.ascx.cs" Inherits="Controls_Reviews_Form" %>

<script>
  function validateForm(source, args)
  {
    var displayName = document.getElementById('<%= displayName.ClientID %>');
    var reviewComments = document.getElementById('<%= reviewComments.ClientID %>');
    if (displayName.value != '' || reviewComments.value != '')
    {
      args.IsValid = true;
    }
    else
    {
      args.IsValid = false;
    }
  }
</script>
<h4>Leave a Review</h4>
<p>Hello, Guest. You are registerd as taken / taking this course, please leave us a review to let us know how we are doing. Your review may be used on this website or in College itself.</p>
<br />
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
<label>Your Star Rating:</label><br />
<div class="star-rating">
    <div class="star-rating__wrap">
        <input class="star-rating__input" id="star-rating-5" type="radio" name="rating" value="5">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-5" title="5 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-4" type="radio" name="rating" value="4">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-4" title="4 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-3" type="radio" name="rating" value="3">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-3" title="3 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-2" type="radio" name="rating" value="2">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-2" title="2 out of 5 stars"></label>
        <input class="star-rating__input" id="star-rating-1" type="radio" name="rating" value="1">
        <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-1" title="1 out of 5 stars"></label>
    </div>
</div>
<br />
<label>Display Name:</label><br />
<asp:TextBox ID="displayName" CssClass="form-control" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="Please Enter a Name" CssClass="ErrorMessage" Text="* Please Enter a Name" ControlToValidate="displayName"></asp:RequiredFieldValidator>
<br />
<label>Your Comments</label><br />
<asp:TextBox ID="reviewComments" TextMode="multiline" runat="server" CssClass="form-control" Columns="50" Rows="6"></asp:TextBox>
<asp:RequiredFieldValidator ID="CommentsValidator" runat="server" ErrorMessage="Please enter a review" CssClass="ErrorMessage" ControlToValidate="reviewComments" Text="* Please Enter a Review"></asp:RequiredFieldValidator>
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage alert alert-danger blockerrormessage" ShowSummary="False" ShowMessageBox="True" />
<asp:Button CssClass="btn btn-primary btn-large" ID="submitReview" runat="server" Text="Submit" OnClick="submitReview_Click" />
<br />
<br />
<asp:Label ID="success" runat="server" Text="" CssClass=""></asp:Label>
      </ContentTemplate>
    </asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
  <ProgressTemplate>
    <div class="PleaseWait">
      Sending...
    </div>
  </ProgressTemplate>
</asp:UpdateProgress>